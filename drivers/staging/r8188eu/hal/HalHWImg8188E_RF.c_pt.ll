; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@Array_RadioA_1T_8188E = internal constant { [198 x i32], [200 x i8] } { [198 x i32] [i32 0, i32 196608, i32 8, i32 540672, i32 24, i32 1031, i32 25, i32 18, i32 30, i32 524297, i32 31, i32 2176, i32 47, i32 106592, i32 63, i32 0, i32 66, i32 24768, i32 87, i32 851968, i32 88, i32 778624, i32 103, i32 5458, i32 131, i32 0, i32 176, i32 1046780, i32 177, i32 345088, i32 178, i32 838681, i32 180, i32 274435, i32 182, i32 300350, i32 183, i32 116504, i32 184, i32 24831, i32 185, i32 524289, i32 186, i32 262144, i32 187, i32 1024, i32 191, i32 786432, i32 194, i32 9216, i32 195, i32 9, i32 196, i32 265361, i32 197, i32 629145, i32 198, i32 163, i32 199, i32 559136, i32 200, i32 486406, i32 201, i32 0, i32 202, i32 524288, i32 223, i32 384, i32 239, i32 416, i32 81, i32 438909, i32 -15793121, i32 43981, i32 82, i32 517341, i32 -842150451, i32 52685, i32 82, i32 517277, i32 -15793121, i32 57005, i32 83, i32 115, i32 86, i32 335859, i32 53, i32 134, i32 53, i32 390, i32 53, i32 646, i32 54, i32 7205, i32 54, i32 39973, i32 54, i32 72741, i32 54, i32 105509, i32 182, i32 296248, i32 24, i32 3079, i32 90, i32 310528, i32 25, i32 473552, i32 52, i32 44531, i32 52, i32 40432, i32 52, i32 36333, i32 52, i32 32234, i32 52, i32 28135, i32 52, i32 21742, i32 52, i32 17643, i32 52, i32 13544, i32 52, i32 9323, i32 52, i32 5224, i32 52, i32 109, i32 0, i32 196953, i32 132, i32 426496, i32 134, i32 206, i32 135, i32 297472, i32 142, i32 415040, i32 143, i32 557056, i32 239, i32 8352, i32 59, i32 983728, i32 59, i32 980912, i32 59, i32 872368, i32 59, i32 847968, i32 59, i32 721040, i32 59, i32 655488, i32 59, i32 589952, i32 59, i32 587648, i32 59, i32 467632, i32 59, i32 456624, i32 59, i32 348080, i32 59, i32 323680, i32 59, i32 196752, i32 59, i32 131200, i32 59, i32 65664, i32 59, i32 63360, i32 239, i32 160, i32 0, i32 65881, i32 24, i32 62471, i32 4094, i32 0, i32 4094, i32 0, i32 31, i32 524291, i32 4094, i32 0, i32 4094, i32 0, i32 30, i32 1, i32 31, i32 524288, i32 0, i32 212576], [200 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_RadioA_1T_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016rtw_IOL_accquire_xmit_frame failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ODM_ReadAndConfig_RadioA_1T_8188E\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c\00", [49 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr = internal global ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry, section ".printk_index", align 4
@ODM_ReadAndConfig_RadioA_1T_8188E._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016~~~ IOL Config %s Failed !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr.5 = internal global ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 4094]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 4094]
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"Array_RadioA_1T_8188E\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 31, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 157, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [50 x i8] c"../drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 236, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry, ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry.3, ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr, ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr.5, ptr @Array_RadioA_1T_8188E, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_RadioA_1T_8188E to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ReadAndConfig_RadioA_1T_8188E(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %call = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %1) #3
  br i1 %call, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @rtw_IOL_accquire_xmit_frame(ptr noundef %1) #3
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup192

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %pxmit_frame.0 = phi ptr [ %call4, %if.then.if.end8_crit_edge ], [ null, %entry.if.end8_crit_edge ]
  br label %for.body.outer

for.body.outer:                                   ; preds = %cleanup.for.body.outer_crit_edge, %if.end8
  %bndy_cnt.0306.ph = phi i8 [ %bndy_cnt.7, %cleanup.for.body.outer_crit_edge ], [ 1, %if.end8 ]
  %i.0304.ph = phi i32 [ %add177, %cleanup.for.body.outer_crit_edge ], [ 0, %if.end8 ]
  br label %for.body

