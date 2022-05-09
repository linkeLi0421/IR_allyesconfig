; ModuleID = '/llk/IR_all_yes/drivers/nfc/nxp-nci/firmware.c_pt.bc'
source_filename = "../drivers/nfc/nxp-nci/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nxp_nci_fw_recv_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_nxp_nci_fw_recv_frame\09\09\09\09"
module asm "\09.long\09__crc_nxp_nci_fw_recv_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxp_nci_fw_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22nxp_nci_fw_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_nxp_nci_fw_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nxp_nci_info = type { ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.nxp_nci_fw_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nxp_nci_fw_info = type { [33 x i8], ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.completion, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nxp_nci_phy_ops = type { ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.firmware = type { i32, ptr, ptr }

@__kstrtab_nxp_nci_fw_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxp_nci_fw_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_nxp_nci_fw_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxp_nci_fw_recv_frame to i32), ptr @__kstrtab_nxp_nci_fw_recv_frame, ptr @__kstrtabns_nxp_nci_fw_recv_frame }, section "___ksymtab+nxp_nci_fw_recv_frame", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 11, i64 12, i64 30, i64 31, i64 32, i64 33, i64 36, i64 40, i64 42, i64 45, i64 46, i64 197]
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nxp_nci_fw_recv_frame], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nxp_nci_fw_work_complete(ptr noundef %info, i32 noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp4 = icmp eq i32 %result, 0
  %or.cond = and i1 %cmp4, %cmp
  %sub = sub i32 0, %call
  %spec.select = select i1 %or.cond, i32 %sub, i32 %result
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %result.addr.0 = phi i32 [ %result, %entry.if.end6_crit_edge ], [ %spec.select, %if.then ]
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode, align 4
  %fw = getelementptr inbounds %struct.nxp_nci_info, ptr %info, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @release_firmware(ptr noundef nonnull %8) #4
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fw, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %fw_info1 = getelementptr inbounds %struct.nxp_nci_info, ptr %info, i32 0, i32 7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %sub12 = sub i32 0, %result.addr.0
  %call13 = tail call i32 @nfc_fw_download_done(ptr noundef %13, ptr noundef %fw_info1, i32 noundef %sub12) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_fw_download_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nxp_nci_fw_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -172
  %info_lock = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #4
  %cmd_result = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %cmd_result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.if.then18_crit_edge, label %if.end

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.end:                                           ; preds = %entry
  %written = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %written, align 4
  %frame_size = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4 = icmp eq i32 %3, %5
  br i1 %cmp4, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 %3
  store ptr %add.ptr7, ptr %data, align 4
  %size = getelementptr i8, ptr %work, i32 -16
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub = sub i32 %9, %3
  store i32 %sub, ptr %size, align 4
  %10 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %written, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %size11 = getelementptr i8, ptr %work, i32 -16
  %11 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not = icmp eq i32 %12, 0
  br i1 %cmp12.not, label %if.end10.if.then18_crit_edge, label %if.then13

if.end10.if.then18_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.then13:                                        ; preds = %if.end10
  %cmd_completion.i = getelementptr i8, ptr %work, i32 44
  %13 = ptrtoint ptr %cmd_completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_completion.i, align 4
  %14 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.then13.if.end.i_crit_edge

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr i8, ptr %work, i32 -8
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %17, align 1
  %20 = and i16 %19, 1023
  %and.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %frame_size, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %22 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size11, align 4
  %sub.i = add i32 %23, -2
  store i32 %sub.i, ptr %size11, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  %24 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_size, align 4
  %26 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp5.i = icmp ugt i32 %25, %27
  br i1 %cmp5.i, label %if.end.i.if.then18_crit_edge, label %if.end8.i

if.end.i.if.then18_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.end8.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr3, align 4
  %max_payload.i.i = getelementptr i8, ptr %work, i32 -152
  %30 = ptrtoint ptr %max_payload.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_payload.i.i, align 4
  %tx_headroom.i.i.i = getelementptr inbounds %struct.nci_dev, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_headroom.i.i.i, align 4
  %add.i.i.i = add i32 %33, %31
  %tx_tailroom.i.i.i = getelementptr inbounds %struct.nci_dev, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %tx_tailroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_tailroom.i.i.i, align 4
  %add1.i.i.i = add i32 %add.i.i.i, %35
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end8.i.if.then18_crit_edge, label %if.end.i.i

if.end8.i.if.then18_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.end.i.i:                                       ; preds = %if.end8.i
  %36 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_headroom.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 %37
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %41, i32 %37
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %42 = ptrtoint ptr %max_payload.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_payload.i.i, align 4
  %sub3.i.i = add i32 %43, -4
  %44 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_size, align 4
  %46 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %written, align 4
  %sub4.i.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i, i32 %sub3.i.i)
  %cmp.i.i = icmp ugt i32 %sub4.i.i, %sub3.i.i
  %..i.i = select i1 %cmp.i.i, i32 1024, i32 0
  %48 = tail call i32 @llvm.umin.i32(i32 %sub4.i.i, i32 %sub3.i.i) #4
  %and.i.i = and i32 %48, 1023
  %or.i.i = or i32 %..i.i, %and.i.i
  %conv7.i.i = trunc i32 %or.i.i to i16
  %call8.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 2) #4
  %49 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %conv7.i.i, ptr %call8.i.i, align 1
  %data.i.i = getelementptr i8, ptr %work, i32 -8
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %52 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %written, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %53
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %48) #4
  %54 = call ptr @memcpy(ptr %call.i.i.i, ptr %add.ptr.i.i, i32 %48)
  %add.i.i = add i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not29.i.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not29.i.i.i, label %if.end.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge, label %while.body.i.preheader.i.i

