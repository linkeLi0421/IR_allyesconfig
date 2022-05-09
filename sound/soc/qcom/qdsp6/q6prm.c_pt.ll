; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6prm.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6prm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+q6prm_vote_lpass_core_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_q6prm_vote_lpass_core_hw\09\09\09\09"
module asm "\09.long\09__crc_q6prm_vote_lpass_core_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6prm_vote_lpass_core_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22q6prm_vote_lpass_core_hw\22\09\09\09\09\09"
module asm "__kstrtabns_q6prm_vote_lpass_core_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6prm_unvote_lpass_core_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_q6prm_unvote_lpass_core_hw\09\09\09\09"
module asm "\09.long\09__crc_q6prm_unvote_lpass_core_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6prm_unvote_lpass_core_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22q6prm_unvote_lpass_core_hw\22\09\09\09\09\09"
module asm "__kstrtabns_q6prm_unvote_lpass_core_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6prm_set_lpass_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_q6prm_set_lpass_clock\09\09\09\09"
module asm "\09.long\09__crc_q6prm_set_lpass_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6prm_set_lpass_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22q6prm_set_lpass_clock\22\09\09\09\09\09"
module asm "__kstrtabns_q6prm_set_lpass_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.apr_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.q6prm = type { ptr, ptr, %struct.wait_queue_head, %struct.gpr_ibasic_rsp_result_t, %struct.mutex }
%struct.gpr_ibasic_rsp_result_t = type { i32, i32 }
%struct.apr_device = type { %struct.device, i16, i16, i32, [32 x i8], ptr, %struct.pkt_router_svc, %struct.list_head }
%struct.pkt_router_svc = type { ptr, ptr, ptr, %struct.spinlock, i32, ptr }
%struct.gpr_hdr = type { i64, i32, i32, i32, i32 }
%struct.gpr_resp_pkt = type { %struct.gpr_hdr, ptr, i32 }

@__kstrtab_q6prm_vote_lpass_core_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6prm_vote_lpass_core_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_q6prm_vote_lpass_core_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6prm_vote_lpass_core_hw to i32), ptr @__kstrtab_q6prm_vote_lpass_core_hw, ptr @__kstrtabns_q6prm_vote_lpass_core_hw }, section "___ksymtab_gpl+q6prm_vote_lpass_core_hw", align 4
@__kstrtab_q6prm_unvote_lpass_core_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6prm_unvote_lpass_core_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_q6prm_unvote_lpass_core_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6prm_unvote_lpass_core_hw to i32), ptr @__kstrtab_q6prm_unvote_lpass_core_hw, ptr @__kstrtabns_q6prm_unvote_lpass_core_hw }, section "___ksymtab_gpl+q6prm_unvote_lpass_core_hw", align 4
@__kstrtab_q6prm_set_lpass_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6prm_set_lpass_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_q6prm_set_lpass_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6prm_set_lpass_clock to i32), ptr @__kstrtab_q6prm_set_lpass_clock, ptr @__kstrtabns_q6prm_set_lpass_clock }, section "___ksymtab_gpl+q6prm_set_lpass_clock", align 4
@__initcall__kmod_q6prm__238_249_prm_driver_init6 = internal global ptr @prm_driver_init, section ".initcall6.init", align 4
@prm_driver = internal global { %struct.apr_driver, [32 x i8] } { %struct.apr_driver { ptr @prm_probe, ptr null, ptr null, ptr @prm_callback, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @prm_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null }, [32 x i8] zeroinitializer }, align 32
@__exitcall_prm_driver_exit = internal global ptr @prm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [40 x i8] c"q6prm.description=Audio Process Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [38 x i8] c"q6prm.file=sound/soc/qcom/qdsp6/q6prm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [18 x i8] c"q6prm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom-prm\00", [23 x i8] zeroinitializer }, align 32
@prm_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@prm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cc->lock\00", [22 x i8] zeroinitializer }, align 32
@prm_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cc->wait\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"prm_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 240, i32 21 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 244, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"prm_device_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 233, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 225, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [32 x i8] c"../sound/soc/qcom/qdsp6/q6prm.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 226, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_prm_driver_exit, ptr @__initcall__kmod_q6prm__238_249_prm_driver_init6, ptr @__ksymtab_q6prm_set_lpass_clock, ptr @__ksymtab_q6prm_unvote_lpass_core_hw, ptr @__ksymtab_q6prm_vote_lpass_core_hw, ptr @prm_driver_exit, ptr @prm_driver, ptr @.str, ptr @prm_device_id, ptr @prm_probe.__key, ptr @.str.1, ptr @prm_probe.__key.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6prm_vote_lpass_core_hw(ptr nocapture noundef readonly %dev, i32 noundef %hw_block_id, ptr nocapture readnone %client_name, ptr nocapture readnone %client_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %gdev1.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gdev1.i, align 4
  %id.i = getelementptr inbounds %struct.apr_device, ptr %5, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %call2.i = tail call ptr @audioreach_alloc_cmd_pkt(i32 noundef 20, i32 noundef 16781327, i32 noundef 0, i32 noundef %7, i32 noundef 2) #3
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call2.i to i32
  br label %q6prm_set_hw_core_req.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr7.i = getelementptr i8, ptr %call2.i, i32 40
  %9 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 2, ptr %add.ptr7.i, align 1
  %error_code.i = getelementptr i8, ptr %call2.i, i32 52
  %10 = ptrtoint ptr %error_code.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %error_code.i, align 1
  %param_id.i = getelementptr i8, ptr %call2.i, i32 44
  %11 = ptrtoint ptr %param_id.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 134221874, ptr %param_id.i, align 1
  %param_size.i = getelementptr i8, ptr %call2.i, i32 48
  %12 = ptrtoint ptr %param_size.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 4, ptr %param_size.i, align 1
  %hw_clk_id.i = getelementptr i8, ptr %call2.i, i32 56
  %13 = ptrtoint ptr %hw_clk_id.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %hw_block_id, ptr %hw_clk_id.i, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %gdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gdev1.i, align 4
  %result.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 4
  %wait.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 2
  %call.i.i = tail call i32 @audioreach_send_cmd_sync(ptr noundef %15, ptr noundef %17, ptr noundef %result.i.i, ptr noundef %lock.i.i, ptr noundef null, ptr noundef %wait.i.i, ptr noundef %call2.i, i32 noundef 33558530) #3
  tail call void @kfree(ptr noundef %call2.i) #3
  br label %q6prm_set_hw_core_req.exit

