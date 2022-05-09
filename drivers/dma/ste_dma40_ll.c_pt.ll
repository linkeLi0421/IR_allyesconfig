; ModuleID = '/llk/IR_all_yes/drivers/dma/ste_dma40_ll.c_pt.bc'
source_filename = "../drivers/dma/ste_dma40_ll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.d40_phy_lli = type { i32, i32, i32, i32 }
%struct.d40_log_lli = type { i32, i32 }
%struct.d40_log_lli_full = type { i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @d40_log_cfg(ptr nocapture noundef readonly %cfg, ptr nocapture noundef writeonly %lcsp1, ptr nocapture noundef writeonly %lcsp3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  %switch.and = and i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i32 4096, i32 0
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end26_crit_edge [
    i32 1, label %entry.if.then24_crit_edge
    i32 3, label %entry.if.then24_crit_edge73
  ]

entry.if.then24_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

entry.if.then24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %entry.if.then24_crit_edge, %entry.if.then24_crit_edge73
  %or25 = or i32 %2, 32768
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %entry.if.end26_crit_edge
  %l3.1 = phi i32 [ %or25, %if.then24 ], [ %2, %entry.if.end26_crit_edge ]
  %psize = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %psize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %psize, align 4
  %data_width = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_width, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %7, label %if.else6.i [
    i32 1, label %if.end26.d40_width_to_bits.exit_crit_edge
    i32 2, label %if.then2.i
    i32 8, label %if.then5.i
  ]

if.end26.d40_width_to_bits.exit_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.then2.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.then5.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.else6.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

d40_width_to_bits.exit:                           ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %if.end26.d40_width_to_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 256, %if.then2.i ], [ 768, %if.then5.i ], [ 512, %if.else6.i ], [ 0, %if.end26.d40_width_to_bits.exit_crit_edge ]
  %psize33 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %psize33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %psize33, align 4
  %data_width37 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %data_width37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_width37, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %12, label %if.else6.i70 [
    i32 1, label %d40_width_to_bits.exit.d40_width_to_bits.exit72_crit_edge
    i32 2, label %if.then2.i68
    i32 8, label %if.then5.i69
  ]

d40_width_to_bits.exit.d40_width_to_bits.exit72_crit_edge: ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit72

if.then2.i68:                                     ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit72

if.then5.i69:                                     ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit72

if.else6.i70:                                     ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit72

d40_width_to_bits.exit72:                         ; preds = %if.else6.i70, %if.then5.i69, %if.then2.i68, %d40_width_to_bits.exit.d40_width_to_bits.exit72_crit_edge
  %retval.0.i71 = phi i32 [ 256, %if.then2.i68 ], [ 768, %if.then5.i69 ], [ 512, %if.else6.i70 ], [ 0, %d40_width_to_bits.exit.d40_width_to_bits.exit72_crit_edge ]
  %14 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch66 = icmp eq i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %spec.select = select i1 %switch, i32 4096, i32 0
  %or17 = or i32 %spec.select, 32768
  %spec.select67 = select i1 %switch66, i32 %or17, i32 %spec.select
  %shl34 = shl i32 %10, 10
  %shl = shl i32 %5, 10
  %or27 = or i32 %l3.1, %shl
  %or28 = or i32 %or27, %retval.0.i
  %or31 = or i32 %or28, 8192
  %or32 = or i32 %spec.select67, %shl34
  %or35 = or i32 %or32, %retval.0.i71
  %or41 = or i32 %or35, 8192
  %15 = ptrtoint ptr %lcsp1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or41, ptr %lcsp1, align 4
  %16 = ptrtoint ptr %lcsp3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or31, ptr %lcsp3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @d40_phy_cfg(ptr nocapture noundef readonly %cfg, ptr nocapture noundef writeonly %src_cfg, ptr nocapture noundef writeonly %dst_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %dev_type = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 5
  %3 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type, align 4
  %rem = srem i32 %4, 16
  %flow_ctrl = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %flow_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or6 = or i32 %rem, 32784
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or7 = or i32 %rem, 32816
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %entry.if.end8_crit_edge
  %src.0 = phi i32 [ %or6, %if.then5 ], [ %or7, %if.else ], [ 0, %entry.if.end8_crit_edge ]
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %if.end8.if.end26_crit_edge [
    i32 1, label %if.end8.if.then14_crit_edge
    i32 3, label %if.end8.if.then14_crit_edge117
  ]

if.end8.if.then14_crit_edge117:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end8.if.then14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then14:                                        ; preds = %if.end8.if.then14_crit_edge, %if.end8.if.then14_crit_edge117
  %dev_type16 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %dev_type16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type16, align 4
  %rem17 = srem i32 %9, 16
  %flow_ctrl19 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %flow_ctrl19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_ctrl19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp eq i32 %11, 0
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %or22 = or i32 %rem17, 32784
  br label %if.end26

if.else23:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %or24 = or i32 %rem17, 32816
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then21, %if.end8.if.end26_crit_edge
  %dst.0 = phi i32 [ %or22, %if.then21 ], [ %or24, %if.else23 ], [ 0, %if.end8.if.end26_crit_edge ]
  %psize = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %psize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %psize, align 4
  %psize39 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %psize39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %psize39, align 4
  %data_width = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_width, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %17, label %if.else6.i [
    i32 1, label %if.end26.d40_width_to_bits.exit_crit_edge
    i32 2, label %if.then2.i
    i32 8, label %if.then5.i
  ]

if.end26.d40_width_to_bits.exit_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.then2.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.then5.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

if.else6.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit

d40_width_to_bits.exit:                           ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %if.end26.d40_width_to_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 256, %if.then2.i ], [ 768, %if.then5.i ], [ 512, %if.else6.i ], [ 0, %if.end26.d40_width_to_bits.exit_crit_edge ]
  %data_width52 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %data_width52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_width52, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %20, label %if.else6.i114 [
    i32 1, label %d40_width_to_bits.exit.d40_width_to_bits.exit116_crit_edge
    i32 2, label %if.then2.i112
    i32 8, label %if.then5.i113
  ]

d40_width_to_bits.exit.d40_width_to_bits.exit116_crit_edge: ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit116

if.then2.i112:                                    ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit116

if.then5.i113:                                    ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit116

if.else6.i114:                                    ; preds = %d40_width_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_width_to_bits.exit116

d40_width_to_bits.exit116:                        ; preds = %if.else6.i114, %if.then5.i113, %if.then2.i112, %d40_width_to_bits.exit.d40_width_to_bits.exit116_crit_edge
  %retval.0.i115 = phi i32 [ 256, %if.then2.i112 ], [ 768, %if.then5.i113 ], [ 512, %if.else6.i114 ], [ 0, %d40_width_to_bits.exit.d40_width_to_bits.exit116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp31.not = icmp eq i32 %13, 4
  %or28 = or i32 %src.0, 8192
  %shl = shl i32 %13, 10
  %or33 = or i32 %src.0, %shl
  %or36 = or i32 %or33, 12288
  %src.1 = select i1 %cmp31.not, i32 %or28, i32 %or36
  %or50 = or i32 %retval.0.i, %src.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp40.not = icmp eq i32 %15, 4
  %or29 = or i32 %dst.0, 24576
  %shl45 = shl i32 %15, 10
  %or42 = or i32 %dst.0, %shl45
  %or46 = or i32 %or42, 28672
  %dst.1 = select i1 %cmp40.not, i32 %or29, i32 %or46
  %dst_info38 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7
  %src_info30 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6
  %or56 = or i32 %retval.0.i115, %dst.1
  %high_priority = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %high_priority to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %high_priority, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %or58 = or i32 %or50, 128
  %or59 = or i32 %or56, 128
  %src.2 = select i1 %tobool.not, i32 %or50, i32 %or58
  %dst.2 = select i1 %tobool.not, i32 %or56, i32 %or59
  %24 = ptrtoint ptr %src_info30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src_info30, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool62.not = icmp eq i8 %25, 0
  %or64 = or i32 %src.2, 64
  %src.3 = select i1 %tobool62.not, i32 %src.2, i32 %or64
  %26 = ptrtoint ptr %dst_info38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dst_info38, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool68.not = icmp eq i8 %27, 0
  %or70 = or i32 %dst.2, 64
  %dst.3 = select i1 %tobool68.not, i32 %dst.2, i32 %or70
  %28 = ptrtoint ptr %src_cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %src.3, ptr %src_cfg, align 4
  %29 = ptrtoint ptr %dst_cfg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dst.3, ptr %dst_cfg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @d40_phy_sg_to_lli(ptr noundef %sg, i32 noundef %sg_len, i32 noundef %target, ptr noundef %lli_sg, i32 noundef %lli_phys, i32 noundef %reg_cfg, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %otherinfo, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %tobool.not = icmp eq i32 %target, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp41 = icmp sgt i32 %sg_len, 0
  br i1 %cmp41, label %for.body.lr.ph, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %or, %flags
  %sub = add nsw i32 %sg_len, -1
  %sub.ptr.rhs.cast = ptrtoint ptr %lli_sg to i32
  %sub.ptr.sub = sub i32 15, %sub.ptr.rhs.cast
  %add7 = add i32 %sub.ptr.sub, %lli_phys
  %data_width.i = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %info, i32 0, i32 1
  %data_width12.i = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %otherinfo, i32 0, i32 1
  %psize5.i.i = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %info, i32 0, i32 2
  %and31.i.i = and i32 %reg_cfg, -16385
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lli.046 = phi ptr [ %lli_sg, %for.body.lr.ph ], [ %incdec.ptr.i, %for.inc.for.body_crit_edge ]
  %current_sg.045 = phi ptr [ %sg, %for.body.lr.ph ], [ %call14, %for.inc.for.body_crit_edge ]
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_size.043 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %flags.addr.142 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %spec.select37, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %current_sg.045, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length, align 4
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %current_sg.045, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %target, %for.body.cond.end_crit_edge ]
  %add = add i32 %1, %total_size.043
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044, i32 %sub)
  %cmp3 = icmp eq i32 %i.044, %sub
  %or5 = or i32 %flags.addr.142, 10
  %spec.select37 = select i1 %cmp3, i32 %or5, i32 %flags.addr.142
  %sub.ptr.lhs.cast = ptrtoint ptr %lli.046 to i32
  %add8 = add i32 %add7, %sub.ptr.lhs.cast
  %and = and i32 %add8, -16
  %and.i = and i32 %spec.select37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and1.i = and i32 %spec.select37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and7.i = and i32 %spec.select37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %and11.i = and i32 %spec.select37, -3
  %spec.select60.i = select i1 %tobool8.not.i, i32 0, i32 %lli_phys
  br label %do.body.i

do.body.i:                                        ; preds = %if.end27.i.do.body.i_crit_edge, %cond.end
  %addr.addr.0.i = phi i32 [ %cond, %cond.end ], [ %spec.select61.i, %if.end27.i.do.body.i_crit_edge ]
  %lli.addr.0.i = phi ptr [ %lli.046, %cond.end ], [ %incdec.ptr.i, %if.end27.i.do.body.i_crit_edge ]
  %next.0.i = phi i32 [ %and, %cond.end ], [ %and22.i, %if.end27.i.do.body.i_crit_edge ]
  %size_rest.0.i = phi i32 [ %1, %cond.end ], [ %sub.i, %if.end27.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_width.i, align 4
  %6 = ptrtoint ptr %data_width12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_width12.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %5, i32 %7) #4
  %9 = tail call i32 @llvm.smin.i32(i32 %5, i32 %7) #4
  %mul.i.i = mul i32 %9, 65535
  %sub.i.i = add i32 %8, -1
  %add.i.i = add i32 %mul.i.i, %sub.i.i
  %neg.i.i = sub i32 0, %8
  %and.i.i = and i32 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i.i)
  %cmp8.i.i = icmp ugt i32 %and.i.i, 65535
  %sub9.i.i = select i1 %cmp8.i.i, i32 %8, i32 0
  %seg_max.0.i.i = sub i32 %and.i.i, %sub9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %seg_max.0.i.i, i32 %size_rest.0.i)
  %cmp10.not.i.i = icmp ult i32 %seg_max.0.i.i, %size_rest.0.i
  br i1 %cmp10.not.i.i, label %if.end12.i.i, label %do.body.i.d40_seg_size.exit.i_crit_edge

