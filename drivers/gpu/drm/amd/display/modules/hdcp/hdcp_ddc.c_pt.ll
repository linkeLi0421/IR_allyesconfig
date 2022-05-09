; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp_ddc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_ddc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp_ddc = type { ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.mod_hdcp_connection = type { %struct.mod_hdcp_link, i8, i8, i8, i8, %struct.mod_hdcp_trace, i8, i8 }
%struct.mod_hdcp_link = type { i32, i8, i8, i8, i8, i8, i8, %union.anon, %struct.mod_hdcp_link_adjustment }
%union.anon = type { %struct.mod_hdcp_displayport }
%struct.mod_hdcp_displayport = type { i8, i8, i8, i8 }
%struct.mod_hdcp_link_adjustment = type { i8, %struct.mod_hdcp_link_adjustment_hdcp1, %struct.mod_hdcp_link_adjustment_hdcp2 }
%struct.mod_hdcp_link_adjustment_hdcp1 = type { i8 }
%struct.mod_hdcp_link_adjustment_hdcp2 = type { i8 }
%struct.mod_hdcp_trace = type { [10 x %struct.mod_hdcp_error], i8 }
%struct.mod_hdcp_error = type { i32, i8 }
%struct.mod_hdcp_display = type { i32, i8, i8, i8, i8, %union.anon.0, %struct.mod_hdcp_display_adjustment }
%union.anon.0 = type { i8 }
%struct.mod_hdcp_display_adjustment = type { i8 }
%struct.mod_hdcp_authentication = type { i32, %union.mod_hdcp_message, %union.mod_hdcp_transition_input, %struct.mod_hdcp_auth_counters }
%union.mod_hdcp_message = type { %struct.mod_hdcp_message_hdcp2 }
%struct.mod_hdcp_message_hdcp2 = type { i8, [3 x i8], [2 x i8], [12 x i8], [534 x i8], [129 x i8], [33 x i8], [33 x i8], [17 x i8], [9 x i8], [33 x i8], [25 x i8], [177 x i8], i16, [17 x i8], [68 x i8], i16, [33 x i8], i8, [2 x i8] }
%union.mod_hdcp_transition_input = type { %struct.mod_hdcp_transition_input_hdcp2 }
%struct.mod_hdcp_transition_input_hdcp2 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mod_hdcp_auth_counters = type { i8 }
%struct.mod_hdcp_state = type { i8, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_bksv(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 8
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 425984, ptr noundef %bksv, i32 noundef 5) #3
  br label %read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %call15.i = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 0, ptr noundef %bksv, i32 noundef 5) #3
  br label %read.exit

read.exit:                                        ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call15.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_bcaps(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bcaps = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 426024, ptr noundef %bcaps, i32 noundef 1) #3
  br label %read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %call15.i = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 64, ptr noundef %bcaps, i32 noundef 1) #3
  br label %read.exit

read.exit:                                        ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call15.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_bstatus(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %bstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 426025, ptr noundef %bstatus, i32 noundef 1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i26 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i26, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %call15.i27 = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 65, ptr noundef %bstatus, i32 noundef 2) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call15.i27, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_r0p(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %r0p = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 425989, ptr noundef %r0p, i32 noundef 2) #3
  br label %read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %call15.i = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 8, ptr noundef %r0p, i32 noundef 2) #3
  br label %read.exit

