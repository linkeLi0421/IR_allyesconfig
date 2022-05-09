; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6core.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+q6core_get_svc_api_info\22, \22a\22\09"
module asm "\09.weak\09__crc_q6core_get_svc_api_info\09\09\09\09"
module asm "\09.long\09__crc_q6core_get_svc_api_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6core_get_svc_api_info:\09\09\09\09\09"
module asm "\09.asciz \09\22q6core_get_svc_api_info\22\09\09\09\09\09"
module asm "__kstrtabns_q6core_get_svc_api_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6core_is_adsp_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_q6core_is_adsp_ready\09\09\09\09"
module asm "\09.long\09__crc_q6core_is_adsp_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6core_is_adsp_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22q6core_is_adsp_ready\22\09\09\09\09\09"
module asm "__kstrtabns_q6core_is_adsp_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.apr_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.apr_pkt = type { %struct.apr_hdr, [0 x i8] }
%struct.apr_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.q6core = type { ptr, %struct.wait_queue_head, i32, %struct.mutex, i8, i32, ptr, ptr, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.avcs_cmdrsp_get_fwk_version = type { i32, i32, i32, i32, i32, [0 x %struct.avcs_svc_api_info] }
%struct.avcs_svc_api_info = type { i32, i32, i32 }
%struct.q6core_svc_api_info = type { i32, i32, i32 }
%struct.avcs_cmdrsp_get_version = type { i32, i32, [0 x %struct.avcs_svc_info] }
%struct.avcs_svc_info = type { i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.apr_resp_pkt = type { %struct.apr_hdr, ptr, i32 }
%struct.aprv2_ibasic_rsp_result_t = type { i32, i32 }

@g_core = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_q6core_get_svc_api_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6core_get_svc_api_info = external dso_local constant [0 x i8], align 1
@__ksymtab_q6core_get_svc_api_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6core_get_svc_api_info to i32), ptr @__kstrtab_q6core_get_svc_api_info, ptr @__kstrtabns_q6core_get_svc_api_info }, section "___ksymtab_gpl+q6core_get_svc_api_info", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_q6core_is_adsp_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6core_is_adsp_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_q6core_is_adsp_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6core_is_adsp_ready to i32), ptr @__kstrtab_q6core_is_adsp_ready, ptr @__kstrtabns_q6core_is_adsp_ready }, section "___ksymtab_gpl+q6core_is_adsp_ready", align 4
@__initcall__kmod_q6core__183_375_qcom_q6core_driver_init6 = internal global ptr @qcom_q6core_driver_init, section ".initcall6.init", align 4
@qcom_q6core_driver = internal global { %struct.apr_driver, [32 x i8] } { %struct.apr_driver { ptr @q6core_probe, ptr @q6core_exit, ptr @q6core_callback, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6core_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qcom_q6core_driver_exit = internal global ptr @qcom_q6core_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [27 x i8] c"q6core.description=q6 core\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [40 x i8] c"q6core.file=sound/soc/qcom/qdsp6/q6core\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [22 x i8] c"q6core.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/qcom/qdsp6/q6core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-q6core\00", [20 x i8] zeroinitializer }, align 32
@q6core_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@q6core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&g_core->lock\00", [18 x i8] zeroinitializer }, align 32
@q6core_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&g_core->wait\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@q6core_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 141, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Message id from adsp core svc: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6core_callback\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6core_callback._entry_ptr = internal global ptr @q6core_callback._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 69864, i64 76038, i64 76045, i64 76077]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 76037, i64 76044, i64 76076]
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"g_core\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 68, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"qcom_q6core_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 365, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 166, i32 7 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 370, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"q6core_device_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 358, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 336, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 338, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [33 x i8] c"../sound/soc/qcom/qdsp6/q6core.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 140, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_qcom_q6core_driver_exit, ptr @__initcall__kmod_q6core__183_375_qcom_q6core_driver_init6, ptr @__ksymtab_q6core_get_svc_api_info, ptr @__ksymtab_q6core_is_adsp_ready, ptr @q6core_callback._entry, ptr @q6core_callback._entry_ptr, ptr @qcom_q6core_driver_exit, ptr @g_core, ptr @qcom_q6core_driver, ptr @.str, ptr @.str.1, ptr @q6core_device_id, ptr @q6core_probe.__key, ptr @.str.2, ptr @q6core_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_core to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_q6core_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6core_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6core_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6core_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6core_get_svc_api_info(i32 noundef %svc_id, ptr noundef writeonly %ainfo) #0 align 64 {
entry:
  %pkt.i59 = alloca %struct.apr_pkt, align 2
  %__wq_entry.i60 = alloca %struct.wait_queue_entry, align 4
  %pkt.i = alloca %struct.apr_pkt, align 2
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_core, align 4
  %tobool.not = icmp eq ptr %0, null
  %tobool1.not = icmp eq ptr %ainfo, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.q6core, ptr %0, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %1 = load ptr, ptr @g_core, align 4
  %is_version_requested = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_version_requested to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_version_requested, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #7
  %6 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i, i32 0, i32 9
  %8 = getelementptr inbounds i8, ptr %pkt.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 592, ptr %pkt.i, align 2
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 20, ptr %6, align 2
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 76076, ptr %7, align 2
  %call.i = call i32 @apr_send_pkt(ptr noundef %5, ptr noundef nonnull %pkt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then3.q6core_get_fwk_versions.exit_crit_edge, label %if.end.i

if.then3.q6core_get_fwk_versions.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_fwk_versions.exit

if.end.i:                                         ; preds = %if.then3
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 167) #7
  %resp_received.i = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.not.i, label %if.then15.i, label %if.end.i.if.then47.i_crit_edge

