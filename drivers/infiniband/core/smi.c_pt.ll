; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/smi.c_pt.bc'
source_filename = "../drivers/infiniband/core/smi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.opa_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, [64 x i8], [64 x i8], [8 x i8], [1872 x i8] }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smi_handle_dr_smp_send(ptr nocapture noundef %smp, i1 noundef zeroext %is_switch, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 5
  %hop_cnt = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 6
  %0 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_cnt, align 1
  %initial_path = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 16
  %return_path = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 17
  %status.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %status.i, align 1
  %.lobit.i = lshr i16 %3, 15
  %4 = trunc i16 %.lobit.i to i8
  %dr_dlid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 13
  %5 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp = icmp eq i16 %6, -1
  %dr_slid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 12
  %7 = ptrtoint ptr %dr_slid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %dr_slid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp4 = icmp eq i16 %8, -1
  %call6 = tail call fastcc i32 @__smi_handle_dr_smp_send(i1 noundef zeroext %is_switch, i32 noundef %port_num, ptr noundef %hop_ptr, i8 noundef zeroext %1, ptr noundef %initial_path, ptr noundef %return_path, i8 noundef zeroext %4, i1 noundef zeroext %cmp, i1 noundef zeroext %cmp4)
  ret i32 %call6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__smi_handle_dr_smp_send(i1 noundef zeroext %is_switch, i32 noundef %port_num, ptr nocapture noundef %hop_ptr, i8 noundef zeroext %hop_cnt, ptr nocapture noundef readonly %initial_path, ptr nocapture noundef readonly %return_path, i8 noundef zeroext %direction, i1 noundef zeroext %dr_dlid_is_permissive, i1 noundef zeroext %dr_slid_is_permissive) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %hop_cnt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %hop_cnt)
  %cmp = icmp ugt i8 %hop_cnt, 63
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direction)
  %tobool.not = icmp eq i8 %direction, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hop_cnt)
  %tobool6.not = icmp eq i8 %hop_cnt, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %tobool6.not, label %if.then4.if.end14_crit_edge, label %land.lhs.true

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then4
  %0 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8 = icmp eq i8 %1, 0
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hop_ptr, align 1
  %arrayidx = getelementptr i8, ptr %initial_path, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %port_num)
  %cmp12 = icmp eq i32 %conv11, %port_num
  br label %return

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.then4.if.end14_crit_edge
  %5 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hop_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %hop_cnt)
  %cmp20 = icmp ult i8 %6, %hop_cnt
  %or.cond = and i1 %tobool16.not, %cmp20
  br i1 %or.cond, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.end14
  br i1 %is_switch, label %if.end25, label %if.then22.return_crit_edge

if.then22.return_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end25:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  %inc26 = add nuw i8 %6, 1
  %7 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %inc26, ptr %hop_ptr, align 1
  %idxprom27 = zext i8 %inc26 to i32
  %arrayidx28 = getelementptr i8, ptr %initial_path, i32 %idxprom27
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %port_num)
  %cmp30 = icmp eq i32 %conv29, %port_num
  br label %return

if.end33:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %hop_cnt)
  %cmp36 = icmp eq i8 %6, %hop_cnt
  br i1 %cmp36, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %inc39 = add nuw nsw i8 %hop_cnt, 1
  %10 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %inc39, ptr %hop_ptr, align 1
  %narrow142 = or i1 %is_switch, %dr_dlid_is_permissive
  br label %return

if.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %conv34 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv34)
  %cmp48 = icmp eq i32 %add, %conv34
  br label %return

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %hop_ptr, align 1
  %tobool6.not.not = xor i1 %tobool6.not, true
  %conv54 = zext i8 %.pr to i32
  %add56 = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %conv54)
  %cmp57 = icmp eq i32 %add56, %conv54
  %or.cond143 = select i1 %tobool6.not.not, i1 %cmp57, i1 false
  br i1 %or.cond143, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %dec = add i8 %.pr, -1
  %12 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %dec, ptr %hop_ptr, align 1
  %idxprom60 = zext i8 %dec to i32
  %arrayidx61 = getelementptr i8, ptr %return_path, i32 %idxprom60
  %13 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62, i32 %port_num)
  %cmp63 = icmp eq i32 %conv62, %port_num
  br label %return

