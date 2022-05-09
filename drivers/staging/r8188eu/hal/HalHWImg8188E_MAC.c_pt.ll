; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@array_MAC_REG_8188E = internal constant { [180 x i32], [176 x i8] } { [180 x i32] [i32 38, i32 65, i32 39, i32 53, i32 1064, i32 10, i32 1065, i32 16, i32 1072, i32 0, i32 1073, i32 1, i32 1074, i32 2, i32 1075, i32 4, i32 1076, i32 5, i32 1077, i32 6, i32 1078, i32 7, i32 1079, i32 8, i32 1080, i32 0, i32 1081, i32 0, i32 1082, i32 1, i32 1083, i32 2, i32 1084, i32 4, i32 1085, i32 5, i32 1086, i32 6, i32 1087, i32 7, i32 1088, i32 93, i32 1089, i32 1, i32 1090, i32 0, i32 1092, i32 21, i32 1093, i32 240, i32 1094, i32 15, i32 1095, i32 0, i32 1112, i32 65, i32 1113, i32 168, i32 1114, i32 114, i32 1115, i32 185, i32 1120, i32 102, i32 1121, i32 102, i32 1152, i32 8, i32 1224, i32 255, i32 1225, i32 8, i32 1228, i32 255, i32 1229, i32 255, i32 1230, i32 1, i32 1235, i32 1, i32 1280, i32 38, i32 1281, i32 162, i32 1282, i32 47, i32 1283, i32 0, i32 1284, i32 40, i32 1285, i32 163, i32 1286, i32 94, i32 1287, i32 0, i32 1288, i32 43, i32 1289, i32 164, i32 1290, i32 94, i32 1291, i32 0, i32 1292, i32 79, i32 1293, i32 164, i32 1294, i32 0, i32 1295, i32 0, i32 1298, i32 28, i32 1300, i32 10, i32 1302, i32 10, i32 1317, i32 79, i32 1360, i32 16, i32 1361, i32 16, i32 1369, i32 2, i32 1373, i32 255, i32 1541, i32 48, i32 1544, i32 14, i32 1545, i32 42, i32 1568, i32 255, i32 1569, i32 255, i32 1570, i32 255, i32 1571, i32 255, i32 1572, i32 255, i32 1573, i32 255, i32 1574, i32 255, i32 1575, i32 255, i32 1618, i32 32, i32 1596, i32 10, i32 1597, i32 10, i32 1598, i32 14, i32 1599, i32 14, i32 1600, i32 64, i32 1646, i32 5, i32 1792, i32 33, i32 1793, i32 67, i32 1794, i32 101, i32 1795, i32 135, i32 1800, i32 33, i32 1801, i32 67, i32 1802, i32 101, i32 1803, i32 135], [176 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_MAC_REG_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016rtw_IOL_accquire_xmit_frame failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ODM_ReadAndConfig_MAC_REG_8188E\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c\00", [48 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr = internal global ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry, section ".printk_index", align 4
@ODM_ReadAndConfig_MAC_REG_8188E._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016~~~ MAC IOL_exec_cmds Failed !!!\0A\00", [60 x i8] zeroinitializer }, align 32
@ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr.5 = internal global ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"array_MAC_REG_8188E\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 36, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 152, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [51 x i8] c"../drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 203, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry, ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry.3, ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr, ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr.5, ptr @array_MAC_REG_8188E, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_MAC_REG_8188E to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ReadAndConfig_MAC_REG_8188E(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_odm, align 8
  %call = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %1) #3
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @rtw_IOL_accquire_xmit_frame(ptr noundef %1) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup129.sink.split_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then.cleanup129.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129.sink.split

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pxmit_frame.0 = phi ptr [ %call3, %if.then.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.body.outer.backedge, %if.end7
  %bndy_cnt.0219.ph = phi i8 [ 1, %if.end7 ], [ %bndy_cnt.0219.ph.be, %for.body.outer.backedge ]
  %i.0217.ph = phi i32 [ 0, %if.end7 ], [ %i.0217.ph.be, %for.body.outer.backedge ]
  br label %for.body

for.body:                                         ; preds = %cleanup.thread.for.body_crit_edge, %for.body.outer
  %i.0217 = phi i32 [ %add114227, %cleanup.thread.for.body_crit_edge ], [ %i.0217.ph, %for.body.outer ]
  %arrayidx = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %i.0217
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add8 = add nuw nsw i32 %i.0217, 1
  %arrayidx9 = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %add8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp10 = icmp ult i32 %3, -842150451
  br i1 %cmp10, label %if.then11, label %if.else22

if.then11:                                        ; preds = %for.body
  br i1 %call, label %cleanup.thread231, label %cleanup.thread

if.else22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp.i = icmp eq i32 %3, -842150451
  br i1 %cmp.i, label %if.else22.while.cond58.preheader_crit_edge, label %if.end.i

if.else22.while.cond58.preheader_crit_edge:       ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond58.preheader

while.cond58.preheader:                           ; preds = %if.end16.i.while.cond58.preheader_crit_edge, %if.else22.while.cond58.preheader_crit_edge
  br label %while.cond58.outer

if.end.i:                                         ; preds = %if.else22
  %6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.i = icmp ne i32 %6, 0
  %7 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %7)
  %cmp14.not.i = icmp eq i32 %7, 1792
  %or.cond.i = or i1 %cmp12.i, %cmp14.not.i
  br i1 %or.cond.i, label %if.end16.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end16.i:                                       ; preds = %if.end.i
  %8 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20.i = icmp ne i32 %8, 0
  %9 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %9)
  %cmp22.not.i = icmp eq i32 %9, 983040
  %or.cond1.i = or i1 %cmp20.i, %cmp22.not.i
  br i1 %or.cond1.i, label %if.end16.i.while.cond58.preheader_crit_edge, label %if.end16.i.while.cond.preheader_crit_edge

if.end16.i.while.cond.preheader_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end16.i.while.cond58.preheader_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond58.preheader

while.cond.preheader:                             ; preds = %if.end16.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add29.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.0217, %while.cond.preheader ]
  %add29.pn = add nuw nsw i32 %add29.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %add29.pn
  %10 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %11 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.cleanup_crit_edge
    i32 52719, label %while.cond.cleanup_crit_edge303
    i32 52685, label %while.cond.cleanup_crit_edge304
  ]

