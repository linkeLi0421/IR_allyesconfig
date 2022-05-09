; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csiphy_hw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.csiphy_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, ptr, i32, [30 x i8], ptr, ptr, i32, i32, %struct.csiphy_config, [2 x %struct.v4l2_mbus_framefmt], ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.csiphy_config = type { i8, i8, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.85, i16, i16, i16, [10 x i16] }
%union.anon.85 = type { i16 }
%struct.csiphy_lanes_cfg = type { i32, ptr, %struct.csiphy_lane }
%struct.csiphy_lane = type { i8, i8 }

@csiphy_ops_2ph_1_0 = dso_local constant { %struct.csiphy_hw_ops, [44 x i8] } { %struct.csiphy_hw_ops { ptr @csiphy_hw_version_read, ptr @csiphy_reset, ptr @csiphy_lanes_enable, ptr @csiphy_lanes_disable, ptr @csiphy_isr }, [44 x i8] zeroinitializer }, align 32
@csiphy_hw_version_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csiphy_hw_version_read\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSIPHY HW Version = 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"csiphy_ops_2ph_1_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 169, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [60 x i8] c"../drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 35, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @csiphy_ops_2ph_1_0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_ops_2ph_1_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_hw_version_read(ptr nocapture noundef readonly %csiphy, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 392
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csiphy_hw_version_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csiphy_hw_version_read, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %3 = lshr i32 %2, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csiphy_hw_version_read.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %3) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_reset(ptr nocapture noundef readonly %csiphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #2, !srcloc !19
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 8000, i32 noundef 2) #2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #2, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_lanes_enable(ptr nocapture noundef readonly %csiphy, ptr nocapture noundef readonly %cfg, i64 noundef %link_freq, i8 noundef zeroext %lane_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %csi2 = getelementptr inbounds %struct.csiphy_config, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi2, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %link_freq)
  %cmp.i = icmp slt i64 %link_freq, 1
  br i1 %cmp.i, label %entry.csiphy_settle_cnt_calc.exit_crit_edge, label %if.else174.i.i.i

entry.csiphy_settle_cnt_calc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %csiphy_settle_cnt_calc.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %timer_clk_rate = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 11
  %2 = ptrtoint ptr %timer_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_clk_rate, align 4
  %conv.i = trunc i64 %link_freq to i32
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 1000000000000) #5, !srcloc !20
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t = trunc i64 %asmresult1.i.i.i.i to i32
  %5 = shl i32 %extract.t, 3
  %6 = add i32 %5, 230000
  %add4.i = lshr exact i32 %6, 1
  %div519.i = and i32 %add4.i, 2147483640
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 1000000000000) #5, !srcloc !20
  %asmresult1.i.i.i124.i = extractvalue { i64, i64 } %7, 1
  %extract.t63 = trunc i64 %asmresult1.i.i.i124.i to i32
  %div8.i = udiv i32 %div519.i, %extract.t63
  %conv9.i = shl i32 %div8.i, 24
  %phi.bo = add i32 %conv9.i, -16777216
  br label %csiphy_settle_cnt_calc.exit

csiphy_settle_cnt_calc.exit:                      ; preds = %if.else174.i.i.i, %entry.csiphy_settle_cnt_calc.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.else174.i.i.i ], [ 0, %entry.csiphy_settle_cnt_calc.exit_crit_edge ]
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #2, !srcloc !19
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %11, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #2, !srcloc !19
  %shl = shl i8 %lane_mask, 1
  %or = or i8 %shl, 1
  %conv5 = zext i8 %or to i32
  %12 = shl nuw i32 %conv5, 24
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #2, !srcloc !19
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cfg, align 4
  %shl9 = shl i8 %16, 4
  %conv11 = zext i8 %shl9 to i32
  %17 = shl nuw i32 %conv11, 24
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %17) #2, !srcloc !19
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not58 = icmp slt i32 %21, 0
  br i1 %cmp.not58, label %csiphy_settle_cnt_calc.exit.for.end_crit_edge, label %for.body.lr.ph

csiphy_settle_cnt_calc.exit.for.end_crit_edge:    ; preds = %csiphy_settle_cnt_calc.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %csiphy_settle_cnt_calc.exit
  %data = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 1
  %clk = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %22 = phi i32 [ %21, %for.body.lr.ph ], [ %35, %if.end.for.body_crit_edge ]
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.059, i32 %22)
  %cmp16 = icmp eq i32 %i.059, %22
  br i1 %cmp16, label %for.body.if.end_crit_edge, label %if.else

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.csiphy_lane, ptr %24, i32 %i.059
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %l.0.in = phi ptr [ %arrayidx, %if.else ], [ %clk, %for.body.if.end_crit_edge ]
  %25 = ptrtoint ptr %l.0.in to i32
  call void @__asan_load1_noabort(i32 %25)
  %l.0 = load i8, ptr %l.0.in, align 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %conv20 = zext i8 %l.0 to i32
  %mul = shl nuw nsw i32 %conv20, 6
  %add = or i32 %mul, 4
  %add.ptr21 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 268435456) #2, !srcloc !19
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add26 = or i32 %mul, 8
  %add.ptr27 = getelementptr i8, ptr %29, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %retval.0.i) #2, !srcloc !19
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %mul30 = shl nuw nsw i32 %conv20, 2
  %add31 = add nuw nsw i32 %mul30, 428
  %add.ptr32 = getelementptr i8, ptr %31, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1056964608) #2, !srcloc !19
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add36 = add nuw nsw i32 %mul30, 460
  %add.ptr37 = getelementptr i8, ptr %33, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 1056964608) #2, !srcloc !19
  %inc = add i32 %i.059, 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %cmp.not = icmp sgt i32 %inc, %35
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %csiphy_settle_cnt_calc.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_lanes_disable(ptr nocapture noundef readonly %csiphy, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %csi2 = getelementptr inbounds %struct.csiphy_config, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not13 = icmp slt i32 %3, 0
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 1
  %clk = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 2
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %11, %if.end.for.body_crit_edge ]
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.014, i32 %4)
  %cmp2 = icmp eq i32 %i.014, %4
  br i1 %cmp2, label %for.body.if.end_crit_edge, label %if.else

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.csiphy_lane, ptr %6, i32 %i.014
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %l.0.in = phi ptr [ %arrayidx, %if.else ], [ %clk, %for.body.if.end_crit_edge ]
  %7 = ptrtoint ptr %l.0.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %l.0 = load i8, ptr %l.0.in, align 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %conv = zext i8 %l.0 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add = or i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #2, !srcloc !19
  %inc = add i32 %i.014, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %cmp.not = icmp sgt i32 %inc, %11
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %base4 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %12 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base4, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #2, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul, 396
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !17
  %3 = and i32 %2, -16777216
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add8 = add nuw nsw i32 %mul, 460
  %add.ptr9 = getelementptr i8, ptr %5, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %3) #2, !srcloc !19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #2, !srcloc !19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #2, !srcloc !19
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #2, !srcloc !19
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @csiphy_ops_2ph_1_0, !1, !"csiphy_ops_2ph_1_0", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c", i32 169, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c", i32 35, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @csiphy_hw_version_read.__UNIQUE_ID_ddebug292, !3, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4235050}
!18 = !{i64 2148726919, i64 2148726924, i64 2148726937, i64 2148726981, i64 2148727015, i64 2148727036}
!19 = !{i64 4234632}
!20 = !{i64 2148635638, i64 2148635918, i64 2148636252, i64 2148636586}
