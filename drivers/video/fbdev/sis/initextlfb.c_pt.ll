; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sis/initextlfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sis/initextlfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.SiS_Private = type { i8, i8, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [17 x i8], i8, i8, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i8], [7 x i8], [7 x i8], [7 x i8] }
%struct.SiS_Ext = type { i8, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.SiS_Ext2 = type { i16, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.SiS_VCLKData = type { i8, i8, i16 }
%struct.SiS_CRT1Table = type { [17 x i8] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }

@sisfb_mode_rate_to_dclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Could not find mode %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sisfb_mode_rate_to_dclock\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/fbdev/sis/initextlfb.c\00", [59 x i8] zeroinitializer }, align 32
@sisfb_mode_rate_to_dclock._entry_ptr = internal global ptr @sisfb_mode_rate_to_dclock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 90, i64 91]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 90, i64 91]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 90, i64 91]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [40 x i8] c"../drivers/video/fbdev/sis/initextlfb.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 56, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @sisfb_mode_rate_to_dclock._entry, ptr @sisfb_mode_rate_to_dclock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisfb_mode_rate_to_dclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisfb_mode_rate_to_dclock(ptr noundef %SiS_Pr, i8 noundef zeroext %modeno, i8 noundef zeroext %rateindex) local_unnamed_addr #0 align 64 {
entry:
  %ModeNo = alloca i16, align 2
  %ModeIdIndex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeNo) #4
  %conv = zext i8 %modeno to i16
  %0 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %ModeNo, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  %1 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ModeIdIndex, align 2
  %call = tail call zeroext i1 @SiSInitPtr(ptr noundef %SiS_Pr) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rateindex)
  %cmp.not = icmp eq i8 %rateindex, 0
  %dec = add i8 %rateindex, -1
  %spec.select = select i1 %cmp.not, i8 0, i8 %dec
  %2 = ptrtoint ptr %ModeNo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ModeNo, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 90, label %sw.bb
    i16 91, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 80, ptr %ModeNo, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 86, ptr %ModeNo, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %call7 = call zeroext i1 @SiS_SearchModeID(ptr noundef %SiS_Pr, ptr noundef nonnull %ModeNo, ptr noundef nonnull %ModeIdIndex) #4
  br i1 %call7, label %if.end11, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %ModeNo to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ModeNo, align 2
  %conv9 = zext i16 %8 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv9) #7
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %SiS_EModeIDTable = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 119
  %9 = ptrtoint ptr %SiS_EModeIDTable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %SiS_EModeIDTable, align 4
  %11 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ModeIdIndex, align 2
  %idxprom = zext i16 %12 to i32
  %REFindex = getelementptr %struct.SiS_Ext, ptr %10, i32 %idxprom, i32 8
  %13 = ptrtoint ptr %REFindex to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %REFindex, align 1
  %SiS_RefIndex = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 120
  %15 = ptrtoint ptr %SiS_RefIndex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %SiS_RefIndex, align 4
  %idxprom13 = zext i8 %14 to i32
  %arrayidx14 = getelementptr %struct.SiS_Ext2, ptr %16, i32 %idxprom13
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx14, align 2
  %19 = and i16 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %if.else32, label %if.then16

if.then16:                                        ; preds = %if.end11
  %SiS_UseWide = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 51
  %20 = ptrtoint ptr %SiS_UseWide to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %SiS_UseWide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp17 = icmp eq i32 %21, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %Ext_CRTVCLK_WIDE = getelementptr %struct.SiS_Ext2, ptr %16, i32 %idxprom13, i32 14
  br label %if.end41

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %conv24 = zext i8 %spec.select to i32
  %add = add nuw nsw i32 %idxprom13, %conv24
  %Ext_CRTVCLK_NORM = getelementptr %struct.SiS_Ext2, ptr %16, i32 %add, i32 12
  br label %if.end41

if.else32:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %conv33 = zext i8 %spec.select to i32
  %add35 = add nuw nsw i32 %idxprom13, %conv33
  %Ext_CRTVCLK = getelementptr %struct.SiS_Ext2, ptr %16, i32 %add35, i32 2
  br label %if.end41

