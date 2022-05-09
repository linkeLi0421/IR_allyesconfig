; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/tc-dwc-g210.c_pt.bc'
source_filename = "../drivers/scsi/ufs/tc-dwc-g210.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tc_dwc_g210_config_40_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_tc_dwc_g210_config_40_bit\09\09\09\09"
module asm "\09.long\09__crc_tc_dwc_g210_config_40_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc_dwc_g210_config_40_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22tc_dwc_g210_config_40_bit\22\09\09\09\09\09"
module asm "__kstrtabns_tc_dwc_g210_config_40_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tc_dwc_g210_config_20_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_tc_dwc_g210_config_20_bit\09\09\09\09"
module asm "\09.long\09__crc_tc_dwc_g210_config_20_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tc_dwc_g210_config_20_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22tc_dwc_g210_config_20_bit\22\09\09\09\09\09"
module asm "__kstrtabns_tc_dwc_g210_config_20_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ufshcd_dme_attr_val = type { i32, i32, i8 }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.list_head = type { ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
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

@tc_dwc_g210_config_40_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Configuring Test Chip 40-bit RMMI\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tc_dwc_g210_config_40_bit\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/ufs/tc-dwc-g210.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc_dwc_g210_config_40_bit._entry_ptr = internal global ptr @tc_dwc_g210_config_40_bit._entry, section ".printk_index", align 4
@tc_dwc_g210_config_40_bit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 266, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Configuration failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tc_dwc_g210_config_40_bit._entry_ptr.8 = internal global ptr @tc_dwc_g210_config_40_bit._entry.5, section ".printk_index", align 4
@__kstrtab_tc_dwc_g210_config_40_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc_dwc_g210_config_40_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_tc_dwc_g210_config_40_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc_dwc_g210_config_40_bit to i32), ptr @__kstrtab_tc_dwc_g210_config_40_bit, ptr @__kstrtabns_tc_dwc_g210_config_40_bit }, section "___ksymtab+tc_dwc_g210_config_40_bit", align 4
@tc_dwc_g210_config_20_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Configuring Test Chip 20-bit RMMI\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tc_dwc_g210_config_20_bit\00", [38 x i8] zeroinitializer }, align 32
@tc_dwc_g210_config_20_bit._entry_ptr = internal global ptr @tc_dwc_g210_config_20_bit._entry, section ".printk_index", align 4
@tc_dwc_g210_config_20_bit._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.10, ptr @.str.2, i32 298, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@tc_dwc_g210_config_20_bit._entry_ptr.12 = internal global ptr @tc_dwc_g210_config_20_bit._entry.11, section ".printk_index", align 4
@__kstrtab_tc_dwc_g210_config_20_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_tc_dwc_g210_config_20_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_tc_dwc_g210_config_20_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tc_dwc_g210_config_20_bit to i32), ptr @__kstrtab_tc_dwc_g210_config_20_bit, ptr @__kstrtabns_tc_dwc_g210_config_20_bit }, section "___ksymtab+tc_dwc_g210_config_20_bit", align 4
@__UNIQUE_ID_author322 = internal constant [56 x i8] c"tc_dwc_g210.author=Joao Pinto <Joao.Pinto@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [55 x i8] c"tc_dwc_g210.description=Synopsys G210 Test Chip driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [46 x i8] c"tc_dwc_g210.file=drivers/scsi/ufs/tc-dwc-g210\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [33 x i8] c"tc_dwc_g210.license=Dual BSD/GPL\00", section ".modinfo", align 1
@tc_dwc_g210_setup_40bit_rmmi.setup_attrs = internal constant { [29 x %struct.ufshcd_dme_attr_val], [68 x i8] } { [29 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 -2144665600, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2134966272, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2132148224, i32 128, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131689472, i32 8, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131558400, i32 100, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131034112, i32 9, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131755008, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15400960, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466496, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728640, i32 20, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15794176, i32 214, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15400964, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466500, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728644, i32 4, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12189700, i32 128, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2132410368, i32 4, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2134048768, i32 2, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12189700, i32 128, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15859716, i32 3, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12386308, i32 22, i8 0 }, %struct.ufshcd_dme_attr_val { i32 13041668, i32 66, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15925252, i32 164, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11796484, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15990788, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15269892, i32 40, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11862020, i32 30, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12517380, i32 47, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12517380, i32 47, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131230720, i32 0, i8 0 }], [68 x i8] zeroinitializer }, align 32
@tc_dwc_g210_setup_20bit_rmmi.setup_attrs = internal constant { [7 x %struct.ufshcd_dme_attr_val], [44 x i8] } { [7 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 -2144665600, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2134966272, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2132148224, i32 192, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131689472, i32 68, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131558400, i32 100, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131034112, i32 9, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131755008, i32 0, i8 0 }], [44 x i8] zeroinitializer }, align 32
@tc_dwc_g210_setup_20bit_rmmi_lane0.setup_attrs = internal constant { [20 x %struct.ufshcd_dme_attr_val], [48 x i8] } { [20 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 15400960, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466496, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466500, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728640, i32 18, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15794176, i32 214, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15400964, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728644, i32 2, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12189700, i32 128, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2132410368, i32 4, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2134048768, i32 2, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15859716, i32 3, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12386308, i32 22, i8 0 }, %struct.ufshcd_dme_attr_val { i32 13041668, i32 66, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15925252, i32 164, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11796484, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15990788, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15269892, i32 40, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11862020, i32 30, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12517380, i32 47, i8 0 }, %struct.ufshcd_dme_attr_val { i32 -2131230720, i32 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tc_dwc_g210_setup_20bit_rmmi_lane1.setup_tx_attrs = internal constant { [4 x %struct.ufshcd_dme_attr_val], [48 x i8] } { [4 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 15400961, i32 13, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466497, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728641, i32 18, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15794176, i32 214, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tc_dwc_g210_setup_20bit_rmmi_lane1.setup_rx_attrs = internal constant { [13 x %struct.ufshcd_dme_attr_val], [36 x i8] } { [13 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 15400965, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15466501, i32 25, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15728645, i32 2, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12189701, i32 128, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15859717, i32 3, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12386309, i32 22, i8 0 }, %struct.ufshcd_dme_attr_val { i32 13041669, i32 66, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15925253, i32 164, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11796485, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15990789, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 15269893, i32 40, i8 0 }, %struct.ufshcd_dme_attr_val { i32 11862021, i32 30, i8 0 }, %struct.ufshcd_dme_attr_val { i32 12517381, i32 47, i8 0 }], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 263, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 266, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 295, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 298, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 26, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 222, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"setup_attrs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 90, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"setup_tx_attrs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 147, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"setup_rx_attrs\00", align 1
@___asan_gen_.65 = private constant [34 x i8] c"../drivers/scsi/ufs/tc-dwc-g210.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 158, i32 42 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__ksymtab_tc_dwc_g210_config_20_bit, ptr @__ksymtab_tc_dwc_g210_config_40_bit, ptr @tc_dwc_g210_config_20_bit._entry, ptr @tc_dwc_g210_config_20_bit._entry.11, ptr @tc_dwc_g210_config_20_bit._entry_ptr, ptr @tc_dwc_g210_config_20_bit._entry_ptr.12, ptr @tc_dwc_g210_config_40_bit._entry, ptr @tc_dwc_g210_config_40_bit._entry.5, ptr @tc_dwc_g210_config_40_bit._entry_ptr, ptr @tc_dwc_g210_config_40_bit._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @tc_dwc_g210_setup_40bit_rmmi.setup_attrs, ptr @tc_dwc_g210_setup_20bit_rmmi.setup_attrs, ptr @tc_dwc_g210_setup_20bit_rmmi_lane0.setup_attrs, ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_tx_attrs, ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_rx_attrs], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_config_40_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_config_40_bit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_config_20_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_config_20_bit._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_setup_40bit_rmmi.setup_attrs to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_setup_20bit_rmmi.setup_attrs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_setup_20bit_rmmi_lane0.setup_attrs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_tx_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_rx_attrs to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc_dwc_g210_config_40_bit(ptr noundef %hba) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str) #7
  %call.i = tail call i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr noundef nonnull @tc_dwc_g210_setup_40bit_rmmi.setup_attrs, i32 noundef 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %out

if.end:                                           ; preds = %entry
  %call.i16 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool6.not = icmp eq i32 %call.i16, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i17 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -794951680, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #4
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge, %do.end3
  %ret.0 = phi i32 [ %call.i, %do.end3 ], [ %call.i16, %if.end.out_crit_edge ], [ %call.i17, %if.end8 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tc_dwc_g210_config_20_bit(ptr noundef %hba) #0 align 64 {
entry:
  %connected_rx_lanes.i.i = alloca i32, align 4
  %connected_tx_lanes.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  %call.i = tail call i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr noundef nonnull @tc_dwc_g210_setup_20bit_rmmi.setup_attrs, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr noundef nonnull @tc_dwc_g210_setup_20bit_rmmi_lane0.setup_attrs, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.end3_crit_edge

if.end.i.do.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %connected_rx_lanes.i.i) #4
  %2 = ptrtoint ptr %connected_rx_lanes.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %connected_rx_lanes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %connected_tx_lanes.i.i) #4
  %3 = ptrtoint ptr %connected_tx_lanes.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %connected_tx_lanes.i.i, align 4
  %call.i.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 356515840, ptr noundef nonnull %connected_rx_lanes.i.i, i8 noundef zeroext 0) #4
  %call.i13.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 354418688, ptr noundef nonnull %connected_tx_lanes.i.i, i8 noundef zeroext 0) #4
  %4 = ptrtoint ptr %connected_tx_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connected_tx_lanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end4.i.if.end4.i.i_crit_edge

if.end4.i.if.end4.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  %call2.i.i = call i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr noundef nonnull @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_tx_attrs, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %tc_dwc_g210_setup_20bit_rmmi.exit.thread24

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i

tc_dwc_g210_setup_20bit_rmmi.exit.thread24:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_tx_lanes.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_rx_lanes.i.i) #4
  br label %do.end3

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %if.end4.i.if.end4.i.i_crit_edge
  %6 = ptrtoint ptr %connected_rx_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connected_rx_lanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5.i.i = icmp eq i32 %7, 2
  br i1 %cmp5.i.i, label %tc_dwc_g210_setup_20bit_rmmi.exit, label %tc_dwc_g210_setup_20bit_rmmi.exit.thread21