read.exit:                                        ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call15.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_ksvlist(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %ksvlist = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 8
  %ksvlist_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 110
  %2 = ptrtoint ptr %ksvlist_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ksvlist_size, align 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not4.i = icmp eq i16 %3, 0
  br i1 %cmp.not4.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %conv = zext i16 %3 to i32
  %ddc9.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %read_dpcd.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data_offset.06.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end.i.while.body.i_crit_edge ]
  %buf_len.addr.05.i = phi i32 [ %conv, %while.body.lr.ph.i ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.05.i, i32 15) #3
  %add.ptr.i = getelementptr i8, ptr %ksvlist, i32 %data_offset.06.i
  %5 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.not.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.not.i.i, label %while.body.i.while.body.i.i_crit_edge, label %if.else.i.i

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %data_offset.039.i.i = phi i32 [ %add7.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.while.body.i.i_crit_edge ]
  %buf_len.addr.038.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %4, %while.body.i.while.body.i.i_crit_edge ]
  %7 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.038.i.i, i32 16) #3
  %8 = ptrtoint ptr %read_dpcd.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_dpcd.i.i, align 4
  %10 = ptrtoint ptr %ddc9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc9.i.i, align 4
  %add.i.i = add i32 %data_offset.039.i.i, 426028
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %data_offset.039.i.i
  %call4.i.i = tail call zeroext i1 %9(ptr noundef %11, i32 noundef %add.i.i, ptr noundef %add.ptr.i.i, i32 noundef %7) #3
  br i1 %call4.i.i, label %if.end.i.i, label %while.body.i.i.if.end_crit_edge

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub i32 %buf_len.addr.038.i.i, %7
  %add7.i.i = add i32 %7, %data_offset.039.i.i
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else.i.i:                                      ; preds = %while.body.i
  %12 = ptrtoint ptr %funcs10.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs10.i.i, align 4
  %14 = ptrtoint ptr %ddc9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc9.i.i, align 4
  %call15.i.i = tail call zeroext i1 %13(ptr noundef %15, i32 noundef 58, i8 noundef zeroext 67, ptr noundef %add.ptr.i, i32 noundef %4) #3
  br i1 %call15.i.i, label %if.else.i.i.if.end.i_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %sub.i = sub i32 %buf_len.addr.05.i, %4
  %add.i = add i32 %4, %data_offset.06.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv10 = zext i16 %3 to i32
  %ddc9.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs10.i, align 4
  %18 = ptrtoint ptr %ddc9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddc9.i, align 4
  %call15.i = tail call zeroext i1 %17(ptr noundef %19, i32 noundef 58, i8 noundef zeroext 67, ptr noundef %ksvlist, i32 noundef %conv10) #3
  %phi.sel.i = select i1 %call15.i, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.if.end_crit_edge, %if.else.i.i.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ 31, %if.then.if.end_crit_edge ], [ %phi.sel.i, %if.else ], [ 31, %while.body.i.i.if.end_crit_edge ], [ 31, %if.else.i.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_vp(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 112
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 426004, ptr noundef %vp, i32 noundef 4) #3
  br i1 %call4.i, label %while.cond.preheader.i.if.end_crit_edge, label %while.cond.preheader.i.out_crit_edge

while.cond.preheader.i.out_crit_edge:             ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.cond.preheader.i.if.end_crit_edge:          ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else.i:                                        ; preds = %entry
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %call15.i = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 32, ptr noundef %vp, i32 noundef 4) #3
  br i1 %call15.i, label %if.else.i.if.end_crit_edge, label %if.else.i.out_crit_edge

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %while.cond.preheader.i.if.end_crit_edge
  %arrayidx4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 116
  %10 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.not.i44 = icmp eq i32 %11, 2
  %ddc.i46 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i44, label %while.cond.preheader.i45, label %if.else.i62

while.cond.preheader.i45:                         ; preds = %if.end
  %read_dpcd.i47 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %12 = ptrtoint ptr %read_dpcd.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_dpcd.i47, align 4
  %14 = ptrtoint ptr %ddc.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc.i46, align 4
  %call4.i52 = tail call zeroext i1 %13(ptr noundef %15, i32 noundef 426008, ptr noundef %arrayidx4, i32 noundef 4) #3
  br i1 %call4.i52, label %while.cond.preheader.i45.if.end8_crit_edge, label %while.cond.preheader.i45.out_crit_edge

while.cond.preheader.i45.out_crit_edge:           ; preds = %while.cond.preheader.i45
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.cond.preheader.i45.if.end8_crit_edge:       ; preds = %while.cond.preheader.i45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.else.i62:                                      ; preds = %if.end
  %funcs10.i59 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %funcs10.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs10.i59, align 4
  %18 = ptrtoint ptr %ddc.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddc.i46, align 4
  %call15.i60 = tail call zeroext i1 %17(ptr noundef %19, i32 noundef 58, i8 noundef zeroext 36, ptr noundef %arrayidx4, i32 noundef 4) #3
  br i1 %call15.i60, label %if.else.i62.if.end8_crit_edge, label %if.else.i62.out_crit_edge

if.else.i62.out_crit_edge:                        ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i62.if.end8_crit_edge:                    ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end8:                                          ; preds = %if.else.i62.if.end8_crit_edge, %while.cond.preheader.i45.if.end8_crit_edge
  %arrayidx12 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 120
  %20 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.not.i66 = icmp eq i32 %21, 2
  %ddc.i68 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i66, label %while.cond.preheader.i67, label %if.else.i84

while.cond.preheader.i67:                         ; preds = %if.end8
  %read_dpcd.i69 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %read_dpcd.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_dpcd.i69, align 4
  %24 = ptrtoint ptr %ddc.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddc.i68, align 4
  %call4.i74 = tail call zeroext i1 %23(ptr noundef %25, i32 noundef 426012, ptr noundef %arrayidx12, i32 noundef 4) #3
  br i1 %call4.i74, label %while.cond.preheader.i67.if.end16_crit_edge, label %while.cond.preheader.i67.out_crit_edge