if.end66:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp68 = icmp ult i8 %.pr, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %.pr, i8 %hop_cnt)
  %cmp73.not = icmp ugt i8 %.pr, %hop_cnt
  %or.cond140 = or i1 %cmp68, %cmp73.not
  br i1 %or.cond140, label %if.end86, label %if.then75

if.then75:                                        ; preds = %if.end66
  br i1 %is_switch, label %if.end78, label %if.then75.return_crit_edge

if.then75.return_crit_edge:                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end78:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  %dec79 = add i8 %.pr, -1
  %15 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dec79, ptr %hop_ptr, align 1
  %idxprom80 = zext i8 %dec79 to i32
  %arrayidx81 = getelementptr i8, ptr %return_path, i32 %idxprom80
  %16 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv82, i32 %port_num)
  %cmp83 = icmp eq i32 %conv82, %port_num
  br label %return

if.end86:                                         ; preds = %if.end66
  %18 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr, label %if.end104 [
    i8 1, label %if.then90
    i8 0, label %if.end86.return_crit_edge
  ]

if.end86.return_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %hop_ptr, align 1
  %narrow = or i1 %is_switch, %dr_slid_is_permissive
  br label %return

if.end104:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %if.end104, %if.then90, %if.end86.return_crit_edge, %if.end78, %if.then75.return_crit_edge, %if.then59, %if.end45, %if.then38, %if.end25, %if.then22.return_crit_edge, %if.then10, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp63, %if.then59 ], [ %cmp83, %if.end78 ], [ %narrow, %if.then90 ], [ false, %if.end104 ], [ %cmp12, %if.then10 ], [ %cmp30, %if.end25 ], [ %narrow142, %if.then38 ], [ %cmp48, %if.end45 ], [ false, %entry.return_crit_edge ], [ false, %if.then22.return_crit_edge ], [ false, %if.then75.return_crit_edge ], [ true, %if.end86.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @opa_smi_handle_dr_smp_send(ptr nocapture noundef %smp, i1 noundef zeroext %is_switch, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 5
  %hop_cnt = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 6
  %0 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_cnt, align 1
  %route = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12
  %initial_path = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 2
  %return_path = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 3
  %status.i.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %status.i.i, align 1
  %.lobit.i.i = lshr i16 %3, 15
  %4 = trunc i16 %.lobit.i.i to i8
  %dr_dlid = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 1
  %5 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %route to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp5 = icmp eq i32 %8, -1
  %call6 = tail call fastcc i32 @__smi_handle_dr_smp_send(i1 noundef zeroext %is_switch, i32 noundef %port_num, ptr noundef %hop_ptr, i8 noundef zeroext %1, ptr noundef %initial_path, ptr noundef %return_path, i8 noundef zeroext %4, i1 noundef zeroext %cmp, i1 noundef zeroext %cmp5)
  ret i32 %call6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smi_handle_dr_smp_recv(ptr nocapture noundef %smp, i1 noundef zeroext %is_switch, i32 noundef %port_num, i32 noundef %phys_port_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 5
  %hop_cnt = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 6
  %0 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_cnt, align 1
  %initial_path = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 16
  %return_path = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 17
  %dr_dlid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 13
  %2 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  %dr_slid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 12
  %4 = ptrtoint ptr %dr_slid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %dr_slid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp4 = icmp eq i16 %5, -1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp.i = icmp ugt i8 %1, 63
  br i1 %cmp.i, label %entry.__smi_handle_dr_smp_recv.exit_crit_edge, label %if.end.i

entry.__smi_handle_dr_smp_recv.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end.i:                                         ; preds = %entry
  %status.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %tobool6.not.i, label %if.then4.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then4.i
  %8 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hop_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.i = icmp eq i8 %9, 0
  br i1 %cmp8.i, label %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.then4.i.if.end11.i_crit_edge
  %10 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hop_ptr, align 1
  %conv12.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp17.i = icmp ult i8 %11, %1
  %or.cond.i = and i1 %tobool13.not.i, %cmp17.i
  br i1 %or.cond.i, label %if.then19.i, label %if.end29.i

if.then19.i:                                      ; preds = %if.end11.i
  br i1 %is_switch, label %if.end22.i, label %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end22.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv23.i = trunc i32 %port_num to i8
  %arrayidx.i = getelementptr i8, ptr %return_path, i32 %conv12.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23.i, ptr %arrayidx.i, align 1
  %add.i = add nuw nsw i32 %conv12.i, 1
  %arrayidx25.i = getelementptr i8, ptr %initial_path, i32 %add.i
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %phys_port_cnt)
  %cmp27.not.i = icmp sle i32 %conv26.i, %phys_port_cnt
  br label %__smi_handle_dr_smp_recv.exit

if.end29.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp32.i = icmp eq i8 %11, %1
  br i1 %cmp32.i, label %if.then34.i, label %if.end46.i

if.then34.i:                                      ; preds = %if.end29.i
  br i1 %tobool6.not.i, label %if.then34.i.if.end40.i_crit_edge, label %if.then36.i

if.then34.i.if.end40.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv37.i = trunc i32 %port_num to i8
  %arrayidx39.i = getelementptr i8, ptr %return_path, i32 %conv12.i
  %15 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv37.i, ptr %arrayidx39.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.then34.i.if.end40.i_crit_edge
  %narrow.i = or i1 %cmp, %is_switch
  br label %__smi_handle_dr_smp_recv.exit

if.end46.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #5
  %add49.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add49.i, i32 %conv12.i)
  %cmp50.i = icmp eq i32 %add49.i, %conv12.i
  br label %__smi_handle_dr_smp_recv.exit

if.else.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr.i = load i8, ptr %hop_ptr, align 1
  %.pre.i = zext i8 %.pr.i to i32
  %tobool6.not.not.i = xor i1 %tobool6.not.i, true
  %add58.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.i, i32 %.pre.i)
  %cmp59.i = icmp eq i32 %add58.i, %.pre.i
  %or.cond138.i = select i1 %tobool6.not.not.i, i1 %cmp59.i, i1 false
  br i1 %or.cond138.i, label %if.then61.i, label %if.end68.i