while.cond.cleanup_crit_edge304:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge303:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nuw nsw i32 %add29.pn.in, 2
  %cmp40 = icmp ult i32 %add29.pn.in, 176
  br i1 %cmp40, label %land.rhs.while.cond_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.cond58:                                     ; preds = %if.else83, %while.cond58.outer
  %add54.pn.in = phi i32 [ %i.2, %if.else83 ], [ %add54.pn.in.ph, %while.cond58.outer ]
  %i.2 = add nuw nsw i32 %add54.pn.in, 2
  %add54.pn = add nuw nsw i32 %add54.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %add54.pn
  %12 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %i.2
  %13 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %14 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %v2.1, label %land.rhs67 [
    i32 57005, label %while.cond58.while.end93_crit_edge
    i32 52719, label %while.cond58.while.end93_crit_edge305
    i32 52685, label %while.cond58.while.end93_crit_edge306
  ]

while.cond58.while.end93_crit_edge306:            ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end93

while.cond58.while.end93_crit_edge305:            ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end93

while.cond58.while.end93_crit_edge:               ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end93

land.rhs67:                                       ; preds = %while.cond58
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %add54.pn.in)
  %cmp69 = icmp ult i32 %add54.pn.in, 176
  br i1 %cmp69, label %while.body72, label %land.rhs67.cleanup_crit_edge

land.rhs67.cleanup_crit_edge:                     ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body72:                                     ; preds = %land.rhs67
  br i1 %call, label %if.then74, label %if.else83

if.then74:                                        ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #5
  %call75 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call75)
  %tobool76.not = icmp ne i8 %call75, 0
  %inc78 = zext i1 %tobool76.not to i8
  %spec.select211 = add i8 %bndy_cnt.3.ph, %inc78
  %conv80 = trunc i32 %v1.0 to i16
  %conv81 = trunc i32 %v2.1 to i8
  %call82 = tail call i32 @_rtw_IOL_append_WB_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv80, i8 noundef zeroext %conv81, i8 noundef zeroext -1) #3
  br label %while.cond58.outer

