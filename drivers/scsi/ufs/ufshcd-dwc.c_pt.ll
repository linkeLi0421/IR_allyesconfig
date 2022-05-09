; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufshcd-dwc.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufshcd-dwc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ufshcd_dwc_dme_set_attrs\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_dwc_dme_set_attrs\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_dwc_dme_set_attrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_dwc_dme_set_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_dwc_dme_set_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_dwc_dme_set_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ufshcd_dwc_link_startup_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_ufshcd_dwc_link_startup_notify\09\09\09\09"
module asm "\09.long\09__crc_ufshcd_dwc_link_startup_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ufshcd_dwc_link_startup_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ufshcd_dwc_link_startup_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ufshcd_dwc_link_startup_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ufshcd_dwc_dme_set_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_dwc_dme_set_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_dwc_dme_set_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_dwc_dme_set_attrs to i32), ptr @__kstrtab_ufshcd_dwc_dme_set_attrs, ptr @__kstrtabns_ufshcd_dwc_dme_set_attrs }, section "___ksymtab+ufshcd_dwc_dme_set_attrs", align 4
@ufshcd_dwc_link_startup_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Phy setup failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufshcd_dwc_link_startup_notify\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/ufs/ufshcd-dwc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufshcd_dwc_link_startup_notify._entry_ptr = internal global ptr @ufshcd_dwc_link_startup_notify._entry, section ".printk_index", align 4
@ufshcd_dwc_link_startup_notify._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Link is not up\0A\00", [16 x i8] zeroinitializer }, align 32
@ufshcd_dwc_link_startup_notify._entry_ptr.7 = internal global ptr @ufshcd_dwc_link_startup_notify._entry.5, section ".printk_index", align 4
@ufshcd_dwc_link_startup_notify._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Connection setup failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ufshcd_dwc_link_startup_notify._entry_ptr.10 = internal global ptr @ufshcd_dwc_link_startup_notify._entry.8, section ".printk_index", align 4
@__kstrtab_ufshcd_dwc_link_startup_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ufshcd_dwc_link_startup_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ufshcd_dwc_link_startup_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ufshcd_dwc_link_startup_notify to i32), ptr @__kstrtab_ufshcd_dwc_link_startup_notify, ptr @__kstrtabns_ufshcd_dwc_link_startup_notify }, section "___ksymtab+ufshcd_dwc_link_startup_notify", align 4
@__UNIQUE_ID_author322 = internal constant [55 x i8] c"ufshcd_dwc.author=Joao Pinto <Joao.Pinto@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [68 x i8] c"ufshcd_dwc.description=UFS Host driver for Synopsys Designware Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [44 x i8] c"ufshcd_dwc.file=drivers/scsi/ufs/ufshcd-dwc\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [32 x i8] c"ufshcd_dwc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ufshcd_dwc_connection_setup.setup_attrs = internal constant { [18 x %struct.ufshcd_dme_attr_val], [40 x i8] } { [18 x %struct.ufshcd_dme_attr_val] [%struct.ufshcd_dme_attr_val { i32 1075838976, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 805306368, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 805371904, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1075904512, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1075970048, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1076035584, i32 0, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1076166656, i32 6, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1076559872, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1075838976, i32 1, i8 0 }, %struct.ufshcd_dme_attr_val { i32 1075838976, i32 0, i8 1 }, %struct.ufshcd_dme_attr_val { i32 805306368, i32 1, i8 1 }, %struct.ufshcd_dme_attr_val { i32 805371904, i32 1, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1075904512, i32 1, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1075970048, i32 0, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1076035584, i32 0, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1076166656, i32 6, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1076559872, i32 1, i8 1 }, %struct.ufshcd_dme_attr_val { i32 1075838976, i32 1, i8 1 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 125, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 131, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 137, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"setup_attrs\00", align 1
@___asan_gen_.42 = private constant [33 x i8] c"../drivers/scsi/ufs/ufshcd-dwc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 83, i32 42 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__ksymtab_ufshcd_dwc_dme_set_attrs, ptr @__ksymtab_ufshcd_dwc_link_startup_notify, ptr @ufshcd_dwc_link_startup_notify._entry, ptr @ufshcd_dwc_link_startup_notify._entry.5, ptr @ufshcd_dwc_link_startup_notify._entry.8, ptr @ufshcd_dwc_link_startup_notify._entry_ptr, ptr @ufshcd_dwc_link_startup_notify._entry_ptr.10, ptr @ufshcd_dwc_link_startup_notify._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @ufshcd_dwc_connection_setup.setup_attrs], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_dwc_link_startup_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_dwc_link_startup_notify._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_dwc_link_startup_notify._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_dwc_connection_setup.setup_attrs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshcd_dwc_dme_set_attrs(ptr noundef %hba, ptr nocapture noundef readonly %v, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %attr_node.012, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %attr_node.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufshcd_dme_attr_val, ptr %v, i32 %attr_node.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mib_val = getelementptr %struct.ufshcd_dme_attr_val, ptr %v, i32 %attr_node.012, i32 1
  %2 = ptrtoint ptr %mib_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mib_val, align 4
  %peer = getelementptr %struct.ufshcd_dme_attr_val, ptr %v, i32 %attr_node.012, i32 2
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %peer, align 4
  %call = tail call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef %1, i8 noundef zeroext 0, i32 noundef %3, i8 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshcd_dwc_link_startup_notify(ptr noundef %hba, i32 noundef %status) #0 align 64 {
entry:
  %dme_result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097152000) #4, !srcloc !39
  %vops.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 28
  %2 = ptrtoint ptr %vops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vops.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %land.lhs.true.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.then
  %phy_initialization.i = getelementptr inbounds %struct.ufs_hba_variant_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %phy_initialization.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_initialization.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.out_crit_edge, label %ufshcd_vops_phy_initialization.exit

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

ufshcd_vops_phy_initialization.exit:              ; preds = %land.lhs.true.i
  %call.i = tail call i32 %5(ptr noundef %hba) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ufshcd_vops_phy_initialization.exit.out_crit_edge, label %do.end

ufshcd_vops_phy_initialization.exit.out_crit_edge: ; preds = %ufshcd_vops_phy_initialization.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end:                                           ; preds = %ufshcd_vops_phy_initialization.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call.i) #7
  br label %out

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dme_result.i) #4
  %8 = ptrtoint ptr %dme_result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dme_result.i, align 4
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef -796721152, ptr noundef nonnull %dme_result.i, i8 noundef zeroext 0) #4
  %9 = ptrtoint ptr %dme_result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dme_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dme_result.i) #4
  %dev8 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #7
  br label %out