for.body:                                         ; preds = %cleanup.thread.for.body_crit_edge, %for.body.outer
  %i.0304 = phi i32 [ %add177314, %cleanup.thread.for.body_crit_edge ], [ %i.0304.ph, %for.body.outer ]
  %arrayidx = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %i.0304
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add9 = add nuw nsw i32 %i.0304, 1
  %arrayidx10 = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %add9
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp11 = icmp ult i32 %3, -842150451
  br i1 %cmp11, label %if.then12, label %if.else51

if.then12:                                        ; preds = %for.body
  br i1 %call, label %if.then14, label %cleanup.thread

if.then14:                                        ; preds = %if.then12
  %call15 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15)
  %tobool16.not = icmp ne i8 %call15, 0
  %inc = zext i1 %tobool16.not to i8
  %spec.select = add i8 %bndy_cnt.0306.ph, %inc
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else41 [
    i32 4094, label %if.then20
    i32 253, label %if.then23
    i32 252, label %if.then27
    i32 251, label %if.then31
    i32 250, label %if.then35
    i32 249, label %if.then39
  ]

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call21 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %cleanup

if.then23:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call24 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %cleanup

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call28 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %cleanup

if.then31:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call32 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %cleanup

if.then35:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %cleanup

if.then39:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %call40 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %cleanup

if.else41:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %3 to i16
  %call42 = tail call i32 @_rtw_IOL_append_WRF_cmd(ptr noundef %pxmit_frame.0, i8 noundef zeroext 0, i16 noundef zeroext %conv, i32 noundef %5, i32 noundef 1048575) #3
  br label %cleanup

if.else51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp.i = icmp eq i32 %3, -842150451
  br i1 %cmp.i, label %if.else51.while.cond87.preheader_crit_edge, label %if.end.i

if.else51.while.cond87.preheader_crit_edge:       ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond87.preheader

while.cond87.preheader:                           ; preds = %if.end9.i.while.cond87.preheader_crit_edge, %if.else51.while.cond87.preheader_crit_edge
  br label %while.cond87

if.end.i:                                         ; preds = %if.else51
  %7 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp ne i32 %7, 0
  %8 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %8)
  %cmp7.not.i = icmp eq i32 %8, 1792
  %or.cond.i = or i1 %cmp6.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %if.end.i
  %9 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.i = icmp ne i32 %9, 0
  %10 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %10)
  %cmp15.not.i = icmp eq i32 %10, 983040
  %or.cond1.i = or i1 %cmp13.i, %cmp15.not.i
  br i1 %or.cond1.i, label %if.end9.i.while.cond87.preheader_crit_edge, label %if.end9.i.while.cond.preheader_crit_edge

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end9.i.while.cond87.preheader_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond87.preheader

while.cond.preheader:                             ; preds = %if.end9.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add58.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.0304, %while.cond.preheader ]
  %add58.pn = add nuw nsw i32 %add58.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %add58.pn
  %11 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %12 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.cleanup_crit_edge
    i32 52719, label %while.cond.cleanup_crit_edge372
    i32 52685, label %while.cond.cleanup_crit_edge373
  ]

while.cond.cleanup_crit_edge373:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge372:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nuw nsw i32 %add58.pn.in, 2
  %cmp69 = icmp ult i32 %add58.pn.in, 194
  br i1 %cmp69, label %land.rhs.while.cond_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.cond87:                                     ; preds = %while.cond87.backedge, %while.cond87.preheader
  %bndy_cnt.3 = phi i8 [ %bndy_cnt.0306.ph, %while.cond87.preheader ], [ %bndy_cnt.3.be, %while.cond87.backedge ]
  %add83.pn.in = phi i32 [ %i.0304, %while.cond87.preheader ], [ %i.2, %while.cond87.backedge ]
  %i.2 = add nuw nsw i32 %add83.pn.in, 2
  %add83.pn = add nuw nsw i32 %add83.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %add83.pn
  %13 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %i.2
  %14 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %15 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %v2.1, label %land.rhs96 [
    i32 57005, label %while.cond87.while.end156_crit_edge
    i32 52719, label %while.cond87.while.end156_crit_edge374
    i32 52685, label %while.cond87.while.end156_crit_edge375
  ]

