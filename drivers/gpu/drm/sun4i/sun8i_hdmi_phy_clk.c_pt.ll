; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun8i_hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.sun8i_phy_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi-phy-clk\00", [19 x i8] zeroinitializer }, align 32
@sun8i_phy_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_phy_clk_recalc_rate, ptr null, ptr @sun8i_phy_clk_determine_rate, ptr @sun8i_phy_clk_set_parent, ptr @sun8i_phy_clk_get_parent, ptr @sun8i_phy_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 164, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"sun8i_phy_clk_ops\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 134, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @sun8i_phy_clk_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_phy_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_phy_clk_create(ptr noundef %phy, ptr noundef %dev, i1 noundef zeroext %second_parent) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parents = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents) #4
  %2 = getelementptr inbounds [2 x ptr], ptr %parents, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !13
  %clk_pll0 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 3
  %4 = ptrtoint ptr %clk_pll0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pll0, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %5) #4
  %6 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %parents, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %second_parent, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %clk_pll1 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 4
  %7 = ptrtoint ptr %clk_pll1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_pll1, align 4
  %call4 = tail call ptr @__clk_get_name(ptr noundef %8) #4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %2, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sun8i_phy_clk_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parents, ptr %parent_names, align 4
  %conv = select i1 %second_parent, i8 2, i8 1
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %13 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %flags, align 4
  %phy16 = getelementptr inbounds %struct.sun8i_phy_clk, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %phy16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %phy, ptr %phy16, align 4
  %init17 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %init17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init17, align 4
  %call19 = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  %clk_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 2
  %17 = ptrtoint ptr %clk_phy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call19, ptr %clk_phy, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call19 to i32
  %spec.select = select i1 %cmp.i, i32 %18, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then3.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %spec.select, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_phy_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !13
  %phy = getelementptr inbounds %struct.sun8i_phy_clk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 48, ptr noundef nonnull %reg) #4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 15
  %add = add nuw nsw i32 %and, 1
  %div = udiv i32 %parent_rate, %add
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_phy_clk_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %call87 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %entry.for.end33_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end33

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %entry.for.body_crit_edge
  %best_rate.092 = phi i32 [ %best_rate.5, %for.inc31.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best_parent.091 = phi ptr [ %best_parent.5, %for.inc31.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %p.090 = phi i32 [ %inc32, %for.inc31.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best_div.089 = phi i32 [ %best_div.5, %for.inc31.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %p.090) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.inc31_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc31

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %best_rate.186 = phi i32 [ %best_rate.3.ph, %for.inc.for.body5_crit_edge ], [ %best_rate.092, %for.body.for.body5_crit_edge ]
  %best_parent.185 = phi ptr [ %best_parent.3.ph, %for.inc.for.body5_crit_edge ], [ %best_parent.091, %for.body.for.body5_crit_edge ]
  %i.083 = phi i32 [ %inc, %for.inc.for.body5_crit_edge ], [ 1, %for.body.for.body5_crit_edge ]
  %best_div.182 = phi i32 [ %best_div.3.ph, %for.inc.for.body5_crit_edge ], [ %best_div.089, %for.body.for.body5_crit_edge ]
  %mul = mul i32 %i.083, %1
  %call6 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call2, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %mul)
  %cmp7 = icmp eq i32 %call6, %mul
  br i1 %cmp7, label %for.body5.for.end_crit_edge, label %if.end9

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end9:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.186)
  %tobool10.not = icmp eq i32 %best_rate.186, 0
  br i1 %tobool10.not, label %if.end9.if.then24_crit_edge, label %lor.lhs.false

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end9
  %div = udiv i32 %call6, %i.083
  %sub = sub i32 %1, %div
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div14 = udiv i32 %best_rate.186, %best_div.182
  %sub15 = sub i32 %1, %div14
  %3 = tail call i32 @llvm.abs.i32(i32 %sub15, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp23 = icmp slt i32 %2, %3
  br i1 %cmp23, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end9.if.then24_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %lor.lhs.false.for.inc_crit_edge
  %best_div.3.ph = phi i32 [ %best_div.182, %lor.lhs.false.for.inc_crit_edge ], [ %i.083, %if.then24 ]
  %best_parent.3.ph = phi ptr [ %best_parent.185, %lor.lhs.false.for.inc_crit_edge ], [ %call2, %if.then24 ]
  %best_rate.3.ph = phi i32 [ %best_rate.186, %lor.lhs.false.for.inc_crit_edge ], [ %call6, %if.then24 ]
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body5.for.end_crit_edge
  %best_div.4 = phi i32 [ %best_div.3.ph, %for.inc.for.end_crit_edge ], [ %i.083, %for.body5.for.end_crit_edge ]
  %best_parent.4 = phi ptr [ %best_parent.3.ph, %for.inc.for.end_crit_edge ], [ %call2, %for.body5.for.end_crit_edge ]
  %best_rate.4 = phi i32 [ %best_rate.3.ph, %for.inc.for.end_crit_edge ], [ %mul, %for.body5.for.end_crit_edge ]
  %div27 = udiv i32 %best_rate.4, %best_div.4
  call void @__sanitizer_cov_trace_cmp4(i32 %div27, i32 %1)
  %cmp28 = icmp eq i32 %div27, %1
  br i1 %cmp28, label %for.end.for.end33_crit_edge, label %for.end.for.inc31_crit_edge

for.end.for.inc31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc31

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end33

for.inc31:                                        ; preds = %for.end.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %best_div.5 = phi i32 [ %best_div.4, %for.end.for.inc31_crit_edge ], [ %best_div.089, %for.body.for.inc31_crit_edge ]
  %best_parent.5 = phi ptr [ %best_parent.4, %for.end.for.inc31_crit_edge ], [ %best_parent.091, %for.body.for.inc31_crit_edge ]
  %best_rate.5 = phi i32 [ %best_rate.4, %for.end.for.inc31_crit_edge ], [ %best_rate.092, %for.body.for.inc31_crit_edge ]
  %inc32 = add nuw i32 %p.090, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %cmp = icmp ult i32 %inc32, %call
  br i1 %cmp, label %for.inc31.for.body_crit_edge, label %for.inc31.for.end33_crit_edge

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end33

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %for.end.for.end33_crit_edge, %entry.for.end33_crit_edge
  %best_div.6 = phi i32 [ 1, %entry.for.end33_crit_edge ], [ %best_div.4, %for.end.for.end33_crit_edge ], [ %best_div.5, %for.inc31.for.end33_crit_edge ]
  %best_parent.6 = phi ptr [ null, %entry.for.end33_crit_edge ], [ %best_parent.4, %for.end.for.end33_crit_edge ], [ %best_parent.5, %for.inc31.for.end33_crit_edge ]
  %best_rate.6 = phi i32 [ 0, %entry.for.end33_crit_edge ], [ %best_rate.4, %for.end.for.end33_crit_edge ], [ %best_rate.5, %for.inc31.for.end33_crit_edge ]
  %div34 = udiv i32 %best_rate.6, %best_div.6
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div34, ptr %req, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %best_rate.6, ptr %best_parent_rate, align 4
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %best_parent.6, ptr %best_parent_hw, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_phy_clk_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %index to i32
  %phy = getelementptr inbounds %struct.sun8i_phy_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %shl = shl nuw nsw i32 %conv, 26
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 67108864, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sun8i_phy_clk_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !13
  %phy = getelementptr inbounds %struct.sun8i_phy_clk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 44, ptr noundef nonnull %reg) #4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = lshr i32 %6, 26
  %7 = trunc i32 %and to i8
  %conv = and i8 %7, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_phy_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %best_m.026 = phi i8 [ 0, %entry ], [ %best_m.2, %cleanup.for.body_crit_edge ]
  %best_rate.025 = phi i32 [ 0, %entry ], [ %best_rate.2, %cleanup.for.body_crit_edge ]
  %div = udiv i32 %parent_rate, %indvars.iv
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rate)
  %cmp3 = icmp ugt i32 %div, %rate
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.025)
  %tobool.not = icmp eq i32 %best_rate.025, 0
  br i1 %tobool.not, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %sub = sub i32 %rate, %div
  %sub5 = sub i32 %rate, %best_rate.025
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub5)
  %cmp6 = icmp ult i32 %sub, %sub5
  br i1 %cmp6, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %0 = trunc i32 %indvars.iv to i8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.025, %for.body.cleanup_crit_edge ], [ %div, %if.then8 ], [ %best_rate.025, %lor.lhs.false.cleanup_crit_edge ]
  %best_m.2 = phi i8 [ %best_m.026, %for.body.cleanup_crit_edge ], [ %0, %if.then8 ], [ %best_m.026, %lor.lhs.false.cleanup_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 17
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %phy = getelementptr inbounds %struct.sun8i_phy_clk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %conv10 = zext i8 %best_m.2 to i32
  %sub11 = add nsw i32 %conv10, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 48, i32 noundef 15, i32 noundef %sub11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c", i32 164, i32 14}
!2 = !{ptr @sun8i_phy_clk_ops, !3, !"sun8i_phy_clk_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c", i32 134, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