do.body.i.d40_seg_size.exit.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_seg_size.exit.i

if.end12.i.i:                                     ; preds = %do.body.i
  %mul13.i.i = shl i32 %seg_max.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i.i, i32 %size_rest.0.i)
  %cmp14.not.i.i = icmp ult i32 %mul13.i.i, %size_rest.0.i
  br i1 %cmp14.not.i.i, label %if.end12.i.i.d40_seg_size.exit.i_crit_edge, label %if.then15.i.i

if.end12.i.i.d40_seg_size.exit.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_seg_size.exit.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.i.i = sdiv i32 %size_rest.0.i, 2
  %add17.i.i = add i32 %sub.i.i, %div.i.i
  %and20.i.i = and i32 %add17.i.i, %neg.i.i
  br label %d40_seg_size.exit.i

d40_seg_size.exit.i:                              ; preds = %if.then15.i.i, %if.end12.i.i.d40_seg_size.exit.i_crit_edge, %do.body.i.d40_seg_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and20.i.i, %if.then15.i.i ], [ %size_rest.0.i, %do.body.i.d40_seg_size.exit.i_crit_edge ], [ %seg_max.0.i.i, %if.end12.i.i.d40_seg_size.exit.i_crit_edge ]
  %10 = ptrtoint ptr %psize5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %psize5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 4
  %shl.i.i = shl i32 2, %11
  %num_elems.0.i.i = select i1 %cmp.i.i, i32 1, i32 %shl.i.i
  %sub.i62.i = add i32 %5, -1
  %and6.i.i = and i32 %sub.i62.i, %addr.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp7.i.i = icmp ne i32 %and6.i.i, 0
  %mul.i63.i = mul i32 %num_elems.0.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i63.i, i32 %retval.0.i.i)
  %cmp10.i.i = icmp ugt i32 %mul.i63.i, %retval.0.i.i
  %or.cond.i.i = select i1 %cmp7.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond.i.i, label %d40_seg_size.exit.i.cleanup15_crit_edge, label %if.end27.i

