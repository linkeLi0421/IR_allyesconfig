; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufshcd-pltfrm.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufshcd-pltfrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ufshcd_pltfrm_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_pltfrm_shutdown\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_pltfrm_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_pltfrm_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_pltfrm_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_pltfrm_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ufshcd_get_pwr_dev_param\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_get_pwr_dev_param\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_get_pwr_dev_param\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_get_pwr_dev_param:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_get_pwr_dev_param\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_get_pwr_dev_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ufshcd_init_pwr_dev_param\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_init_pwr_dev_param\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_init_pwr_dev_param\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_init_pwr_dev_param:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_init_pwr_dev_param\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_init_pwr_dev_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ufshcd_pltfrm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_pltfrm_init\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_pltfrm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_pltfrm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_pltfrm_init\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_pltfrm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ufs_vreg = type { ptr, ptr, i8, i8, i32, i32, i32 }

@__kstrtab_ufshcd_pltfrm_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_pltfrm_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_pltfrm_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_pltfrm_shutdown to i32), ptr @__kstrtab_ufshcd_pltfrm_shutdown, ptr @__kstrtabns_ufshcd_pltfrm_shutdown }, section "___ksymtab_gpl+ufshcd_pltfrm_shutdown", align 4
@ufshcd_get_pwr_dev_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: device doesn't support HS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufshcd_get_pwr_dev_param\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/ufs/ufshcd-pltfrm.c\00", [63 x i8] zeroinitializer }, align 32
@ufshcd_get_pwr_dev_param._entry_ptr = internal global ptr @ufshcd_get_pwr_dev_param._entry, section ".printk_index", align 4
@__kstrtab_ufshcd_get_pwr_dev_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_get_pwr_dev_param = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_get_pwr_dev_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_get_pwr_dev_param to i32), ptr @__kstrtab_ufshcd_get_pwr_dev_param, ptr @__kstrtabns_ufshcd_get_pwr_dev_param }, section "___ksymtab_gpl+ufshcd_get_pwr_dev_param", align 4
@__kstrtab_ufshcd_init_pwr_dev_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_init_pwr_dev_param = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_init_pwr_dev_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_init_pwr_dev_param to i32), ptr @__kstrtab_ufshcd_init_pwr_dev_param, ptr @__kstrtabns_ufshcd_init_pwr_dev_param }, section "___ksymtab_gpl+ufshcd_init_pwr_dev_param", align 4
@ufshcd_pltfrm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Allocation failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshcd_pltfrm_init\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufshcd_pltfrm_init._entry_ptr = internal global ptr @ufshcd_pltfrm_init._entry, section ".printk_index", align 4
@ufshcd_pltfrm_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: clock parse failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ufshcd_pltfrm_init._entry_ptr.9 = internal global ptr @ufshcd_pltfrm_init._entry.7, section ".printk_index", align 4
@ufshcd_pltfrm_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: regulator init failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ufshcd_pltfrm_init._entry_ptr.12 = internal global ptr @ufshcd_pltfrm_init._entry.10, section ".printk_index", align 4
@ufshcd_pltfrm_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.2, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ufshcd_pltfrm_init._entry_ptr.15 = internal global ptr @ufshcd_pltfrm_init._entry.13, section ".printk_index", align 4
@__kstrtab_ufshcd_pltfrm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_pltfrm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_pltfrm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_pltfrm_init to i32), ptr @__kstrtab_ufshcd_pltfrm_init, ptr @__kstrtabns_ufshcd_pltfrm_init }, section "___ksymtab_gpl+ufshcd_pltfrm_init", align 4
@__UNIQUE_ID_author336 = internal constant [64 x i8] c"ufshcd_pltfrm.author=Santosh Yaragnavi <santosh.sy@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author337 = internal constant [63 x i8] c"ufshcd_pltfrm.author=Vinayak Holikatti <h.vinayak@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description338 = internal constant [77 x i8] c"ufshcd_pltfrm.description=UFS host controller Platform bus based glue driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [50 x i8] c"ufshcd_pltfrm.file=drivers/scsi/ufs/ufshcd-pltfrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [26 x i8] c"ufshcd_pltfrm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version341 = internal constant [26 x i8] c"ufshcd_pltfrm.version=0.2\00", section ".modinfo", align 1
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufshcd_pltfrm\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.17, ptr @.str.18 }, section "__modver", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 40, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unable to find clocks, assuming enabled\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufshcd_parse_clock_info\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry_ptr = internal global ptr @ufshcd_parse_clock_info._entry, section ".printk_index", align 4
@ufshcd_parse_clock_info._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 43, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: count clock strings failed, err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry_ptr.25 = internal global ptr @ufshcd_parse_clock_info._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"freq-table-hz\00", [18 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 51, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"freq-table-hz property not specified\0A\00", [58 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry_ptr.29 = internal global ptr @ufshcd_parse_clock_info._entry.27, section ".printk_index", align 4
@ufshcd_parse_clock_info._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.2, i32 60, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s len mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry_ptr.32 = internal global ptr @ufshcd_parse_clock_info._entry.30, section ".printk_index", align 4
@ufshcd_parse_clock_info._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.2, i32 76, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: error reading array %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info._entry_ptr.35 = internal global ptr @ufshcd_parse_clock_info._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@ufshcd_parse_clock_info.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.37, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: min %u max %u name %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-hba\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vccq\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccq2\00", [26 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: non DT initialization\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufshcd_populate_vreg\00", [43 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry_ptr = internal global ptr @ufshcd_populate_vreg._entry, section ".printk_index", align 4
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-supply\00", [22 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 126, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Unable to find %s regulator, assuming enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry_ptr.47 = internal global ptr @ufshcd_populate_vreg._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s-max-microamp\00", [16 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.2, i32 140, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unable to find %s\0A\00", [41 x i8] zeroinitializer }, align 32
@ufshcd_populate_vreg._entry_ptr.51 = internal global ptr @ufshcd_populate_vreg._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lanes-per-direction\00", [44 x i8] zeroinitializer }, align 32
@ufshcd_init_lanes_per_dir.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufshcd_init_lanes_per_dir\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: failed to read lanes-per-direction, ret=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 237, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 344, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 352, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 358, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 367, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 387, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 37, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 39, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 42, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 50, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 51, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 60, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 75, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 100, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 102, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 163, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 167, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 171, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 175, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 119, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 123, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 125, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 138, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 140, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 191, i32 43 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [36 x i8] c"../drivers/scsi/ufs/ufshcd-pltfrm.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 194, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_version341, ptr @__ksymtab_ufshcd_get_pwr_dev_param, ptr @__ksymtab_ufshcd_init_pwr_dev_param, ptr @__ksymtab_ufshcd_pltfrm_init, ptr @__ksymtab_ufshcd_pltfrm_shutdown, ptr @__modver_attr, ptr @ufshcd_get_pwr_dev_param._entry, ptr @ufshcd_get_pwr_dev_param._entry_ptr, ptr @ufshcd_parse_clock_info._entry, ptr @ufshcd_parse_clock_info._entry.23, ptr @ufshcd_parse_clock_info._entry.27, ptr @ufshcd_parse_clock_info._entry.30, ptr @ufshcd_parse_clock_info._entry.33, ptr @ufshcd_parse_clock_info._entry_ptr, ptr @ufshcd_parse_clock_info._entry_ptr.25, ptr @ufshcd_parse_clock_info._entry_ptr.29, ptr @ufshcd_parse_clock_info._entry_ptr.32, ptr @ufshcd_parse_clock_info._entry_ptr.35, ptr @ufshcd_pltfrm_init._entry, ptr @ufshcd_pltfrm_init._entry.10, ptr @ufshcd_pltfrm_init._entry.13, ptr @ufshcd_pltfrm_init._entry.7, ptr @ufshcd_pltfrm_init._entry_ptr, ptr @ufshcd_pltfrm_init._entry_ptr.12, ptr @ufshcd_pltfrm_init._entry_ptr.15, ptr @ufshcd_pltfrm_init._entry_ptr.9, ptr @ufshcd_populate_vreg._entry, ptr @ufshcd_populate_vreg._entry.45, ptr @ufshcd_populate_vreg._entry.49, ptr @ufshcd_populate_vreg._entry_ptr, ptr @ufshcd_populate_vreg._entry_ptr.47, ptr @ufshcd_populate_vreg._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_get_pwr_dev_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pltfrm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pltfrm_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pltfrm_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pltfrm_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_parse_clock_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_parse_clock_info._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_parse_clock_info._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_parse_clock_info._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_parse_clock_info._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_populate_vreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_populate_vreg._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_populate_vreg._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshcd_pltfrm_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ufshcd_shutdown(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshcd_get_pwr_dev_param(ptr nocapture noundef readonly %pltfrm_param, ptr nocapture noundef readonly %dev_max, ptr nocapture noundef %agreed_pwr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_rx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max, i32 0, i32 4
  %0 = ptrtoint ptr %pwr_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwr_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %desired_working_mode = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 11
  %2 = ptrtoint ptr %desired_working_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desired_working_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.end10, label %if.else14.thread

if.else14.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %pltfrm_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pltfrm_param, align 4
  %pwm_tx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 1
  %6 = ptrtoint ptr %pwm_tx_gear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwm_tx_gear, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = select i1 %cmp, i1 %cmp1, i1 false
  %brmerge133146 = xor i1 %9, true
  %rx_pwr_pwm = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 6
  br label %if.end26

if.end10:                                         ; preds = %entry
  br i1 %cmp, label %if.then18.critedge, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.then18.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %hs_rx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 2
  %10 = ptrtoint ptr %hs_rx_gear to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hs_rx_gear, align 4
  %hs_tx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 3
  %12 = ptrtoint ptr %hs_tx_gear to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hs_tx_gear, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %rx_pwr_hs = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 8
  br label %if.end26

if.end26:                                         ; preds = %if.then18.critedge, %if.else14.thread
  %brmerge133149 = phi i1 [ %brmerge133146, %if.else14.thread ], [ false, %if.then18.critedge ]
  %min_pltfrm_gear.0142147 = phi i32 [ %8, %if.else14.thread ], [ %14, %if.then18.critedge ]
  %.sink144.in = phi ptr [ %rx_pwr_pwm, %if.else14.thread ], [ %rx_pwr_hs, %if.then18.critedge ]
  %15 = ptrtoint ptr %.sink144.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink144 = load i32, ptr %.sink144.in, align 4
  %16 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink144, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink144, ptr %18, align 4
  %lane_tx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max, i32 0, i32 3
  %20 = ptrtoint ptr %lane_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lane_tx, align 4
  %tx_lanes = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 5
  %22 = ptrtoint ptr %tx_lanes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_lanes, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23)
  %lane_tx33 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 3
  %25 = ptrtoint ptr %lane_tx33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lane_tx33, align 4
  %lane_rx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max, i32 0, i32 2
  %26 = ptrtoint ptr %lane_rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lane_rx, align 4
  %rx_lanes = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 4
  %28 = ptrtoint ptr %rx_lanes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_lanes, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %lane_rx40 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 2
  %31 = ptrtoint ptr %lane_rx40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lane_rx40, align 4
  %32 = ptrtoint ptr %dev_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_max, align 4
  %gear_tx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max, i32 0, i32 1
  %34 = ptrtoint ptr %gear_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gear_tx, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35)
  %brmerge138 = select i1 %cmp, i1 true, i1 %cmp1
  %or.cond = select i1 %brmerge133149, i1 %brmerge138, i1 false
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %min_pltfrm_gear.0142147)
  %min_pltfrm_gear.0142147. = select i1 %cmp, i32 %min_pltfrm_gear.0142147, i32 %36
  %.sink = select i1 %or.cond, i32 %min_pltfrm_gear.0142147., i32 %37
  %38 = ptrtoint ptr %agreed_pwr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %agreed_pwr, align 4
  %gear_tx70 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 1
  %39 = ptrtoint ptr %gear_tx70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %gear_tx70, align 4
  %hs_rate = getelementptr inbounds %struct.ufs_dev_params, ptr %pltfrm_param, i32 0, i32 10
  %40 = ptrtoint ptr %hs_rate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hs_rate, align 4
  %hs_rate71 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %agreed_pwr, i32 0, i32 6
  %42 = ptrtoint ptr %hs_rate71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %hs_rate71, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -524, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ufshcd_init_pwr_dev_param(ptr nocapture noundef writeonly %dev_param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lanes = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 5
  %0 = ptrtoint ptr %tx_lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %tx_lanes, align 4
  %rx_lanes = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 4
  %1 = ptrtoint ptr %rx_lanes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %rx_lanes, align 4
  %hs_rx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 2
  %2 = ptrtoint ptr %hs_rx_gear to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %hs_rx_gear, align 4
  %hs_tx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 3
  %3 = ptrtoint ptr %hs_tx_gear to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %hs_tx_gear, align 4
  %4 = ptrtoint ptr %dev_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %dev_param, align 4
  %pwm_tx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 1
  %5 = ptrtoint ptr %pwm_tx_gear to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %pwm_tx_gear, align 4
  %rx_pwr_pwm = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 6
  %6 = ptrtoint ptr %rx_pwr_pwm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %rx_pwr_pwm, align 4
  %tx_pwr_pwm = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 7
  %7 = ptrtoint ptr %tx_pwr_pwm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %tx_pwr_pwm, align 4
  %rx_pwr_hs = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 8
  %8 = ptrtoint ptr %rx_pwr_hs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %rx_pwr_hs, align 4
  %tx_pwr_hs = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 9
  %9 = ptrtoint ptr %tx_pwr_hs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx_pwr_hs, align 4
  %hs_rate = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 10
  %10 = ptrtoint ptr %hs_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %hs_rate, align 4
  %desired_working_mode = getelementptr inbounds %struct.ufs_dev_params, ptr %dev_param, i32 0, i32 11
  %11 = ptrtoint ptr %desired_working_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %desired_working_mode, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef %vops) #0 align 64 {
entry:
  %hba = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hba) #8
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hba, align 4, !annotation !119
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @ufshcd_alloc_host(ptr noundef %dev1, ptr noundef nonnull %hba) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba, align 4
  %vops11 = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vops11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vops, ptr %vops11, align 8
  %call12 = call fastcc i32 @ufshcd_parse_clock_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %call12) #11
  br label %dealloc_host

