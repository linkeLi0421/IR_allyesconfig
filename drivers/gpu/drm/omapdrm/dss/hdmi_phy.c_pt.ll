; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_features = type { i8, i8, i32 }
%struct.hdmi_phy_data = type { ptr, ptr, [4 x i8], [4 x i8] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_TXPHY_TX_CTRL\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_TXPHY_DIGITAL_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_TXPHY_POWER_CTRL\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_TXPHY_PAD_CFG_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_TXPHY_BIST_CONTROL\00", [40 x i8] zeroinitializer }, align 32
@omap44xx_phy_feats = internal constant { %struct.hdmi_phy_features, [24 x i8] } { %struct.hdmi_phy_features { i8 0, i8 1, i32 185675000 }, [24 x i8] zeroinitializer }, align 32
@omap54xx_phy_feats = internal constant { %struct.hdmi_phy_features, [24 x i8] } { %struct.hdmi_phy_features { i8 1, i8 0, i32 186000000 }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi_phy.c\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 16, i64 291, i64 306, i64 531, i64 561, i64 786, i64 801, i64 4131, i64 4146, i64 4611, i64 4656, i64 4866, i64 4896, i64 8211, i64 8241, i64 8451, i64 8496, i64 8961, i64 8976, i64 12306, i64 12321, i64 12546, i64 12576, i64 12801, i64 12816]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 25, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 26, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 27, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 29, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"omap44xx_phy_feats\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 170, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"omap54xx_phy_feats\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 176, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 190, i32 58 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [42 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 114, i32 6 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @omap44xx_phy_feats, ptr @omap54xx_phy_feats, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_phy_feats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap54xx_phy_feats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_phy_dump(ptr nocapture noundef readonly %phy, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %2) #3
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %5) #3
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #3, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %8) #3
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #3, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef %11) #3
  %features = getelementptr inbounds %struct.hdmi_phy_data, ptr %phy, i32 0, i32 1
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %features, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %add.ptr.i20 = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #3, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %18) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_phy_parse_lanes(ptr nocapture noundef writeonly %phy, ptr nocapture noundef readonly %lanes) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 4
  %arrayidx1 = getelementptr i32, ptr %lanes, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %4 = icmp ugt i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %5 = icmp ugt i32 %3, 7
  %or.cond = select i1 %4, i1 true, i1 %5
  br i1 %or.cond, label %entry.cleanup27_crit_edge, label %if.end8

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end8:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  %sub = add nsw i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp10.not = icmp eq i32 %3, %sub
  br i1 %cmp10.not, label %if.then9.if.end17_crit_edge, label %if.then9.cleanup27_crit_edge

if.then9.cleanup27_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.else:                                          ; preds = %if.end8
  %add13 = add nuw nsw i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add13)
  %cmp14.not = icmp eq i32 %3, %add13
  br i1 %cmp14.not, label %if.else.if.end17_crit_edge, label %if.else.cleanup27_crit_edge

if.else.cleanup27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then9.if.end17_crit_edge
  %pol.0 = phi i8 [ 1, %if.then9.if.end17_crit_edge ], [ 0, %if.else.if.end17_crit_edge ]
  %div454647 = lshr i32 %1, 1
  %arrayidx20 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 %div454647
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 %div454647
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %pol.0, ptr %arrayidx22, align 1
  %arrayidx.1 = getelementptr i32, ptr %lanes, i32 2
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr i32, ptr %lanes, i32 3
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %12 = icmp ugt i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %13 = icmp ugt i32 %11, 7
  %or.cond.1 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond.1, label %if.end17.cleanup27_crit_edge, label %if.end8.1

if.end17.cleanup27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end8.1:                                        ; preds = %if.end17
  %and.1 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.else.1, label %if.then9.1

if.then9.1:                                       ; preds = %if.end8.1
  %sub.1 = add nsw i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub.1)
  %cmp10.not.1 = icmp eq i32 %11, %sub.1
  br i1 %cmp10.not.1, label %if.then9.1.if.end17.1_crit_edge, label %if.then9.1.cleanup27_crit_edge

if.then9.1.cleanup27_crit_edge:                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.then9.1.if.end17.1_crit_edge:                  ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.1

if.else.1:                                        ; preds = %if.end8.1
  %add13.1 = add nuw nsw i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add13.1)
  %cmp14.not.1 = icmp eq i32 %11, %add13.1
  br i1 %cmp14.not.1, label %if.else.1.if.end17.1_crit_edge, label %if.else.1.cleanup27_crit_edge