if.end41:                                         ; preds = %if.else32, %if.else, %if.then19
  %ClockIndex.0.in.in = phi ptr [ %Ext_CRTVCLK_WIDE, %if.then19 ], [ %Ext_CRTVCLK_NORM, %if.else ], [ %Ext_CRTVCLK, %if.else32 ]
  %22 = ptrtoint ptr %ClockIndex.0.in.in to i32
  call void @__asan_load1_noabort(i32 %22)
  %ClockIndex.0.in = load i8, ptr %ClockIndex.0.in.in, align 1
  %SiS_VCLKData = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 125
  %23 = ptrtoint ptr %SiS_VCLKData to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %SiS_VCLKData, align 4
  %idxprom42 = zext i8 %ClockIndex.0.in to i32
  %CLOCK = getelementptr %struct.SiS_VCLKData, ptr %24, i32 %idxprom42, i32 2
  %25 = ptrtoint ptr %CLOCK to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %CLOCK, align 2
  %conv44 = zext i16 %26 to i32
  %mul = mul nuw nsw i32 %conv44, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end41 ], [ 65000, %do.end ], [ 65000, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeNo) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @SiSInitPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @SiS_SearchModeID(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisfb_mode_rate_to_ddata(ptr noundef %SiS_Pr, i8 noundef zeroext %modeno, i8 noundef zeroext %rateindex, ptr noundef %var) local_unnamed_addr #0 align 64 {
entry:
  %ModeNo = alloca i16, align 2
  %ModeIdIndex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeNo) #4
  %conv = zext i8 %modeno to i16
  %0 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %ModeNo, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  %1 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ModeIdIndex, align 2
  %call = tail call zeroext i1 @SiSInitPtr(ptr noundef %SiS_Pr) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rateindex)
  %cmp.not = icmp eq i8 %rateindex, 0
  %dec = add i8 %rateindex, -1
  %spec.select = select i1 %cmp.not, i8 0, i8 %dec
  %2 = ptrtoint ptr %ModeNo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ModeNo, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 90, label %sw.bb
    i16 91, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 80, ptr %ModeNo, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 86, ptr %ModeNo, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %call7 = call zeroext i1 @SiS_SearchModeID(ptr noundef %SiS_Pr, ptr noundef nonnull %ModeNo, ptr noundef nonnull %ModeIdIndex) #4
  br i1 %call7, label %if.end9, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %SiS_EModeIDTable = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 119
  %7 = ptrtoint ptr %SiS_EModeIDTable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %SiS_EModeIDTable, align 4
  %9 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ModeIdIndex, align 2
  %idxprom = zext i16 %10 to i32
  %REFindex = getelementptr %struct.SiS_Ext, ptr %8, i32 %idxprom, i32 8
  %11 = ptrtoint ptr %REFindex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %REFindex, align 1
  %conv10 = zext i8 %12 to i32
  %SiS_RefIndex = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 120
  %13 = ptrtoint ptr %SiS_RefIndex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx12 = getelementptr %struct.SiS_Ext2, ptr %14, i32 %conv10
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx12, align 2
  %17 = and i16 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.else30, label %if.then14

if.then14:                                        ; preds = %if.end9
  %SiS_UseWide = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 51
  %18 = ptrtoint ptr %SiS_UseWide to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %SiS_UseWide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp15 = icmp eq i32 %19, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %Ext_CRT1CRTC_WIDE = getelementptr %struct.SiS_Ext2, ptr %14, i32 %conv10, i32 13
  br label %if.end39

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %conv22 = zext i8 %spec.select to i32
  %add = add nuw nsw i32 %conv10, %conv22
  %Ext_CRT1CRTC_NORM = getelementptr %struct.SiS_Ext2, ptr %14, i32 %add, i32 11
  br label %if.end39

