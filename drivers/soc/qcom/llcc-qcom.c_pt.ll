; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/llcc-qcom.c_pt.bc'
source_filename = "../drivers/soc/qcom/llcc-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+llcc_slice_getd\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_slice_getd\09\09\09\09"
module asm "\09.long\09__crc_llcc_slice_getd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_slice_getd:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_slice_getd\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_slice_getd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llcc_slice_putd\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_slice_putd\09\09\09\09"
module asm "\09.long\09__crc_llcc_slice_putd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_slice_putd:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_slice_putd\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_slice_putd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llcc_slice_activate\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_slice_activate\09\09\09\09"
module asm "\09.long\09__crc_llcc_slice_activate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_slice_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_slice_activate\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_slice_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llcc_slice_deactivate\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_slice_deactivate\09\09\09\09"
module asm "\09.long\09__crc_llcc_slice_deactivate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_slice_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_slice_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_slice_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llcc_get_slice_id\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_get_slice_id\09\09\09\09"
module asm "\09.long\09__crc_llcc_get_slice_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_get_slice_id:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_get_slice_id\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_get_slice_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llcc_get_slice_size\22, \22a\22\09"
module asm "\09.weak\09__crc_llcc_get_slice_size\09\09\09\09"
module asm "\09.long\09__crc_llcc_get_slice_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llcc_get_slice_size:\09\09\09\09\09"
module asm "\09.asciz \09\22llcc_get_slice_size\22\09\09\09\09\09"
module asm "__kstrtabns_llcc_get_slice_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_llcc_config = type { ptr, i32, i8 }
%struct.llcc_slice_config = type { i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.llcc_drv_data = type { ptr, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llcc_slice_desc = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@drv_data = internal global { ptr, [28 x i8] } { ptr inttoptr (i32 -517 to ptr), [28 x i8] zeroinitializer }, align 32
@__kstrtab_llcc_slice_getd = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_slice_getd = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_slice_getd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_slice_getd to i32), ptr @__kstrtab_llcc_slice_getd, ptr @__kstrtabns_llcc_slice_getd }, section "___ksymtab_gpl+llcc_slice_getd", align 4
@__kstrtab_llcc_slice_putd = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_slice_putd = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_slice_putd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_slice_putd to i32), ptr @__kstrtab_llcc_slice_putd, ptr @__kstrtabns_llcc_slice_putd }, section "___ksymtab_gpl+llcc_slice_putd", align 4
@__kstrtab_llcc_slice_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_slice_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_slice_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_slice_activate to i32), ptr @__kstrtab_llcc_slice_activate, ptr @__kstrtabns_llcc_slice_activate }, section "___ksymtab_gpl+llcc_slice_activate", align 4
@__kstrtab_llcc_slice_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_slice_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_slice_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_slice_deactivate to i32), ptr @__kstrtab_llcc_slice_deactivate, ptr @__kstrtabns_llcc_slice_deactivate }, section "___ksymtab_gpl+llcc_slice_deactivate", align 4
@__kstrtab_llcc_get_slice_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_get_slice_id = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_get_slice_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_get_slice_id to i32), ptr @__kstrtab_llcc_get_slice_id, ptr @__kstrtabns_llcc_get_slice_id }, section "___ksymtab_gpl+llcc_get_slice_id", align 4
@__kstrtab_llcc_get_slice_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_llcc_get_slice_size = external dso_local constant [0 x i8], align 1
@__ksymtab_llcc_get_slice_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llcc_get_slice_size to i32), ptr @__kstrtab_llcc_get_slice_size, ptr @__kstrtabns_llcc_get_slice_size }, section "___ksymtab_gpl+llcc_get_slice_size", align 4
@__initcall__kmod_llcc_qcom__188_686_qcom_llcc_driver_init6 = internal global ptr @qcom_llcc_driver_init, section ".initcall6.init", align 4
@qcom_llcc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_llcc_probe, ptr @qcom_llcc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_llcc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_llcc_driver_exit = internal global ptr @qcom_llcc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [59 x i8] c"llcc_qcom.description=Qualcomm Last Level Cache Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [42 x i8] c"llcc_qcom.file=drivers/soc/qcom/llcc-qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [25 x i8] c"llcc_qcom.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/qcom/llcc-qcom.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-llcc\00", [22 x i8] zeroinitializer }, align 32
@qcom_llcc_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6350_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-llcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_cfg }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"llcc_base\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"llcc_broadcast_base\00", [44 x i8] zeroinitializer }, align 32
@qcom_llcc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&drv_data->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_llcc_edac\00", [17 x i8] zeroinitializer }, align 32
@qcom_llcc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 658, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register llcc edac driver\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_llcc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_llcc_probe._entry_ptr = internal global ptr @qcom_llcc_probe._entry, section ".printk_index", align 4
@qcom_llcc_init_mmio._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"llcc_qcom:568:(&llcc_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@sc7180_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sc7180_data, i32 4, i8 1 }, [20 x i8] zeroinitializer }, align 32
@sc7280_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sc7280_data, i32 9, i8 1 }, [20 x i8] zeroinitializer }, align 32
@sdm845_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sdm845_data, i32 18, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sm6350_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sm6350_data, i32 7, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sm8150_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sm8150_data, i32 21, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sm8250_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sm8250_data, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sm8350_cfg = internal constant { %struct.qcom_llcc_config, [20 x i8] } { %struct.qcom_llcc_config { ptr @sm8350_data, i32 19, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sc7180_data = internal constant { [4 x %struct.llcc_slice_config], [32 x i8] } { [4 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 256, i32 1, i8 0, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 8, i32 8, i32 128, i32 1, i8 0, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 128, i32 1, i8 0, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 128, i32 1, i8 0, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@sc7280_data = internal constant { [9 x %struct.llcc_slice_config], [88 x i8] } { [9 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 768, i32 1, i8 0, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 7, i32 7, i32 512, i32 2, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 10, i32 10, i32 768, i32 1, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 256, i32 1, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 512, i32 1, i8 0, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 13, i32 13, i32 256, i32 1, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 21, i32 21, i32 768, i32 0, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 24, i32 24, i32 256, i32 1, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 29, i32 29, i32 64, i32 1, i8 1, i32 63, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }], [88 x i8] zeroinitializer }, align 32
@sdm845_data = internal constant { [18 x %struct.llcc_slice_config], [176 x i8] } { [18 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 2, i32 2, i32 512, i32 2, i8 1, i32 0, i32 240, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 3, i32 3, i32 512, i32 2, i8 1, i32 0, i32 240, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 4, i32 4, i32 563, i32 2, i8 1, i32 0, i32 14, i32 2, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 5, i32 5, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 6, i32 6, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 7, i32 7, i32 1024, i32 2, i8 0, i32 252, i32 3840, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 8, i32 8, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 10, i32 10, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 512, i32 1, i8 1, i32 12, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 2304, i32 1, i8 0, i32 4080, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 13, i32 13, i32 256, i32 2, i8 0, i32 0, i32 1, i32 0, i32 0, i8 1, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 15, i32 15, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 16, i32 16, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 17, i32 17, i32 2816, i32 1, i8 0, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 20, i32 20, i32 1024, i32 2, i8 1, i32 0, i32 3840, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 21, i32 21, i32 1024, i32 0, i8 1, i32 30, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 22, i32 22, i32 1024, i32 1, i8 1, i32 4092, i32 2, i32 0, i32 0, i8 1, i8 1, i8 0, i8 0 }], [176 x i8] zeroinitializer }, align 32
@sm6350_data = internal constant { [7 x %struct.llcc_slice_config], [72 x i8] } { [7 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 768, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1 }, %struct.llcc_slice_config { i32 8, i32 8, i32 512, i32 2, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 256, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 512, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 21, i32 21, i32 768, i32 0, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 23, i32 23, i32 768, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 29, i32 29, i32 64, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }], [72 x i8] zeroinitializer }, align 32
@sm8150_data = internal constant { [21 x %struct.llcc_slice_config], [216 x i8] } { [21 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 2, i32 2, i32 512, i32 2, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 3, i32 3, i32 512, i32 2, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 6, i32 6, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 7, i32 7, i32 3072, i32 1, i8 0, i32 255, i32 3840, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 8, i32 8, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 9, i32 9, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 10, i32 10, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 512, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 2560, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 13, i32 13, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 15, i32 15, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 16, i32 16, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 20, i32 20, i32 1024, i32 2, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 20, i32 21, i32 1024, i32 0, i8 1, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 22, i32 22, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 23, i32 23, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 24, i32 24, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 29, i32 29, i32 256, i32 1, i8 1, i32 15, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 30, i32 30, i32 256, i32 3, i8 1, i32 0, i32 1, i32 1, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 31, i32 31, i32 128, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }], [216 x i8] zeroinitializer }, align 32
@sm8250_data = internal constant { [16 x %struct.llcc_slice_config], [160 x i8] } { [16 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 2, i32 2, i32 512, i32 3, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 6, i32 6, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.llcc_slice_config { i32 10, i32 10, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1 }, %struct.llcc_slice_config { i32 13, i32 13, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 15, i32 15, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 16, i32 16, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 17, i32 17, i32 512, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 22, i32 22, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 23, i32 23, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 24, i32 24, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 28, i32 28, i32 256, i32 3, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 30, i32 30, i32 128, i32 3, i8 0, i32 0, i32 3, i32 1, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.llcc_slice_config { i32 31, i32 31, i32 256, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }], [160 x i8] zeroinitializer }, align 32
@sm8350_data = internal constant { [19 x %struct.llcc_slice_config], [168 x i8] } { [19 x %struct.llcc_slice_config] [%struct.llcc_slice_config { i32 1, i32 1, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1 }, %struct.llcc_slice_config { i32 2, i32 2, i32 512, i32 3, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 6, i32 6, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.llcc_slice_config { i32 7, i32 7, i32 1024, i32 3, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 9, i32 9, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 10, i32 10, i32 3072, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 11, i32 11, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 12, i32 12, i32 1024, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0 }, %struct.llcc_slice_config { i32 13, i32 13, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.llcc_slice_config { i32 16, i32 16, i32 3072, i32 2, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 21, i32 21, i32 1024, i32 0, i8 1, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 22, i32 22, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 28, i32 28, i32 512, i32 3, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 29, i32 29, i32 256, i32 1, i8 1, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 30, i32 30, i32 1024, i32 3, i8 1, i32 0, i32 1, i32 1, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 31, i32 31, i32 512, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.llcc_slice_config { i32 32, i32 17, i32 512, i32 1, i8 0, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 33, i32 3, i32 1024, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0 }, %struct.llcc_slice_config { i32 36, i32 5, i32 512, i32 1, i8 1, i32 4095, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 1 }], [168 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"drv_data\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 258, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"qcom_llcc_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 678, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 336, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 680, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"qcom_llcc_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 667, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 588, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 595, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 645, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 655, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 658, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 568, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"sc7180_cfg\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 220, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"sc7280_cfg\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 226, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"sdm845_cfg\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 232, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"sm6350_cfg\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 238, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"sm8150_cfg\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 243, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"sm8250_cfg\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 248, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"sm8350_cfg\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 253, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"sc7180_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 105, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"sc7280_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 112, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"sdm845_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 124, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"sm6350_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 145, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"sm8150_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 155, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"sm8250_data\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 179, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"sm8350_data\00", align 1
@___asan_gen_.102 = private constant [32 x i8] c"../drivers/soc/qcom/llcc-qcom.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 198, i32 39 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_qcom_llcc_driver_exit, ptr @__initcall__kmod_llcc_qcom__188_686_qcom_llcc_driver_init6, ptr @__ksymtab_llcc_get_slice_id, ptr @__ksymtab_llcc_get_slice_size, ptr @__ksymtab_llcc_slice_activate, ptr @__ksymtab_llcc_slice_deactivate, ptr @__ksymtab_llcc_slice_getd, ptr @__ksymtab_llcc_slice_putd, ptr @qcom_llcc_driver_exit, ptr @qcom_llcc_probe._entry, ptr @qcom_llcc_probe._entry_ptr, ptr @drv_data, ptr @qcom_llcc_driver, ptr @.str, ptr @.str.1, ptr @qcom_llcc_of_match, ptr @.str.2, ptr @.str.3, ptr @qcom_llcc_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qcom_llcc_init_mmio._key, ptr @.str.10, ptr @sc7180_cfg, ptr @sc7280_cfg, ptr @sdm845_cfg, ptr @sm6350_cfg, ptr @sm8150_cfg, ptr @sm8250_cfg, ptr @sm8350_cfg, ptr @sc7180_data, ptr @sc7280_data, ptr @sdm845_data, ptr @sm6350_data, ptr @sm8150_data, ptr @sm8250_data, ptr @sm8350_data], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_init_mmio._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_data to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_data to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_data to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_data to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_data to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_data to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_data to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llcc_slice_getd(i32 noundef %uid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drv_data, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg2 = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfg2, align 4
  %cfg_size = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg_size, align 4
  %tobool.not31 = icmp eq ptr %2, null
  %tobool.not.not32 = xor i1 %tobool.not31, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp33 = icmp ne i32 %4, 0
  %or.cond34 = select i1 %tobool.not.not32, i1 %cmp33, i1 false
  br i1 %or.cond34, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %uid)
  %cmp343 = icmp eq i32 %6, %uid
  br i1 %cmp343, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %cmp3 = icmp eq i32 %8, %uid
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %cfg.03545 = phi ptr [ %incdec.ptr, %for.body.for.inc_crit_edge ], [ %2, %for.body.preheader.for.inc_crit_edge ]
  %count.03644 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %inc = add nuw i32 %count.03644, 1
  %incdec.ptr = getelementptr %struct.llcc_slice_config, ptr %cfg.03545, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp = icmp ult i32 %inc, %4
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end.for.end_crit_edge
  %cfg.0.lcssa = phi ptr [ %2, %if.end.for.end_crit_edge ], [ %2, %for.body.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %for.body.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %tobool.not.lcssa = phi i1 [ %tobool.not31, %if.end.for.end_crit_edge ], [ %tobool.not31, %for.body.preheader.for.end_crit_edge ], [ %tobool.not, %for.body.for.end_crit_edge ], [ %tobool.not, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %4)
  %cmp6 = icmp eq i32 %count.0.lcssa, %4
  %brmerge = select i1 %cmp6, i1 true, i1 %tobool.not.lcssa
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %slice_id = getelementptr inbounds %struct.llcc_slice_config, ptr %cfg.0.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %slice_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slice_id, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i.i, align 8
  %max_cap = getelementptr inbounds %struct.llcc_slice_config, ptr %cfg.0.lcssa, i32 0, i32 2
  %13 = ptrtoint ptr %max_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_cap, align 4
  %slice_size = getelementptr inbounds %struct.llcc_slice_desc, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %slice_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %slice_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end15 ], [ %0, %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llcc_slice_putd(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.i = icmp ugt ptr %desc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %desc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llcc_slice_activate(ptr noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drv_data, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.i24 = icmp ugt ptr %desc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i24
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  %4 = load ptr, ptr @drv_data, align 4
  %bitmap = getelementptr inbounds %struct.llcc_drv_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %6, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %lock7 = getelementptr inbounds %struct.llcc_drv_data, ptr %4, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call10 = tail call fastcc i32 @llcc_update_act_ctrl(i32 noundef %3, i32 noundef 2, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load ptr, ptr @drv_data, align 4
  %lock13 = getelementptr inbounds %struct.llcc_drv_data, ptr %11, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock13) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  %14 = load ptr, ptr @drv_data, align 4
  %bitmap16 = getelementptr inbounds %struct.llcc_drv_data, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %bitmap16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap16, align 4
  %rem.i = and i32 %13, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %13, 5
  %add.ptr.i = getelementptr i32, ptr %16, i32 %div2.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %18, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %lock17 = getelementptr inbounds %struct.llcc_drv_data, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.then6 ], [ %call10, %if.then12 ], [ 0, %if.end14 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llcc_update_act_ctrl(i32 noundef %sid, i32 noundef %act_ctrl_reg_val, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %slice_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slice_status) #10
  %0 = ptrtoint ptr %slice_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slice_status, align 4, !annotation !86
  %1 = load ptr, ptr @drv_data, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %sid, 12
  %add = or i32 %mul, 4
  %or = or i32 %act_ctrl_reg_val, 1
  %bcast_regmap = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bcast_regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bcast_regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %mul, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and = and i32 %act_ctrl_reg_val, -2
  %5 = load ptr, ptr @drv_data, align 4
  %bcast_regmap6 = getelementptr inbounds %struct.llcc_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bcast_regmap6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcast_regmap6, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %mul, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call11, 100000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end10
  %8 = load ptr, ptr @drv_data, align 4
  %bcast_regmap21 = getelementptr inbounds %struct.llcc_drv_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bcast_regmap21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bcast_regmap21, align 4
  %call22 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %slice_status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.cond
  %11 = ptrtoint ptr %slice_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slice_status, align 4
  %and24 = and i32 %12, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call29 = call i64 @ktime_get() #10
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr @drv_data, align 4
  %bcast_regmap33 = getelementptr inbounds %struct.llcc_drv_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bcast_regmap33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bcast_regmap33, align 4
  %call34 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add, ptr noundef nonnull %slice_status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool40.not = icmp eq i32 %call34, 0
  br i1 %tobool40.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %16 = ptrtoint ptr %slice_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slice_status, align 4
  %and41 = and i32 %17, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %phi.sel = select i1 %tobool42.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call34, %for.end.cleanup_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call22, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slice_status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llcc_slice_deactivate(ptr noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drv_data, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.i25 = icmp ugt ptr %desc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i25
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  %4 = load ptr, ptr @drv_data, align 4
  %bitmap = getelementptr inbounds %struct.llcc_drv_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %6, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %lock7 = getelementptr inbounds %struct.llcc_drv_data, ptr %4, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call10 = tail call fastcc i32 @llcc_update_act_ctrl(i32 noundef %3, i32 noundef 4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load ptr, ptr @drv_data, align 4
  %lock13 = getelementptr inbounds %struct.llcc_drv_data, ptr %11, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock13) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  %14 = load ptr, ptr @drv_data, align 4
  %bitmap16 = getelementptr inbounds %struct.llcc_drv_data, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %bitmap16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap16, align 4
  %rem.i = and i32 %13, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %13, 5
  %add.ptr.i = getelementptr i32, ptr %16, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %and.i24 = and i32 %18, %neg.i
  store i32 %and.i24, ptr %add.ptr.i, align 4
  %lock17 = getelementptr inbounds %struct.llcc_drv_data, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call10, %if.then12 ], [ 0, %if.end14 ], [ 0, %if.then6 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llcc_get_slice_id(ptr noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.i = icmp ugt ptr %desc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llcc_get_slice_size(ptr noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %desc, null
  %cmp.i = icmp ugt ptr %desc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %slice_size = getelementptr inbounds %struct.llcc_slice_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %slice_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slice_size, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_llcc_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_llcc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_llcc_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_llcc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_llcc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %llcc_regmap_config.i126 = alloca %struct.regmap_config, align 4
  %llcc_regmap_config.i = alloca %struct.regmap_config, align 4
  %num_banks = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_banks) #10
  %0 = ptrtoint ptr %num_banks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_banks, align 4, !annotation !86
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #10
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %version, align 4, !annotation !86
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #10
  store ptr %call.i, ptr @drv_data, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %llcc_regmap_config.i) #10
  %2 = getelementptr inbounds i8, ptr %llcc_regmap_config.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 160)
  %4 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %4, align 4
  %6 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %6, align 4
  %8 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %8, align 4
  %10 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i, i32 0, i32 19
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %10, align 4
  %call.i125 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #10
  %cmp.i.i = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.qcom_llcc_init_mmio.exit_crit_edge, label %if.end.i

if.end.qcom_llcc_init_mmio.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_llcc_init_mmio.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %llcc_regmap_config.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.2, ptr %llcc_regmap_config.i, align 4
  %call4.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i125, ptr noundef nonnull %llcc_regmap_config.i, ptr noundef nonnull @qcom_llcc_init_mmio._key, ptr noundef nonnull @.str.10) #10
  br label %qcom_llcc_init_mmio.exit

qcom_llcc_init_mmio.exit:                         ; preds = %if.end.i, %if.end.qcom_llcc_init_mmio.exit_crit_edge
  %retval.0.i = phi ptr [ %call4.i, %if.end.i ], [ %call.i125, %if.end.qcom_llcc_init_mmio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %llcc_regmap_config.i) #10
  %13 = load ptr, ptr @drv_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %13, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %qcom_llcc_init_mmio.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %retval.0.i to i32
  br label %err

if.end8:                                          ; preds = %qcom_llcc_init_mmio.exit
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %llcc_regmap_config.i126) #10
  %16 = getelementptr inbounds i8, ptr %llcc_regmap_config.i126, i32 12
  %17 = call ptr @memset(ptr %16, i32 0, i32 160)
  %18 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i126, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %18, align 4
  %20 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i126, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %20, align 4
  %22 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i126, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %22, align 4
  %24 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %llcc_regmap_config.i126, i32 0, i32 19
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %24, align 4
  %call.i127 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #10
  %cmp.i.i128 = icmp ugt ptr %call.i127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i128, label %if.end8.qcom_llcc_init_mmio.exit133_crit_edge, label %if.end.i131

if.end8.qcom_llcc_init_mmio.exit133_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_llcc_init_mmio.exit133

if.end.i131:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %llcc_regmap_config.i126 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.3, ptr %llcc_regmap_config.i126, align 4
  %call4.i130 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i127, ptr noundef nonnull %llcc_regmap_config.i126, ptr noundef nonnull @qcom_llcc_init_mmio._key, ptr noundef nonnull @.str.10) #10
  br label %qcom_llcc_init_mmio.exit133

qcom_llcc_init_mmio.exit133:                      ; preds = %if.end.i131, %if.end8.qcom_llcc_init_mmio.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %call4.i130, %if.end.i131 ], [ %call.i127, %if.end8.qcom_llcc_init_mmio.exit133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %llcc_regmap_config.i126) #10
  %27 = load ptr, ptr @drv_data, align 4
  %bcast_regmap = getelementptr inbounds %struct.llcc_drv_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bcast_regmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i132, ptr %bcast_regmap, align 4
  %cmp.i134 = icmp ugt ptr %retval.0.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then12, label %if.end15

if.then12:                                        ; preds = %qcom_llcc_init_mmio.exit133
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %retval.0.i132 to i32
  br label %err

if.end15:                                         ; preds = %qcom_llcc_init_mmio.exit133
  %call17 = call i32 @regmap_read(ptr noundef %retval.0.i132, i32 noundef 196608, ptr noundef nonnull %version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end32, label %if.end15.err_crit_edge

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end32:                                         ; preds = %if.end15
  %30 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version, align 4
  %shr = lshr i32 %31, 24
  %32 = load ptr, ptr @drv_data, align 4
  %major_version = getelementptr inbounds %struct.llcc_drv_data, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr, ptr %major_version, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 4
  %call34 = call i32 @regmap_read(ptr noundef %35, i32 noundef 196620, ptr noundef nonnull %num_banks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %do.end32.err_crit_edge

do.end32.err_crit_edge:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end37:                                         ; preds = %do.end32
  %36 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_banks, align 4
  %shr39 = lshr i32 %37, 28
  store i32 %shr39, ptr %num_banks, align 4
  %38 = load ptr, ptr @drv_data, align 4
  %num_banks40 = getelementptr inbounds %struct.llcc_drv_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %num_banks40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr39, ptr %num_banks40, align 4
  %call42 = call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %40 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call42, align 4
  %size = getelementptr inbounds %struct.qcom_llcc_config, ptr %call42, i32 0, i32 1
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp146.not = icmp eq i32 %43, 0
  br i1 %cmp146.not, label %if.end37.for.end_crit_edge, label %for.body.lr.ph

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end37
  %44 = load ptr, ptr @drv_data, align 4
  %max_slices = getelementptr inbounds %struct.llcc_drv_data, ptr %44, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %slice_id = getelementptr %struct.llcc_slice_config, ptr %41, i32 %i.0147, i32 1
  %45 = ptrtoint ptr %slice_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slice_id, align 4
  %47 = ptrtoint ptr %max_slices to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_slices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp43 = icmp ugt i32 %46, %48
  br i1 %cmp43, label %if.then44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %max_slices to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %max_slices, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %43
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge
  %50 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_banks, align 4
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #10
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !87

devm_kcalloc.exit.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %54 = load ptr, ptr @drv_data, align 4
  %offsets141 = getelementptr inbounds %struct.llcc_drv_data, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %offsets141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %offsets141, align 4
  br label %err

devm_kcalloc.exit:                                ; preds = %for.end
  %56 = extractvalue { i32, i1 } %52, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %56, i32 noundef 3520) #10
  %57 = load ptr, ptr @drv_data, align 4
  %offsets = getelementptr inbounds %struct.llcc_drv_data, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i, ptr %offsets, align 4
  %tobool51.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool51.not, label %devm_kcalloc.exit.err_crit_edge, label %for.cond54.preheader

devm_kcalloc.exit.err_crit_edge:                  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond54.preheader:                             ; preds = %devm_kcalloc.exit
  %59 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp55148.not = icmp eq i32 %60, 0
  br i1 %cmp55148.not, label %for.cond54.preheader.devm_kcalloc.exit138_crit_edge, label %for.cond54.preheader.for.body56_crit_edge

for.cond54.preheader.for.body56_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body56

for.cond54.preheader.devm_kcalloc.exit138_crit_edge: ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %devm_kcalloc.exit138

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond54.preheader.for.body56_crit_edge
  %i.1149 = phi i32 [ %inc60, %for.body56.for.body56_crit_edge ], [ 0, %for.cond54.preheader.for.body56_crit_edge ]
  %mul = shl i32 %i.1149, 19
  %61 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %offsets, align 4
  %arrayidx58 = getelementptr i32, ptr %62, i32 %i.1149
  %63 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %arrayidx58, align 4
  %inc60 = add nuw i32 %i.1149, 1
  %64 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_banks, align 4
  %cmp55 = icmp ult i32 %inc60, %65
  br i1 %cmp55, label %for.body56.for.body56_crit_edge, label %for.body56.devm_kcalloc.exit138_crit_edge

for.body56.devm_kcalloc.exit138_crit_edge:        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %devm_kcalloc.exit138

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56

devm_kcalloc.exit138:                             ; preds = %for.body56.devm_kcalloc.exit138_crit_edge, %for.cond54.preheader.devm_kcalloc.exit138_crit_edge
  %max_slices62 = getelementptr inbounds %struct.llcc_drv_data, ptr %57, i32 0, i32 5
  %66 = ptrtoint ptr %max_slices62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_slices62, align 4
  %sub = add i32 %67, 31
  %68 = lshr i32 %sub, 3
  %69 = and i32 %68, 536870908
  %call5.i.i135 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %69, i32 noundef 3520) #10
  %70 = load ptr, ptr @drv_data, align 4
  %bitmap = getelementptr inbounds %struct.llcc_drv_data, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call5.i.i135, ptr %bitmap, align 4
  %tobool65.not = icmp eq ptr %call5.i.i135, null
  br i1 %tobool65.not, label %devm_kcalloc.exit138.err_crit_edge, label %if.end67

devm_kcalloc.exit138.err_crit_edge:               ; preds = %devm_kcalloc.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end67:                                         ; preds = %devm_kcalloc.exit138
  %cfg68 = getelementptr inbounds %struct.llcc_drv_data, ptr %70, i32 0, i32 2
  %72 = ptrtoint ptr %cfg68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %41, ptr %cfg68, align 4
  %cfg_size = getelementptr inbounds %struct.llcc_drv_data, ptr %70, i32 0, i32 4
  %73 = ptrtoint ptr %cfg_size to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %43, ptr %cfg_size, align 4
  %lock = getelementptr inbounds %struct.llcc_drv_data, ptr %70, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @qcom_llcc_probe.__key) #10
  %74 = load ptr, ptr @drv_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %driver_data.i.i, align 4
  %call72 = call fastcc i32 @qcom_llcc_cfg_program(ptr noundef %call42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end67.err_crit_edge

if.end67.err_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end75:                                         ; preds = %if.end67
  %call76 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %76 = load ptr, ptr @drv_data, align 4
  %ecc_irq = getelementptr inbounds %struct.llcc_drv_data, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %ecc_irq to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call76, ptr %ecc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call76)
  %cmp78 = icmp sgt i32 %call76, -1
  br i1 %cmp78, label %if.then79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then79:                                        ; preds = %if.end75
  %call81 = call fastcc ptr @platform_device_register_data(ptr noundef %dev1, ptr noundef %76)
  %cmp.i139 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end86, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end86:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #14
  br label %cleanup

err:                                              ; preds = %if.end67.err_crit_edge, %devm_kcalloc.exit138.err_crit_edge, %devm_kcalloc.exit.err_crit_edge, %devm_kcalloc.exit.thread, %do.end32.err_crit_edge, %if.end15.err_crit_edge, %if.then12, %if.then5, %entry.err_crit_edge
  %ret.0 = phi i32 [ %15, %if.then5 ], [ %29, %if.then12 ], [ %call17, %if.end15.err_crit_edge ], [ %call34, %do.end32.err_crit_edge ], [ %call72, %if.end67.err_crit_edge ], [ -12, %entry.err_crit_edge ], [ -12, %devm_kcalloc.exit.err_crit_edge ], [ -12, %devm_kcalloc.exit138.err_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  store ptr inttoptr (i32 -19 to ptr), ptr @drv_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end86, %if.then79.cleanup_crit_edge, %if.end75.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then79.cleanup_crit_edge ], [ 0, %do.end86 ], [ 0, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_banks) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qcom_llcc_remove(ptr nocapture noundef readnone %pdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr inttoptr (i32 -19 to ptr), ptr @drv_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_llcc_cfg_program(ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.llcc_slice_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drv_data, align 4
  %cfg_size = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg_size, align 4
  %cfg1 = getelementptr inbounds %struct.llcc_drv_data, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6.not = icmp eq i32 %2, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = getelementptr inbounds %struct.llcc_slice_desc, ptr %desc.i, i32 0, i32 1
  %need_llcc_cfg.i = getelementptr inbounds %struct.qcom_llcc_config, ptr %cfg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.i) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !86
  %cache_mode.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 7
  %7 = ptrtoint ptr %cache_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cache_mode.i, align 4
  %probe_target_ways.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 8
  %9 = ptrtoint ptr %probe_target_ways.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %probe_target_ways.i, align 4
  %shl.i = shl i32 %10, 2
  %or.i = or i32 %shl.i, %8
  %fixed_size.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 4
  %11 = ptrtoint ptr %fixed_size.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fixed_size.i, align 4, !range !88
  %13 = shl nuw nsw i8 %12, 3
  %shl1.i = zext i8 %13 to i32
  %or2.i = or i32 %or.i, %shl1.i
  %priority.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 3
  %14 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %priority.i, align 4
  %shl3.i = shl i32 %15, 4
  %or4.i = or i32 %or2.i, %shl3.i
  %max_cap.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 2
  %16 = ptrtoint ptr %max_cap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_cap.i, align 4
  %mul.i = shl i32 %17, 10
  %18 = load ptr, ptr @drv_data, align 4
  %num_banks.i = getelementptr inbounds %struct.llcc_drv_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %num_banks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_banks.i, align 4
  %div.i = udiv i32 %mul.i, %20
  %21 = shl i32 %div.i, 10
  %shl5.i = and i32 %21, -65536
  %or6.i = or i32 %or4.i, %shl5.i
  %slice_id.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 1
  %22 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slice_id.i, align 4
  %mul7.i = shl i32 %23, 3
  %add.i = add i32 %mul7.i, 135172
  %bcast_regmap.i = getelementptr inbounds %struct.llcc_drv_data, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %bcast_regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bcast_regmap.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %25, i32 noundef %add.i, i32 noundef %or6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i, label %for.body._qcom_llcc_cfg_program.exit.thread_crit_edge

for.body._qcom_llcc_cfg_program.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %_qcom_llcc_cfg_program.exit.thread

if.end.i:                                         ; preds = %for.body
  %res_ways.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 6
  %26 = ptrtoint ptr %res_ways.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res_ways.i, align 4
  %and.i = and i32 %27, 4095
  %bonus_ways.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 5
  %28 = ptrtoint ptr %bonus_ways.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bonus_ways.i, align 4
  %shl9.i = shl i32 %29, 16
  %or10.i = or i32 %shl9.i, %and.i
  %30 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slice_id.i, align 4
  %mul12.i = shl i32 %31, 3
  %add13.i = add i32 %mul12.i, 135168
  %32 = load ptr, ptr @drv_data, align 4
  %bcast_regmap14.i = getelementptr inbounds %struct.llcc_drv_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bcast_regmap14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bcast_regmap14.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %34, i32 noundef %add13.i, i32 noundef %or10.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end.i._qcom_llcc_cfg_program.exit.thread_crit_edge

if.end.i._qcom_llcc_cfg_program.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_qcom_llcc_cfg_program.exit.thread

if.end18.i:                                       ; preds = %if.end.i
  %35 = ptrtoint ptr %need_llcc_cfg.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %need_llcc_cfg.i, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool19.not.i = icmp eq i8 %36, 0
  br i1 %tobool19.not.i, label %if.end18.i.if.end40.i_crit_edge, label %if.then20.i

if.end18.i.if.end40.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then20.i:                                      ; preds = %if.end18.i
  %dis_cap_alloc.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 9
  %37 = ptrtoint ptr %dis_cap_alloc.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dis_cap_alloc.i, align 4, !range !88
  %39 = zext i8 %38 to i32
  %40 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slice_id.i, align 4
  %shl24.i = shl nuw i32 %39, %41
  %42 = load ptr, ptr @drv_data, align 4
  %bcast_regmap25.i = getelementptr inbounds %struct.llcc_drv_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bcast_regmap25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bcast_regmap25.i, align 4
  %call26.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 139008, i32 noundef %shl24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %cleanup.i, label %if.then20.i._qcom_llcc_cfg_program.exit.thread_crit_edge

if.then20.i._qcom_llcc_cfg_program.exit.thread_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_qcom_llcc_cfg_program.exit.thread

cleanup.i:                                        ; preds = %if.then20.i
  %retain_on_pc.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 10
  %45 = ptrtoint ptr %retain_on_pc.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %retain_on_pc.i, align 1, !range !88
  %47 = zext i8 %46 to i32
  %48 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slice_id.i, align 4
  %shl33.i = shl nuw i32 %47, %49
  %50 = load ptr, ptr @drv_data, align 4
  %bcast_regmap34.i = getelementptr inbounds %struct.llcc_drv_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bcast_regmap34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bcast_regmap34.i, align 4
  %call35.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 139012, i32 noundef %shl33.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %cleanup.i.if.end40.i_crit_edge, label %cleanup.i._qcom_llcc_cfg_program.exit.thread_crit_edge

cleanup.i._qcom_llcc_cfg_program.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_qcom_llcc_cfg_program.exit.thread

cleanup.i.if.end40.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %cleanup.i.if.end40.i_crit_edge, %if.end18.i.if.end40.i_crit_edge
  %53 = load ptr, ptr @drv_data, align 4
  %major_version.i = getelementptr inbounds %struct.llcc_drv_data, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %major_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i = icmp eq i32 %55, 2
  br i1 %cmp.i, label %if.then42.i, label %if.end40.i.if.end57.i_crit_edge

if.end40.i.if.end57.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.then42.i:                                      ; preds = %if.end40.i
  %write_scid_en.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 12
  %56 = ptrtoint ptr %write_scid_en.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_scid_en.i, align 1, !range !88
  %58 = zext i8 %57 to i32
  %59 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %slice_id.i, align 4
  %shl46.i = shl nuw i32 %58, %60
  %bcast_regmap47.i = getelementptr inbounds %struct.llcc_drv_data, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %bcast_regmap47.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bcast_regmap47.i, align 4
  %shl49.i = shl nuw i32 1, %60
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 139040, i32 noundef %shl49.i, i32 noundef %shl46.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool51.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool51.not.i, label %if.then42.i.if.end57.i_crit_edge, label %if.then42.i._qcom_llcc_cfg_program.exit.thread_crit_edge

if.then42.i._qcom_llcc_cfg_program.exit.thread_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_qcom_llcc_cfg_program.exit.thread

if.then42.i.if.end57.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then42.i.if.end57.i_crit_edge, %if.end40.i.if.end57.i_crit_edge
  %activate_on_init.i = getelementptr %struct.llcc_slice_config, ptr %4, i32 %i.07, i32 11
  %63 = ptrtoint ptr %activate_on_init.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %activate_on_init.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool58.not.i = icmp eq i8 %64, 0
  br i1 %tobool58.not.i, label %_qcom_llcc_cfg_program.exit.thread3, label %_qcom_llcc_cfg_program.exit

_qcom_llcc_cfg_program.exit.thread3:              ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #10
  br label %for.inc

_qcom_llcc_cfg_program.exit.thread:               ; preds = %if.then42.i._qcom_llcc_cfg_program.exit.thread_crit_edge, %cleanup.i._qcom_llcc_cfg_program.exit.thread_crit_edge, %if.then20.i._qcom_llcc_cfg_program.exit.thread_crit_edge, %if.end.i._qcom_llcc_cfg_program.exit.thread_crit_edge, %for.body._qcom_llcc_cfg_program.exit.thread_crit_edge
  %retval.3.i.ph = phi i32 [ %call26.i, %if.then20.i._qcom_llcc_cfg_program.exit.thread_crit_edge ], [ %call15.i, %if.end.i._qcom_llcc_cfg_program.exit.thread_crit_edge ], [ %call.i, %for.body._qcom_llcc_cfg_program.exit.thread_crit_edge ], [ %call35.i, %cleanup.i._qcom_llcc_cfg_program.exit.thread_crit_edge ], [ %call.i.i, %if.then42.i._qcom_llcc_cfg_program.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #10
  br label %cleanup

_qcom_llcc_cfg_program.exit:                      ; preds = %if.end57.i
  %65 = ptrtoint ptr %slice_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slice_id.i, align 4
  %67 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %desc.i, align 4
  %call62.i = call i32 @llcc_slice_activate(ptr noundef nonnull %desc.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool.not = icmp eq i32 %call62.i, 0
  br i1 %tobool.not, label %_qcom_llcc_cfg_program.exit.for.inc_crit_edge, label %_qcom_llcc_cfg_program.exit.cleanup_crit_edge

_qcom_llcc_cfg_program.exit.cleanup_crit_edge:    ; preds = %_qcom_llcc_cfg_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

_qcom_llcc_cfg_program.exit.for.inc_crit_edge:    ; preds = %_qcom_llcc_cfg_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %_qcom_llcc_cfg_program.exit.for.inc_crit_edge, %_qcom_llcc_cfg_program.exit.thread3
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %_qcom_llcc_cfg_program.exit.cleanup_crit_edge, %_qcom_llcc_cfg_program.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.3.i.ph, %_qcom_llcc_cfg_program.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ %call62.i, %_qcom_llcc_cfg_program.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_data(ptr noundef %parent, ptr noundef %data) unnamed_addr #7 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #10
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.5, ptr %name2.i, align 4
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %6 = ptrtoint ptr %res4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res4.i, align 4
  %num_res.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 6
  %7 = ptrtoint ptr %num_res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_res.i, align 8
  %data5.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 7
  %8 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data5.i, align 4
  %size_data.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 8
  %9 = ptrtoint ptr %size_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 132, ptr %size_data.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %11 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %properties.i, align 8
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #10
  ret ptr %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_llcc_slice_getd, !1, !"__ksymtab_llcc_slice_getd", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 295, i32 1}
!2 = !{ptr @__ksymtab_llcc_slice_putd, !3, !"__ksymtab_llcc_slice_putd", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 306, i32 1}
!4 = !{ptr @__ksymtab_llcc_slice_activate, !5, !"__ksymtab_llcc_slice_activate", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 380, i32 1}
!6 = !{ptr @__ksymtab_llcc_slice_deactivate, !7, !"__ksymtab_llcc_slice_deactivate", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 419, i32 1}
!8 = !{ptr @__ksymtab_llcc_get_slice_id, !9, !"__ksymtab_llcc_get_slice_id", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 432, i32 1}
!10 = !{ptr @__ksymtab_llcc_get_slice_size, !11, !"__ksymtab_llcc_get_slice_size", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 445, i32 1}
!12 = !{ptr @__initcall__kmod_llcc_qcom__188_686_qcom_llcc_driver_init6, !13, !"__initcall__kmod_llcc_qcom__188_686_qcom_llcc_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 686, i32 1}
!14 = !{ptr @__exitcall_qcom_llcc_driver_exit, !13, !"__exitcall_qcom_llcc_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description189, !16, !"__UNIQUE_ID_description189", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 688, i32 1}
!17 = !{ptr @__UNIQUE_ID_file190, !18, !"__UNIQUE_ID_file190", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 689, i32 1}
!19 = !{ptr @__UNIQUE_ID_license191, !18, !"__UNIQUE_ID_license191", i1 false, i1 false}
!20 = !{ptr @drv_data, !21, !"drv_data", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 258, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 336, i32 8}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 680, i32 11}
!26 = !{ptr @qcom_llcc_driver, !27, !"qcom_llcc_driver", i1 false, i1 false}
!27 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 678, i32 31}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 588, i32 47}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 595, i32 29}
!32 = !{ptr @qcom_llcc_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 645, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 655, i32 7}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 658, i32 4}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qcom_llcc_probe._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @qcom_llcc_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @qcom_llcc_init_mmio._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 568, i32 9}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qcom_llcc_of_match, !48, !"qcom_llcc_of_match", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 667, i32 34}
!49 = !{ptr @sc7180_cfg, !50, !"sc7180_cfg", i1 false, i1 false}
!50 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 220, i32 38}
!51 = !{ptr @sc7180_data, !52, !"sc7180_data", i1 false, i1 false}
!52 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 105, i32 39}
!53 = !{ptr @sc7280_cfg, !54, !"sc7280_cfg", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 226, i32 38}
!55 = !{ptr @sc7280_data, !56, !"sc7280_data", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 112, i32 39}
!57 = !{ptr @sdm845_cfg, !58, !"sdm845_cfg", i1 false, i1 false}
!58 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 232, i32 38}
!59 = !{ptr @sdm845_data, !60, !"sdm845_data", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 124, i32 39}
!61 = !{ptr @sm6350_cfg, !62, !"sm6350_cfg", i1 false, i1 false}
!62 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 238, i32 38}
!63 = !{ptr @sm6350_data, !64, !"sm6350_data", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 145, i32 39}
!65 = !{ptr @sm8150_cfg, !66, !"sm8150_cfg", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 243, i32 38}
!67 = !{ptr @sm8150_data, !68, !"sm8150_data", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 155, i32 39}
!69 = !{ptr @sm8250_cfg, !70, !"sm8250_cfg", i1 false, i1 false}
!70 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 248, i32 38}
!71 = !{ptr @sm8250_data, !72, !"sm8250_data", i1 false, i1 false}
!72 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 179, i32 39}
!73 = !{ptr @sm8350_cfg, !74, !"sm8350_cfg", i1 false, i1 false}
!74 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 253, i32 38}
!75 = !{ptr @sm8350_data, !76, !"sm8350_data", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/llcc-qcom.c", i32 198, i32 39}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i8 0, i8 2}