if.else.1.cleanup27_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.1.if.end17.1_crit_edge:                   ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.else.1.if.end17.1_crit_edge, %if.then9.1.if.end17.1_crit_edge
  %pol.0.1 = phi i8 [ 1, %if.then9.1.if.end17.1_crit_edge ], [ 0, %if.else.1.if.end17.1_crit_edge ]
  %div454647.1 = lshr i32 %9, 1
  %arrayidx20.1 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 %div454647.1
  %14 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx20.1, align 1
  %arrayidx22.1 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 %div454647.1
  %15 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pol.0.1, ptr %arrayidx22.1, align 1
  %arrayidx.2 = getelementptr i32, ptr %lanes, i32 4
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr i32, ptr %lanes, i32 5
  %18 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %20 = icmp ugt i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %21 = icmp ugt i32 %19, 7
  %or.cond.2 = select i1 %20, i1 true, i1 %21
  br i1 %or.cond.2, label %if.end17.1.cleanup27_crit_edge, label %if.end8.2

if.end17.1.cleanup27_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end8.2:                                        ; preds = %if.end17.1
  %and.2 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.else.2, label %if.then9.2

if.then9.2:                                       ; preds = %if.end8.2
  %sub.2 = add nsw i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub.2)
  %cmp10.not.2 = icmp eq i32 %19, %sub.2
  br i1 %cmp10.not.2, label %if.then9.2.if.end17.2_crit_edge, label %if.then9.2.cleanup27_crit_edge

if.then9.2.cleanup27_crit_edge:                   ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.then9.2.if.end17.2_crit_edge:                  ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.2

if.else.2:                                        ; preds = %if.end8.2
  %add13.2 = add nuw nsw i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add13.2)
  %cmp14.not.2 = icmp eq i32 %19, %add13.2
  br i1 %cmp14.not.2, label %if.else.2.if.end17.2_crit_edge, label %if.else.2.cleanup27_crit_edge

if.else.2.cleanup27_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.2.if.end17.2_crit_edge:                   ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.else.2.if.end17.2_crit_edge, %if.then9.2.if.end17.2_crit_edge
  %pol.0.2 = phi i8 [ 1, %if.then9.2.if.end17.2_crit_edge ], [ 0, %if.else.2.if.end17.2_crit_edge ]
  %div454647.2 = lshr i32 %17, 1
  %arrayidx20.2 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 %div454647.2
  %22 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %arrayidx20.2, align 1
  %arrayidx22.2 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 %div454647.2
  %23 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %pol.0.2, ptr %arrayidx22.2, align 1
  %arrayidx.3 = getelementptr i32, ptr %lanes, i32 6
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr i32, ptr %lanes, i32 7
  %26 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %28 = icmp ugt i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %29 = icmp ugt i32 %27, 7
  %or.cond.3 = select i1 %28, i1 true, i1 %29
  br i1 %or.cond.3, label %if.end17.2.cleanup27_crit_edge, label %if.end8.3

if.end17.2.cleanup27_crit_edge:                   ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end8.3:                                        ; preds = %if.end17.2
  %and.3 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.else.3, label %if.then9.3

if.then9.3:                                       ; preds = %if.end8.3
  %sub.3 = add nsw i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub.3)
  %cmp10.not.3 = icmp eq i32 %27, %sub.3
  br i1 %cmp10.not.3, label %if.then9.3.if.end17.3_crit_edge, label %if.then9.3.cleanup27_crit_edge

if.then9.3.cleanup27_crit_edge:                   ; preds = %if.then9.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.then9.3.if.end17.3_crit_edge:                  ; preds = %if.then9.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.3

if.else.3:                                        ; preds = %if.end8.3
  %add13.3 = add nuw nsw i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add13.3)
  %cmp14.not.3 = icmp eq i32 %27, %add13.3
  br i1 %cmp14.not.3, label %if.else.3.if.end17.3_crit_edge, label %if.else.3.cleanup27_crit_edge

if.else.3.cleanup27_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.3.if.end17.3_crit_edge:                   ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.else.3.if.end17.3_crit_edge, %if.then9.3.if.end17.3_crit_edge
  %pol.0.3 = phi i8 [ 1, %if.then9.3.if.end17.3_crit_edge ], [ 0, %if.else.3.if.end17.3_crit_edge ]
  %div454647.3 = lshr i32 %25, 1
  %arrayidx20.3 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 %div454647.3
  %30 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx20.3, align 1
  %arrayidx22.3 = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 %div454647.3
  %31 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %pol.0.3, ptr %arrayidx22.3, align 1
  br label %cleanup27