if.else30:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %conv31 = zext i8 %spec.select to i32
  %add33 = add nuw nsw i32 %conv10, %conv31
  %Ext_CRT1CRTC = getelementptr %struct.SiS_Ext2, ptr %14, i32 %add33, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.else, %if.then17
  %index.0.in.in = phi ptr [ %Ext_CRT1CRTC_WIDE, %if.then17 ], [ %Ext_CRT1CRTC_NORM, %if.else ], [ %Ext_CRT1CRTC, %if.else30 ]
  %RRTI.0 = phi i32 [ %conv10, %if.then17 ], [ %add, %if.else ], [ %add33, %if.else30 ]
  %20 = ptrtoint ptr %index.0.in.in to i32
  call void @__asan_load1_noabort(i32 %20)
  %index.0.in = load i8, ptr %index.0.in.in, align 1
  %SiS_CRT1Table = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 122
  %21 = ptrtoint ptr %SiS_CRT1Table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %SiS_CRT1Table, align 4
  %idxprom40 = zext i8 %index.0.in to i32
  %arrayidx41 = getelementptr %struct.SiS_CRT1Table, ptr %22, i32 %idxprom40
  %XRes = getelementptr %struct.SiS_Ext2, ptr %14, i32 %RRTI.0, i32 6
  %23 = ptrtoint ptr %XRes to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %XRes, align 2
  %conv46 = zext i16 %24 to i32
  %YRes = getelementptr %struct.SiS_Ext2, ptr %14, i32 %RRTI.0, i32 7
  %25 = ptrtoint ptr %YRes to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %YRes, align 2
  %conv50 = zext i16 %26 to i32
  call void @SiS_Generic_ConvertCRData(ptr noundef %SiS_Pr, ptr noundef %arrayidx41, i32 noundef %conv46, i32 noundef %conv50, ptr noundef %var, i1 noundef zeroext false) #4
  %27 = ptrtoint ptr %SiS_RefIndex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx53 = getelementptr %struct.SiS_Ext2, ptr %28, i32 %RRTI.0
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx53, align 2
  %sync61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %31 = ptrtoint ptr %sync61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sync61, align 4
  %and59 = and i32 %32, -3
  %33 = lshr i16 %30, 14
  %34 = and i16 %33, 2
  %35 = xor i16 %34, 2
  %36 = zext i16 %35 to i32
  %or.sink = or i32 %and59, %36
  store i32 %or.sink, ptr %sync61, align 4
  %37 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx65 = getelementptr %struct.SiS_Ext2, ptr %37, i32 %RRTI.0
  %38 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx65, align 2
  %sync74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %and72 = and i32 %or.sink, -2
  %40 = lshr i16 %39, 14
  %.lobit = and i16 %40, 1
  %41 = xor i16 %.lobit, 1
  %42 = zext i16 %41 to i32
  %or75.sink = or i32 %and72, %42
  %43 = ptrtoint ptr %sync74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or75.sink, ptr %sync74, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %44 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %vmode, align 4
  %45 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx79 = getelementptr %struct.SiS_Ext2, ptr %45, i32 %RRTI.0
  %46 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx79, align 2
  %48 = and i16 %47, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool83.not = icmp eq i16 %48, 0
  br i1 %tobool83.not, label %while.cond.preheader, label %if.end39.if.end112.sink.split_crit_edge

if.end39.if.end112.sink.split_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112.sink.split

while.cond.preheader:                             ; preds = %if.end39
  %49 = ptrtoint ptr %SiS_EModeIDTable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %SiS_EModeIDTable, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp90.not181 = icmp eq i8 %52, -1
  br i1 %cmp90.not181, label %while.cond.preheader.if.end112_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end112_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ModeID = getelementptr %struct.SiS_Ext2, ptr %45, i32 %RRTI.0, i32 5
  %53 = ptrtoint ptr %ModeID to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ModeID, align 2
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %while.body.lr.ph
  %55 = phi i8 [ %52, %while.body.lr.ph ], [ %59, %if.end111.while.body_crit_edge ]
  %j.0182 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end111.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %54)
  %cmp100 = icmp eq i8 %55, %54
  br i1 %cmp100, label %if.then102, label %if.end111

if.then102:                                       ; preds = %while.body
  %Ext_ModeFlag = getelementptr %struct.SiS_Ext, ptr %50, i32 %j.0182, i32 1
  %56 = ptrtoint ptr %Ext_ModeFlag to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %Ext_ModeFlag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %tobool107.not = icmp sgt i16 %57, -1
  br i1 %tobool107.not, label %if.then102.if.end112_crit_edge, label %if.then102.if.end112.sink.split_crit_edge