if.end19:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba, align 4
  %dev1.i = getelementptr inbounds %struct.ufs_hba, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 8
  %vdd_hba.i = getelementptr inbounds %struct.ufs_hba, ptr %6, i32 0, i32 68, i32 3
  %call.i = call fastcc i32 @ufshcd_populate_vreg(ptr noundef %8, ptr noundef nonnull @.str.38, ptr noundef %vdd_hba.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end.i:                                         ; preds = %if.end19
  %vreg_info.i = getelementptr inbounds %struct.ufs_hba, ptr %6, i32 0, i32 68
  %call2.i = call fastcc i32 @ufshcd_populate_vreg(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %vreg_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.do.end25_crit_edge

if.end.i.do.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end5.i:                                        ; preds = %if.end.i
  %vccq.i = getelementptr inbounds %struct.ufs_hba, ptr %6, i32 0, i32 68, i32 1
  %call6.i = call fastcc i32 @ufshcd_populate_vreg(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef %vccq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %ufshcd_parse_regulator_info.exit, label %if.end5.i.do.end25_crit_edge

if.end5.i.do.end25_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

ufshcd_parse_regulator_info.exit:                 ; preds = %if.end5.i
  %vccq2.i = getelementptr inbounds %struct.ufs_hba, ptr %6, i32 0, i32 68, i32 2
  %call10.i = call fastcc i32 @ufshcd_populate_vreg(ptr noundef %8, ptr noundef nonnull @.str.41, ptr noundef %vccq2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool21.not = icmp eq i32 %call10.i, 0
  br i1 %tobool21.not, label %if.end27, label %ufshcd_parse_regulator_info.exit.do.end25_crit_edge

ufshcd_parse_regulator_info.exit.do.end25_crit_edge: ; preds = %ufshcd_parse_regulator_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end25:                                         ; preds = %ufshcd_parse_regulator_info.exit.do.end25_crit_edge, %if.end5.i.do.end25_crit_edge, %if.end.i.do.end25_crit_edge, %if.end19.do.end25_crit_edge
  %err.0.i66 = phi i32 [ %call10.i, %ufshcd_parse_regulator_info.exit.do.end25_crit_edge ], [ %call6.i, %if.end5.i.do.end25_crit_edge ], [ %call2.i, %if.end.i.do.end25_crit_edge ], [ %call.i, %if.end19.do.end25_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, i32 noundef %err.0.i66) #11
  br label %dealloc_host

if.end27:                                         ; preds = %ufshcd_parse_regulator_info.exit
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 4
  %dev1.i60 = getelementptr inbounds %struct.ufs_hba, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dev1.i60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i60, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %lanes_per_direction.i = getelementptr inbounds %struct.ufs_hba, ptr %10, i32 0, i32 71
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.52, ptr noundef %lanes_per_direction.i, i32 noundef 1, i32 noundef 0) #8
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i61 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i61, label %if.end27.ufshcd_init_lanes_per_dir.exit_crit_edge, label %do.body.i

if.end27.ufshcd_init_lanes_per_dir.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufshcd_init_lanes_per_dir.exit

do.body.i:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshcd_init_lanes_per_dir.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshcd_pltfrm_init, %if.then6.i)) #8
          to label %do.end.i [label %if.then6.i], !srcloc !120

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev1.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i60, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshcd_init_lanes_per_dir.__UNIQUE_ID_ddebug323, ptr noundef %17, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %15) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %18 = ptrtoint ptr %lanes_per_direction.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %lanes_per_direction.i, align 8
  br label %ufshcd_init_lanes_per_dir.exit

