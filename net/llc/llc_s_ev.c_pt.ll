; ModuleID = '/llk/IR_all_yes/net/llc/llc_s_ev.c_pt.bc'
source_filename = "../net/llc/llc_s_ev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_pdu_un = type { i8, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_activation_req(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp ne i8 %3, 1
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_rx_ui(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 3
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  %and13 = and i32 %conv5, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp ne i32 %and13, 0
  %phi.cast = zext i1 %cmp14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true4.land.end_crit_edge ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_unitdata_req(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp eq i8 %3, 1
  br i1 %cmp3, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp ne i8 %5, 1
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i32 [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_xid_req(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp3 = icmp eq i8 %3, 8
  br i1 %cmp3, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp ne i8 %5, 1
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i32 [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_rx_xid_c(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 3
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  %and13 = and i32 %conv5, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %and13)
  %cmp14 = icmp ne i32 %and13, 172
  %phi.cast = zext i1 %cmp14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true4.land.end_crit_edge ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_rx_xid_r(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true4

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 3
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  %and13 = and i32 %conv5, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %and13)
  %cmp14 = icmp ne i32 %and13, 172
  %phi.cast = zext i1 %cmp14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true4.land.end_crit_edge ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_test_req(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp3 = icmp eq i8 %3, 9
  br i1 %cmp3, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp ne i8 %5, 1
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i32 [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_rx_test_c(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 3
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  %and13 = and i32 %conv5, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and13)
  %cmp14 = icmp ne i32 %and13, 224
  %phi.cast = zext i1 %cmp14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true4.land.end_crit_edge ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_rx_test_r(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true4

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 3
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #4
  %and13 = and i32 %conv5, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and13)
  %cmp14 = icmp ne i32 %and13, 224
  %phi.cast = zext i1 %cmp14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true4.land.end_crit_edge ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_ev_deactivation_req(ptr nocapture noundef readnone %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp3 = icmp ne i8 %3, 10
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