if.end.i.if.then47.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

if.then15.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %wait.i = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 1
  %call1880.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %16 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not81.not.i = icmp eq i8 %17, 0
  br i1 %tobool21.not81.not.i, label %if.then15.i.cleanup.i_crit_edge, label %if.end41.thread.i

if.then15.i.cleanup.i_crit_edge:                  ; preds = %if.then15.i
  br label %cleanup.i

if.end41.thread.i:                                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %land.lhs.true44.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then15.i.cleanup.i_crit_edge
  %__ret16.183.i = phi i32 [ %__ret16.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then15.i.cleanup.i_crit_edge ]
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret16.183.i) #7
  %call18.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %18 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool25.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select55.i = select i1 %tobool25.not.i, i32 1, i32 %call38.i
  %__ret16.1.i = select i1 %tobool21.not.i, i32 %call38.i, i32 %spec.store.select55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %tobool31.not.i = icmp eq i32 %__ret16.1.i, 0
  %not.tobool21.not.i = xor i1 %tobool21.not.i, true
  %20 = select i1 %not.tobool21.not.i, i1 true, i1 %tobool31.not.i
  br i1 %20, label %if.end41.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end41.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %cmp43.i = icmp sgt i32 %__ret16.1.i, 0
  br i1 %cmp43.i, label %if.end41.i.land.lhs.true44.i_crit_edge, label %if.end41.i.q6core_get_fwk_versions.exit_crit_edge

if.end41.i.q6core_get_fwk_versions.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_fwk_versions.exit

if.end41.i.land.lhs.true44.i_crit_edge:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true44.i

land.lhs.true44.i:                                ; preds = %if.end41.i.land.lhs.true44.i_crit_edge, %if.end41.thread.i
  %21 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr.i = load i8, ptr %resp_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool46.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.q6core_get_fwk_versions.exit.thread_crit_edge, label %land.lhs.true44.i.if.then47.i_crit_edge

land.lhs.true44.i.if.then47.i_crit_edge:          ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

land.lhs.true44.i.q6core_get_fwk_versions.exit.thread_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_fwk_versions.exit.thread

if.then47.i:                                      ; preds = %land.lhs.true44.i.if.then47.i_crit_edge, %if.end.i.if.then47.i_crit_edge
  %22 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %resp_received.i, align 4
  %fwk_version_supported.i = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %fwk_version_supported.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fwk_version_supported.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool49.not.i = icmp eq i8 %24, 0
  br i1 %tobool49.not.i, label %q6core_get_fwk_versions.exit.thread84, label %if.then47.i.q6core_get_fwk_versions.exit.thread_crit_edge

if.then47.i.q6core_get_fwk_versions.exit.thread_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_fwk_versions.exit.thread

q6core_get_fwk_versions.exit.thread84:            ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  br label %if.then4

q6core_get_fwk_versions.exit.thread:              ; preds = %if.then47.i.q6core_get_fwk_versions.exit.thread_crit_edge, %land.lhs.true44.i.q6core_get_fwk_versions.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  br label %if.end6