cleanup27:                                        ; preds = %if.end17.3, %if.else.3.cleanup27_crit_edge, %if.then9.3.cleanup27_crit_edge, %if.end17.2.cleanup27_crit_edge, %if.else.2.cleanup27_crit_edge, %if.then9.2.cleanup27_crit_edge, %if.end17.1.cleanup27_crit_edge, %if.else.1.cleanup27_crit_edge, %if.then9.1.cleanup27_crit_edge, %if.end17.cleanup27_crit_edge, %if.else.cleanup27_crit_edge, %if.then9.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ -22, %if.else.cleanup27_crit_edge ], [ -22, %if.then9.cleanup27_crit_edge ], [ -22, %entry.cleanup27_crit_edge ], [ -22, %if.end17.cleanup27_crit_edge ], [ -22, %if.then9.1.cleanup27_crit_edge ], [ -22, %if.else.1.cleanup27_crit_edge ], [ -22, %if.end17.1.cleanup27_crit_edge ], [ -22, %if.then9.2.cleanup27_crit_edge ], [ -22, %if.else.2.cleanup27_crit_edge ], [ -22, %if.end17.2.cleanup27_crit_edge ], [ -22, %if.then9.3.cleanup27_crit_edge ], [ -22, %if.else.3.cleanup27_crit_edge ], [ 0, %if.end17.3 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_phy_configure(ptr nocapture noundef readonly %phy, i32 noundef %hfbitclk, i32 noundef %lfbitclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !30
  %features = getelementptr inbounds %struct.hdmi_phy_data, ptr %phy, i32 0, i32 1
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %features, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !30
  %or = or i32 %9, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #3, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %hfbitclk, i32 %lfbitclk)
  %cmp.not = icmp eq i32 %hfbitclk, %lfbitclk
  br i1 %cmp.not, label %if.else, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %div = udiv i32 %hfbitclk, 10
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %features, align 4
  %max_phy = getelementptr inbounds %struct.hdmi_phy_features, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %max_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_phy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %13)
  %cmp6 = icmp ult i32 %div, %13
  %. = select i1 %cmp6, i32 1073741824, i32 -2147483648
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end.if.end10_crit_edge
  %freqout.0 = phi i32 [ 0, %if.end.if.end10_crit_edge ], [ %., %if.else ]
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !30
  %and14 = and i32 %16, 1073741823
  %or16 = or i32 %and14, %freqout.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %or16) #3, !srcloc !32
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %add.ptr.i40 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 -268435456) #3, !srcloc !32
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %features, align 4
  %ldo_voltage = getelementptr inbounds %struct.hdmi_phy_features, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ldo_voltage to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ldo_voltage, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool19.not = icmp eq i8 %22, 0
  br i1 %tobool19.not, label %if.end10.if.end26_crit_edge, label %if.then20

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %add.ptr.i41 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #3, !srcloc !30
  %and24 = and i32 %25, -16
  %or25 = or i32 %and24, 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %or25) #3, !srcloc !32
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end10.if.end26_crit_edge
  %arrayidx.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i16
  %shl.i = shl i16 %conv.i, 12
  %arrayidx.1.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %29 to i16
  %shl.1.i = shl nuw i16 %conv.1.i, 8
  %phi.cast.1.i = or i16 %shl.1.i, %shl.i
  %arrayidx.2.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %31 to i16
  %shl.2.i = shl nuw nsw i16 %conv.2.i, 4
  %phi.cast.2.i = or i16 %phi.cast.1.i, %shl.2.i
  %arrayidx.3.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %33 to i16
  %phi.cast.3.i = or i16 %phi.cast.2.i, %conv.3.i
  %lane_polarity.i = getelementptr inbounds %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3
  %34 = ptrtoint ptr %lane_polarity.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lane_polarity.i, align 4
  %arrayidx10.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx17.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.i, align 2
  %arrayidx24.i = getelementptr %struct.hdmi_phy_data, ptr %phy, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx24.i, align 1
  %42 = zext i16 %phi.cast.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %phi.cast.3.i, label %do.end.i [
    i16 291, label %if.end26.hdmi_phy_configure_lanes.exit_crit_edge
    i16 306, label %if.end57.fold.split.i
    i16 786, label %if.end57.fold.split111.i
    i16 801, label %if.end57.fold.split112.i
    i16 561, label %if.end57.fold.split113.i
    i16 531, label %if.end57.fold.split114.i
    i16 4131, label %if.end57.fold.split115.i
    i16 4146, label %if.end57.fold.split116.i
    i16 12306, label %if.end57.fold.split117.i
    i16 12321, label %if.end57.fold.split118.i
    i16 8241, label %if.end57.fold.split119.i
    i16 8211, label %if.end57.fold.split120.i
    i16 4611, label %if.end57.fold.split121.i
    i16 4866, label %if.end57.fold.split122.i
    i16 12546, label %if.end57.fold.split123.i
    i16 12801, label %if.end57.fold.split124.i
    i16 8961, label %if.end57.fold.split125.i
    i16 8451, label %if.end57.fold.split126.i
    i16 4656, label %if.end57.fold.split127.i
    i16 4896, label %if.end57.fold.split128.i
    i16 12576, label %if.end57.fold.split129.i
    i16 12816, label %if.end57.fold.split130.i
    i16 8976, label %if.end57.fold.split131.i
    i16 8496, label %if.end57.fold.split132.i
  ]