if.then61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %dec.i = add i8 %.pr.i, -1
  %17 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dec.i, ptr %hop_ptr, align 1
  %idxprom62.i = zext i8 %dec.i to i32
  %arrayidx63.i = getelementptr i8, ptr %return_path, i32 %idxprom62.i
  %18 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.i, i32 %port_num)
  %cmp65.i = icmp eq i32 %conv64.i, %port_num
  br label %__smi_handle_dr_smp_recv.exit

if.end68.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp70.i = icmp ult i8 %.pr.i, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %.pr.i, i8 %1)
  %cmp75.not.i = icmp ugt i8 %.pr.i, %1
  %or.cond137.i = or i1 %cmp70.i, %cmp75.not.i
  br i1 %or.cond137.i, label %if.end87.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.end68.i
  br i1 %is_switch, label %if.end80.i, label %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end80.i:                                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add nsw i32 %.pre.i, -1
  %arrayidx82.i = getelementptr i8, ptr %return_path, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83.i, i32 %phys_port_cnt)
  %cmp84.not.i = icmp sle i32 %conv83.i, %phys_port_cnt
  br label %__smi_handle_dr_smp_recv.exit

if.end87.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp89.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp89.i, label %if.then91.i, label %if.end99.i

if.then91.i:                                      ; preds = %if.end87.i
  br i1 %cmp4, label %if.then93.i, label %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.then93.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %hop_ptr, align 1
  br label %__smi_handle_dr_smp_recv.exit

if.end99.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp101.i = icmp eq i8 %.pr.i, 0
  br label %__smi_handle_dr_smp_recv.exit