q6prm_set_hw_core_req.exit:                       ; preds = %if.end6.i, %if.then4.i
  %retval.0.i = phi i32 [ %8, %if.then4.i ], [ %call.i.i, %if.end6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6prm_unvote_lpass_core_hw(ptr nocapture noundef readonly %dev, i32 noundef %hw_block_id, i32 %client_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %gdev1.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gdev1.i, align 4
  %id.i = getelementptr inbounds %struct.apr_device, ptr %5, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %call2.i = tail call ptr @audioreach_alloc_cmd_pkt(i32 noundef 20, i32 noundef 16781328, i32 noundef 0, i32 noundef %7, i32 noundef 2) #3
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call2.i to i32
  br label %q6prm_set_hw_core_req.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr7.i = getelementptr i8, ptr %call2.i, i32 40
  %9 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 2, ptr %add.ptr7.i, align 1
  %error_code.i = getelementptr i8, ptr %call2.i, i32 52
  %10 = ptrtoint ptr %error_code.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %error_code.i, align 1
  %param_id.i = getelementptr i8, ptr %call2.i, i32 44
  %11 = ptrtoint ptr %param_id.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 134221874, ptr %param_id.i, align 1
  %param_size.i = getelementptr i8, ptr %call2.i, i32 48
  %12 = ptrtoint ptr %param_size.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 4, ptr %param_size.i, align 1
  %hw_clk_id.i = getelementptr i8, ptr %call2.i, i32 56
  %13 = ptrtoint ptr %hw_clk_id.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %hw_block_id, ptr %hw_clk_id.i, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %gdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gdev1.i, align 4
  %result.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 4
  %wait.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 2
  %call.i.i = tail call i32 @audioreach_send_cmd_sync(ptr noundef %15, ptr noundef %17, ptr noundef %result.i.i, ptr noundef %lock.i.i, ptr noundef null, ptr noundef %wait.i.i, ptr noundef %call2.i, i32 noundef 33558531) #3
  tail call void @kfree(ptr noundef %call2.i) #3
  br label %q6prm_set_hw_core_req.exit

q6prm_set_hw_core_req.exit:                       ; preds = %if.end6.i, %if.then4.i
  %retval.0.i = phi i32 [ %8, %if.then4.i ], [ %call.i.i, %if.end6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6prm_set_lpass_clock(ptr nocapture noundef readonly %dev, i32 noundef %clk_id, i32 noundef %clk_attr, i32 %clk_root, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not = icmp eq i32 %freq, 0
  %parent.i9 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i9, align 8
  %driver_data.i.i10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i10, align 4
  %gdev1.i11 = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gdev1.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gdev1.i11, align 4
  %id.i12 = getelementptr inbounds %struct.apr_device, ptr %5, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %id.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i12, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2.i = tail call ptr @audioreach_alloc_cmd_pkt(i32 noundef 36, i32 noundef 16781327, i32 noundef 0, i32 noundef %7, i32 noundef 2) #3
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call2.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr5.i = getelementptr i8, ptr %call2.i, i32 40
  %9 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 2, ptr %add.ptr5.i, align 1
  %error_code.i = getelementptr i8, ptr %call2.i, i32 52
  %10 = ptrtoint ptr %error_code.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %error_code.i, align 1
  %param_id.i = getelementptr i8, ptr %call2.i, i32 44
  %11 = ptrtoint ptr %param_id.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 134221868, ptr %param_id.i, align 1
  %param_size.i = getelementptr i8, ptr %call2.i, i32 48
  %12 = ptrtoint ptr %param_size.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 20, ptr %param_size.i, align 1
  %num_clk_id.i = getelementptr i8, ptr %call2.i, i32 56
  %13 = ptrtoint ptr %num_clk_id.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1, ptr %num_clk_id.i, align 1
  %clock_id.i = getelementptr i8, ptr %call2.i, i32 60
  %14 = ptrtoint ptr %clock_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %clk_id, ptr %clock_id.i, align 1
  %clock_freq.i = getelementptr i8, ptr %call2.i, i32 64
  %15 = ptrtoint ptr %clock_freq.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %freq, ptr %clock_freq.i, align 1
  %clock_attri.i = getelementptr i8, ptr %call2.i, i32 68
  %16 = ptrtoint ptr %clock_attri.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %clk_attr, ptr %clock_attri.i, align 1
  %clock_root.i = getelementptr i8, ptr %call2.i, i32 72
  %17 = ptrtoint ptr %clock_root.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %clk_attr, ptr %clock_root.i, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %gdev1.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gdev1.i11, align 4
  %result.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 4
  %wait.i.i = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 2
  %call.i.i = tail call i32 @audioreach_send_cmd_sync(ptr noundef %19, ptr noundef %21, ptr noundef %result.i.i, ptr noundef %lock.i.i, ptr noundef null, ptr noundef %wait.i.i, ptr noundef %call2.i, i32 noundef 33558530) #3
  tail call void @kfree(ptr noundef %call2.i) #3
  br label %return

if.end:                                           ; preds = %entry
  %call2.i13 = tail call ptr @audioreach_alloc_cmd_pkt(i32 noundef 24, i32 noundef 16781328, i32 noundef 0, i32 noundef %7, i32 noundef 2) #3
  %cmp.i.i14 = icmp ugt ptr %call2.i13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i14, label %if.then.i15, label %if.end.i26

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %call2.i13 to i32
  br label %return

if.end.i26:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr5.i16 = getelementptr i8, ptr %call2.i13, i32 40
  %23 = ptrtoint ptr %add.ptr5.i16 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 2, ptr %add.ptr5.i16, align 1
  %error_code.i17 = getelementptr i8, ptr %call2.i13, i32 52
  %24 = ptrtoint ptr %error_code.i17 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %error_code.i17, align 1
  %param_id.i18 = getelementptr i8, ptr %call2.i13, i32 44
  %25 = ptrtoint ptr %param_id.i18 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 134221868, ptr %param_id.i18, align 1
  %param_size.i19 = getelementptr i8, ptr %call2.i13, i32 48
  %26 = ptrtoint ptr %param_size.i19 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 8, ptr %param_size.i19, align 1
  %num_clk_id.i20 = getelementptr i8, ptr %call2.i13, i32 56
  %27 = ptrtoint ptr %num_clk_id.i20 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 1, ptr %num_clk_id.i20, align 1
  %clock_id.i21 = getelementptr i8, ptr %call2.i13, i32 60
  %28 = ptrtoint ptr %clock_id.i21 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %clk_id, ptr %clock_id.i21, align 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %gdev1.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gdev1.i11, align 4
  %result.i.i22 = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 3
  %lock.i.i23 = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 4
  %wait.i.i24 = getelementptr inbounds %struct.q6prm, ptr %3, i32 0, i32 2
  %call.i.i25 = tail call i32 @audioreach_send_cmd_sync(ptr noundef %30, ptr noundef %32, ptr noundef %result.i.i22, ptr noundef %lock.i.i23, ptr noundef null, ptr noundef %wait.i.i24, ptr noundef %call2.i13, i32 noundef 33558531) #3
  tail call void @kfree(ptr noundef %call2.i13) #3
  br label %return

return:                                           ; preds = %if.end.i26, %if.then.i15, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ %8, %if.then.i ], [ %call.i.i, %if.end.i ], [ %22, %if.then.i15 ], [ %call.i.i25, %if.end.i26 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prm_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__apr_driver_register(ptr noundef nonnull @prm_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @prm_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @apr_driver_unregister(ptr noundef nonnull @prm_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @apr_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audioreach_alloc_cmd_pkt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audioreach_send_cmd_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__apr_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prm_probe(ptr noundef %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %gdev, i32 noundef 160, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gdev, ptr %call.i, align 4
  %gdev3 = getelementptr inbounds %struct.q6prm, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %gdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gdev, ptr %gdev3, align 4
  %lock = getelementptr inbounds %struct.q6prm, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @prm_probe.__key) #3
  %wait = getelementptr inbounds %struct.q6prm, ptr %call.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @prm_probe.__key.2) #3
  %driver_data.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call7 = tail call i32 @devm_of_platform_populate(ptr noundef %gdev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prm_callback(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %priv, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.gpr_hdr, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %opcode, align 1
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33558530, i32 %2)
  %switch = icmp eq i32 %2, 33558530
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %payload = getelementptr inbounds %struct.gpr_resp_pkt, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %payload, align 4
  %result3 = getelementptr inbounds %struct.q6prm, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %result3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %result3, align 4
  %status = getelementptr inbounds %struct.gpr_ibasic_rsp_result_t, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %status6 = getelementptr inbounds %struct.q6prm, ptr %4, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %status6, align 4
  %wait = getelementptr inbounds %struct.q6prm, ptr %4, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_q6prm_vote_lpass_core_hw, !1, !"__ksymtab_q6prm_vote_lpass_core_hw", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 103, i32 1}
!2 = !{ptr @__ksymtab_q6prm_unvote_lpass_core_hw, !3, !"__ksymtab_q6prm_unvote_lpass_core_hw", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 109, i32 1}
!4 = !{ptr @__ksymtab_q6prm_set_lpass_clock, !5, !"__ksymtab_q6prm_set_lpass_clock", i1 false, i1 false}
!5 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 190, i32 1}
!6 = !{ptr @__initcall__kmod_q6prm__238_249_prm_driver_init6, !7, !"__initcall__kmod_q6prm__238_249_prm_driver_init6", i1 false, i1 false}
!7 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 249, i32 1}
!8 = !{ptr @__exitcall_prm_driver_exit, !7, !"__exitcall_prm_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description239, !10, !"__UNIQUE_ID_description239", i1 false, i1 false}
!10 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 250, i32 1}
!11 = !{ptr @__UNIQUE_ID_file240, !12, !"__UNIQUE_ID_file240", i1 false, i1 false}
!12 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 251, i32 1}
!13 = !{ptr @__UNIQUE_ID_license241, !12, !"__UNIQUE_ID_license241", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 244, i32 11}
!16 = !{ptr @prm_driver, !17, !"prm_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 240, i32 21}
!18 = !{ptr @prm_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 225, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @prm_probe.__key.2, !22, !"__key", i1 false, i1 false}
!22 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 226, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @prm_device_id, !25, !"prm_device_id", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6prm.c", i32 233, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