while.cond.preheader.i67.out_crit_edge:           ; preds = %while.cond.preheader.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.cond.preheader.i67.if.end16_crit_edge:      ; preds = %while.cond.preheader.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.else.i84:                                      ; preds = %if.end8
  %funcs10.i81 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %funcs10.i81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs10.i81, align 4
  %28 = ptrtoint ptr %ddc.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddc.i68, align 4
  %call15.i82 = tail call zeroext i1 %27(ptr noundef %29, i32 noundef 58, i8 noundef zeroext 40, ptr noundef %arrayidx12, i32 noundef 4) #3
  br i1 %call15.i82, label %if.else.i84.if.end16_crit_edge, label %if.else.i84.out_crit_edge

if.else.i84.out_crit_edge:                        ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i84.if.end16_crit_edge:                   ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.end16:                                         ; preds = %if.else.i84.if.end16_crit_edge, %while.cond.preheader.i67.if.end16_crit_edge
  %arrayidx20 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 124
  %30 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i.not.i88 = icmp eq i32 %31, 2
  %ddc.i90 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i88, label %while.cond.preheader.i89, label %if.else.i106

while.cond.preheader.i89:                         ; preds = %if.end16
  %read_dpcd.i91 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %32 = ptrtoint ptr %read_dpcd.i91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_dpcd.i91, align 4
  %34 = ptrtoint ptr %ddc.i90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ddc.i90, align 4
  %call4.i96 = tail call zeroext i1 %33(ptr noundef %35, i32 noundef 426016, ptr noundef %arrayidx20, i32 noundef 4) #3
  br i1 %call4.i96, label %while.cond.preheader.i89.if.end24_crit_edge, label %while.cond.preheader.i89.out_crit_edge

while.cond.preheader.i89.out_crit_edge:           ; preds = %while.cond.preheader.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.cond.preheader.i89.if.end24_crit_edge:      ; preds = %while.cond.preheader.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.else.i106:                                     ; preds = %if.end16
  %funcs10.i103 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %funcs10.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs10.i103, align 4
  %38 = ptrtoint ptr %ddc.i90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ddc.i90, align 4
  %call15.i104 = tail call zeroext i1 %37(ptr noundef %39, i32 noundef 58, i8 noundef zeroext 44, ptr noundef %arrayidx20, i32 noundef 4) #3
  br i1 %call15.i104, label %if.else.i106.if.end24_crit_edge, label %if.else.i106.out_crit_edge

if.else.i106.out_crit_edge:                       ; preds = %if.else.i106
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i106.if.end24_crit_edge:                  ; preds = %if.else.i106
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.end24:                                         ; preds = %if.else.i106.if.end24_crit_edge, %while.cond.preheader.i89.if.end24_crit_edge
  %arrayidx28 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 128
  %40 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i.not.i110 = icmp eq i32 %41, 2
  %ddc.i112 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  br i1 %cmp.i.not.i110, label %while.cond.preheader.i111, label %if.else.i128

while.cond.preheader.i111:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %read_dpcd.i113 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %42 = ptrtoint ptr %read_dpcd.i113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_dpcd.i113, align 4
  %44 = ptrtoint ptr %ddc.i112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ddc.i112, align 4
  %call4.i118 = tail call zeroext i1 %43(ptr noundef %45, i32 noundef 426020, ptr noundef %arrayidx28, i32 noundef 4) #3
  %spec.select = select i1 %call4.i118, i32 0, i32 31
  br label %out

if.else.i128:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i125 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %funcs10.i125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs10.i125, align 4
  %48 = ptrtoint ptr %ddc.i112 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ddc.i112, align 4
  %call15.i126 = tail call zeroext i1 %47(ptr noundef %49, i32 noundef 58, i8 noundef zeroext 48, ptr noundef %arrayidx28, i32 noundef 4) #3
  %phi.sel.i127 = select i1 %call15.i126, i32 0, i32 31
  br label %out