if.then102.if.end112.sink.split_crit_edge:        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112.sink.split

if.then102.if.end112_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.end111:                                        ; preds = %while.body
  %inc = add i32 %j.0182, 1
  %arrayidx88 = getelementptr %struct.SiS_Ext, ptr %50, i32 %inc
  %58 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx88, align 2
  %cmp90.not = icmp eq i8 %59, -1
  br i1 %cmp90.not, label %if.end111.if.end112_crit_edge, label %if.end111.while.body_crit_edge

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end111.if.end112_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.end112.sink.split:                             ; preds = %if.then102.if.end112.sink.split_crit_edge, %if.end39.if.end112.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end39.if.end112.sink.split_crit_edge ], [ 2, %if.then102.if.end112.sink.split_crit_edge ]
  %60 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %vmode, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.end111.if.end112_crit_edge, %if.then102.if.end112_crit_edge, %while.cond.preheader.if.end112_crit_edge
  %61 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vmode, align 4
  %and114 = and i32 %62, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and114)
  %cond = icmp eq i32 %and114, 2
  br i1 %cond, label %if.then123, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then123:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %63 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %upper_margin, align 4
  %shr = lshr i32 %64, 1
  store i32 %shr, ptr %upper_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %65 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lower_margin, align 4
  %shr124 = lshr i32 %66, 1
  store i32 %shr124, ptr %lower_margin, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %67 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vsync_len, align 4
  %shr125 = lshr i32 %68, 1
  store i32 %shr125, ptr %vsync_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end112.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 1, %if.end112.cleanup_crit_edge ], [ 1, %if.then123 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeNo) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SiS_Generic_ConvertCRData(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sisfb_gettotalfrommode(ptr noundef %SiS_Pr, i8 noundef zeroext %modeno, ptr nocapture noundef writeonly %htotal, ptr nocapture noundef writeonly %vtotal, i8 noundef zeroext %rateindex) local_unnamed_addr #0 align 64 {
entry:
  %ModeNo = alloca i16, align 2
  %ModeIdIndex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeNo) #4
  %conv = zext i8 %modeno to i16
  %0 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %ModeNo, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  %1 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ModeIdIndex, align 2
  %call = tail call zeroext i1 @SiSInitPtr(ptr noundef %SiS_Pr) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rateindex)
  %cmp.not = icmp eq i8 %rateindex, 0
  %dec = add i8 %rateindex, -1
  %spec.select = select i1 %cmp.not, i8 0, i8 %dec
  %2 = ptrtoint ptr %ModeNo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ModeNo, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 90, label %sw.bb
    i16 91, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 80, ptr %ModeNo, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ModeNo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 86, ptr %ModeNo, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %call7 = call zeroext i1 @SiS_SearchModeID(ptr noundef %SiS_Pr, ptr noundef nonnull %ModeNo, ptr noundef nonnull %ModeIdIndex) #4
  br i1 %call7, label %if.end9, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %SiS_EModeIDTable = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 119
  %7 = ptrtoint ptr %SiS_EModeIDTable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %SiS_EModeIDTable, align 4
  %9 = ptrtoint ptr %ModeIdIndex to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ModeIdIndex, align 2
  %idxprom = zext i16 %10 to i32
  %REFindex = getelementptr %struct.SiS_Ext, ptr %8, i32 %idxprom, i32 8
  %11 = ptrtoint ptr %REFindex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %REFindex, align 1
  %conv10 = zext i8 %12 to i32
  %SiS_RefIndex = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 120
  %13 = ptrtoint ptr %SiS_RefIndex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx12 = getelementptr %struct.SiS_Ext2, ptr %14, i32 %conv10
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx12, align 2
  %17 = and i16 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.else30, label %if.then14

if.then14:                                        ; preds = %if.end9
  %SiS_UseWide = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 51
  %18 = ptrtoint ptr %SiS_UseWide to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %SiS_UseWide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp15 = icmp eq i32 %19, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %Ext_CRT1CRTC_WIDE = getelementptr %struct.SiS_Ext2, ptr %14, i32 %conv10, i32 13
  br label %if.end39

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %conv22 = zext i8 %spec.select to i32
  %add = add nuw nsw i32 %conv10, %conv22
  %Ext_CRT1CRTC_NORM = getelementptr %struct.SiS_Ext2, ptr %14, i32 %add, i32 11
  br label %if.end39