ufshcd_init_lanes_per_dir.exit:                   ; preds = %do.end.i, %if.end27.ufshcd_init_lanes_per_dir.exit_crit_edge
  %19 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hba, align 4
  %call28 = call i32 @ufshcd_init(ptr noundef %20, ptr noundef %call, i32 noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %ufshcd_init_lanes_per_dir.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %dealloc_host

if.end34:                                         ; preds = %ufshcd_init_lanes_per_dir.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i63 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  br label %cleanup

dealloc_host:                                     ; preds = %do.end33, %do.end25, %do.end17
  %err.0 = phi i32 [ %call12, %do.end17 ], [ %err.0.i66, %do.end25 ], [ %call28, %do.end33 ]
  %21 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hba, align 4
  call void @ufshcd_dealloc_host(ptr noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %dealloc_host, %if.end34, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %1, %if.then ], [ %call7, %do.end ], [ %err.0, %dealloc_host ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hba) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_alloc_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshcd_parse_clock_info(ptr noundef %hba) unnamed_addr #0 align 64 {
entry:
  %name = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %len, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.else [
    i32 0, label %if.end.do.end_crit_edge
    i32 -22, label %if.end.do.end_crit_edge150
  ]

if.end.do.end_crit_edge150:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge150
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp eq i32 %call.i, 0
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.26, ptr noundef nonnull %len) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp21 = icmp slt i32 %8, 1
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %div130 = lshr i32 %8, 2
  %mul = shl nuw i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div130, i32 %mul)
  %cmp24.not = icmp eq i32 %div130, %mul
  br i1 %cmp24.not, label %devm_kcalloc.exit, label %do.end28

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26) #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end23
  %9 = and i32 %8, -4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %9, i32 noundef 3520) #8
  %tobool31.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool31.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end33

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %devm_kcalloc.exit
  %call.i131 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.26, ptr noundef nonnull %call5.i.i, i32 noundef %div130, i32 noundef 0) #8
  %10 = call i32 @llvm.smin.i32(i32 %call.i131, i32 0) #8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %10, label %do.end40 [
    i32 0, label %if.end33.if.end41_crit_edge
    i32 -22, label %if.end33.if.end41_crit_edge151
  ]