if.end.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nxp_nci_fw_send_chunk.exit.i

while.body.i.preheader.i.i:                       ; preds = %if.end.i.i
  %55 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.preheader.i.i
  %crc.032.i.i.i = phi i16 [ %xor19.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ -1, %while.body.i.preheader.i.i ]
  %len.addr.031.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %while.body.i.preheader.i.i ]
  %buffer.addr.030.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %56, %while.body.i.preheader.i.i ]
  %dec.i.i.i = add i32 %len.addr.031.i.i.i, -1
  %or.i.i.i = tail call i16 @llvm.bswap.i16(i16 %crc.032.i.i.i) #4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buffer.addr.030.i.i.i, i32 1
  %57 = ptrtoint ptr %buffer.addr.030.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %buffer.addr.030.i.i.i, align 1
  %conv2.i.i.i = zext i8 %58 to i16
  %xor.i.i.i = xor i16 %or.i.i.i, %conv2.i.i.i
  %and.i.i.i = lshr i16 %xor.i.i.i, 4
  %59 = and i16 %and.i.i.i, 15
  %xor7.i.i.i = xor i16 %59, %xor.i.i.i
  %and10.i.i.i = shl i16 %xor7.i.i.i, 12
  %xor13.i.i.i = xor i16 %and10.i.i.i, %xor7.i.i.i
  %and16.i.i.i = shl i16 %xor7.i.i.i, 5
  %shl17.i.i.i = and i16 %and16.i.i.i, 8160
  %xor19.i.i.i = xor i16 %xor13.i.i.i, %shl17.i.i.i
  %tobool.not.i46.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i46.i.i, label %while.body.i.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

while.body.i.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nxp_nci_fw_send_chunk.exit.i

nxp_nci_fw_send_chunk.exit.i:                     ; preds = %while.body.i.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge, %if.end.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge
  %crc.0.lcssa.i.i.i = phi i16 [ -1, %if.end.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge ], [ %xor19.i.i.i, %while.body.i.i.i.nxp_nci_fw_send_chunk.exit.i_crit_edge ]
  %call13.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 2) #4
  %60 = ptrtoint ptr %call13.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %crc.0.lcssa.i.i.i, ptr %call13.i.i, align 1
  %phy_ops.i.i = getelementptr i8, ptr %work, i32 -156
  %61 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy_ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.nxp_nci_phy_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i.i, align 4
  %phy_id.i.i = getelementptr i8, ptr %work, i32 -168
  %65 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy_id.i.i, align 4
  %call14.i.i = tail call i32 %64(ptr noundef %66, ptr noundef nonnull %call.i.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp1547.i.i = icmp slt i32 %call14.i.i, 0
  %r.0.i.i = select i1 %cmp1547.i.i, i32 %call14.i.i, i32 %48
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i)
  %cmp10.i = icmp slt i32 %r.0.i.i, 0
  br i1 %cmp10.i, label %nxp_nci_fw_send_chunk.exit.i.if.then18_crit_edge, label %if.end13.i