d40_seg_size.exit.i.cleanup15_crit_edge:          ; preds = %d40_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

if.end27.i:                                       ; preds = %d40_seg_size.exit.i
  %sub.i = sub i32 %size_rest.0.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 0
  %12 = and i1 %tobool.not.i, %cmp.i
  %add21.i = add i32 %next.0.i, 31
  %and22.i = and i32 %add21.i, -16
  %next.1.i = select i1 %12, i32 %spec.select60.i, i32 %and22.i
  %flags.addr.2.i = select i1 %cmp.i, i32 %spec.select37, i32 %and11.i
  %and.i64.i = and i32 %flags.addr.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i)
  %tobool.not.i.i = icmp eq i32 %and.i64.i, 0
  %div.i65.i = udiv i32 %retval.0.i.i, %5
  %shl13.i.i = shl i32 %div.i65.i, 16
  %reg_elt.i.i = getelementptr inbounds %struct.d40_phy_lli, ptr %lli.addr.0.i, i32 0, i32 1
  %or.i.i = select i1 %tobool.not.i.i, i32 0, i32 %5
  %spec.select.i.i = or i32 %shl13.i.i, %or.i.i
  %13 = ptrtoint ptr %reg_elt.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i.i, ptr %reg_elt.i.i, align 4
  %reg_ptr.i.i = getelementptr inbounds %struct.d40_phy_lli, ptr %lli.addr.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %reg_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr.addr.0.i, ptr %reg_ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next.1.i)
  %cmp20.i.i = icmp eq i32 %next.1.i, 0
  %spec.select54.i.i = select i1 %cmp20.i.i, i32 1, i32 %next.1.i
  %15 = getelementptr inbounds %struct.d40_phy_lli, ptr %lli.addr.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select54.i.i, ptr %15, align 4
  %and1.i.i = shl i32 %flags.addr.2.i, 13
  %17 = and i32 %and1.i.i, 16384
  %storemerge.i.i = or i32 %17, %and31.i.i
  %18 = ptrtoint ptr %lli.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i.i, ptr %lli.addr.0.i, align 4
  %incdec.ptr.i = getelementptr %struct.d40_phy_lli, ptr %lli.addr.0.i, i32 1
  %add30.i = select i1 %tobool2.not.i, i32 0, i32 %retval.0.i.i
  %spec.select61.i = add i32 %add30.i, %addr.addr.0.i
  br i1 %cmp.i, label %d40_phy_buf_to_lli.exit, label %if.end27.i.do.body.i_crit_edge