if.end33.if.end41_crit_edge151:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, i32 noundef %10) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end33.if.end41_crit_edge, %if.end33.if.end41_crit_edge151
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp42146.not = icmp ult i32 %8, 4
  br i1 %cmp42146.not, label %if.end41.cleanup_crit_edge, label %for.body.lr.ph

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end41
  %clk_list_head = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 69
  %prev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 69, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %add75, %list_add_tail.exit.for.body_crit_edge ]
  %div43.udiv149 = lshr exact i32 %i.0147, 1
  %call.i132 = call i32 @of_property_read_string_helper(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %div43.udiv149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i132)
  %tobool45.not = icmp sgt i32 %call.i132, -1
  br i1 %tobool45.not, label %if.end47, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %for.body
  %call.i133 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 32, i32 noundef 3520) #8
  %tobool49.not = icmp eq ptr %call.i133, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %arrayidx = getelementptr i32, ptr %call5.i.i, i32 %i.0147
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %min_freq = getelementptr inbounds %struct.ufs_clk_info, ptr %call.i133, i32 0, i32 4
  %14 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %min_freq, align 4
  %add = or i32 %i.0147, 1
  %arrayidx52 = getelementptr i32, ptr %call5.i.i, i32 %add
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx52, align 4
  %max_freq = getelementptr inbounds %struct.ufs_clk_info, ptr %call.i133, i32 0, i32 3
  %17 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_freq, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call53 = call noalias ptr @devm_kstrdup(ptr noundef %1, ptr noundef %19, i32 noundef 3264) #8
  %name54 = getelementptr inbounds %struct.ufs_clk_info, ptr %call.i133, i32 0, i32 2
  %20 = ptrtoint ptr %name54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call53, ptr %name54, align 4
  %tobool56.not = icmp eq ptr %call53, null
  br i1 %tobool56.not, label %if.end51.cleanup_crit_edge, label %if.end58

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %call59 = call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(8) @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end58.do.body63_crit_edge