q6core_get_fwk_versions.exit:                     ; preds = %if.end41.i.q6core_get_fwk_versions.exit_crit_edge, %if.then3.q6core_get_fwk_versions.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then3.q6core_get_fwk_versions.exit_crit_edge ], [ %__ret16.1.i, %if.end41.i.q6core_get_fwk_versions.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -524
  br i1 %cmp, label %q6core_get_fwk_versions.exit.if.then4_crit_edge, label %q6core_get_fwk_versions.exit.if.end6_crit_edge

q6core_get_fwk_versions.exit.if.end6_crit_edge:   ; preds = %q6core_get_fwk_versions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

q6core_get_fwk_versions.exit.if.then4_crit_edge:  ; preds = %q6core_get_fwk_versions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %q6core_get_fwk_versions.exit.if.then4_crit_edge, %q6core_get_fwk_versions.exit.thread84
  %25 = load ptr, ptr @g_core, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i59) #7
  %28 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i59, i32 0, i32 1
  %29 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i59, i32 0, i32 9
  %30 = getelementptr inbounds i8, ptr %pkt.i59, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 12)
  %32 = ptrtoint ptr %pkt.i59 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 592, ptr %pkt.i59, align 2
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 20, ptr %28, align 2
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 76037, ptr %29, align 2
  %call.i61 = call i32 @apr_send_pkt(ptr noundef %27, ptr noundef nonnull %pkt.i59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %if.then4.q6core_get_svc_versions.exit_crit_edge, label %if.end.i65

if.then4.q6core_get_svc_versions.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_svc_versions.exit

if.end.i65:                                       ; preds = %if.then4
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 197) #7
  %resp_received.i63 = getelementptr inbounds %struct.q6core, ptr %25, i32 0, i32 4
  %35 = ptrtoint ptr %resp_received.i63 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %resp_received.i63, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.not.i64 = icmp eq i8 %36, 0
  br i1 %tobool.not.not.i64, label %if.then15.i67, label %if.end.i65.if.then47.i81_crit_edge

if.end.i65.if.then47.i81_crit_edge:               ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i81

if.then15.i67:                                    ; preds = %if.end.i65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i60) #7
  %37 = call ptr @memset(ptr %__wq_entry.i60, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i60, i32 noundef 0) #7
  %wait.i66 = getelementptr inbounds %struct.q6core, ptr %25, i32 0, i32 1
  %call187.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i66, ptr noundef nonnull %__wq_entry.i60, i32 noundef 2) #7
  %38 = ptrtoint ptr %resp_received.i63 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %resp_received.i63, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool21.not8.not.i = icmp eq i8 %39, 0
  br i1 %tobool21.not8.not.i, label %if.then15.i67.cleanup.i76_crit_edge, label %if.end41.thread.i68

if.then15.i67.cleanup.i76_crit_edge:              ; preds = %if.then15.i67
  br label %cleanup.i76

if.end41.thread.i68:                              ; preds = %if.then15.i67
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait.i66, ptr noundef nonnull %__wq_entry.i60) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i60) #7
  br label %land.lhs.true44.i80

cleanup.i76:                                      ; preds = %cleanup.i76.cleanup.i76_crit_edge, %if.then15.i67.cleanup.i76_crit_edge
  %__ret16.110.i = phi i32 [ %__ret16.1.i73, %cleanup.i76.cleanup.i76_crit_edge ], [ 10, %if.then15.i67.cleanup.i76_crit_edge ]
  %call38.i69 = call i32 @schedule_timeout(i32 noundef %__ret16.110.i) #7
  %call18.i70 = call i32 @prepare_to_wait_event(ptr noundef %wait.i66, ptr noundef nonnull %__wq_entry.i60, i32 noundef 2) #7
  %40 = ptrtoint ptr %resp_received.i63 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %resp_received.i63, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.not.i71 = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i69)
  %tobool25.not.i72 = icmp eq i32 %call38.i69, 0
  %spec.store.select53.i = select i1 %tobool25.not.i72, i32 1, i32 %call38.i69
  %__ret16.1.i73 = select i1 %tobool21.not.i71, i32 %call38.i69, i32 %spec.store.select53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i73)
  %tobool31.not.i74 = icmp eq i32 %__ret16.1.i73, 0
  %not.tobool21.not.i75 = xor i1 %tobool21.not.i71, true
  %42 = select i1 %not.tobool21.not.i75, i1 true, i1 %tobool31.not.i74
  br i1 %42, label %if.end41.i77, label %cleanup.i76.cleanup.i76_crit_edge