if.end26.hdmi_phy_configure_lanes.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 114, i32 noundef 9, ptr noundef null) #3
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split.i:                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split111.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split112.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split113.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split114.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split115.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split116.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split117.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split118.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split119.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split120.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split121.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split122.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split123.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split124.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split125.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split126.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split127.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split128.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split129.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split130.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split131.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

if.end57.fold.split132.i:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %hdmi_phy_configure_lanes.exit

hdmi_phy_configure_lanes.exit:                    ; preds = %if.end57.fold.split132.i, %if.end57.fold.split131.i, %if.end57.fold.split130.i, %if.end57.fold.split129.i, %if.end57.fold.split128.i, %if.end57.fold.split127.i, %if.end57.fold.split126.i, %if.end57.fold.split125.i, %if.end57.fold.split124.i, %if.end57.fold.split123.i, %if.end57.fold.split122.i, %if.end57.fold.split121.i, %if.end57.fold.split120.i, %if.end57.fold.split119.i, %if.end57.fold.split118.i, %if.end57.fold.split117.i, %if.end57.fold.split116.i, %if.end57.fold.split115.i, %if.end57.fold.split114.i, %if.end57.fold.split113.i, %if.end57.fold.split112.i, %if.end57.fold.split111.i, %if.end57.fold.split.i, %do.end.i, %if.end26.hdmi_phy_configure_lanes.exit_crit_edge
  %cmp42105.i = phi i32 [ 0, %do.end.i ], [ 0, %if.end26.hdmi_phy_configure_lanes.exit_crit_edge ], [ 4194304, %if.end57.fold.split.i ], [ 8388608, %if.end57.fold.split111.i ], [ 12582912, %if.end57.fold.split112.i ], [ 16777216, %if.end57.fold.split113.i ], [ 20971520, %if.end57.fold.split114.i ], [ 25165824, %if.end57.fold.split115.i ], [ 29360128, %if.end57.fold.split116.i ], [ 33554432, %if.end57.fold.split117.i ], [ 37748736, %if.end57.fold.split118.i ], [ 41943040, %if.end57.fold.split119.i ], [ 46137344, %if.end57.fold.split120.i ], [ 50331648, %if.end57.fold.split121.i ], [ 54525952, %if.end57.fold.split122.i ], [ 58720256, %if.end57.fold.split123.i ], [ 62914560, %if.end57.fold.split124.i ], [ 67108864, %if.end57.fold.split125.i ], [ 71303168, %if.end57.fold.split126.i ], [ 75497472, %if.end57.fold.split127.i ], [ 79691776, %if.end57.fold.split128.i ], [ 83886080, %if.end57.fold.split129.i ], [ 88080384, %if.end57.fold.split130.i ], [ 92274688, %if.end57.fold.split131.i ], [ 96468992, %if.end57.fold.split132.i ]
  %conv11.i = zext i8 %37 to i32
  %conv13.i = zext i8 %35 to i32
  %conv18.i = zext i8 %39 to i32
  %conv25.i = zext i8 %41 to i32
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !30
  %and.i = and i32 %45, -130023425
  %or70.i = or i32 %and.i, %cmp42105.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or70.i) #3, !srcloc !32
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #3, !srcloc !30
  %and74.i = and i32 %48, -2013265921
  %49 = shl i32 %conv25.i, 28
  %50 = shl i32 %conv18.i, 29
  %51 = shl i32 %conv11.i, 30
  %52 = shl i32 %conv13.i, 27
  %53 = or i32 %51, %52
  %54 = or i32 %53, %50
  %shl76.i = or i32 %54, %49
  %and77.i = and i32 %shl76.i, 2013265920
  %or78.i = or i32 %and74.i, %and77.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %or78.i) #3, !srcloc !32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_phy_init(ptr noundef %pdev, ptr nocapture noundef %phy, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %version)
  %cmp = icmp eq i32 %version, 4
  %spec.select12 = select i1 %cmp, ptr @omap44xx_phy_feats, ptr @omap54xx_phy_feats
  %0 = getelementptr inbounds %struct.hdmi_phy_data, ptr %phy, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select12, ptr %0, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %3, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 24, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 25, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 26, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 27, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 29, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 190, i32 58}
!13 = distinct !{null, !14, !"pad_cfg_list", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 70, i32 19}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 114, i32 6}
!17 = !{ptr @omap44xx_phy_feats, !18, !"omap44xx_phy_feats", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 170, i32 39}
!19 = !{ptr @omap54xx_phy_feats, !20, !"omap54xx_phy_feats", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_phy.c", i32 176, i32 39}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 1248378}
!31 = !{i8 0, i8 2}
!32 = !{i64 1247960}