if.end58.do.body63_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %keep_link_active = getelementptr inbounds %struct.ufs_clk_info, ptr %call.i133, i32 0, i32 6
  %23 = ptrtoint ptr %keep_link_active to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %keep_link_active, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.then61, %if.end58.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshcd_parse_clock_info.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshcd_parse_clock_info, %if.then68)) #8
          to label %do.end74 [label %if.then68], !srcloc !120

if.then68:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_freq, align 4
  %26 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_freq, align 4
  %28 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name54, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshcd_parse_clock_info.__UNIQUE_ID_ddebug322, ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, i32 noundef %25, i32 noundef %27, ptr noundef %29) #8
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %do.body63
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i133, ptr noundef %31, ptr noundef %clk_list_head) #8
  br i1 %call.i.i, label %if.end.i.i134, label %do.end74.list_add_tail.exit_crit_edge

do.end74.list_add_tail.exit_crit_edge:            ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i134:                                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i133, ptr %prev.i, align 4
  %33 = ptrtoint ptr %call.i133 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %clk_list_head, ptr %call.i133, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i133, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call.i133, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i134, %do.end74.list_add_tail.exit_crit_edge
  %add75 = add nuw nsw i32 %i.0147, 2
  %cmp42 = icmp ult i32 %add75, %div130
  br i1 %cmp42, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end40, %devm_kcalloc.exit.cleanup_crit_edge, %do.end28, %if.end20.cleanup_crit_edge, %do.end19, %if.end10.cleanup_crit_edge, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end40 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -22, %do.end28 ], [ 0, %do.end19 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call.i, %do.end8 ], [ 0, %do.end ], [ %10, %if.end41.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ %call.i132, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_dealloc_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshcd_populate_vreg(ptr noundef %dev, ptr noundef %name, ptr nocapture noundef writeonly %out_vreg) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %prop_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prop_name) #8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = call ptr @memset(ptr %prop_name, i32 255, i32 32)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #11
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name, i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef %name)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %2, ptr noundef nonnull %prop_name, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end7

