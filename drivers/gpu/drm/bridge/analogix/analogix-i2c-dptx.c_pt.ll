; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+anx_dp_aux_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc_anx_dp_aux_transfer\09\09\09\09"
module asm "\09.long\09__crc_anx_dp_aux_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anx_dp_aux_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22anx_dp_aux_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_anx_dp_aux_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_anx_dp_aux_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_anx_dp_aux_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_anx_dp_aux_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anx_dp_aux_transfer to i32), ptr @__kstrtab_anx_dp_aux_transfer, ptr @__kstrtabns_anx_dp_aux_transfer }, section "___ksymtab_gpl+anx_dp_aux_transfer", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timed out waiting AUX to finish\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read from AUX channel: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to wait for AUX channel (status: %02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 110, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 47, i32 5 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 60, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [55 x i8] c"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 65, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_anx_dp_aux_transfer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anx_dp_aux_transfer(ptr noundef %map_dptx, ptr nocapture noundef %msg) #0 align 64 {
entry:
  %value.i18.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %buffer1 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %do.end, label %if.end22, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end22:                                         ; preds = %entry
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp eq i32 %3, 0
  %.tr = trunc i32 %3 to i8
  %6 = shl i8 %.tr, 4
  %7 = add i8 %6, -16
  %conv30 = select i1 %cmp24, i8 0, i8 %7
  %ctrl1.0 = or i8 %5, %conv30
  %ctrl2.0 = select i1 %cmp24, i32 3, i32 1
  %cmp24.not = xor i1 %cmp24, true
  %8 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp37 = icmp eq i8 %8, 0
  %or.cond = select i1 %cmp24.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then39, label %if.end22.if.end44_crit_edge

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then39:                                        ; preds = %if.end22
  %call = tail call i32 @regmap_bulk_write(ptr noundef %map_dptx, i32 noundef 240, ptr noundef %1, i32 noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.then39.if.end44_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %if.end22.if.end44_crit_edge
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg, align 4
  %and.i = and i32 %10, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %map_dptx, i32 noundef 230, i32 noundef %and.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end44
  %and1.i = lshr i32 %10, 8
  %shr.i = and i32 %and1.i, 255
  %call2.i = tail call i32 @regmap_write(ptr noundef %map_dptx, i32 noundef 231, i32 noundef %shr.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %anx_dp_aux_address.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

anx_dp_aux_address.exit:                          ; preds = %if.end.i
  %and6.i = lshr i32 %10, 16
  %shr7.i = and i32 %and6.i, 15
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %map_dptx, i32 noundef 232, i32 noundef 15, i32 noundef %shr7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool46.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool46.not, label %if.end48, label %anx_dp_aux_address.exit.cleanup_crit_edge

anx_dp_aux_address.exit.cleanup_crit_edge:        ; preds = %anx_dp_aux_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end48:                                         ; preds = %anx_dp_aux_address.exit
  %conv49 = zext i8 %ctrl1.0 to i32
  %call50 = tail call i32 @regmap_write(ptr noundef %map_dptx, i32 noundef 229, i32 noundef %conv49) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %call.i124 = tail call i32 @regmap_update_bits_base(ptr noundef %map_dptx, i32 noundef 233, i32 noundef 3, i32 noundef %ctrl2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool56.not = icmp eq i32 %call.i124, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #3
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i, align 4, !annotation !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %12, 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i126, %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #3
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i.i, align 4, !annotation !20
  %call.i.i125 = call i32 @regmap_read(ptr noundef %map_dptx, i32 noundef 233, ptr noundef nonnull %value.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp.i.i = icmp slt i32 %call.i.i125, 0
  br i1 %cmp.i.i, label %anx_dp_aux_op_finished.exit.thread.i, label %anx_dp_aux_op_finished.exit.i

anx_dp_aux_op_finished.exit.thread.i:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #3
  br label %while.body.i

anx_dp_aux_op_finished.exit.i:                    ; preds = %while.cond.i
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #3
  br i1 %cmp1.i.i, label %anx_dp_aux_op_finished.exit.i.while.end.i_crit_edge, label %anx_dp_aux_op_finished.exit.i.while.body.i_crit_edge

anx_dp_aux_op_finished.exit.i.while.body.i_crit_edge: ; preds = %anx_dp_aux_op_finished.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

anx_dp_aux_op_finished.exit.i.while.end.i_crit_edge: ; preds = %anx_dp_aux_op_finished.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.i:                                     ; preds = %anx_dp_aux_op_finished.exit.i.while.body.i_crit_edge, %anx_dp_aux_op_finished.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %16
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5.i126

if.then.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i18.i) #3
  %17 = ptrtoint ptr %value.i18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %value.i18.i, align 4, !annotation !20
  %call.i19.i = call i32 @regmap_read(ptr noundef %map_dptx, i32 noundef 233, ptr noundef nonnull %value.i18.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp.i20.i = icmp slt i32 %call.i19.i, 0
  br i1 %cmp.i20.i, label %anx_dp_aux_op_finished.exit25.thread.i, label %anx_dp_aux_op_finished.exit25.i

anx_dp_aux_op_finished.exit25.thread.i:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i18.i) #3
  br label %if.then4.i

anx_dp_aux_op_finished.exit25.i:                  ; preds = %if.then.i
  %18 = ptrtoint ptr %value.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i18.i, align 4
  %and.i21.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %cmp1.i22.i = icmp eq i32 %and.i21.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i18.i) #3
  br i1 %cmp1.i22.i, label %anx_dp_aux_op_finished.exit25.i.while.end.i_crit_edge, label %anx_dp_aux_op_finished.exit25.i.if.then4.i_crit_edge

anx_dp_aux_op_finished.exit25.i.if.then4.i_crit_edge: ; preds = %anx_dp_aux_op_finished.exit25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4.i

anx_dp_aux_op_finished.exit25.i.while.end.i_crit_edge: ; preds = %anx_dp_aux_op_finished.exit25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.then4.i:                                       ; preds = %anx_dp_aux_op_finished.exit25.i.if.then4.i_crit_edge, %anx_dp_aux_op_finished.exit25.thread.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %anx_dp_aux_wait.exit.thread

if.end5.i126:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  br label %while.cond.i

while.end.i:                                      ; preds = %anx_dp_aux_op_finished.exit25.i.while.end.i_crit_edge, %anx_dp_aux_op_finished.exit.i.while.end.i_crit_edge
  %call6.i = call i32 @regmap_read(ptr noundef %map_dptx, i32 noundef 224, ptr noundef nonnull %status.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call6.i) #3
  br label %anx_dp_aux_wait.exit.thread

if.end9.i:                                        ; preds = %while.end.i
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %and.i127 = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %if.end62, label %if.then10.i

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %21) #3
  br label %anx_dp_aux_wait.exit.thread

anx_dp_aux_wait.exit.thread:                      ; preds = %if.then10.i, %if.then8.i, %if.then4.i
  %retval.0.i129.ph = phi i32 [ -110, %if.then4.i ], [ -110, %if.then10.i ], [ %call6.i, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  br label %cleanup

if.end62:                                         ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %22 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reply, align 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp64.not = icmp eq i32 %24, 0
  br i1 %cmp64.not, label %if.end62.if.end77_crit_edge, label %land.lhs.true66

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end77

land.lhs.true66:                                  ; preds = %if.end62
  %25 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %request, align 4
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool70.not = icmp eq i8 %27, 0
  br i1 %tobool70.not, label %land.lhs.true66.if.end77_crit_edge, label %if.then71

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end77

if.then71:                                        ; preds = %land.lhs.true66
  %call73 = call i32 @regmap_bulk_read(ptr noundef %map_dptx, i32 noundef 240, ptr noundef %1, i32 noundef %24) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then71.if.end77_crit_edge, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end77

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %land.lhs.true66.if.end77_crit_edge, %if.end62.if.end77_crit_edge
  %call.i.i130 = call i32 @regmap_update_bits_base(ptr noundef %map_dptx, i32 noundef 233, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool79.not = icmp eq i32 %call.i.i130, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end77.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %anx_dp_aux_wait.exit.thread, %if.end53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %anx_dp_aux_address.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %29, %if.end81 ], [ %call, %if.then39.cleanup_crit_edge ], [ %call.i.i, %anx_dp_aux_address.exit.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call.i124, %if.end53.cleanup_crit_edge ], [ %call73, %if.then71.cleanup_crit_edge ], [ %call.i.i130, %if.end77.cleanup_crit_edge ], [ %retval.0.i129.ph, %anx_dp_aux_wait.exit.thread ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c", i32 110, i32 6}
!2 = !{ptr @__ksymtab_anx_dp_aux_transfer, !3, !"__ksymtab_anx_dp_aux_transfer", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c", i32 165, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c", i32 47, i32 5}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c", i32 60, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c", i32 65, i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"auto-init"}