if.end27.i.do.body.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

d40_phy_buf_to_lli.exit:                          ; preds = %if.end27.i
  %cmp9 = icmp eq ptr %incdec.ptr.i, null
  br i1 %cmp9, label %d40_phy_buf_to_lli.exit.cleanup15_crit_edge, label %for.inc

d40_phy_buf_to_lli.exit.cleanup15_crit_edge:      ; preds = %d40_phy_buf_to_lli.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

for.inc:                                          ; preds = %d40_phy_buf_to_lli.exit
  %inc = add nuw nsw i32 %i.044, 1
  %call14 = tail call ptr @sg_next(ptr noundef %current_sg.045) #4
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %d40_phy_buf_to_lli.exit.cleanup15_crit_edge, %d40_seg_size.exit.i.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup15_crit_edge ], [ -22, %d40_seg_size.exit.i.cleanup15_crit_edge ], [ -22, %d40_phy_buf_to_lli.exit.cleanup15_crit_edge ], [ %add, %for.inc.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @d40_log_lli_lcpa_write(ptr noundef %lcpa, ptr nocapture noundef %lli_dst, ptr nocapture noundef %lli_src, i32 noundef %next, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.d40_log_lli_link.exit_crit_edge, label %if.then3.i

entry.d40_log_lli_link.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_log_lli_link.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lcsp13.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_dst, i32 0, i32 1
  %0 = ptrtoint ptr %lcsp13.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcsp13.i, align 4
  %or5.i = or i32 %1, 16385
  store i32 %or5.i, ptr %lcsp13.i, align 4
  br label %d40_log_lli_link.exit

d40_log_lli_link.exit:                            ; preds = %if.then3.i, %entry.d40_log_lli_link.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %next)
  %cmp.not.i = icmp eq i32 %next, -22
  %phi.bo.i = shl i32 %next, 2
  %phi.bo22.i = or i32 %phi.bo.i, 2
  %dlos.0.i = select i1 %cmp.not.i, i32 0, i32 %phi.bo22.i
  %slos.0.i = select i1 %cmp.not.i, i32 0, i32 %phi.bo.i
  %lcsp137.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_src, i32 0, i32 1
  %2 = ptrtoint ptr %lcsp137.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcsp137.i, align 4
  %and8.i = and i32 %3, -255
  %or9.i = or i32 %and8.i, %slos.0.i
  store i32 %or9.i, ptr %lcsp137.i, align 4
  %lcsp1311.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_dst, i32 0, i32 1
  %4 = ptrtoint ptr %lcsp1311.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcsp1311.i, align 4
  %and12.i = and i32 %5, -255
  %or14.i = or i32 %and12.i, %dlos.0.i
  store i32 %or14.i, ptr %lcsp1311.i, align 4
  %6 = ptrtoint ptr %lli_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lli_src, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcpa, i32 %8) #4, !srcloc !10
  %9 = ptrtoint ptr %lcsp137.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lcsp137.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %lcsp1 = getelementptr inbounds %struct.d40_log_lli_full, ptr %lcpa, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcsp1, i32 %11) #4, !srcloc !10
  %12 = ptrtoint ptr %lli_dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lli_dst, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %lcsp2 = getelementptr inbounds %struct.d40_log_lli_full, ptr %lcpa, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcsp2, i32 %14) #4, !srcloc !10
  %15 = ptrtoint ptr %lcsp1311.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lcsp1311.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %lcsp3 = getelementptr inbounds %struct.d40_log_lli_full, ptr %lcpa, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcsp3, i32 %17) #4, !srcloc !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @d40_log_lli_lcla_write(ptr noundef %lcla, ptr nocapture noundef %lli_dst, ptr nocapture noundef %lli_src, i32 noundef %next, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.d40_log_lli_link.exit_crit_edge, label %if.then3.i