if.else30:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %conv31 = zext i8 %spec.select to i32
  %add33 = add nuw nsw i32 %conv10, %conv31
  %Ext_CRT1CRTC = getelementptr %struct.SiS_Ext2, ptr %14, i32 %add33, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.else, %if.then17
  %CRT1Index.0.in.in = phi ptr [ %Ext_CRT1CRTC_WIDE, %if.then17 ], [ %Ext_CRT1CRTC_NORM, %if.else ], [ %Ext_CRT1CRTC, %if.else30 ]
  %RRTI.0 = phi i32 [ %conv10, %if.then17 ], [ %add, %if.else ], [ %add33, %if.else30 ]
  %20 = ptrtoint ptr %CRT1Index.0.in.in to i32
  call void @__asan_load1_noabort(i32 %20)
  %CRT1Index.0.in = load i8, ptr %CRT1Index.0.in.in, align 1
  %SiS_CRT1Table = getelementptr inbounds %struct.SiS_Private, ptr %SiS_Pr, i32 0, i32 122
  %21 = ptrtoint ptr %SiS_CRT1Table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %SiS_CRT1Table, align 4
  %idxprom40 = zext i8 %CRT1Index.0.in to i32
  %arrayidx41 = getelementptr %struct.SiS_CRT1Table, ptr %22, i32 %idxprom40
  %arrayidx42 = getelementptr [17 x i8], ptr %arrayidx41, i32 0, i32 14
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx42, align 1
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx41, align 1
  %conv48 = zext i8 %26 to i32
  %27 = and i8 %24, 3
  %conv53 = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %conv53, 11
  %29 = shl nuw nsw i32 %conv48, 3
  %add54 = add nuw nsw i32 %29, 40
  %mul = add nuw nsw i32 %add54, %28
  %30 = ptrtoint ptr %htotal to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %htotal, align 4
  %31 = load ptr, ptr %SiS_CRT1Table, align 4
  %arrayidx57 = getelementptr %struct.SiS_CRT1Table, ptr %31, i32 %idxprom40
  %arrayidx59 = getelementptr [17 x i8], ptr %arrayidx57, i32 0, i32 13
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx59, align 1
  %arrayidx64 = getelementptr [17 x i8], ptr %arrayidx57, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx64, align 1
  %arrayidx69 = getelementptr [17 x i8], ptr %arrayidx57, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %35 to i32
  %38 = and i8 %37, 1
  %conv75 = zext i8 %38 to i32
  %shl76 = shl nuw nsw i32 %conv75, 8
  %39 = and i8 %37, 32
  %conv81 = zext i8 %39 to i32
  %shl82 = shl nuw nsw i32 %conv81, 4
  %40 = and i8 %33, 1
  %conv87 = zext i8 %40 to i32
  %shl88 = shl nuw nsw i32 %conv87, 10
  %or77 = add nuw nsw i32 %conv70, 2
  %or83 = or i32 %or77, %shl88
  %or89 = add nuw nsw i32 %or83, %shl76
  %add90 = add nuw nsw i32 %or89, %shl82
  %41 = ptrtoint ptr %vtotal to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add90, ptr %vtotal, align 4
  %42 = ptrtoint ptr %SiS_RefIndex to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %SiS_RefIndex, align 4
  %arrayidx93 = getelementptr %struct.SiS_Ext2, ptr %43, i32 %RRTI.0
  %44 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx93, align 2
  %46 = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool97.not = icmp eq i16 %46, 0
  br i1 %tobool97.not, label %if.end39.cleanup_crit_edge, label %if.then98

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then98:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %mul99 = shl nuw nsw i32 %add90, 1
  %47 = ptrtoint ptr %vtotal to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul99, ptr %vtotal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.epilog.cleanup_crit_edge ], [ true, %if.then98 ], [ true, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeIdIndex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ModeNo) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sis/initextlfb.c", i32 56, i32 8}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sisfb_mode_rate_to_dclock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sisfb_mode_rate_to_dclock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