of_parse_phandle.exit:                            ; preds = %if.end
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.do.end7_crit_edge, label %if.end9

of_parse_phandle.exit.do.end7_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end7:                                          ; preds = %of_parse_phandle.exit.do.end7_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, ptr noundef nonnull %prop_name) #11
  br label %out

if.end9:                                          ; preds = %of_parse_phandle.exit
  %call.i48 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool11.not = icmp eq ptr %call.i48, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef %name, i32 noundef 3264) #8
  %name15 = getelementptr inbounds %struct.ufs_vreg, ptr %call.i48, i32 0, i32 1
  %6 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %name15, align 4
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %name)
  %max_uA = getelementptr inbounds %struct.ufs_vreg, ptr %call.i48, i32 0, i32 6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull %prop_name, ptr noundef %max_uA, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.end19.out_crit_edge, label %do.end28

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.43, ptr noundef nonnull %prop_name) #11
  %7 = ptrtoint ptr %max_uA to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %max_uA, align 4
  br label %out

out:                                              ; preds = %do.end28, %if.end19.out_crit_edge, %do.end7, %do.end
  %vreg.0 = phi ptr [ %call.i48, %do.end28 ], [ %call.i48, %if.end19.out_crit_edge ], [ null, %do.end7 ], [ null, %do.end ]
  %8 = ptrtoint ptr %out_vreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vreg.0, ptr %out_vreg, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__ksymtab_ufshcd_pltfrm_shutdown, !1, !"__ksymtab_ufshcd_pltfrm_shutdown", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 184, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 237, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ufshcd_get_pwr_dev_param._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ufshcd_get_pwr_dev_param._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ufshcd_get_pwr_dev_param, !9, !"__ksymtab_ufshcd_get_pwr_dev_param", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 296, i32 1}