out:                                              ; preds = %if.else.i128, %while.cond.preheader.i111, %if.else.i106.out_crit_edge, %while.cond.preheader.i89.out_crit_edge, %if.else.i84.out_crit_edge, %while.cond.preheader.i67.out_crit_edge, %if.else.i62.out_crit_edge, %while.cond.preheader.i45.out_crit_edge, %if.else.i.out_crit_edge, %while.cond.preheader.i.out_crit_edge
  %status.0 = phi i32 [ 31, %if.else.i.out_crit_edge ], [ 31, %if.else.i62.out_crit_edge ], [ 31, %if.else.i84.out_crit_edge ], [ 31, %if.else.i106.out_crit_edge ], [ %phi.sel.i127, %if.else.i128 ], [ 31, %while.cond.preheader.i89.out_crit_edge ], [ 31, %while.cond.preheader.i67.out_crit_edge ], [ 31, %while.cond.preheader.i45.out_crit_edge ], [ 31, %while.cond.preheader.i.out_crit_edge ], [ %spec.select, %while.cond.preheader.i111 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_binfo(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %binfo_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 3
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 426026, ptr noundef %binfo_dp, i32 noundef 2) #3
  %spec.select = select i1 %call4.i, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 32, %entry.if.end_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_aksv(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %aksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 2
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 425991, ptr noundef %aksv, i32 noundef 5) #3
  br label %write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %buf9.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %buf9.i, align 4
  %arrayidx12.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx12.i, ptr %aksv, i32 5)
  %ddc14.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %write_i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_i2c.i, align 4
  %10 = ptrtoint ptr %ddc14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc14.i, align 4
  %call21.i = tail call zeroext i1 %9(ptr noundef %11, i32 noundef 58, ptr noundef %buf9.i, i32 noundef 6) #3
  br label %write.exit

write.exit:                                       ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call21.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_ainfo(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ainfo = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 7
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 426043, ptr noundef %ainfo, i32 noundef 1) #3
  br label %write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %buf9.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 21, ptr %buf9.i, align 4
  %arrayidx12.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %ainfo to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ainfo, align 1
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx12.i, align 1
  %ddc14.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %write_i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_i2c.i, align 4
  %12 = ptrtoint ptr %ddc14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc14.i, align 4
  %call21.i = tail call zeroext i1 %11(ptr noundef %13, i32 noundef 58, ptr noundef %buf9.i, i32 noundef 2) #3
  br label %write.exit

write.exit:                                       ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call21.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_an(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 2
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 425996, ptr noundef %msg, i32 noundef 8) #3
  br label %write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %buf9.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %buf9.i, align 4
  %arrayidx12.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %msg, align 1
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %arrayidx12.i, align 1
  %ddc14.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %write_i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_i2c.i, align 4
  %12 = ptrtoint ptr %ddc14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc14.i, align 4
  %call21.i = tail call zeroext i1 %11(ptr noundef %13, i32 noundef 58, ptr noundef %buf9.i, i32 noundef 9) #3
  br label %write.exit