nxp_nci_fw_send_chunk.exit.i.if.then18_crit_edge: ; preds = %nxp_nci_fw_send_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.end13.i:                                       ; preds = %nxp_nci_fw_send_chunk.exit.i
  %67 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %written, align 4
  %add.i = add i32 %68, %r.0.i.i
  store i32 %add.i, ptr %written, align 4
  %69 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %72)
  %cmp17.i = icmp eq i8 %72, -16
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end13.i
  %73 = ptrtoint ptr %cmd_result to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %cmd_result, align 4
  %fw.i = getelementptr i8, ptr %work, i32 -20
  %74 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw.i, align 4
  %tobool.not.i = icmp eq ptr %75, null
  br i1 %tobool.not.i, label %if.then19.i.lor.lhs.false_crit_edge, label %if.then20.i

if.then19.i.lor.lhs.false_crit_edge:              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then20.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i49.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %work) #4
  br label %lor.lhs.false

if.else.i:                                        ; preds = %if.end13.i
  %call25.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %cmd_completion.i, i32 noundef 3000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.else.i.if.then18_crit_edge, label %if.else.i.lor.lhs.false_crit_edge

if.else.i.lor.lhs.false_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.else.i.if.then18_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.else.i.lor.lhs.false_crit_edge, %if.then20.i, %if.then19.i.lor.lhs.false_crit_edge
  %77 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %size11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp17 = icmp eq i32 %.pr, 0
  br i1 %cmp17, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.else.i.if.then18_crit_edge, %nxp_nci_fw_send_chunk.exit.i.if.then18_crit_edge, %if.end8.i.if.then18_crit_edge, %if.end.i.if.then18_crit_edge, %if.end10.if.then18_crit_edge, %entry.if.then18_crit_edge
  %r.044 = phi i32 [ 0, %lor.lhs.false.if.then18_crit_edge ], [ -12, %if.end8.i.if.then18_crit_edge ], [ -110, %if.else.i.if.then18_crit_edge ], [ %r.0.i.i, %nxp_nci_fw_send_chunk.exit.i.if.then18_crit_edge ], [ -90, %if.end.i.if.then18_crit_edge ], [ %1, %entry.if.then18_crit_edge ], [ %1, %if.end10.if.then18_crit_edge ]
  %phy_ops.i = getelementptr i8, ptr %work, i32 -156
  %78 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_ops.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %tobool.not.i37 = icmp eq ptr %81, null
  br i1 %tobool.not.i37, label %if.then18.if.end6.i_crit_edge, label %if.then.i40

if.then18.if.end6.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then.i40:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %phy_id.i = getelementptr i8, ptr %work, i32 -168
  %82 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %81(ptr noundef %83, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i38 = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.044)
  %cmp4.i = icmp eq i32 %r.044, 0
  %or.cond.i = and i1 %cmp4.i, %cmp.i38
  %sub.i39 = sub i32 0, %call.i
  %spec.select.i = select i1 %or.cond.i, i32 %sub.i39, i32 %r.044
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i40, %if.then18.if.end6.i_crit_edge
  %result.addr.0.i = phi i32 [ %r.044, %if.then18.if.end6.i_crit_edge ], [ %spec.select.i, %if.then.i40 ]
  %mode.i = getelementptr i8, ptr %work, i32 -160
  %84 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %mode.i, align 4
  %fw.i41 = getelementptr i8, ptr %work, i32 -20
  %85 = ptrtoint ptr %fw.i41 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw.i41, align 4
  %tobool7.not.i = icmp eq ptr %86, null
  br i1 %tobool7.not.i, label %if.end6.i.nxp_nci_fw_work_complete.exit_crit_edge, label %if.then8.i