cleanup.i76.cleanup.i76_crit_edge:                ; preds = %cleanup.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i76

if.end41.i77:                                     ; preds = %cleanup.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i73)
  %phi.cmp.i = icmp sgt i32 %__ret16.1.i73, 0
  call void @finish_wait(ptr noundef %wait.i66, ptr noundef nonnull %__wq_entry.i60) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i60) #7
  br i1 %phi.cmp.i, label %if.end41.i77.land.lhs.true44.i80_crit_edge, label %if.end41.i77.q6core_get_svc_versions.exit_crit_edge

if.end41.i77.q6core_get_svc_versions.exit_crit_edge: ; preds = %if.end41.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_svc_versions.exit

if.end41.i77.land.lhs.true44.i80_crit_edge:       ; preds = %if.end41.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true44.i80

land.lhs.true44.i80:                              ; preds = %if.end41.i77.land.lhs.true44.i80_crit_edge, %if.end41.thread.i68
  %43 = ptrtoint ptr %resp_received.i63 to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr.i78 = load i8, ptr %resp_received.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i78)
  %tobool46.not.i79 = icmp eq i8 %.pr.i78, 0
  br i1 %tobool46.not.i79, label %land.lhs.true44.i80.q6core_get_svc_versions.exit_crit_edge, label %land.lhs.true44.i80.if.then47.i81_crit_edge

land.lhs.true44.i80.if.then47.i81_crit_edge:      ; preds = %land.lhs.true44.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i81

land.lhs.true44.i80.q6core_get_svc_versions.exit_crit_edge: ; preds = %land.lhs.true44.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %q6core_get_svc_versions.exit

if.then47.i81:                                    ; preds = %land.lhs.true44.i80.if.then47.i81_crit_edge, %if.end.i65.if.then47.i81_crit_edge
  %44 = ptrtoint ptr %resp_received.i63 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %resp_received.i63, align 4
  br label %q6core_get_svc_versions.exit

q6core_get_svc_versions.exit:                     ; preds = %if.then47.i81, %land.lhs.true44.i80.q6core_get_svc_versions.exit_crit_edge, %if.end41.i77.q6core_get_svc_versions.exit_crit_edge, %if.then4.q6core_get_svc_versions.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i59) #7
  br label %if.end6

if.end6:                                          ; preds = %q6core_get_svc_versions.exit, %q6core_get_fwk_versions.exit.if.end6_crit_edge, %q6core_get_fwk_versions.exit.thread
  %45 = load ptr, ptr @g_core, align 4
  %is_version_requested7 = getelementptr inbounds %struct.q6core, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %is_version_requested7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %is_version_requested7, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %47 = load ptr, ptr @g_core, align 4
  %fwk_version_supported = getelementptr inbounds %struct.q6core, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %fwk_version_supported to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fwk_version_supported, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool9.not = icmp eq i8 %49, 0
  br i1 %tobool9.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %fwk_version = getelementptr inbounds %struct.q6core, ptr %47, i32 0, i32 6
  %50 = ptrtoint ptr %fwk_version to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fwk_version, align 4
  %num_services = getelementptr inbounds %struct.avcs_cmdrsp_get_fwk_version, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %num_services to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %num_services, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp11102.not = icmp eq i32 %53, 0
  br i1 %cmp11102.not, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.avcs_cmdrsp_get_fwk_version, ptr %51, i32 0, i32 5, i32 %i.0103
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %svc_id)
  %cmp13.not = icmp eq i32 %55, %svc_id
  br i1 %cmp13.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %api_version = getelementptr %struct.avcs_cmdrsp_get_fwk_version, ptr %51, i32 0, i32 5, i32 %i.0103, i32 1
  %56 = ptrtoint ptr %api_version to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %api_version, align 1
  %api_version16 = getelementptr inbounds %struct.q6core_svc_api_info, ptr %ainfo, i32 0, i32 1
  %58 = ptrtoint ptr %api_version16 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %api_version16, align 4
  %api_branch_version = getelementptr %struct.avcs_cmdrsp_get_fwk_version, ptr %51, i32 0, i32 5, i32 %i.0103, i32 2
  %59 = ptrtoint ptr %api_branch_version to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %api_branch_version, align 1
  br label %if.end40.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %53
  br i1 %exitcond.not, label %for.inc.if.end40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end40_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.else:                                          ; preds = %if.end8
  %get_version_supported = getelementptr inbounds %struct.q6core, ptr %47, i32 0, i32 10
  %61 = ptrtoint ptr %get_version_supported to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %get_version_supported, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool18.not = icmp eq i8 %62, 0
  br i1 %tobool18.not, label %if.else.if.end40_crit_edge, label %for.cond20.preheader

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.cond20.preheader:                             ; preds = %if.else
  %svc_version = getelementptr inbounds %struct.q6core, ptr %47, i32 0, i32 7
  %63 = ptrtoint ptr %svc_version to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %svc_version, align 4
  %num_services21 = getelementptr inbounds %struct.avcs_cmdrsp_get_version, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %num_services21 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %num_services21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp22104.not = icmp eq i32 %66, 0
  br i1 %cmp22104.not, label %for.cond20.preheader.if.end40_crit_edge, label %for.cond20.preheader.for.body23_crit_edge