while.cond58.outer:                               ; preds = %if.then74, %while.cond58.preheader
  %bndy_cnt.3.ph = phi i8 [ %bndy_cnt.0219.ph, %while.cond58.preheader ], [ %spec.select211, %if.then74 ]
  %add54.pn.in.ph = phi i32 [ %i.0217, %while.cond58.preheader ], [ %i.2, %if.then74 ]
  br label %while.cond58

if.else83:                                        ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #5
  %conv84 = trunc i32 %v2.1 to i8
  tail call void @odm_ConfigMAC_8188E(ptr noundef %dm_odm, i32 noundef %v1.0, i8 noundef zeroext %conv84) #3
  br label %while.cond58

while.end93:                                      ; preds = %while.cond58.while.end93_crit_edge, %while.cond58.while.end93_crit_edge305, %while.cond58.while.end93_crit_edge306
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp95.not213 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %add54.pn.in)
  %cmp99214 = icmp ult i32 %add54.pn.in, 176
  %or.cond215 = select i1 %cmp95.not213, i1 %cmp99214, i1 false
  br i1 %or.cond215, label %while.end93.do.body103_crit_edge, label %while.end93.cleanup_crit_edge

while.end93.cleanup_crit_edge:                    ; preds = %while.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.end93.do.body103_crit_edge:                 ; preds = %while.end93
  br label %do.body103

do.body103:                                       ; preds = %do.body103.do.body103_crit_edge, %while.end93.do.body103_crit_edge
  %i.3216 = phi i32 [ %add104, %do.body103.do.body103_crit_edge ], [ %i.2, %while.end93.do.body103_crit_edge ]
  %add104 = add nuw nsw i32 %i.3216, 2
  %add106 = add nuw nsw i32 %i.3216, 3
  %arrayidx107 = getelementptr i32, ptr @array_MAC_REG_8188E, i32 %add106
  %15 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %16)
  %cmp95.not = icmp ne i32 %16, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %i.3216)
  %cmp99 = icmp ult i32 %i.3216, 176
  %or.cond = select i1 %cmp95.not, i1 %cmp99, i1 false
  br i1 %or.cond, label %do.body103.do.body103_crit_edge, label %do.body103.cleanup_crit_edge

do.body103.cleanup_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body103.do.body103_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body103

cleanup:                                          ; preds = %do.body103.cleanup_crit_edge, %while.end93.cleanup_crit_edge, %land.rhs67.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.cleanup_crit_edge303, %while.cond.cleanup_crit_edge304
  %i.5 = phi i32 [ %i.2, %while.end93.cleanup_crit_edge ], [ %add104, %do.body103.cleanup_crit_edge ], [ %i.2, %land.rhs67.cleanup_crit_edge ], [ %add29.pn.in, %land.rhs.cleanup_crit_edge ], [ %add29.pn.in, %while.cond.cleanup_crit_edge ], [ %add29.pn.in, %while.cond.cleanup_crit_edge303 ], [ %add29.pn.in, %while.cond.cleanup_crit_edge304 ]
  %bndy_cnt.7 = phi i8 [ %bndy_cnt.3.ph, %while.end93.cleanup_crit_edge ], [ %bndy_cnt.3.ph, %do.body103.cleanup_crit_edge ], [ %bndy_cnt.3.ph, %land.rhs67.cleanup_crit_edge ], [ %bndy_cnt.0219.ph, %land.rhs.cleanup_crit_edge ], [ %bndy_cnt.0219.ph, %while.cond.cleanup_crit_edge ], [ %bndy_cnt.0219.ph, %while.cond.cleanup_crit_edge303 ], [ %bndy_cnt.0219.ph, %while.cond.cleanup_crit_edge304 ]
  %add114 = add i32 %i.5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %add114)
  %cmp = icmp ult i32 %add114, 180
  br i1 %cmp, label %cleanup.for.body.outer.backedge_crit_edge, label %for.end

cleanup.for.body.outer.backedge_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer.backedge