tc_dwc_g210_setup_20bit_rmmi.exit.thread21:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_tx_lanes.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_rx_lanes.i.i) #4
  br label %if.end

tc_dwc_g210_setup_20bit_rmmi.exit:                ; preds = %if.end4.i.i
  %call7.i.i = call i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr noundef nonnull @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_rx_attrs, i32 noundef 13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_tx_lanes.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connected_rx_lanes.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not, label %tc_dwc_g210_setup_20bit_rmmi.exit.if.end_crit_edge, label %tc_dwc_g210_setup_20bit_rmmi.exit.do.end3_crit_edge

tc_dwc_g210_setup_20bit_rmmi.exit.do.end3_crit_edge: ; preds = %tc_dwc_g210_setup_20bit_rmmi.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

tc_dwc_g210_setup_20bit_rmmi.exit.if.end_crit_edge: ; preds = %tc_dwc_g210_setup_20bit_rmmi.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end3:                                          ; preds = %tc_dwc_g210_setup_20bit_rmmi.exit.do.end3_crit_edge, %tc_dwc_g210_setup_20bit_rmmi.exit.thread24, %if.end.i.do.end3_crit_edge, %entry.do.end3_crit_edge
  %ret.0.i20 = phi i32 [ %call7.i.i, %tc_dwc_g210_setup_20bit_rmmi.exit.do.end3_crit_edge ], [ %call2.i.i, %tc_dwc_g210_setup_20bit_rmmi.exit.thread24 ], [ %call.i.i, %if.end.i.do.end3_crit_edge ], [ %call.i, %entry.do.end3_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  br label %out

if.end:                                           ; preds = %tc_dwc_g210_setup_20bit_rmmi.exit.if.end_crit_edge, %tc_dwc_g210_setup_20bit_rmmi.exit.thread21
  %call.i16 = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool6.not = icmp eq i32 %call.i16, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i17 = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -794951680, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #4
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge, %do.end3
  %ret.0 = phi i32 [ %ret.0.i20, %do.end3 ], [ %call.i16, %if.end.out_crit_edge ], [ %call.i17, %if.end8 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dwc_dme_set_attrs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 263, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tc_dwc_g210_config_40_bit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tc_dwc_g210_config_40_bit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 266, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tc_dwc_g210_config_40_bit._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tc_dwc_g210_config_40_bit._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_tc_dwc_g210_config_40_bit, !14, !"__ksymtab_tc_dwc_g210_config_40_bit", i1 false, i1 false}
!14 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 281, i32 1}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 295, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tc_dwc_g210_config_20_bit._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tc_dwc_g210_config_20_bit._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tc_dwc_g210_config_20_bit._entry.11, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 298, i32 3}
!22 = !{ptr @tc_dwc_g210_config_20_bit._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_tc_dwc_g210_config_20_bit, !24, !"__ksymtab_tc_dwc_g210_config_20_bit", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 313, i32 1}
!25 = !{ptr @__UNIQUE_ID_author322, !26, !"__UNIQUE_ID_author322", i1 false, i1 false}
!26 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 315, i32 1}
!27 = !{ptr @__UNIQUE_ID_description323, !28, !"__UNIQUE_ID_description323", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 316, i32 1}
!29 = !{ptr @__UNIQUE_ID_file324, !30, !"__UNIQUE_ID_file324", i1 false, i1 false}
!30 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 317, i32 1}
!31 = !{ptr @__UNIQUE_ID_license325, !30, !"__UNIQUE_ID_license325", i1 false, i1 false}
!32 = !{ptr @tc_dwc_g210_setup_40bit_rmmi.setup_attrs, !33, !"setup_attrs", i1 false, i1 false}
!33 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 26, i32 42}
!34 = !{ptr @tc_dwc_g210_setup_20bit_rmmi.setup_attrs, !35, !"setup_attrs", i1 false, i1 false}
!35 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 222, i32 42}
!36 = !{ptr @tc_dwc_g210_setup_20bit_rmmi_lane0.setup_attrs, !37, !"setup_attrs", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 90, i32 42}
!38 = !{ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_tx_attrs, !39, !"setup_tx_attrs", i1 false, i1 false}
!39 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 147, i32 42}
!40 = !{ptr @tc_dwc_g210_setup_20bit_rmmi_lane1.setup_rx_attrs, !41, !"setup_rx_attrs", i1 false, i1 false}
!41 = !{!"../drivers/scsi/ufs/tc-dwc-g210.c", i32 158, i32 42}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