for.cond20.preheader.for.body23_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body23

for.cond20.preheader.if.end40_crit_edge:          ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.body23:                                       ; preds = %for.inc36.for.body23_crit_edge, %for.cond20.preheader.for.body23_crit_edge
  %i.1105 = phi i32 [ %inc37, %for.inc36.for.body23_crit_edge ], [ 0, %for.cond20.preheader.for.body23_crit_edge ]
  %arrayidx27 = getelementptr %struct.avcs_cmdrsp_get_version, ptr %64, i32 0, i32 2, i32 %i.1105
  %67 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %svc_id)
  %cmp29.not = icmp eq i32 %68, %svc_id
  br i1 %cmp29.not, label %cleanup34, label %for.inc36

cleanup34:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  %version = getelementptr %struct.avcs_cmdrsp_get_version, ptr %64, i32 0, i32 2, i32 %i.1105, i32 1
  %69 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %version, align 1
  %api_version32 = getelementptr inbounds %struct.q6core_svc_api_info, ptr %ainfo, i32 0, i32 1
  %71 = ptrtoint ptr %api_version32 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %api_version32, align 4
  br label %if.end40.sink.split

for.inc36:                                        ; preds = %for.body23
  %inc37 = add nuw i32 %i.1105, 1
  %exitcond109.not = icmp eq i32 %inc37, %66
  br i1 %exitcond109.not, label %for.inc36.if.end40_crit_edge, label %for.inc36.for.body23_crit_edge

for.inc36.for.body23_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.inc36.if.end40_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40.sink.split:                              ; preds = %cleanup34, %cleanup
  %.sink = phi i32 [ 0, %cleanup34 ], [ %60, %cleanup ]
  %api_branch_version33 = getelementptr inbounds %struct.q6core_svc_api_info, ptr %ainfo, i32 0, i32 2
  %72 = ptrtoint ptr %api_branch_version33 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink, ptr %api_branch_version33, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %for.inc36.if.end40_crit_edge, %for.cond20.preheader.if.end40_crit_edge, %if.else.if.end40_crit_edge, %for.inc.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge
  %ret.4 = phi i32 [ -524, %if.else.if.end40_crit_edge ], [ -524, %for.cond20.preheader.if.end40_crit_edge ], [ -524, %for.cond.preheader.if.end40_crit_edge ], [ 0, %if.end40.sink.split ], [ -524, %for.inc36.if.end40_crit_edge ], [ -524, %for.inc.if.end40_crit_edge ]
  %lock41 = getelementptr inbounds %struct.q6core, ptr %47, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock41) #7
  br label %cleanup42