!10 = !{ptr @__ksymtab_ufshcd_init_pwr_dev_param, !11, !"__ksymtab_ufshcd_init_pwr_dev_param", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 313, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 344, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ufshcd_pltfrm_init._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @ufshcd_pltfrm_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 352, i32 3}
!21 = !{ptr @ufshcd_pltfrm_init._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ufshcd_pltfrm_init._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 358, i32 3}
!25 = !{ptr @ufshcd_pltfrm_init._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ufshcd_pltfrm_init._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 367, i32 3}
!29 = !{ptr @ufshcd_pltfrm_init._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ufshcd_pltfrm_init._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ufshcd_pltfrm_init, !32, !"__ksymtab_ufshcd_pltfrm_init", i1 false, i1 false}
!32 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 381, i32 1}
!33 = !{ptr @__UNIQUE_ID_author336, !34, !"__UNIQUE_ID_author336", i1 false, i1 false}
!34 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 383, i32 1}
!35 = !{ptr @__UNIQUE_ID_author337, !36, !"__UNIQUE_ID_author337", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 384, i32 1}
!37 = !{ptr @__UNIQUE_ID_description338, !38, !"__UNIQUE_ID_description338", i1 false, i1 false}
!38 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 385, i32 1}
!39 = !{ptr @__UNIQUE_ID_file339, !40, !"__UNIQUE_ID_file339", i1 false, i1 false}
!40 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 386, i32 1}
!41 = !{ptr @__UNIQUE_ID_license340, !40, !"__UNIQUE_ID_license340", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_version341, !43, !"__UNIQUE_ID_version341", i1 false, i1 false}
!43 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 387, i32 1}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__modver_attr, !43, !"__modver_attr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 37, i32 38}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 39, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ufshcd_parse_clock_info._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @ufshcd_parse_clock_info._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 42, i32 3}
!58 = !{ptr @ufshcd_parse_clock_info._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ufshcd_parse_clock_info._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 50, i32 27}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 51, i32 3}
!64 = !{ptr @ufshcd_parse_clock_info._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ufshcd_parse_clock_info._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 60, i32 3}
!68 = !{ptr @ufshcd_parse_clock_info._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ufshcd_parse_clock_info._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 75, i32 3}
!72 = !{ptr @ufshcd_parse_clock_info._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ufshcd_parse_clock_info._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 100, i32 21}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 102, i32 3}
!78 = !{ptr @ufshcd_parse_clock_info.__UNIQUE_ID_ddebug322, !77, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 163, i32 34}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 167, i32 34}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 171, i32 34}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 175, i32 34}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 119, i32 3}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ufshcd_populate_vreg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ufshcd_populate_vreg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 123, i32 37}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 125, i32 3}
!96 = !{ptr @ufshcd_populate_vreg._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ufshcd_populate_vreg._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 138, i32 37}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 140, i32 3}
!102 = !{ptr @ufshcd_populate_vreg._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ufshcd_populate_vreg._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 191, i32 43}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/ufs/ufshcd-pltfrm.c", i32 194, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ufshcd_init_lanes_per_dir.__UNIQUE_ID_ddebug323, !107, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i64 2148298021, i64 2148298026, i64 2148298039, i64 2148298083, i64 2148298117, i64 2148298138}