while.cond87.while.end156_crit_edge375:           ; preds = %while.cond87
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end156

while.cond87.while.end156_crit_edge374:           ; preds = %while.cond87
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end156

while.cond87.while.end156_crit_edge:              ; preds = %while.cond87
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end156

land.rhs96:                                       ; preds = %while.cond87
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %add83.pn.in)
  %cmp98 = icmp ult i32 %add83.pn.in, 194
  br i1 %cmp98, label %while.body101, label %land.rhs96.cleanup_crit_edge

land.rhs96.cleanup_crit_edge:                     ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body101:                                    ; preds = %land.rhs96
  br i1 %call, label %if.then103, label %if.else147

if.then103:                                       ; preds = %while.body101
  %call104 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call104)
  %tobool105.not = icmp ne i8 %call104, 0
  %inc107 = zext i1 %tobool105.not to i8
  %spec.select298 = add i8 %bndy_cnt.3, %inc107
  %16 = zext i32 %v1.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %v1.0, label %if.else138 [
    i32 4094, label %if.then111
    i32 253, label %if.then116
    i32 252, label %if.then121
    i32 251, label %if.then126
    i32 250, label %if.then131
    i32 249, label %if.then136
  ]

if.then111:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call112 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %while.cond87.backedge

if.then116:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call117 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %while.cond87.backedge

if.then121:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call122 = tail call i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %while.cond87.backedge

if.then126:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call127 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 50) #3
  br label %while.cond87.backedge

if.then131:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call132 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 5) #3
  br label %while.cond87.backedge

if.then136:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %call137 = tail call i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext 1) #3
  br label %while.cond87.backedge

if.else138:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #5
  %conv139 = trunc i32 %v1.0 to i16
  %call140 = tail call i32 @_rtw_IOL_append_WRF_cmd(ptr noundef %pxmit_frame.0, i8 noundef zeroext 0, i16 noundef zeroext %conv139, i32 noundef %v2.1, i32 noundef 1048575) #3
  br label %while.cond87.backedge

if.else147:                                       ; preds = %while.body101
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_ConfigRF_RadioA_8188E(ptr noundef %pDM_Odm, i32 noundef %v1.0, i32 noundef %v2.1) #3
  br label %while.cond87.backedge

while.cond87.backedge:                            ; preds = %if.else147, %if.else138, %if.then136, %if.then131, %if.then126, %if.then121, %if.then116, %if.then111
  %bndy_cnt.3.be = phi i8 [ %spec.select298, %if.then111 ], [ %spec.select298, %if.then116 ], [ %spec.select298, %if.then121 ], [ %spec.select298, %if.then126 ], [ %spec.select298, %if.then131 ], [ %spec.select298, %if.then136 ], [ %spec.select298, %if.else138 ], [ %bndy_cnt.3, %if.else147 ]
  br label %while.cond87

while.end156:                                     ; preds = %while.cond87.while.end156_crit_edge, %while.cond87.while.end156_crit_edge374, %while.cond87.while.end156_crit_edge375
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp158.not300 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %add83.pn.in)
  %cmp162301 = icmp ult i32 %add83.pn.in, 194
  %or.cond302 = select i1 %cmp158.not300, i1 %cmp162301, i1 false
  br i1 %or.cond302, label %while.end156.do.body166_crit_edge, label %while.end156.cleanup_crit_edge

while.end156.cleanup_crit_edge:                   ; preds = %while.end156
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.end156.do.body166_crit_edge:                ; preds = %while.end156
  br label %do.body166

do.body166:                                       ; preds = %do.body166.do.body166_crit_edge, %while.end156.do.body166_crit_edge
  %i.3303 = phi i32 [ %add167, %do.body166.do.body166_crit_edge ], [ %i.2, %while.end156.do.body166_crit_edge ]
  %add167 = add nuw nsw i32 %i.3303, 2
  %add169 = add nuw nsw i32 %i.3303, 3
  %arrayidx170 = getelementptr i32, ptr @Array_RadioA_1T_8188E, i32 %add169
  %17 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %18)
  %cmp158.not = icmp ne i32 %18, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %i.3303)
  %cmp162 = icmp ult i32 %i.3303, 194
  %or.cond = select i1 %cmp158.not, i1 %cmp162, i1 false
  br i1 %or.cond, label %do.body166.do.body166_crit_edge, label %do.body166.cleanup_crit_edge