cleanup42:                                        ; preds = %if.end40, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ %ret.4, %if.end40 ], [ 0, %entry.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @q6core_is_adsp_ready() #0 align 64 {
entry:
  %pkt.i = alloca %struct.apr_pkt, align 2
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_core, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.q6core, ptr %0, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.apr_hdr, ptr %pkt.i, i32 0, i32 9
  %4 = getelementptr inbounds i8, ptr %pkt.i, i32 4
  %add.neg = sub i32 -300, %1
  br label %for.cond

for.cond:                                         ; preds = %if.end3.for.cond_crit_edge, %if.end
  %5 = load ptr, ptr @g_core, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #7
  %get_state_supported.i = getelementptr inbounds %struct.q6core, ptr %5, i32 0, i32 9
  %8 = call ptr @memset(ptr %4, i32 255, i32 12)
  %9 = ptrtoint ptr %get_state_supported.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %get_state_supported.i, align 1
  %10 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 592, ptr %pkt.i, align 2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 20, ptr %2, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 76044, ptr %3, align 2
  %call.i = call i32 @apr_send_pkt(ptr noundef %7, ptr noundef nonnull %pkt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__q6core_is_adsp_ready.exit.thread11, label %if.end.i

__q6core_is_adsp_ready.exit.thread11:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  br label %if.end3

if.end.i:                                         ; preds = %for.cond
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 224) #7
  %resp_received.i = getelementptr inbounds %struct.q6core, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.not.i, label %if.then15.i, label %if.end.i.if.then47.i_crit_edge

if.end.i.if.then47.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

if.then15.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %wait.i = getelementptr inbounds %struct.q6core, ptr %5, i32 0, i32 1
  %call1884.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %16 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not85.not.i = icmp eq i8 %17, 0
  br i1 %tobool21.not85.not.i, label %if.then15.i.cleanup.i_crit_edge, label %if.end41.thread.i

if.then15.i.cleanup.i_crit_edge:                  ; preds = %if.then15.i
  br label %cleanup.i

if.end41.thread.i:                                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %land.lhs.true44.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then15.i.cleanup.i_crit_edge
  %__ret16.187.i = phi i32 [ %__ret16.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then15.i.cleanup.i_crit_edge ]
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret16.187.i) #7
  %call18.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %18 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %resp_received.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool25.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select60.i = select i1 %tobool25.not.i, i32 1, i32 %call38.i
  %__ret16.1.i = select i1 %tobool21.not.i, i32 %call38.i, i32 %spec.store.select60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %tobool31.not.i = icmp eq i32 %__ret16.1.i, 0
  %not.tobool21.not.i = xor i1 %tobool21.not.i, true
  %20 = select i1 %not.tobool21.not.i, i1 true, i1 %tobool31.not.i
  br i1 %20, label %if.end41.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end41.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %phi.cmp.i = icmp sgt i32 %__ret16.1.i, 0
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br i1 %phi.cmp.i, label %if.end41.i.land.lhs.true44.i_crit_edge, label %if.end41.i.__q6core_is_adsp_ready.exit_crit_edge

if.end41.i.__q6core_is_adsp_ready.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__q6core_is_adsp_ready.exit

if.end41.i.land.lhs.true44.i_crit_edge:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true44.i

land.lhs.true44.i:                                ; preds = %if.end41.i.land.lhs.true44.i_crit_edge, %if.end41.thread.i
  %21 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr.i = load i8, ptr %resp_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool46.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.__q6core_is_adsp_ready.exit_crit_edge, label %land.lhs.true44.i.if.then47.i_crit_edge

land.lhs.true44.i.if.then47.i_crit_edge:          ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

land.lhs.true44.i.__q6core_is_adsp_ready.exit_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__q6core_is_adsp_ready.exit

if.then47.i:                                      ; preds = %land.lhs.true44.i.if.then47.i_crit_edge, %if.end.i.if.then47.i_crit_edge
  %22 = ptrtoint ptr %resp_received.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %resp_received.i, align 4
  %avcs_state.i = getelementptr inbounds %struct.q6core, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %avcs_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %avcs_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool49.not.i = icmp eq i32 %24, 0
  br i1 %tobool49.not.i, label %if.then47.i.__q6core_is_adsp_ready.exit_crit_edge, label %__q6core_is_adsp_ready.exit.thread

if.then47.i.__q6core_is_adsp_ready.exit_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__q6core_is_adsp_ready.exit

__q6core_is_adsp_ready.exit.thread:               ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  br label %for.end