entry.d40_log_lli_link.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_log_lli_link.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lcsp13.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_dst, i32 0, i32 1
  %0 = ptrtoint ptr %lcsp13.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcsp13.i, align 4
  %or5.i = or i32 %1, 16385
  store i32 %or5.i, ptr %lcsp13.i, align 4
  br label %d40_log_lli_link.exit

d40_log_lli_link.exit:                            ; preds = %if.then3.i, %entry.d40_log_lli_link.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %next)
  %cmp.not.i = icmp eq i32 %next, -22
  %phi.bo.i = shl i32 %next, 2
  %phi.bo22.i = or i32 %phi.bo.i, 2
  %dlos.0.i = select i1 %cmp.not.i, i32 0, i32 %phi.bo22.i
  %slos.0.i = select i1 %cmp.not.i, i32 0, i32 %phi.bo.i
  %lcsp137.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_src, i32 0, i32 1
  %2 = ptrtoint ptr %lcsp137.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcsp137.i, align 4
  %and8.i = and i32 %3, -255
  %or9.i = or i32 %and8.i, %slos.0.i
  store i32 %or9.i, ptr %lcsp137.i, align 4
  %lcsp1311.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli_dst, i32 0, i32 1
  %4 = ptrtoint ptr %lcsp1311.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcsp1311.i, align 4
  %and12.i = and i32 %5, -255
  %or14.i = or i32 %and12.i, %dlos.0.i
  store i32 %or14.i, ptr %lcsp1311.i, align 4
  %6 = ptrtoint ptr %lli_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lli_src, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcla, i32 %8) #4, !srcloc !10
  %9 = ptrtoint ptr %lcsp137.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lcsp137.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %lcsp133 = getelementptr inbounds %struct.d40_log_lli, ptr %lcla, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcsp133, i32 %11) #4, !srcloc !10
  %12 = ptrtoint ptr %lli_dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lli_dst, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx5 = getelementptr %struct.d40_log_lli, ptr %lcla, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 %14) #4, !srcloc !10
  %15 = ptrtoint ptr %lcsp1311.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lcsp1311.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %lcsp139 = getelementptr %struct.d40_log_lli, ptr %lcla, i32 1, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %lcsp139, i32 %17) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @d40_log_sg_to_lli(ptr noundef %sg, i32 noundef %sg_len, i32 noundef %dev_addr, ptr nocapture noundef writeonly %lli_sg, i32 noundef %lcsp13, i32 noundef %data_width1, i32 noundef %data_width2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_addr)
  %tobool.not = icmp eq i32 %dev_addr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp13 = icmp sgt i32 %sg_len, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = tail call i32 @llvm.smax.i32(i32 %data_width1, i32 %data_width2) #4
  %1 = tail call i32 @llvm.smin.i32(i32 %data_width1, i32 %data_width2) #4
  %mul.i.i = mul i32 %1, 65535
  %sub.i.i = add i32 %0, -1
  %add.i.i = add i32 %mul.i.i, %sub.i.i
  %neg.i.i = sub i32 0, %0
  %and.i.i = and i32 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i.i)
  %cmp8.i.i = icmp ugt i32 %and.i.i, 65535
  %sub9.i.i = select i1 %cmp8.i.i, i32 %0, i32 0
  %seg_max.0.i.i = sub i32 %and.i.i, %sub9.i.i
  %mul13.i.i = shl i32 %seg_max.0.i.i, 1
  br label %for.body