do.body166.cleanup_crit_edge:                     ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body166.do.body166_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body166

cleanup:                                          ; preds = %do.body166.cleanup_crit_edge, %while.end156.cleanup_crit_edge, %land.rhs96.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.cleanup_crit_edge372, %while.cond.cleanup_crit_edge373, %if.else41, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then20
  %i.5 = phi i32 [ %i.0304, %if.then20 ], [ %i.0304, %if.then27 ], [ %i.0304, %if.then35 ], [ %i.0304, %if.else41 ], [ %i.0304, %if.then39 ], [ %i.0304, %if.then31 ], [ %i.0304, %if.then23 ], [ %i.2, %while.end156.cleanup_crit_edge ], [ %add167, %do.body166.cleanup_crit_edge ], [ %i.2, %land.rhs96.cleanup_crit_edge ], [ %add58.pn.in, %land.rhs.cleanup_crit_edge ], [ %add58.pn.in, %while.cond.cleanup_crit_edge ], [ %add58.pn.in, %while.cond.cleanup_crit_edge372 ], [ %add58.pn.in, %while.cond.cleanup_crit_edge373 ]
  %bndy_cnt.7 = phi i8 [ %spec.select, %if.then20 ], [ %spec.select, %if.then27 ], [ %spec.select, %if.then35 ], [ %spec.select, %if.else41 ], [ %spec.select, %if.then39 ], [ %spec.select, %if.then31 ], [ %spec.select, %if.then23 ], [ %bndy_cnt.3, %while.end156.cleanup_crit_edge ], [ %bndy_cnt.3, %do.body166.cleanup_crit_edge ], [ %bndy_cnt.3, %land.rhs96.cleanup_crit_edge ], [ %bndy_cnt.0306.ph, %land.rhs.cleanup_crit_edge ], [ %bndy_cnt.0306.ph, %while.cond.cleanup_crit_edge ], [ %bndy_cnt.0306.ph, %while.cond.cleanup_crit_edge372 ], [ %bndy_cnt.0306.ph, %while.cond.cleanup_crit_edge373 ]
  %add177 = add i32 %i.5, 2
  %cmp = icmp ult i32 %add177, 198
  br i1 %cmp, label %cleanup.for.body.outer_crit_edge, label %for.end

cleanup.for.body.outer_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer

cleanup.thread:                                   ; preds = %if.then12
  tail call void @odm_ConfigRF_RadioA_8188E(ptr noundef %pDM_Odm, i32 noundef %3, i32 noundef %5) #3
  %add177314 = add i32 %i.0304, 2
  %cmp315 = icmp ult i32 %add177314, 198
  br i1 %cmp315, label %cleanup.thread.for.body_crit_edge, label %cleanup.thread.cleanup192_crit_edge

cleanup.thread.cleanup192_crit_edge:              ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup192

cleanup.thread.for.body_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %call, label %if.then179, label %for.end.cleanup192_crit_edge

for.end.cleanup192_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup192

if.then179:                                       ; preds = %for.end
  %19 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pDM_Odm, align 8
  %conv181 = zext i8 %bndy_cnt.7 to i32
  %call182 = tail call i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef %20, ptr noundef %pxmit_frame.0, i32 noundef 1000, i32 noundef %conv181) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then184, label %if.then179.cleanup192_crit_edge

if.then179.cleanup192_crit_edge:                  ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup192

if.then184:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #5
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %cleanup192

cleanup192:                                       ; preds = %if.then184, %if.then179.cleanup192_crit_edge, %for.end.cleanup192_crit_edge, %cleanup.thread.cleanup192_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then179.cleanup192_crit_edge ], [ 1, %if.then184 ], [ 0, %for.end.cleanup192_crit_edge ], [ 0, %cleanup.thread.cleanup192_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_IOL_applied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_IOL_accquire_xmit_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_IOL_append_DELAY_MS_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_IOL_append_DELAY_US_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_IOL_append_WRF_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigRF_RadioA_8188E(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c", i32 157, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c", i32 236, i32 4}
!8 = !{ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ODM_ReadAndConfig_RadioA_1T_8188E._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @Array_RadioA_1T_8188E, !11, !"Array_RadioA_1T_8188E", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_RF.c", i32 31, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