if.end6.i.nxp_nci_fw_work_complete.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nxp_nci_fw_work_complete.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @release_firmware(ptr noundef nonnull %86) #4
  %87 = ptrtoint ptr %fw.i41 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %fw.i41, align 4
  br label %nxp_nci_fw_work_complete.exit

nxp_nci_fw_work_complete.exit:                    ; preds = %if.then8.i, %if.end6.i.nxp_nci_fw_work_complete.exit_crit_edge
  %fw_info1.i = getelementptr i8, ptr %work, i32 -56
  %88 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr3, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %sub12.i = sub i32 0, %result.addr.0.i
  %call13.i = tail call i32 @nfc_fw_download_done(ptr noundef %91, ptr noundef %fw_info1.i, i32 noundef %sub12.i) #4
  br label %if.end19

if.end19:                                         ; preds = %nxp_nci_fw_work_complete.exit, %lor.lhs.false.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %info_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nxp_nci_fw_download(ptr nocapture noundef readonly %ndev, ptr noundef %firmware_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_info1 = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #4
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.fw_download_exit_crit_edge, label %lor.lhs.false

entry.fw_download_exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_download_exit

lor.lhs.false:                                    ; preds = %entry
  %write = getelementptr inbounds %struct.nxp_nci_phy_ops, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.fw_download_exit_crit_edge, label %if.end

lor.lhs.false.fw_download_exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_download_exit

if.end:                                           ; preds = %lor.lhs.false
  %tobool4.not = icmp eq ptr %firmware_name, null
  br i1 %tobool4.not, label %if.end.fw_download_exit_crit_edge, label %lor.lhs.false5

if.end.fw_download_exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_download_exit

lor.lhs.false5:                                   ; preds = %if.end
  %8 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %firmware_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %lor.lhs.false5.fw_download_exit_crit_edge, label %if.end8

lor.lhs.false5.fw_download_exit_crit_edge:        ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_download_exit

if.end8:                                          ; preds = %lor.lhs.false5
  %call9 = tail call ptr @strcpy(ptr noundef %fw_info1, ptr noundef nonnull %firmware_name) #7
  %fw = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %parent = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call10 = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %firmware_name, ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.fw_download_exit_crit_edge, label %if.end14

if.end8.fw_download_exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %fw_download_exit

if.end14:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_id, align 4
  %call17 = tail call i32 %17(ptr noundef %19, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %21) #4
  br label %fw_download_exit

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %mode, align 4
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %data24 = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 4
  %27 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %data24, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  %size26 = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %size26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %size26, align 4
  %written = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %written, align 4
  %frame_size = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %frame_size, align 4
  %cmd_result = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 8
  %33 = ptrtoint ptr %cmd_result to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cmd_result, align 4
  %work = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work) #4
  br label %fw_download_exit