for.body:                                         ; preds = %d40_log_buf_to_lli.exit.for.body_crit_edge, %for.body.lr.ph
  %lli.017 = phi ptr [ %lli_sg, %for.body.lr.ph ], [ %incdec.ptr.i, %d40_log_buf_to_lli.exit.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %d40_log_buf_to_lli.exit.for.body_crit_edge ]
  %current_sg.015 = phi ptr [ %sg, %for.body.lr.ph ], [ %call3, %d40_log_buf_to_lli.exit.for.body_crit_edge ]
  %total_size.014 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %d40_log_buf_to_lli.exit.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %current_sg.015, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %current_sg.015, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %and.i13.i = phi i32 [ 0, %for.body.cond.end_crit_edge ], [ 4096, %cond.false ]
  %cond = phi i32 [ %dev_addr, %for.body.cond.end_crit_edge ], [ %5, %cond.false ]
  %add = add i32 %3, %total_size.014
  %or15.i.i = or i32 %and.i13.i, %lcsp13
  br label %do.body.i

do.body.i:                                        ; preds = %d40_log_fill_lli.exit.i.do.body.i_crit_edge, %cond.end
  %addr.addr.0.i = phi i32 [ %cond, %cond.end ], [ %spec.select.i, %d40_log_fill_lli.exit.i.do.body.i_crit_edge ]
  %lli.0.i = phi ptr [ %lli.017, %cond.end ], [ %incdec.ptr.i, %d40_log_fill_lli.exit.i.do.body.i_crit_edge ]
  %size_rest.0.i = phi i32 [ %3, %cond.end ], [ %sub.i, %d40_log_fill_lli.exit.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %seg_max.0.i.i, i32 %size_rest.0.i)
  %cmp10.not.i.i = icmp ult i32 %seg_max.0.i.i, %size_rest.0.i
  br i1 %cmp10.not.i.i, label %if.end12.i.i, label %do.body.i.d40_seg_size.exit.i_crit_edge