__smi_handle_dr_smp_recv.exit:                    ; preds = %if.end99.i, %if.then93.i, %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge, %if.end80.i, %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge, %if.then61.i, %if.end46.i, %if.end40.i, %if.end22.i, %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge, %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge, %entry.__smi_handle_dr_smp_recv.exit_crit_edge
  %retval.0.shrunk.i = phi i1 [ %cmp65.i, %if.then61.i ], [ %cmp84.not.i, %if.end80.i ], [ true, %if.then93.i ], [ %cmp101.i, %if.end99.i ], [ %cmp27.not.i, %if.end22.i ], [ %narrow.i, %if.end40.i ], [ %cmp50.i, %if.end46.i ], [ false, %entry.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ %is_switch, %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge ]
  %retval.0.i = zext i1 %retval.0.shrunk.i to i32
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @opa_smi_handle_dr_smp_recv(ptr nocapture noundef %smp, i1 noundef zeroext %is_switch, i32 noundef %port_num, i32 noundef %phys_port_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 5
  %hop_cnt = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 6
  %0 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_cnt, align 1
  %route = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12
  %initial_path = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 2
  %return_path = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 3
  %dr_dlid = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  %4 = ptrtoint ptr %route to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp5 = icmp eq i32 %5, -1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp.i = icmp ugt i8 %1, 63
  br i1 %cmp.i, label %entry.__smi_handle_dr_smp_recv.exit_crit_edge, label %if.end.i

entry.__smi_handle_dr_smp_recv.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end.i:                                         ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %tobool6.not.i, label %if.then4.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then4.i
  %8 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hop_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.i = icmp eq i8 %9, 0
  br i1 %cmp8.i, label %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.then4.i.if.end11.i_crit_edge
  %10 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hop_ptr, align 1
  %conv12.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp17.i = icmp ult i8 %11, %1
  %or.cond.i = and i1 %tobool13.not.i, %cmp17.i
  br i1 %or.cond.i, label %if.then19.i, label %if.end29.i

if.then19.i:                                      ; preds = %if.end11.i
  br i1 %is_switch, label %if.end22.i, label %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end22.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv23.i = trunc i32 %port_num to i8
  %arrayidx.i = getelementptr i8, ptr %return_path, i32 %conv12.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23.i, ptr %arrayidx.i, align 1
  %add.i = add nuw nsw i32 %conv12.i, 1
  %arrayidx25.i = getelementptr i8, ptr %initial_path, i32 %add.i
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %phys_port_cnt)
  %cmp27.not.i = icmp sle i32 %conv26.i, %phys_port_cnt
  br label %__smi_handle_dr_smp_recv.exit

if.end29.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp32.i = icmp eq i8 %11, %1
  br i1 %cmp32.i, label %if.then34.i, label %if.end46.i

if.then34.i:                                      ; preds = %if.end29.i
  br i1 %tobool6.not.i, label %if.then34.i.if.end40.i_crit_edge, label %if.then36.i

if.then34.i.if.end40.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv37.i = trunc i32 %port_num to i8
  %arrayidx39.i = getelementptr i8, ptr %return_path, i32 %conv12.i
  %15 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv37.i, ptr %arrayidx39.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.then34.i.if.end40.i_crit_edge
  %narrow.i = or i1 %cmp, %is_switch
  br label %__smi_handle_dr_smp_recv.exit

if.end46.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #5
  %add49.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add49.i, i32 %conv12.i)
  %cmp50.i = icmp eq i32 %add49.i, %conv12.i
  br label %__smi_handle_dr_smp_recv.exit

if.else.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr.i = load i8, ptr %hop_ptr, align 1
  %.pre.i = zext i8 %.pr.i to i32
  %tobool6.not.not.i = xor i1 %tobool6.not.i, true
  %add58.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.i, i32 %.pre.i)
  %cmp59.i = icmp eq i32 %add58.i, %.pre.i
  %or.cond138.i = select i1 %tobool6.not.not.i, i1 %cmp59.i, i1 false
  br i1 %or.cond138.i, label %if.then61.i, label %if.end68.i

if.then61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %dec.i = add i8 %.pr.i, -1
  %17 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dec.i, ptr %hop_ptr, align 1
  %idxprom62.i = zext i8 %dec.i to i32
  %arrayidx63.i = getelementptr i8, ptr %return_path, i32 %idxprom62.i
  %18 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.i, i32 %port_num)
  %cmp65.i = icmp eq i32 %conv64.i, %port_num
  br label %__smi_handle_dr_smp_recv.exit