__q6core_is_adsp_ready.exit:                      ; preds = %if.then47.i.__q6core_is_adsp_ready.exit_crit_edge, %land.lhs.true44.i.__q6core_is_adsp_ready.exit_crit_edge, %if.end41.i.__q6core_is_adsp_ready.exit_crit_edge
  %25 = ptrtoint ptr %get_state_supported.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %get_state_supported.i, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool54.not.i = icmp eq i8 %26, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #7
  br i1 %tobool54.not.i, label %__q6core_is_adsp_ready.exit.for.end_crit_edge, label %__q6core_is_adsp_ready.exit.if.end3_crit_edge

__q6core_is_adsp_ready.exit.if.end3_crit_edge:    ; preds = %__q6core_is_adsp_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

__q6core_is_adsp_ready.exit.for.end_crit_edge:    ; preds = %__q6core_is_adsp_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end3:                                          ; preds = %__q6core_is_adsp_ready.exit.if.end3_crit_edge, %__q6core_is_adsp_ready.exit.thread11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %27
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end3.for.cond_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end3.for.cond_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %if.end3.for.end_crit_edge, %__q6core_is_adsp_ready.exit.for.end_crit_edge, %__q6core_is_adsp_ready.exit.thread
  %retval.0.i10 = phi i1 [ true, %__q6core_is_adsp_ready.exit.thread ], [ true, %__q6core_is_adsp_ready.exit.for.end_crit_edge ], [ false, %if.end3.for.end_crit_edge ]
  %28 = load ptr, ptr @g_core, align 4
  %lock6 = getelementptr inbounds %struct.q6core, ptr %28, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock6) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %retval.0.i10, %for.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_q6core_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__apr_driver_register(ptr noundef nonnull @qcom_q6core_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_q6core_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @apr_driver_unregister(ptr noundef nonnull @qcom_q6core_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @apr_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apr_send_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__apr_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6core_probe(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #10
  store ptr %call7.i.i, ptr @g_core, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.q6core, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @q6core_probe.__key) #7
  %2 = load ptr, ptr @g_core, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adev, ptr %2, align 4
  %wait = getelementptr inbounds %struct.q6core, ptr %2, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @q6core_probe.__key.3) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6core_exit(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fwk_version_supported = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fwk_version_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fwk_version_supported, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fwk_version = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %fwk_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwk_version, align 4
  tail call void @kfree(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %get_version_supported = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %get_version_supported to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %get_version_supported, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %svc_version = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %svc_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svc_version, align 4
  tail call void @kfree(ptr noundef %9) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  store ptr null, ptr @g_core, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6core_callback(ptr noundef %adev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %payload = getelementptr inbounds %struct.apr_resp_pkt, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload, align 4
  %opcode = getelementptr inbounds %struct.apr_hdr, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %opcode, align 1
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 69864, label %sw.bb
    i32 76077, label %sw.bb17
    i32 76038, label %sw.bb27
    i32 76045, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %8, label %sw.bb.sw.epilog47_crit_edge [
    i32 76037, label %sw.bb4
    i32 76076, label %sw.bb5
    i32 76044, label %sw.bb11
  ]

sw.bb.sw.epilog47_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog47

sw.bb4:                                           ; preds = %sw.bb
  %status = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %sw.bb4.if.end_crit_edge

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %get_version_supported = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %get_version_supported to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %get_version_supported, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb4.if.end_crit_edge
  %resp_received = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %resp_received to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %resp_received, align 4
  br label %sw.epilog47

sw.bb5:                                           ; preds = %sw.bb
  %status6 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp7 = icmp eq i32 %15, 3
  br i1 %cmp7, label %if.then8, label %sw.bb5.if.end9_crit_edge

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %fwk_version_supported = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %fwk_version_supported to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fwk_version_supported, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb5.if.end9_crit_edge
  %resp_received10 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %resp_received10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %resp_received10, align 4
  br label %sw.epilog47

sw.bb11:                                          ; preds = %sw.bb
  %status12 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp13 = icmp eq i32 %19, 3
  br i1 %cmp13, label %if.then14, label %sw.bb11.if.end15_crit_edge

sw.bb11.if.end15_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %get_state_supported = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %get_state_supported to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %get_state_supported, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.bb11.if.end15_crit_edge
  %resp_received16 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %resp_received16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %resp_received16, align 4
  br label %sw.epilog47

sw.bb17:                                          ; preds = %entry
  %num_services = getelementptr inbounds %struct.avcs_cmdrsp_get_fwk_version, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %num_services to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %num_services, align 1
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 12) #7
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %26, i32 20) #7
  %retval.0.i = select i1 %25, i32 -1, i32 %spec.select.i
  %call21 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %retval.0.i, i32 noundef 2592) #7
  %fwk_version = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %fwk_version to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21, ptr %fwk_version, align 4
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %sw.bb17.cleanup52_crit_edge, label %if.end24

sw.bb17.cleanup52_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end24:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %fwk_version_supported25 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %fwk_version_supported25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %fwk_version_supported25, align 4
  %resp_received26 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %resp_received26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %resp_received26, align 4
  br label %sw.epilog47

sw.bb27:                                          ; preds = %entry
  %num_services30 = getelementptr inbounds %struct.avcs_cmdrsp_get_version, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %num_services30 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %num_services30, align 1
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 8) #7
  %33 = extractvalue { i32, i1 } %32, 1
  %34 = extractvalue { i32, i1 } %32, 0
  %spec.select.i89 = tail call i32 @llvm.uadd.sat.i32(i32 %34, i32 8) #7
  %retval.0.i90 = select i1 %33, i32 -1, i32 %spec.select.i89
  %call32 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %retval.0.i90, i32 noundef 2592) #7
  %svc_version = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %svc_version to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call32, ptr %svc_version, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %sw.bb27.cleanup52_crit_edge, label %if.end36