do.body.i.d40_seg_size.exit.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_seg_size.exit.i

if.end12.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i.i, i32 %size_rest.0.i)
  %cmp14.not.i.i = icmp ult i32 %mul13.i.i, %size_rest.0.i
  br i1 %cmp14.not.i.i, label %if.end12.i.i.d40_seg_size.exit.i_crit_edge, label %if.then15.i.i

if.end12.i.i.d40_seg_size.exit.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %d40_seg_size.exit.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.i.i = sdiv i32 %size_rest.0.i, 2
  %add17.i.i = add i32 %div.i.i, %sub.i.i
  %and20.i.i = and i32 %add17.i.i, %neg.i.i
  br label %d40_seg_size.exit.i

d40_seg_size.exit.i:                              ; preds = %if.then15.i.i, %if.end12.i.i.d40_seg_size.exit.i_crit_edge, %do.body.i.d40_seg_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and20.i.i, %if.then15.i.i ], [ %size_rest.0.i, %do.body.i.d40_seg_size.exit.i_crit_edge ], [ %seg_max.0.i.i, %if.end12.i.i.d40_seg_size.exit.i_crit_edge ]
  %lcsp13.i.i = getelementptr inbounds %struct.d40_log_lli, ptr %lli.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %lcsp13.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lcsp13, ptr %lcsp13.i.i, align 4
  %div.i12.i = udiv i32 %retval.0.i.i, %data_width1
  %shl.i.i = shl i32 %div.i12.i, 16
  %7 = ptrtoint ptr %lli.0.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl.i.i, ptr %lli.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i12.i)
  %cmp.i.i = icmp ugt i32 %div.i12.i, 65535
  br i1 %cmp.i.i, label %do.body5.i.i, label %d40_log_fill_lli.exit.i, !prof !11

do.body5.i.i:                                     ; preds = %d40_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ste_dma40_ll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

d40_log_fill_lli.exit.i:                          ; preds = %d40_seg_size.exit.i
  %sub.i = sub i32 %size_rest.0.i, %retval.0.i.i
  %and11.i.i = and i32 %addr.addr.0.i, 65535
  %or.i.i = or i32 %shl.i.i, %and11.i.i
  %8 = ptrtoint ptr %lli.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %lli.0.i, align 4
  %and13.i.i = and i32 %addr.addr.0.i, -65536
  %9 = or i32 %or15.i.i, %and13.i.i
  %10 = ptrtoint ptr %lcsp13.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lcsp13.i.i, align 4
  %add.i = select i1 %tobool.not, i32 %retval.0.i.i, i32 0
  %spec.select.i = add i32 %add.i, %addr.addr.0.i
  %incdec.ptr.i = getelementptr %struct.d40_log_lli, ptr %lli.0.i, i32 1
  %tobool2.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool2.not.i, label %d40_log_buf_to_lli.exit, label %d40_log_fill_lli.exit.i.do.body.i_crit_edge

d40_log_fill_lli.exit.i.do.body.i_crit_edge:      ; preds = %d40_log_fill_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

d40_log_buf_to_lli.exit:                          ; preds = %d40_log_fill_lli.exit.i
  %inc = add nuw nsw i32 %i.016, 1
  %call3 = tail call ptr @sg_next(ptr noundef %current_sg.015) #4
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %d40_log_buf_to_lli.exit.for.end_crit_edge, label %d40_log_buf_to_lli.exit.for.body_crit_edge

d40_log_buf_to_lli.exit.for.body_crit_edge:       ; preds = %d40_log_buf_to_lli.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

d40_log_buf_to_lli.exit.for.end_crit_edge:        ; preds = %d40_log_buf_to_lli.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %d40_log_buf_to_lli.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %d40_log_buf_to_lli.exit.for.end_crit_edge ]
  ret i32 %total_size.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
!10 = !{i64 6282818}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154170146, i64 2154170637, i64 2154170183, i64 2154170239, i64 2154170273, i64 2154170297, i64 2154170338, i64 2154170359, i64 2154170387, i64 2154170421}