if.end9:                                          ; preds = %if.else
  %uic_link_state.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %13 = ptrtoint ptr %uic_link_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %uic_link_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dme_result.i) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end9
  %attr_node.012.i.i = phi i32 [ 0, %if.end9 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ufshcd_dme_attr_val, ptr @ufshcd_dwc_connection_setup.setup_attrs, i32 %attr_node.012.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %mib_val.i.i = getelementptr %struct.ufshcd_dme_attr_val, ptr @ufshcd_dwc_connection_setup.setup_attrs, i32 %attr_node.012.i.i, i32 1
  %16 = ptrtoint ptr %mib_val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mib_val.i.i, align 4
  %peer.i.i = getelementptr %struct.ufshcd_dme_attr_val, ptr @ufshcd_dwc_connection_setup.setup_attrs, i32 %attr_node.012.i.i, i32 2
  %18 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %peer.i.i, align 4
  %call.i.i32 = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef %15, i8 noundef zeroext 0, i32 noundef %17, i8 noundef zeroext %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i.i = icmp ne i32 %call.i.i32, 0
  %inc.i.i = add nuw nsw i32 %attr_node.012.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 18
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %ufshcd_dwc_connection_setup.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

ufshcd_dwc_connection_setup.exit:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool11.not = icmp eq i32 %call.i.i32, 0
  br i1 %tobool11.not, label %ufshcd_dwc_connection_setup.exit.out_crit_edge, label %do.end15

ufshcd_dwc_connection_setup.exit.out_crit_edge:   ; preds = %ufshcd_dwc_connection_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end15:                                         ; preds = %ufshcd_dwc_connection_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev16 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %20 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev16, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %call.i.i32) #7
  br label %out

out:                                              ; preds = %do.end15, %ufshcd_dwc_connection_setup.exit.out_crit_edge, %do.end7, %do.end, %ufshcd_vops_phy_initialization.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ %call.i, %do.end ], [ 0, %ufshcd_vops_phy_initialization.exit.out_crit_edge ], [ 1, %do.end7 ], [ %call.i.i32, %do.end15 ], [ 0, %ufshcd_dwc_connection_setup.exit.out_crit_edge ], [ 0, %land.lhs.true.i.out_crit_edge ], [ 0, %if.then.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_ufshcd_dwc_dme_set_attrs, !1, !"__ksymtab_ufshcd_dwc_dme_set_attrs", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 32, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 125, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufshcd_dwc_link_startup_notify._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ufshcd_dwc_link_startup_notify._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 131, i32 4}
!12 = !{ptr @ufshcd_dwc_link_startup_notify._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ufshcd_dwc_link_startup_notify._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 137, i32 4}
!16 = !{ptr @ufshcd_dwc_link_startup_notify._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ufshcd_dwc_link_startup_notify._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_ufshcd_dwc_link_startup_notify, !19, !"__ksymtab_ufshcd_dwc_link_startup_notify", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 144, i32 1}
!20 = !{ptr @__UNIQUE_ID_author322, !21, !"__UNIQUE_ID_author322", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 146, i32 1}
!22 = !{ptr @__UNIQUE_ID_description323, !23, !"__UNIQUE_ID_description323", i1 false, i1 false}
!23 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 147, i32 1}
!24 = !{ptr @__UNIQUE_ID_file324, !25, !"__UNIQUE_ID_file324", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 148, i32 1}
!26 = !{ptr @__UNIQUE_ID_license325, !25, !"__UNIQUE_ID_license325", i1 false, i1 false}
!27 = !{ptr @ufshcd_dwc_connection_setup.setup_attrs, !28, !"setup_attrs", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ufs/ufshcd-dwc.c", i32 83, i32 42}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2155539176}
!39 = !{i64 4661788}