write.exit:                                       ; preds = %if.else.i, %while.cond.preheader.i
  %call4.i.sink = phi i1 [ %call4.i, %while.cond.preheader.i ], [ %call21.i, %if.else.i ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_hdcp2version(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %msg = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %ddc9.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs10.i, align 4
  %4 = ptrtoint ptr %ddc9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc9.i, align 4
  %call15.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 58, i8 noundef zeroext 80, ptr noundef %msg, i32 noundef 1) #3
  %phi.sel.i = select i1 %call15.i, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 32, %entry.if.end_crit_edge ], [ %phi.sel.i, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_rxcaps(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rxcaps_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430621, ptr noundef %rxcaps_dp, i32 noundef 3) #3
  %spec.select = select i1 %call4.i, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 32, %entry.if.end_crit_edge ], [ %spec.select, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rxstatus_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 431251, ptr noundef %rxstatus_dp, i32 noundef 1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %ddc9.i24 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i25 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %funcs10.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs10.i25, align 4
  %8 = ptrtoint ptr %ddc9.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc9.i24, align 4
  %call15.i26 = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 58, i8 noundef zeroext 112, ptr noundef %rxstatus, i32 noundef 2) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call15.i26, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_ake_cert(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %ake_cert = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ake_cert to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %ake_cert, align 2
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then
  %data_offset.039.i = phi i32 [ 0, %if.then ], [ %add7.i, %if.end.i.while.body.i_crit_edge ]
  %buf_len.addr.038.i = phi i32 [ 533, %if.then ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.038.i, i32 16) #3
  %4 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_dpcd.i, align 4
  %6 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc.i, align 4
  %add.i = add i32 %data_offset.039.i, 430091
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %data_offset.039.i
  %call4.i = tail call zeroext i1 %5(ptr noundef %7, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %3) #3
  br i1 %call4.i, label %if.end.i, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub i32 %buf_len.addr.038.i, %3
  %add7.i = add i32 %3, %data_offset.039.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc9.i30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i31 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %funcs10.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs10.i31, align 4
  %10 = ptrtoint ptr %ddc9.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc9.i30, align 4
  %call15.i32 = tail call zeroext i1 %9(ptr noundef %11, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %ake_cert, i32 noundef 534) #3
  %phi.sel.i33 = select i1 %call15.i32, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.if.end_crit_edge, %while.body.i.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i33, %if.else ], [ 0, %if.end.i.if.end_crit_edge ], [ 31, %while.body.i.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_h_prime(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %ake_h_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 7
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ake_h_prime to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %ake_h_prime, align 2
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 7, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_dpcd.i, align 4
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %4(ptr noundef %6, i32 noundef 430784, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_dpcd.i, align 4
  %9 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 7, i32 17
  %call4.i.1 = tail call zeroext i1 %8(ptr noundef %10, i32 noundef 430800, ptr noundef %add.ptr.i.1, i32 noundef 16) #3
  %spec.select = select i1 %call4.i.1, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc9.i30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i31 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %funcs10.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs10.i31, align 4
  %13 = ptrtoint ptr %ddc9.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddc9.i30, align 4
  %call15.i32 = tail call zeroext i1 %12(ptr noundef %14, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %ake_h_prime, i32 noundef 33) #3
  %phi.sel.i33 = select i1 %call15.i32, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i33, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_pairing_info(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %ake_pairing_info = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 8
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %ake_pairing_info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %ake_pairing_info, align 1
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 8, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_dpcd.i, align 4
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %4(ptr noundef %6, i32 noundef 430816, ptr noundef %add.ptr, i32 noundef 16) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc9.i30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i31 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %funcs10.i31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs10.i31, align 4
  %9 = ptrtoint ptr %ddc9.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc9.i30, align 4
  %call15.i32 = tail call zeroext i1 %8(ptr noundef %10, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %ake_pairing_info, i32 noundef 17) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call15.i32, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_l_prime(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %lc_l_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 10
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %lc_l_prime to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %lc_l_prime, align 1
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 10, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_dpcd.i, align 4
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %4(ptr noundef %6, i32 noundef 430840, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_dpcd.i, align 4
  %9 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 10, i32 17
  %call4.i.1 = tail call zeroext i1 %8(ptr noundef %10, i32 noundef 430856, ptr noundef %add.ptr.i.1, i32 noundef 16) #3
  %spec.select = select i1 %call4.i.1, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc9.i30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i31 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %funcs10.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs10.i31, align 4
  %13 = ptrtoint ptr %ddc9.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddc9.i30, align 4
  %call15.i32 = tail call zeroext i1 %12(ptr noundef %14, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %lc_l_prime, i32 noundef 33) #3
  %phi.sel.i33 = select i1 %call15.i32, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i33, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_rx_id_list(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %rx_id_list = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %rx_id_list to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %rx_id_list, align 1
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_dpcd.i, align 4
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %4(ptr noundef %6, i32 noundef 430896, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end38_crit_edge

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.end.i:                                         ; preds = %if.then
  %arrayidx9 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %9 = lshr i8 %8, 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %12 = shl i8 %11, 4
  %13 = and i8 %12, 16
  %add51 = or i8 %13, %9
  %narrow = mul nuw i8 %add51, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %narrow)
  %cmp17 = icmp ult i8 %narrow, -101
  %mul = zext i8 %narrow to i32
  %phi.bo = add nuw nsw i32 %mul, 20
  %phi.bo5253 = and i32 %phi.bo, 496
  %cond = select i1 %cmp17, i32 %phi.bo5253, i32 160
  %add.ptr26 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12, i32 17
  %14 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i.not.i55 = icmp eq i32 %15, 2
  br i1 %cmp.i.not.i55, label %while.cond.preheader.i56, label %if.else.i73

while.cond.preheader.i56:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp.not37.i = icmp eq i32 %cond, 0
  br i1 %cmp.not37.i, label %while.cond.preheader.i56.if.end38_crit_edge, label %while.cond.preheader.i56.while.body.i64_crit_edge

while.cond.preheader.i56.while.body.i64_crit_edge: ; preds = %while.cond.preheader.i56
  br label %while.body.i64

while.cond.preheader.i56.if.end38_crit_edge:      ; preds = %while.cond.preheader.i56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

while.body.i64:                                   ; preds = %if.end.i68.while.body.i64_crit_edge, %while.cond.preheader.i56.while.body.i64_crit_edge
  %data_offset.039.i59 = phi i32 [ %add7.i66, %if.end.i68.while.body.i64_crit_edge ], [ 0, %while.cond.preheader.i56.while.body.i64_crit_edge ]
  %buf_len.addr.038.i60 = phi i32 [ %sub.i65, %if.end.i68.while.body.i64_crit_edge ], [ %cond, %while.cond.preheader.i56.while.body.i64_crit_edge ]
  %16 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.038.i60, i32 16) #3
  %17 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_dpcd.i, align 4
  %19 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc.i, align 4
  %add.i61 = add i32 %data_offset.039.i59, 430912
  %add.ptr.i62 = getelementptr i8, ptr %add.ptr26, i32 %data_offset.039.i59
  %call4.i63 = tail call zeroext i1 %18(ptr noundef %20, i32 noundef %add.i61, ptr noundef %add.ptr.i62, i32 noundef %16) #3
  br i1 %call4.i63, label %if.end.i68, label %while.body.i64.if.end38_crit_edge

while.body.i64.if.end38_crit_edge:                ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.end.i68:                                       ; preds = %while.body.i64
  %sub.i65 = sub i32 %buf_len.addr.038.i60, %16
  %add7.i66 = add i32 %16, %data_offset.039.i59
  %cmp.not.i67 = icmp eq i32 %sub.i65, 0
  br i1 %cmp.not.i67, label %if.end.i68.if.end38_crit_edge, label %if.end.i68.while.body.i64_crit_edge

if.end.i68.while.body.i64_crit_edge:              ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i64

if.end.i68.if.end38_crit_edge:                    ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.else.i73:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %funcs10.i70 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %funcs10.i70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs10.i70, align 4
  %23 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddc.i, align 4
  %call15.i71 = tail call zeroext i1 %22(ptr noundef %24, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %add.ptr26, i32 noundef %cond) #3
  %phi.sel.i72 = select i1 %call15.i71, i32 0, i32 31
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rx_id_list_size35 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 13
  %25 = ptrtoint ptr %rx_id_list_size35 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_id_list_size35, align 4
  %conv36 = zext i16 %26 to i32
  %ddc9.i93 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i94 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %funcs10.i94 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs10.i94, align 4
  %29 = ptrtoint ptr %ddc9.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddc9.i93, align 4
  %call15.i95 = tail call zeroext i1 %28(ptr noundef %30, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %rx_id_list, i32 noundef %conv36) #3
  %phi.sel.i96 = select i1 %call15.i95, i32 0, i32 31
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.else.i73, %if.end.i68.if.end38_crit_edge, %while.body.i64.if.end38_crit_edge, %while.cond.preheader.i56.if.end38_crit_edge, %if.then.if.end38_crit_edge
  %status.1 = phi i32 [ %phi.sel.i72, %if.else.i73 ], [ 0, %while.cond.preheader.i56.if.end38_crit_edge ], [ %phi.sel.i96, %if.else ], [ 31, %if.then.if.end38_crit_edge ], [ 0, %if.end.i68.if.end38_crit_edge ], [ 31, %while.body.i64.if.end38_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_read_stream_ready(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %repeater_auth_stream_ready = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 17
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %repeater_auth_stream_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %repeater_auth_stream_ready, align 2
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 17, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %read_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_dpcd.i, align 4
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %4(ptr noundef %6, i32 noundef 431219, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %read_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_dpcd.i, align 4
  %9 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 17, i32 17
  %call4.i.1 = tail call zeroext i1 %8(ptr noundef %10, i32 noundef 431235, ptr noundef %add.ptr.i.1, i32 noundef 16) #3
  %spec.select = select i1 %call4.i.1, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ddc9.i30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %funcs10.i31 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %funcs10.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs10.i31, align 4
  %13 = ptrtoint ptr %ddc9.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddc9.i30, align 4
  %call15.i32 = tail call zeroext i1 %12(ptr noundef %14, i32 noundef 58, i8 noundef zeroext -128, ptr noundef %repeater_auth_stream_ready, i32 noundef 33) #3
  %phi.sel.i33 = select i1 %call15.i32, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i33, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_ake_init(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430080, ptr noundef %add.ptr, i32 noundef 11) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ake_init4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %ake_init4, i32 12)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_i2c.i29, align 4
  %10 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %9(ptr noundef %11, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 13) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call21.i30, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_no_stored_km(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430624, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_dpcd.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 17
  %call4.i.1 = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 430640, ptr noundef %add.ptr.i.1, i32 noundef 16) #3
  br i1 %call4.i.1, label %if.end.i.1, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.1:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_dpcd.i, align 4
  %12 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 33
  %call4.i.2 = tail call zeroext i1 %11(ptr noundef %13, i32 noundef 430656, ptr noundef %add.ptr.i.2, i32 noundef 16) #3
  br i1 %call4.i.2, label %if.end.i.2, label %if.end.i.1.if.end_crit_edge

if.end.i.1.if.end_crit_edge:                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.2:                                       ; preds = %if.end.i.1
  %14 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_dpcd.i, align 4
  %16 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 49
  %call4.i.3 = tail call zeroext i1 %15(ptr noundef %17, i32 noundef 430672, ptr noundef %add.ptr.i.3, i32 noundef 16) #3
  br i1 %call4.i.3, label %if.end.i.3, label %if.end.i.2.if.end_crit_edge

if.end.i.2.if.end_crit_edge:                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.3:                                       ; preds = %if.end.i.2
  %18 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_dpcd.i, align 4
  %20 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 65
  %call4.i.4 = tail call zeroext i1 %19(ptr noundef %21, i32 noundef 430688, ptr noundef %add.ptr.i.4, i32 noundef 16) #3
  br i1 %call4.i.4, label %if.end.i.4, label %if.end.i.3.if.end_crit_edge

if.end.i.3.if.end_crit_edge:                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.4:                                       ; preds = %if.end.i.3
  %22 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_dpcd.i, align 4
  %24 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 81
  %call4.i.5 = tail call zeroext i1 %23(ptr noundef %25, i32 noundef 430704, ptr noundef %add.ptr.i.5, i32 noundef 16) #3
  br i1 %call4.i.5, label %if.end.i.5, label %if.end.i.4.if.end_crit_edge

if.end.i.4.if.end_crit_edge:                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.5:                                       ; preds = %if.end.i.4
  %26 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_dpcd.i, align 4
  %28 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 97
  %call4.i.6 = tail call zeroext i1 %27(ptr noundef %29, i32 noundef 430720, ptr noundef %add.ptr.i.6, i32 noundef 16) #3
  br i1 %call4.i.6, label %if.end.i.6, label %if.end.i.5.if.end_crit_edge

if.end.i.5.if.end_crit_edge:                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.6:                                       ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_dpcd.i, align 4
  %32 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 113
  %call4.i.7 = tail call zeroext i1 %31(ptr noundef %33, i32 noundef 430736, ptr noundef %add.ptr.i.7, i32 noundef 16) #3
  %spec.select = select i1 %call4.i.7, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ake_no_stored_km4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %34 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %ake_no_stored_km4, i32 129)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_i2c.i29, align 4
  %38 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %37(ptr noundef %39, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 130) #3
  %phi.sel.i31 = select i1 %call21.i30, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.6, %if.end.i.5.if.end_crit_edge, %if.end.i.4.if.end_crit_edge, %if.end.i.3.if.end_crit_edge, %if.end.i.2.if.end_crit_edge, %if.end.i.1.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i31, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ 31, %if.end.i.if.end_crit_edge ], [ 31, %if.end.i.1.if.end_crit_edge ], [ 31, %if.end.i.2.if.end_crit_edge ], [ 31, %if.end.i.3.if.end_crit_edge ], [ 31, %if.end.i.4.if.end_crit_edge ], [ 31, %if.end.i.5.if.end_crit_edge ], [ %spec.select, %if.end.i.6 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_stored_km(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430752, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_dpcd.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 17
  %call4.i.1 = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 430768, ptr noundef %add.ptr.i.1, i32 noundef 16) #3
  %spec.select = select i1 %call4.i.1, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ake_stored_km4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %10 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %ake_stored_km4, i32 33)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_i2c.i29, align 4
  %14 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %13(ptr noundef %15, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 34) #3
  %phi.sel.i31 = select i1 %call21.i30, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i31, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_lc_init(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430832, ptr noundef %add.ptr, i32 noundef 8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %lc_init4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %lc_init4, i32 9)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_i2c.i29, align 4
  %10 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %9(ptr noundef %11, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 10) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call21.i30, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_eks(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 11, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 430872, ptr noundef %add.ptr, i32 noundef 16) #3
  br i1 %call4.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_dpcd.i, align 4
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %add.ptr.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 11, i32 17
  %call4.i.1 = tail call zeroext i1 %7(ptr noundef %9, i32 noundef 430888, ptr noundef %add.ptr.i.1, i32 noundef 8) #3
  %spec.select = select i1 %call4.i.1, i32 0, i32 31
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ske_eks4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 11
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %10 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %ske_eks4, i32 25)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_i2c.i29, align 4
  %14 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %13(ptr noundef %15, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 26) #3
  %phi.sel.i31 = select i1 %call21.i30, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %phi.sel.i31, %if.else ], [ 31, %if.then.if.end_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_repeater_auth_ack(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 14, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 431072, ptr noundef %add.ptr, i32 noundef 16) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %repeater_auth_ack4 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 14
  %buf9.i26 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %6 = ptrtoint ptr %buf9.i26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %buf9.i26, align 4
  %arrayidx12.i27 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx12.i27, ptr %repeater_auth_ack4, i32 17)
  %ddc14.i28 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i29 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %write_i2c.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_i2c.i29, align 4
  %10 = ptrtoint ptr %ddc14.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc14.i28, align 4
  %call21.i30 = tail call zeroext i1 %9(ptr noundef %11, i32 noundef 58, ptr noundef %buf9.i26, i32 noundef 18) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.i.sink = phi i1 [ %call4.i, %if.then ], [ %call21.i30, %if.else ]
  %spec.select = select i1 %call4.i.sink, i32 0, i32 31
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_stream_manage(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 15, i32 1
  %stream_manage_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 16
  %2 = ptrtoint ptr %stream_manage_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stream_manage_size, align 4
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not47.i = icmp eq i32 %sub, 0
  br i1 %cmp.not47.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data_offset.049.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add7.i, %if.end.i.while.body.i_crit_edge ]
  %buf_len.addr.048.i = phi i32 [ %sub, %while.body.lr.ph.i ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.048.i, i32 16) #3
  %5 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_dpcd.i, align 4
  %7 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc.i, align 4
  %add.i = add i32 %data_offset.049.i, 431088
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %data_offset.049.i
  %call4.i = tail call zeroext i1 %6(ptr noundef %8, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %4) #3
  br i1 %call4.i, label %if.end.i, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub i32 %buf_len.addr.048.i, %4
  %add7.i = add i32 %4, %data_offset.049.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %repeater_auth_stream_manage6 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 15
  %stream_manage_size10 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 16
  %9 = ptrtoint ptr %stream_manage_size10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %stream_manage_size10, align 4
  %conv11 = zext i16 %10 to i32
  %buf9.i36 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %11 = ptrtoint ptr %buf9.i36 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 96, ptr %buf9.i36, align 4
  %arrayidx12.i37 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %12 = call ptr @memmove(ptr %arrayidx12.i37, ptr %repeater_auth_stream_manage6, i32 %conv11)
  %ddc14.i38 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_i2c.i39 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %write_i2c.i39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_i2c.i39, align 4
  %15 = ptrtoint ptr %ddc14.i38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc14.i38, align 4
  %add20.i = add nuw nsw i32 %conv11, 1
  %call21.i40 = tail call zeroext i1 %14(ptr noundef %16, i32 noundef 58, ptr noundef %buf9.i36, i32 noundef %add20.i) #3
  %phi.sel.i41 = select i1 %call21.i40, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %phi.sel.i41, %if.else ], [ 0, %if.end.i.if.end_crit_edge ], [ 31, %while.body.i.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_write_content_type(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 19, i32 1
  %ddc.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %write_dpcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_dpcd.i, align 4
  %4 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc.i, align 4
  %call4.i = tail call zeroext i1 %3(ptr noundef %5, i32 noundef 431252, ptr noundef %add.ptr, i32 noundef 1) #3
  %spec.select = select i1 %call4.i, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 32, %entry.if.end_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_clear_cp_irq_status(ptr nocapture noundef readonly %hdcp) local_unnamed_addr #0 align 64 {
entry:
  %clear_cp_irq_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clear_cp_irq_bit) #3
  %0 = ptrtoint ptr %clear_cp_irq_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %clear_cp_irq_bit, align 1
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %1 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 2
  br i1 %cmp.i.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %5)
  %cmp = icmp ugt i8 %5, 19
  %cond = select i1 %cmp, i32 8195, i32 513
  %ddc = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %write_dpcd = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %6 = ptrtoint ptr %write_dpcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_dpcd, align 4
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %call4 = call zeroext i1 %7(ptr noundef %9, i32 noundef %cond, ptr noundef nonnull %clear_cp_irq_bit, i32 noundef 1) #3
  %cond6 = select i1 %call4, i32 0, i32 31
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond6, %if.then ], [ 32, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clear_cp_irq_bit) #3
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"hdcp_dpcd_addrs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_ddc.c", i32 115, i32 23}
!2 = distinct !{null, !3, !"hdcp_i2c_offsets", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_ddc.c", i32 80, i32 22}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