if.end68.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp70.i = icmp ult i8 %.pr.i, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %.pr.i, i8 %1)
  %cmp75.not.i = icmp ugt i8 %.pr.i, %1
  %or.cond137.i = or i1 %cmp70.i, %cmp75.not.i
  br i1 %or.cond137.i, label %if.end87.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.end68.i
  br i1 %is_switch, label %if.end80.i, label %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.end80.i:                                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add nsw i32 %.pre.i, -1
  %arrayidx82.i = getelementptr i8, ptr %return_path, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83.i, i32 %phys_port_cnt)
  %cmp84.not.i = icmp sle i32 %conv83.i, %phys_port_cnt
  br label %__smi_handle_dr_smp_recv.exit

if.end87.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp89.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp89.i, label %if.then91.i, label %if.end99.i

if.then91.i:                                      ; preds = %if.end87.i
  br i1 %cmp5, label %if.then93.i, label %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge

if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge: ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_handle_dr_smp_recv.exit

if.then93.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %hop_ptr, align 1
  br label %__smi_handle_dr_smp_recv.exit

if.end99.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp101.i = icmp eq i8 %.pr.i, 0
  br label %__smi_handle_dr_smp_recv.exit

__smi_handle_dr_smp_recv.exit:                    ; preds = %if.end99.i, %if.then93.i, %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge, %if.end80.i, %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge, %if.then61.i, %if.end46.i, %if.end40.i, %if.end22.i, %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge, %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge, %entry.__smi_handle_dr_smp_recv.exit_crit_edge
  %retval.0.shrunk.i = phi i1 [ %cmp65.i, %if.then61.i ], [ %cmp84.not.i, %if.end80.i ], [ true, %if.then93.i ], [ %cmp101.i, %if.end99.i ], [ %cmp27.not.i, %if.end22.i ], [ %narrow.i, %if.end40.i ], [ %cmp50.i, %if.end46.i ], [ false, %entry.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %land.lhs.true.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %if.then19.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ false, %if.then77.i.__smi_handle_dr_smp_recv.exit_crit_edge ], [ %is_switch, %if.then91.i.__smi_handle_dr_smp_recv.exit_crit_edge ]
  %retval.0.i = zext i1 %retval.0.shrunk.i to i32
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smi_check_forward_dr_smp(ptr nocapture noundef readonly %smp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 5
  %0 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_ptr, align 1
  %hop_cnt = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 6
  %2 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hop_cnt, align 1
  %status.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %status.i, align 1
  %dr_dlid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 13
  %6 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  %dr_slid = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 12
  %8 = ptrtoint ptr %dr_slid to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %dr_slid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp3 = icmp ne i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.i = icmp ult i8 %1, %3
  %or.cond.i = and i1 %tobool2.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge, label %if.end.i

if.then.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp9.i = icmp eq i8 %1, %3
  br i1 %cmp9.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i = zext i1 %cmp to i32
  br label %__smi_check_forward_dr_smp.exit

if.end14.i:                                       ; preds = %if.end.i
  %conv8.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp17.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp17.i, label %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge, label %if.end14.i.if.end38.i_crit_edge

if.end14.i.if.end38.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38.i

if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp22.i = icmp ult i8 %1, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp27.not.i = icmp ugt i8 %1, %3
  %or.cond48.i = or i1 %cmp22.i, %cmp27.not.i
  br i1 %or.cond48.i, label %if.end30.i, label %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge

if.else.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.end30.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp32.i = icmp eq i8 %1, 1
  br i1 %cmp32.i, label %if.then34.i, label %if.end30.i.if.end38.i_crit_edge

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond36.i = zext i1 %cmp3 to i32
  br label %__smi_check_forward_dr_smp.exit

if.end38.i:                                       ; preds = %if.end30.i.if.end38.i_crit_edge, %if.end14.i.if.end38.i_crit_edge
  br label %__smi_check_forward_dr_smp.exit

__smi_check_forward_dr_smp.exit:                  ; preds = %if.end38.i, %if.then34.i, %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge, %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge, %if.then11.i, %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge
  %retval.0.i = phi i32 [ %cond36.i, %if.then34.i ], [ 0, %if.end38.i ], [ %cond.i, %if.then11.i ], [ 2, %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge ], [ 1, %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge ], [ 2, %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @opa_smi_check_forward_dr_smp(ptr nocapture noundef readonly %smp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hop_ptr = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 5
  %0 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hop_ptr, align 1
  %hop_cnt = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 6
  %2 = ptrtoint ptr %hop_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hop_cnt, align 1
  %status.i.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %status.i.i, align 1
  %route = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12
  %dr_dlid = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 1
  %6 = ptrtoint ptr %dr_dlid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %dr_dlid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  %8 = ptrtoint ptr %route to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp2 = icmp ne i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.i = icmp ult i8 %1, %3
  %or.cond.i = and i1 %tobool2.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge, label %if.end.i

if.then.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp9.i = icmp eq i8 %1, %3
  br i1 %cmp9.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i = zext i1 %cmp to i32
  br label %__smi_check_forward_dr_smp.exit

if.end14.i:                                       ; preds = %if.end.i
  %conv8.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp17.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp17.i, label %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge, label %if.end14.i.if.end38.i_crit_edge

if.end14.i.if.end38.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38.i

if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp22.i = icmp ult i8 %1, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp27.not.i = icmp ugt i8 %1, %3
  %or.cond48.i = or i1 %cmp22.i, %cmp27.not.i
  br i1 %or.cond48.i, label %if.end30.i, label %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge

if.else.i.__smi_check_forward_dr_smp.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__smi_check_forward_dr_smp.exit

if.end30.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp32.i = icmp eq i8 %1, 1
  br i1 %cmp32.i, label %if.then34.i, label %if.end30.i.if.end38.i_crit_edge

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond36.i = zext i1 %cmp2 to i32
  br label %__smi_check_forward_dr_smp.exit

if.end38.i:                                       ; preds = %if.end30.i.if.end38.i_crit_edge, %if.end14.i.if.end38.i_crit_edge
  br label %__smi_check_forward_dr_smp.exit

__smi_check_forward_dr_smp.exit:                  ; preds = %if.end38.i, %if.then34.i, %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge, %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge, %if.then11.i, %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge
  %retval.0.i = phi i32 [ %cond36.i, %if.then34.i ], [ 0, %if.end38.i ], [ %cond.i, %if.then11.i ], [ 2, %if.then.i.__smi_check_forward_dr_smp.exit_crit_edge ], [ 1, %if.end14.i.__smi_check_forward_dr_smp.exit_crit_edge ], [ 2, %if.else.i.__smi_check_forward_dr_smp.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smi_get_fwd_port(ptr nocapture noundef readonly %smp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %status.i, align 1
  %hop_ptr = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 5
  %2 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hop_ptr, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %arrayidx = getelementptr %struct.ib_smp, ptr %smp, i32 0, i32 16, i32 %add
  %sub = add nsw i32 %conv, -1
  %arrayidx4 = getelementptr %struct.ib_smp, ptr %smp, i32 0, i32 17, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not10 = icmp slt i16 %1, 0
  %cond.in.in = select i1 %tobool.not10, ptr %arrayidx4, ptr %arrayidx
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @opa_smi_get_fwd_port(ptr nocapture noundef readonly %smp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i.i = getelementptr inbounds %struct.ib_smp, ptr %smp, i32 0, i32 4
  %0 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %status.i.i, align 1
  %hop_ptr = getelementptr inbounds %struct.opa_smp, ptr %smp, i32 0, i32 5
  %2 = ptrtoint ptr %hop_ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hop_ptr, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %arrayidx = getelementptr %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 2, i32 %add
  %sub = add nsw i32 %conv, -1
  %arrayidx5 = getelementptr %struct.opa_smp, ptr %smp, i32 0, i32 12, i32 0, i32 3, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not11 = icmp slt i16 %1, 0
  %cond.in.in = select i1 %tobool.not11, ptr %arrayidx5, ptr %arrayidx
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
