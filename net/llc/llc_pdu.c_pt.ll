; ModuleID = '/llk/IR_all_yes/net/llc/llc_pdu.c_pt.bc'
source_filename = "../net/llc/llc_pdu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.llc_pdu_sn = type { i8, i8, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_set_cmd_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %pdu_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %or3 = or i8 %5, %pdu_type
  store i8 %or3, ptr %ssap, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_set_pf_bit(ptr nocapture noundef readonly %skb, i8 noundef zeroext %bit_value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_1.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 3
  %6 = select i1 %cmp.i, i2 -1, i2 1
  %trunc = select i1 %tobool.not.i, i2 0, i2 %6
  %7 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %entry.sw.epilog_crit_edge [
    i2 0, label %entry.sw.bb_crit_edge
    i2 1, label %entry.sw.bb_crit_edge20
    i2 -1, label %sw.bb5
  ]

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_2, align 1
  %10 = and i8 %9, -2
  %or19 = or i8 %10, %bit_value
  store i8 %or19, ptr %ctrl_2, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_1.i, align 1
  %shl = shl i8 %bit_value, 4
  %or12 = or i8 %12, %shl
  store i8 %or12, ptr %ctrl_1.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_decode_pf_bit(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %pf_bit) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_1.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 3
  %6 = select i1 %cmp.i, i2 -1, i2 1
  %trunc = select i1 %tobool.not.i, i2 0, i2 %6
  %7 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i2 %trunc, label %entry.sw.epilog_crit_edge [
    i2 0, label %entry.sw.bb_crit_edge
    i2 1, label %entry.sw.bb_crit_edge11
    i2 -1, label %sw.bb3
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_2, align 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_1.i, align 1
  %12 = lshr i8 %11, 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb
  %.sink10 = phi i8 [ %12, %sw.bb3 ], [ %9, %sw.bb ]
  %13 = and i8 %.sink10, 1
  %14 = ptrtoint ptr %pf_bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pf_bit, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_disc_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = shl i8 %p_bit, 4
  %5 = and i8 %4, 16
  %6 = or i8 %5, 67
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_i_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit, i8 noundef zeroext %ns, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %p_bit, 1
  %shl = shl i8 %ns, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %shl, ptr %ctrl_1, align 1
  %shl11 = shl i8 %nr, 1
  %or15 = or i8 %shl11, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or15, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rej_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %p_bit, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or16 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or16, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rnr_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %p_bit, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or16 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or16, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rr_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = and i8 %p_bit, 1
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or13 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or13, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_sabme_cmd(ptr nocapture noundef readonly %skb, i8 noundef zeroext %p_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = shl i8 %p_bit, 4
  %5 = and i8 %4, 16
  %6 = or i8 %5, 111
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_dm_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %f_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = shl i8 %f_bit, 4
  %5 = and i8 %4, 16
  %6 = or i8 %5, 15
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_pdu_init_as_frmr_rsp(ptr noundef %skb, ptr nocapture noundef readonly %prev_pdu, i8 noundef zeroext %f_bit, i8 noundef zeroext %vs, i8 noundef zeroext %vr, i8 noundef zeroext %vzyxw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = shl i8 %f_bit, 4
  %5 = and i8 %4, 16
  %6 = or i8 %5, -121
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_1, align 1
  %ctrl_19 = getelementptr inbounds %struct.llc_pdu_sn, ptr %prev_pdu, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_19, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.not = icmp eq i8 %10, 3
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %ctrl_19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ctrl_19, align 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv15 = zext i8 %9 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %12, %cond.true ], [ %conv15, %cond.false ]
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %cond, ptr %ctrl_2, align 1
  %shl19 = shl i8 %vs, 1
  %curr_ssv = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 1, i32 1
  %14 = ptrtoint ptr %curr_ssv to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %shl19, ptr %curr_ssv, align 1
  %shl22 = shl i8 %vr, 1
  %curr_rsv = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %curr_rsv to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %shl22, ptr %curr_rsv, align 1
  %16 = ptrtoint ptr %ctrl_19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_19, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 3
  %..i = select i1 %cmp.i, i32 3, i32 1
  %pdu_type.0.i = select i1 %tobool.not.i, i32 0, i32 %..i
  %18 = zext i32 %pdu_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %pdu_type.0.i, label %cond.end.llc_pdu_get_pf_bit.exit_crit_edge [
    i32 0, label %cond.end.sw.bb.i_crit_edge
    i32 1, label %cond.end.sw.bb.i_crit_edge97
    i32 3, label %sw.bb12.i
  ]

cond.end.sw.bb.i_crit_edge97:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

cond.end.llc_pdu_get_pf_bit.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_pdu_get_pf_bit.exit

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge97
  %ctrl_2.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %prev_pdu, i32 0, i32 3
  %19 = ptrtoint ptr %ctrl_2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl_2.i, align 1
  %21 = and i8 %20, 1
  br label %llc_pdu_get_pf_bit.exit

sw.bb12.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = lshr i8 %17, 4
  %23 = and i8 %22, 1
  br label %llc_pdu_get_pf_bit.exit

llc_pdu_get_pf_bit.exit:                          ; preds = %sw.bb12.i, %sw.bb.i, %cond.end.llc_pdu_get_pf_bit.exit_crit_edge
  %pf_bit.0.i = phi i8 [ 0, %cond.end.llc_pdu_get_pf_bit.exit_crit_edge ], [ %23, %sw.bb12.i ], [ %21, %sw.bb.i ]
  %or2995 = or i8 %pf_bit.0.i, %shl22
  %24 = ptrtoint ptr %curr_rsv to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or2995, ptr %curr_rsv, align 1
  %ind_bits = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %ind_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ind_bits, align 1
  %27 = and i8 %26, -32
  %or59 = and i8 %vzyxw, 31
  %or6796 = or i8 %or59, %27
  store i8 %or6796, ptr %ind_bits, align 1
  %call70 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rr_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %f_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %f_bit, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or16 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or16, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rej_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %f_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %f_bit, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or16 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or16, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_rnr_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %f_bit, i8 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = and i8 %f_bit, 1
  %5 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %ctrl_1, align 1
  %shl = shl i8 %nr, 1
  %or16 = or i8 %shl, %4
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or16, ptr %ctrl_2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_pdu_init_as_ua_rsp(ptr nocapture noundef readonly %skb, i8 noundef zeroext %f_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = shl i8 %f_bit, 4
  %5 = and i8 %4, 16
  %6 = or i8 %5, 99
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_1, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