for.body.outer.backedge:                          ; preds = %cleanup.thread231.for.body.outer.backedge_crit_edge, %cleanup.for.body.outer.backedge_crit_edge
  %bndy_cnt.0219.ph.be = phi i8 [ %spec.select, %cleanup.thread231.for.body.outer.backedge_crit_edge ], [ %bndy_cnt.7, %cleanup.for.body.outer.backedge_crit_edge ]
  %i.0217.ph.be = phi i32 [ %add114234, %cleanup.thread231.for.body.outer.backedge_crit_edge ], [ %add114, %cleanup.for.body.outer.backedge_crit_edge ]
  br label %for.body.outer

cleanup.thread231:                                ; preds = %if.then11
  %call14 = tail call zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr noundef %pxmit_frame.0) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool15.not = icmp ne i8 %call14, 0
  %inc = zext i1 %tobool15.not to i8
  %spec.select = add i8 %bndy_cnt.0219.ph, %inc
  %conv = trunc i32 %3 to i16
  %conv18 = trunc i32 %5 to i8
  %call19 = tail call i32 @_rtw_IOL_append_WB_cmd(ptr noundef %pxmit_frame.0, i16 noundef zeroext %conv, i8 noundef zeroext %conv18, i8 noundef zeroext -1) #3
  %add114234 = add i32 %i.0217, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %add114234)
  %cmp235 = icmp ult i32 %add114234, 180
  br i1 %cmp235, label %cleanup.thread231.for.body.outer.backedge_crit_edge, label %cleanup.thread231.if.then116_crit_edge

cleanup.thread231.if.then116_crit_edge:           ; preds = %cleanup.thread231
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then116

cleanup.thread231.for.body.outer.backedge_crit_edge: ; preds = %cleanup.thread231
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer.backedge

cleanup.thread:                                   ; preds = %if.then11
  %conv20 = trunc i32 %5 to i8
  tail call void @odm_ConfigMAC_8188E(ptr noundef %dm_odm, i32 noundef %3, i8 noundef zeroext %conv20) #3
  %add114227 = add i32 %i.0217, 2
  %cmp228 = icmp ult i32 %add114227, 180
  br i1 %cmp228, label %cleanup.thread.for.body_crit_edge, label %cleanup.thread.cleanup129_crit_edge

cleanup.thread.cleanup129_crit_edge:              ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129

cleanup.thread.for.body_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %call, label %for.end.if.then116_crit_edge, label %for.end.cleanup129_crit_edge

for.end.cleanup129_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129

for.end.if.then116_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then116

if.then116:                                       ; preds = %for.end.if.then116_crit_edge, %cleanup.thread231.if.then116_crit_edge
  %bndy_cnt.7229238 = phi i8 [ %bndy_cnt.7, %for.end.if.then116_crit_edge ], [ %spec.select, %cleanup.thread231.if.then116_crit_edge ]
  %17 = ptrtoint ptr %dm_odm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dm_odm, align 8
  %conv118 = zext i8 %bndy_cnt.7229238 to i32
  %call119 = tail call i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef %18, ptr noundef %pxmit_frame.0, i32 noundef 1000, i32 noundef %conv118) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then116.cleanup129.sink.split_crit_edge, label %if.then116.cleanup129_crit_edge

if.then116.cleanup129_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129

if.then116.cleanup129.sink.split_crit_edge:       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129.sink.split

cleanup129.sink.split:                            ; preds = %if.then116.cleanup129.sink.split_crit_edge, %if.then.cleanup129.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %if.then.cleanup129.sink.split_crit_edge ], [ @.str.4, %if.then116.cleanup129.sink.split_crit_edge ]
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #6
  br label %cleanup129

cleanup129:                                       ; preds = %cleanup129.sink.split, %if.then116.cleanup129_crit_edge, %for.end.cleanup129_crit_edge, %cleanup.thread.cleanup129_crit_edge
  %retval.0 = phi i32 [ 0, %if.then116.cleanup129_crit_edge ], [ 0, %for.end.cleanup129_crit_edge ], [ 1, %cleanup129.sink.split ], [ 0, %cleanup.thread.cleanup129_crit_edge ]
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
declare dso_local i32 @_rtw_IOL_append_WB_cmd(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_ConfigMAC_8188E(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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
!1 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c", i32 152, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c", i32 203, i32 4}
!8 = !{ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ODM_ReadAndConfig_MAC_REG_8188E._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @array_MAC_REG_8188E, !11, !"array_MAC_REG_8188E", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/HalHWImg8188E_MAC.c", i32 36, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