fw_download_exit:                                 ; preds = %if.end22, %if.then20, %if.end8.fw_download_exit_crit_edge, %lor.lhs.false5.fw_download_exit_crit_edge, %if.end.fw_download_exit_crit_edge, %lor.lhs.false.fw_download_exit_crit_edge, %entry.fw_download_exit_crit_edge
  %r.0 = phi i32 [ %call10, %if.end8.fw_download_exit_crit_edge ], [ %call17, %if.then20 ], [ %call17, %if.end22 ], [ -524, %lor.lhs.false.fw_download_exit_crit_edge ], [ -524, %entry.fw_download_exit_crit_edge ], [ -22, %lor.lhs.false5.fw_download_exit_crit_edge ], [ -22, %if.end.fw_download_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #4
  ret i32 %r.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nxp_nci_fw_recv_frame(ptr nocapture noundef readonly %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmd_completion = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 7
  tail call void @complete(ptr noundef %cmd_completion) #4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %3, -2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not29.i.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not29.i.i, label %if.then.nxp_nci_fw_check_crc.exit_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.nxp_nci_fw_check_crc.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nxp_nci_fw_check_crc.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  %crc.032.i.i = phi i16 [ %xor19.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ -1, %if.then.while.body.i.i_crit_edge ]
  %len.addr.031.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub.i, %if.then.while.body.i.i_crit_edge ]
  %buffer.addr.030.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %5, %if.then.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %len.addr.031.i.i, -1
  %or.i.i = tail call i16 @llvm.bswap.i16(i16 %crc.032.i.i) #4
  %incdec.ptr.i.i = getelementptr i8, ptr %buffer.addr.030.i.i, i32 1
  %6 = ptrtoint ptr %buffer.addr.030.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.addr.030.i.i, align 1
  %conv2.i.i = zext i8 %7 to i16
  %xor.i.i = xor i16 %or.i.i, %conv2.i.i
  %and.i.i = lshr i16 %xor.i.i, 4
  %8 = and i16 %and.i.i, 15
  %xor7.i.i = xor i16 %8, %xor.i.i
  %and10.i.i = shl i16 %xor7.i.i, 12
  %xor13.i.i = xor i16 %and10.i.i, %xor7.i.i
  %and16.i.i = shl i16 %xor7.i.i, 5
  %shl17.i.i = and i16 %and16.i.i, 8160
  %xor19.i.i = xor i16 %xor13.i.i, %shl17.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.nxp_nci_fw_check_crc.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.nxp_nci_fw_check_crc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nxp_nci_fw_check_crc.exit

nxp_nci_fw_check_crc.exit:                        ; preds = %while.body.i.i.nxp_nci_fw_check_crc.exit_crit_edge, %if.then.nxp_nci_fw_check_crc.exit_crit_edge
  %crc.0.lcssa.i.i = phi i16 [ -1, %if.then.nxp_nci_fw_check_crc.exit_crit_edge ], [ %xor19.i.i, %while.body.i.i.nxp_nci_fw_check_crc.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %crc.0.lcssa.i.i)
  %cmp.not = icmp eq i16 %10, %crc.0.lcssa.i.i
  br i1 %cmp.not, label %if.else, label %nxp_nci_fw_check_crc.exit.if.end_crit_edge

nxp_nci_fw_check_crc.exit.if.end_crit_edge:       ; preds = %nxp_nci_fw_check_crc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %nxp_nci_fw_check_crc.exit
  %call5 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 2) #4
  %11 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call5, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %sw.default.i [
    i8 0, label %if.else.if.end_crit_edge
    i8 1, label %sw.bb1.i
    i8 11, label %sw.bb2.i
    i8 12, label %sw.bb3.i
    i8 30, label %sw.bb4.i
    i8 31, label %sw.bb5.i
    i8 32, label %sw.bb6.i
    i8 33, label %sw.bb7.i
    i8 36, label %sw.bb8.i
    i8 40, label %sw.bb9.i
    i8 42, label %sw.bb10.i
    i8 45, label %if.else.if.end_crit_edge23
    i8 46, label %if.else.if.end_crit_edge24
    i8 -59, label %sw.bb13.i
  ]

if.else.if.end_crit_edge24:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.if.end_crit_edge23:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb13.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %sw.default.i, %sw.bb13.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else.if.end_crit_edge, %if.else.if.end_crit_edge23, %if.else.if.end_crit_edge24, %nxp_nci_fw_check_crc.exit.if.end_crit_edge
  %retval.0.i.sink = phi i32 [ -74, %nxp_nci_fw_check_crc.exit.if.end_crit_edge ], [ -5, %sw.default.i ], [ -22, %sw.bb13.i ], [ -133, %sw.bb10.i ], [ -71, %sw.bb9.i ], [ -114, %sw.bb8.i ], [ -129, %sw.bb7.i ], [ -126, %sw.bb6.i ], [ -105, %sw.bb5.i ], [ -99, %sw.bb4.i ], [ -90, %sw.bb3.i ], [ -22, %sw.bb2.i ], [ -22, %sw.bb1.i ], [ 0, %if.else.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge23 ], [ 0, %if.else.if.end_crit_edge24 ]
  %cmd_result7 = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 8
  %14 = ptrtoint ptr %cmd_result7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.sink, ptr %cmd_result7, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #4
  br label %if.end10

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_result9 = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 8
  %15 = ptrtoint ptr %cmd_result9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %cmd_result9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.end
  %fw = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_nxp_nci_fw_recv_frame, !1, !"__ksymtab_nxp_nci_fw_recv_frame", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nxp-nci/firmware.c", i32 309, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
