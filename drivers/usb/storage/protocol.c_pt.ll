; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/protocol.c_pt.bc'
source_filename = "../drivers/usb/storage/protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_stor_transparent_scsi_command\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_transparent_scsi_command\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_transparent_scsi_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_transparent_scsi_command:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_transparent_scsi_command\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_transparent_scsi_command:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_access_xfer_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_access_xfer_buf\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_access_xfer_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_access_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_access_xfer_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_access_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_set_xfer_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_set_xfer_buf\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_set_xfer_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_set_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_set_xfer_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_set_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_usb_stor_transparent_scsi_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_transparent_scsi_command = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_transparent_scsi_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_transparent_scsi_command to i32), ptr @__kstrtab_usb_stor_transparent_scsi_command, ptr @__kstrtabns_usb_stor_transparent_scsi_command }, section "___ksymtab_gpl+usb_stor_transparent_scsi_command", align 4
@__kstrtab_usb_stor_access_xfer_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_access_xfer_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_access_xfer_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_access_xfer_buf to i32), ptr @__kstrtab_usb_stor_access_xfer_buf, ptr @__kstrtabns_usb_stor_access_xfer_buf }, section "___ksymtab_gpl+usb_stor_access_xfer_buf", align 4
@__kstrtab_usb_stor_set_xfer_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_set_xfer_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_set_xfer_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_set_xfer_buf to i32), ptr @__kstrtab_usb_stor_set_xfer_buf, ptr @__kstrtabns_usb_stor_set_xfer_buf }, section "___ksymtab_gpl+usb_stor_set_xfer_buf", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 18, i64 90]
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_usb_stor_access_xfer_buf, ptr @__ksymtab_usb_stor_set_xfer_buf, ptr @__ksymtab_usb_stor_transparent_scsi_command], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_pad12_command(ptr noundef %srb, ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %0 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp8 = icmp ult i16 %1, 12
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i16 [ %1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_len, align 4
  %inc = add i16 %7, 1
  store i16 %inc, ptr %cmd_len, align 4
  %cmp = icmp ult i16 %inc, 12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @usb_stor_invoke_transport(ptr noundef %srb, ptr noundef %us) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_invoke_transport(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_ufi_command(ptr noundef %srb, ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %0 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp28 = icmp ult i16 %1, 12
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i16 [ %1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_len, align 4
  %inc = add i16 %7, 1
  store i16 %inc, ptr %cmd_len, align 4
  %cmp = icmp ult i16 %inc, 12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12, ptr %cmd_len, align 4
  %cmnd5 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd5, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %for.end.sw.epilog_crit_edge [
    i8 18, label %sw.bb
    i8 90, label %sw.bb10
    i8 3, label %sw.bb15
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx9 = getelementptr i8, ptr %10, i32 4
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 36, ptr %arrayidx9, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12 = getelementptr i8, ptr %10, i32 7
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx12, align 1
  %16 = ptrtoint ptr %cmnd5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmnd5, align 4
  %arrayidx14 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %arrayidx14, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx17 = getelementptr i8, ptr %10, i32 4
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 18, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb10, %sw.bb, %for.end.sw.epilog_crit_edge
  tail call void @usb_stor_invoke_transport(ptr noundef %srb, ptr noundef %us) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_transparent_scsi_command(ptr noundef %srb, ptr noundef %us) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_invoke_transport(ptr noundef %srb, ptr noundef %us) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stor_access_xfer_buf(ptr nocapture noundef %buffer, i32 noundef %buflen, ptr nocapture noundef readonly %srb, ptr nocapture noundef %sgptr, ptr nocapture noundef %offset, i32 noundef %dir) #0 align 64 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgptr, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #4
  %2 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @sg_nents(ptr noundef nonnull %1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %3 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents.i, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %5 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdb.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sg.0 = phi ptr [ %1, %if.then ], [ %6, %if.else ]
  %nents.0 = phi i32 [ %call1, %if.then ], [ %4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, i32 4, i32 2
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %sg.0, i32 noundef %nents.0, i32 noundef %cond) #4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %call3 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %miter, i32 noundef %8) #4
  br i1 %call3, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call656 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp757 = icmp ne i32 %buflen, 0
  %or.cond58 = and i1 %call656, %cmp757
  br i1 %or.cond58, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %addr13 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %piter = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %cnt.059 = phi i32 [ 0, %while.body.lr.ph ], [ %add28, %if.end27.while.body_crit_edge ]
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %sub = sub i32 %buflen, %cnt.059
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 %sub)
  br i1 %cmp, label %if.then11, label %if.else12

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %buffer, i32 %cnt.059
  %12 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr13, align 4
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %13, i32 %11)
  br label %if.end15

if.else12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr13, align 4
  %add.ptr14 = getelementptr i8, ptr %buffer, i32 %cnt.059
  %17 = call ptr @memcpy(ptr %16, ptr %add.ptr14, i32 %11)
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then11
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %add = add i32 %19, %11
  %20 = ptrtoint ptr %piter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %piter, align 4
  %length17 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp18 = icmp ult i32 %add, %23
  br i1 %cmp18, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %offset, align 4
  br label %if.end27

if.else23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset, align 4
  %call26 = call ptr @sg_next(ptr noundef %21) #4
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then19
  %storemerge = phi ptr [ %call26, %if.else23 ], [ %21, %if.then19 ]
  %26 = ptrtoint ptr %sgptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %storemerge, ptr %sgptr, align 4
  %add28 = add i32 %11, %cnt.059
  %call6 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %buflen)
  %cmp7 = icmp ult i32 %add28, %buflen
  %or.cond = select i1 %call6, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add28, %if.end27.while.end_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %miter) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt.0.lcssa, %while.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_set_xfer_buf(ptr nocapture noundef %buffer, i32 noundef %buflen, ptr nocapture noundef %srb) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #4
  %1 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sg, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %buflen)
  %call1 = call i32 @usb_stor_access_xfer_buf(ptr noundef %buffer, i32 noundef %4, ptr noundef %srb, ptr noundef nonnull %sg, ptr noundef nonnull %offset, i32 noundef 0)
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call1)
  %cmp3 = icmp ugt i32 %6, %call1
  br i1 %cmp3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 %6, %call1
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %7 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_usb_stor_transparent_scsi_command, !1, !"__ksymtab_usb_stor_transparent_scsi_command", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/protocol.c", i32 110, i32 1}
!2 = !{ptr @__ksymtab_usb_stor_access_xfer_buf, !3, !"__ksymtab_usb_stor_access_xfer_buf", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/protocol.c", i32 163, i32 1}
!4 = !{ptr @__ksymtab_usb_stor_set_xfer_buf, !5, !"__ksymtab_usb_stor_set_xfer_buf", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/protocol.c", i32 181, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
