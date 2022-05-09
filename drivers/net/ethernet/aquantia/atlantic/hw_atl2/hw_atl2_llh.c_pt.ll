; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_llh.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_llh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_redirection_table2_select_set(ptr noundef %aq_hw, i32 noundef %select) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21704, i32 noundef 4096, i32 noundef 12, i32 noundef %select) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_rss_hash_type_set(ptr noundef %aq_hw, i32 noundef %rss_hash_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21704, i32 noundef 511, i32 noundef 0, i32 noundef %rss_hash_type) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_new_enable_set(ptr noundef %aq_hw, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20740, i32 noundef 2048, i32 noundef 11, i32 noundef %enable) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpfl2_uc_flr_tag_set(ptr noundef %aq_hw, i32 noundef %tag, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 3
  %add = add i32 %mul, 20756
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 264241152, i32 noundef 22, i32 noundef %tag) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpfl2_bc_flr_tag_set(ptr noundef %aq_hw, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20720, i32 noundef 63, i32 noundef 0, i32 noundef %tag) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_new_rpf_rss_redir_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %index, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tc)
  %cmp = icmp ugt i32 %tc, 3
  %add = select i1 %cmp, i32 25344, i32 25088
  %mul2 = shl i32 %index, 2
  %add3 = add i32 %add, %mul2
  %rem = and i32 %tc, 3
  %mul4 = mul nuw nsw i32 %rem, 5
  %shl = shl nuw nsw i32 31, %mul4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add3, i32 noundef %shl, i32 noundef %mul4, i32 noundef %queue) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_vlan_flr_tag_set(ptr noundef %aq_hw, i32 noundef %tag, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 61440, i32 noundef 12, i32 noundef %tag) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_tpb_tx_tc_q_rand_map_en_set(ptr noundef %aq_hw, i32 noundef %tc_q_rand_map_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 512, i32 noundef 9, i32 noundef %tc_q_rand_map_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_tpb_tx_buf_clk_gate_en_set(ptr noundef %aq_hw, i32 noundef %clk_gate_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 32, i32 noundef 5, i32 noundef %clk_gate_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_reg_tx_intr_moder_ctrl_set(ptr noundef %aq_hw, i32 noundef %tx_intr_moderation_ctl, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue, 6
  %add = add i32 %mul, 31784
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tx_intr_moderation_ctl) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef %aq_hw, i32 noundef %data_arb_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28928, i32 noundef 3, i32 noundef 0, i32 noundef %data_arb_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %max_credit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 28944
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -65536, i32 noundef 16, i32 noundef %max_credit) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %weight) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 28944
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 32767, i32 noundef 0, i32 noundef %weight) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_get_hw_version(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 244) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_init_launchtime(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 244) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call.i)
  %cmp = icmp ult i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16798977, i32 %call.i)
  %cmp1 = icmp ugt i32 %call.i, 16798977
  %cond = select i1 %cmp1, i32 2, i32 4
  %cond2 = select i1 %cmp, i32 1, i32 %cond
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 31260, i32 noundef 65280, i32 noundef 8, i32 noundef %cond2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_act_rslvr_record_set(ptr noundef %aq_hw, i8 noundef zeroext %location, i32 noundef %tag, i32 noundef %mask, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = or i32 %mul, 81920
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tag) #2
  %add3 = or i32 %mul, 81924
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add3, i32 noundef %mask) #2
  %add6 = or i32 %mul, 81928
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add6, i32 noundef %action) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_rpf_act_rslvr_section_en_set(ptr noundef %aq_hw, i32 noundef %sections) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28656, i32 noundef 65535, i32 noundef 0, i32 noundef %sections) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_shared_buf_get(ptr noundef %aq_hw, i32 noundef %offset, ptr nocapture noundef writeonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp7 = icmp sgt i32 %add, %offset
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %j.08 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.09, 2
  %add1 = add i32 %mul, 73728
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add1) #2
  %arrayidx = getelementptr i32, ptr %data, i32 %j.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nsw i32 %i.09, 1
  %inc2 = add i32 %j.08, 1
  %exitcond.not = icmp eq i32 %inc2, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_shared_buf_write(ptr noundef %aq_hw, i32 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp7 = icmp sgt i32 %add, %offset
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %j.08 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.09, 2
  %add1 = add i32 %mul, 73728
  %arrayidx = getelementptr i32, ptr %data, i32 %j.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1, i32 noundef %1) #2
  %inc = add nsw i32 %i.09, 1
  %inc2 = add i32 %j.08, 1
  %exitcond.not = icmp eq i32 %inc2, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_shared_buf_read(ptr noundef %aq_hw, i32 noundef %offset, ptr nocapture noundef writeonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp7 = icmp sgt i32 %add, %offset
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %j.08 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.09, 2
  %add1 = add i32 %mul, 77824
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add1) #2
  %arrayidx = getelementptr i32, ptr %data, i32 %j.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nsw i32 %i.09, 1
  %inc2 = add i32 %j.08, 1
  %exitcond.not = icmp eq i32 %inc2, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_host_finished_write_set(ptr noundef %aq_hw, i32 noundef %finish) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 3584, i32 noundef 1, i32 noundef 0, i32 noundef %finish) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 3588, i32 noundef 1, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 12352) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_mcp_boot_reg_set(ptr noundef %aq_hw, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 12352, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_mif_host_req_int_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 3840) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl2_mif_host_req_int_clr(ptr noundef %aq_hw, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 3848, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