sw.bb27.cleanup52_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end36:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %get_version_supported37 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %get_version_supported37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %get_version_supported37, align 2
  %resp_received38 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %resp_received38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %resp_received38, align 4
  br label %sw.epilog47

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %get_state_supported42 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %get_state_supported42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %get_state_supported42, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %avcs_state = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %avcs_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %avcs_state, align 4
  %resp_received44 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %resp_received44 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %resp_received44, align 4
  br label %sw.epilog47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.5, i32 noundef %5) #11
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %do.end, %sw.bb41, %if.end36, %if.end24, %if.end15, %if.end9, %if.end, %sw.bb.sw.epilog47_crit_edge
  %resp_received48 = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %resp_received48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %resp_received48, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool49.not = icmp eq i8 %44, 0
  br i1 %tobool49.not, label %sw.epilog47.cleanup52_crit_edge, label %if.then50

sw.epilog47.cleanup52_crit_edge:                  ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.then50:                                        ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.q6core, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup52

cleanup52:                                        ; preds = %if.then50, %sw.epilog47.cleanup52_crit_edge, %sw.bb27.cleanup52_crit_edge, %sw.bb17.cleanup52_crit_edge
  %retval.2 = phi i32 [ 0, %if.then50 ], [ 0, %sw.epilog47.cleanup52_crit_edge ], [ -12, %sw.bb17.cleanup52_crit_edge ], [ -12, %sw.bb27.cleanup52_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_q6core_get_svc_api_info, !1, !"__ksymtab_q6core_get_svc_api_info", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 294, i32 1}
!2 = !{ptr @__ksymtab_q6core_is_adsp_ready, !3, !"__ksymtab_q6core_is_adsp_ready", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 326, i32 1}
!4 = !{ptr @__initcall__kmod_q6core__183_375_qcom_q6core_driver_init6, !5, !"__initcall__kmod_q6core__183_375_qcom_q6core_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 375, i32 1}
!6 = !{ptr @__exitcall_qcom_q6core_driver_exit, !5, !"__exitcall_qcom_q6core_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description184, !8, !"__UNIQUE_ID_description184", i1 false, i1 false}
!8 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 376, i32 1}
!9 = !{ptr @__UNIQUE_ID_file185, !10, !"__UNIQUE_ID_file185", i1 false, i1 false}
!10 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 377, i32 1}
!11 = !{ptr @__UNIQUE_ID_license186, !10, !"__UNIQUE_ID_license186", i1 false, i1 false}
!12 = !{ptr @g_core, !13, !"g_core", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 68, i32 23}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 166, i32 7}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 370, i32 11}
!18 = !{ptr @qcom_q6core_driver, !19, !"qcom_q6core_driver", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 365, i32 26}
!20 = !{ptr @q6core_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 336, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @q6core_probe.__key.3, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 338, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 140, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @q6core_callback._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @q6core_callback._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @q6core_device_id, !34, !"q6core_device_id", i1 false, i1 false}
!34 = !{!"../sound/soc/qcom/qdsp6/q6core.c", i32 358, i32 34}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
