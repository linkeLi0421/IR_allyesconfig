; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/keyhelp.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/keyhelp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@letter_offsets = internal global { [26 x i16], [44 x i8] } { [26 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [44 x i8] zeroinitializer }, align 32
@spk_special_handler = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cur_item = internal global { i32, [28 x i8] } zeroinitializer, align 32
@funcvals = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"FGHI\06\07\08!\0A$\09\1B\04%'#&\22\01\12\13\14\11-\0E\10\0F\1C\05LMRSBC\03JKDE\19\1F\1D\18\17\1E \80,\1A\02@A\16\15PQTUNO)+(*\0B\0D\0C\00", [59 x i8] zeroinitializer }, align 32
@spk_our_keys = external dso_local local_unnamed_addr global [0 x ptr], align 4
@nstates = internal global { i32, [28 x i8] } zeroinitializer, align 32
@state_tbl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@key_offsets = internal global { [130 x i16], [92 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@key_data = internal global { [256 x i16], [128 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 15]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"letter_offsets\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 20, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 144, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 152, i32 17 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"cur_item\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 47, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"funcvals\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 26, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"nstates\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 47, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"state_tbl\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 46, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 196, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"key_offsets\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 17, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 198, i32 16 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"key_data\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 17, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 205, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [43 x i8] c"../drivers/accessibility/speakup/keyhelp.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 107, i32 17 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @letter_offsets, ptr @.str, ptr @.str.1, ptr @cur_item, ptr @funcvals, ptr @nstates, ptr @state_tbl, ptr @.str.2, ptr @key_offsets, ptr @.str.3, ptr @key_data, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @letter_offsets to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_item to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcvals to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nstates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_offsets to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_handle_help(ptr nocapture readnone %vc, i8 noundef zeroext %type, i8 noundef zeroext %ch, i16 noundef zeroext %key) #0 align 64 {
entry:
  %counters.i = alloca [130 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @letter_offsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %0)
  %cmp = icmp eq i16 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @spk_our_keys to i32))
  %1 = load ptr, ptr @spk_our_keys, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 66
  store ptr %add.ptr1.i, ptr @state_tbl, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %start.01.i = phi i8 [ 32, %if.then ], [ %start.1.i, %cleanup.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.02.i, 263
  %call.i = tail call ptr @spk_msg_get(i32 noundef %add.i) #3
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %start.01.i, i8 %3)
  %cmp3.i = icmp eq i8 %start.01.i, %3
  br i1 %cmp3.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv5.i = trunc i32 %i.02.i to i16
  %4 = and i8 %3, 31
  %and.i = zext i8 %4 to i32
  %sub.i = add nsw i32 %and.i, -1
  %arrayidx.i = getelementptr [26 x i16], ptr @letter_offsets, i32 0, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv5.i, ptr %arrayidx.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %start.1.i = phi i8 [ %3, %if.end.i ], [ %start.01.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 68
  br i1 %exitcond.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %land.lhs.true71 [
    i8 0, label %if.then5
    i8 6, label %if.then37
    i8 15, label %land.lhs.true60
  ]

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ch)
  %cmp7 = icmp eq i8 %ch, 32
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @spk_special_handler to i32))
  store ptr null, ptr @spk_special_handler, align 4
  %call10 = tail call ptr @spk_msg_get(i32 noundef 30) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str, ptr noundef %call10) #3
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %7 = or i8 %ch, 32
  %conv14 = zext i8 %7 to i32
  %8 = add i8 %7, -123
  call void @__sanitizer_cov_trace_const_cmp1(i8 -26, i8 %8)
  %9 = icmp ult i8 %8, -26
  br i1 %9, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %sub = add nsw i32 %conv14, -97
  %arrayidx = getelementptr [26 x i16], ptr @letter_offsets, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp24 = icmp eq i16 %11, -1
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %call27 = tail call ptr @spk_msg_get(i32 noundef 50) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef %call27, i32 noundef %conv14) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %conv23 = sext i16 %11 to i32
  br label %if.end126

if.then37:                                        ; preds = %if.end
  %12 = zext i8 %ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %ch, label %if.then37.cleanup_crit_edge [
    i8 0, label %land.lhs.true
    i8 3, label %land.lhs.true49
  ]

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then37
  %13 = load i32, ptr @cur_item, align 4
  %add41 = add i32 %13, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 331, i32 %add41)
  %cmp42 = icmp slt i32 %add41, 331
  br i1 %cmp42, label %if.then44, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add i32 %13, 1
  br label %if.end126

land.lhs.true49:                                  ; preds = %if.then37
  %14 = load i32, ptr @cur_item, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp50 = icmp sgt i32 %14, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true49.cleanup_crit_edge

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #5
  %dec = add nsw i32 %14, -1
  br label %if.end126

land.lhs.true60:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %ch)
  %cmp62 = icmp eq i8 %ch, 45
  br i1 %cmp62, label %land.lhs.true64, label %land.lhs.true60.for.body.preheader_crit_edge

land.lhs.true60.for.body.preheader_crit_edge:     ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

land.lhs.true64:                                  ; preds = %land.lhs.true60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @spk_special_handler to i32))
  %15 = load ptr, ptr @spk_special_handler, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then65, label %land.lhs.true64.for.body.preheader_crit_edge

land.lhs.true64.for.body.preheader_crit_edge:     ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

if.then65:                                        ; preds = %land.lhs.true64
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @spk_special_handler to i32))
  store ptr @spk_handle_help, ptr @spk_special_handler, align 4
  %call66 = tail call ptr @spk_msg_get(i32 noundef 32) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str, ptr noundef %call66) #3
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %counters.i) #3
  %16 = load ptr, ptr @state_tbl, align 4
  %arrayidx.i199 = getelementptr i8, ptr %16, i32 -1
  %17 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i199, align 1
  %conv.i = zext i8 %18 to i32
  store i32 %conv.i, ptr @nstates, align 4
  %19 = call ptr @memset(ptr %counters.i, i32 0, i32 130)
  %20 = call ptr @memset(ptr @key_offsets, i32 0, i32 260)
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %add.ptr1.i200 = getelementptr i8, ptr %add.ptr.i, i32 1
  %21 = ptrtoint ptr %add.ptr1.i200 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr1.i200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not118.i = icmp eq i8 %22, 0
  br i1 %tobool.not118.i, label %if.then65.for.body19.i.preheader_crit_edge, label %for.cond.preheader.lr.ph.i

if.then65.for.body19.i.preheader_crit_edge:       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19.i.preheader

for.body19.i.preheader:                           ; preds = %while.cond.loopexit.i.for.body19.i.preheader_crit_edge, %if.then65.for.body19.i.preheader_crit_edge
  br label %for.body19.i

for.cond.preheader.lr.ph.i:                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp114.not.i = icmp eq i8 %18, 0
  br label %for.cond.preheader.i

while.cond.loopexit.i:                            ; preds = %for.inc.i.while.cond.loopexit.i_crit_edge, %for.cond.preheader.i.while.cond.loopexit.i_crit_edge
  %kp.1.lcssa.i = phi ptr [ %kp.1113.i, %for.cond.preheader.i.while.cond.loopexit.i_crit_edge ], [ %kp.1.i, %for.inc.i.while.cond.loopexit.i_crit_edge ]
  %23 = ptrtoint ptr %kp.1.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %kp.1.lcssa.i, align 1
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.for.body19.i.preheader_crit_edge, label %while.cond.loopexit.i.for.cond.preheader.i_crit_edge

while.cond.loopexit.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader.i

while.cond.loopexit.i.for.body19.i.preheader_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19.i.preheader

for.cond.preheader.i:                             ; preds = %while.cond.loopexit.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %kp.0119.i = phi ptr [ %add.ptr1.i200, %for.cond.preheader.lr.ph.i ], [ %kp.1.lcssa.i, %while.cond.loopexit.i.for.cond.preheader.i_crit_edge ]
  %kp.1113.i = getelementptr i8, ptr %kp.0119.i, i32 1
  br i1 %cmp114.not.i, label %for.cond.preheader.i.while.cond.loopexit.i_crit_edge, label %for.cond.preheader.i.for.body.i201_crit_edge

for.cond.preheader.i.for.body.i201_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i201

for.cond.preheader.i.while.cond.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.loopexit.i

for.body.i201:                                    ; preds = %for.inc.i.for.body.i201_crit_edge, %for.cond.preheader.i.for.body.i201_crit_edge
  %kp.1117.i = phi ptr [ %kp.1.i, %for.inc.i.for.body.i201_crit_edge ], [ %kp.1113.i, %for.cond.preheader.i.for.body.i201_crit_edge ]
  %i.0115.i = phi i32 [ %inc14.i, %for.inc.i.for.body.i201_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i201_crit_edge ]
  %25 = ptrtoint ptr %kp.1117.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %kp.1117.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i = icmp eq i8 %26, 0
  br i1 %tobool3.not.i, label %for.body.i201.for.inc.i_crit_edge, label %if.end.i202

for.body.i201.for.inc.i_crit_edge:                ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end.i202:                                      ; preds = %for.body.i201
  %arrayidx4.i = getelementptr i8, ptr %16, i32 %i.0115.i
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i, align 1
  %29 = and i8 %28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp6.not.i = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %26)
  %cmp9.i = icmp eq i8 %26, -128
  %or.cond.i = select i1 %cmp6.not.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %if.end.i202.for.inc.i_crit_edge, label %if.end12.i

if.end.i202.for.inc.i_crit_edge:                  ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom.i = zext i8 %26 to i32
  %arrayidx13.i = getelementptr [130 x i8], ptr %counters.i, i32 0, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx13.i, align 1
  %inc.i203 = add i8 %31, 1
  store i8 %inc.i203, ptr %arrayidx13.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.end.i202.for.inc.i_crit_edge, %for.body.i201.for.inc.i_crit_edge
  %inc14.i = add nuw nsw i32 %i.0115.i, 1
  %kp.1.i = getelementptr i8, ptr %kp.1117.i, i32 1
  %exitcond.not.i204 = icmp eq i32 %inc14.i, %conv.i
  br i1 %exitcond.not.i204, label %for.inc.i.while.cond.loopexit.i_crit_edge, label %for.inc.i.for.body.i201_crit_edge

for.inc.i.for.body.i201_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i201

for.inc.i.while.cond.loopexit.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.loopexit.i

for.body19.i:                                     ; preds = %for.inc35.i.for.body19.i_crit_edge, %for.body19.i.preheader
  %offset.0121.i = phi i32 [ %offset.1.i, %for.inc35.i.for.body19.i_crit_edge ], [ 1, %for.body19.i.preheader ]
  %i.1120.i = phi i32 [ %inc36.i, %for.inc35.i.for.body19.i_crit_edge ], [ 0, %for.body19.i.preheader ]
  %arrayidx20.i = getelementptr [130 x i8], ptr %counters.i, i32 0, i32 %i.1120.i
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp22.i = icmp eq i8 %33, 0
  br i1 %cmp22.i, label %for.body19.i.for.inc35.i_crit_edge, label %if.end25.i

for.body19.i.for.inc35.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc35.i

if.end25.i:                                       ; preds = %for.body19.i
  %conv26.i = trunc i32 %offset.0121.i to i16
  %arrayidx27.i = getelementptr [130 x i16], ptr @key_offsets, i32 0, i32 %i.1120.i
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv26.i, ptr %arrayidx27.i, align 2
  %conv29.i = zext i8 %33 to i32
  %add.i205 = add i32 %offset.0121.i, 1
  %add30.i = add i32 %add.i205, %conv29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add30.i)
  %cmp31.i = icmp sgt i32 %add30.i, 255
  br i1 %cmp31.i, label %if.end25.i.for.end37.i_crit_edge, label %if.end25.i.for.inc35.i_crit_edge

if.end25.i.for.inc35.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc35.i

if.end25.i.for.end37.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end37.i

for.inc35.i:                                      ; preds = %if.end25.i.for.inc35.i_crit_edge, %for.body19.i.for.inc35.i_crit_edge
  %offset.1.i = phi i32 [ %offset.0121.i, %for.body19.i.for.inc35.i_crit_edge ], [ %add30.i, %if.end25.i.for.inc35.i_crit_edge ]
  %inc36.i = add nuw nsw i32 %i.1120.i, 1
  %exitcond132.not.i = icmp eq i32 %inc36.i, 130
  br i1 %exitcond132.not.i, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.body19.i_crit_edge

for.inc35.i.for.body19.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %if.end25.i.for.end37.i_crit_edge
  %35 = ptrtoint ptr %add.ptr1.i200 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr1.i200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool42.not128.i = icmp eq i8 %36, 0
  br i1 %tobool42.not128.i, label %for.end37.i.build_key_data.exit_crit_edge, label %for.cond44.preheader.lr.ph.i

for.end37.i.build_key_data.exit_crit_edge:        ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %build_key_data.exit

for.cond44.preheader.lr.ph.i:                     ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp45123.not.i = icmp eq i8 %18, 0
  br label %for.cond44.preheader.i

while.cond40.loopexit.i:                          ; preds = %for.inc81.i.while.cond40.loopexit.i_crit_edge, %for.cond44.preheader.i.while.cond40.loopexit.i_crit_edge
  %kp.3.lcssa.i = phi ptr [ %kp.3122.i, %for.cond44.preheader.i.while.cond40.loopexit.i_crit_edge ], [ %kp.3.i, %for.inc81.i.while.cond40.loopexit.i_crit_edge ]
  %37 = ptrtoint ptr %kp.3.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %kp.3.lcssa.i, align 1
  %tobool42.not.i = icmp eq i8 %38, 0
  br i1 %tobool42.not.i, label %while.cond40.loopexit.i.build_key_data.exit_crit_edge, label %while.cond40.loopexit.i.for.cond44.preheader.i_crit_edge

while.cond40.loopexit.i.for.cond44.preheader.i_crit_edge: ; preds = %while.cond40.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond44.preheader.i

while.cond40.loopexit.i.build_key_data.exit_crit_edge: ; preds = %while.cond40.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %build_key_data.exit

for.cond44.preheader.i:                           ; preds = %while.cond40.loopexit.i.for.cond44.preheader.i_crit_edge, %for.cond44.preheader.lr.ph.i
  %39 = phi i8 [ %36, %for.cond44.preheader.lr.ph.i ], [ %38, %while.cond40.loopexit.i.for.cond44.preheader.i_crit_edge ]
  %kp.2129.i = phi ptr [ %add.ptr1.i200, %for.cond44.preheader.lr.ph.i ], [ %kp.3.lcssa.i, %while.cond40.loopexit.i.for.cond44.preheader.i_crit_edge ]
  %kp.3122.i = getelementptr i8, ptr %kp.2129.i, i32 1
  br i1 %cmp45123.not.i, label %for.cond44.preheader.i.while.cond40.loopexit.i_crit_edge, label %for.body47.lr.ph.i

for.cond44.preheader.i.while.cond40.loopexit.i_crit_edge: ; preds = %for.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond40.loopexit.i

for.body47.lr.ph.i:                               ; preds = %for.cond44.preheader.i
  %conv65.i = zext i8 %39 to i16
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.inc81.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %kp.3126.i = phi ptr [ %kp.3122.i, %for.body47.lr.ph.i ], [ %kp.3.i, %for.inc81.i.for.body47.i_crit_edge ]
  %i.2124.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc82.i, %for.inc81.i.for.body47.i_crit_edge ]
  %40 = ptrtoint ptr %kp.3126.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %kp.3126.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool49.not.i = icmp eq i8 %41, 0
  br i1 %tobool49.not.i, label %for.body47.i.for.inc81.i_crit_edge, label %if.end51.i

for.body47.i.for.inc81.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc81.i

if.end51.i:                                       ; preds = %for.body47.i
  %arrayidx52.i = getelementptr i8, ptr %16, i32 %i.2124.i
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx52.i, align 1
  %44 = and i8 %43, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp55.not.i = icmp ne i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %41)
  %cmp59.i = icmp eq i8 %41, -128
  %or.cond112.i = select i1 %cmp55.not.i, i1 %cmp59.i, i1 false
  br i1 %or.cond112.i, label %if.end51.i.for.inc81.i_crit_edge, label %if.end62.i

if.end51.i.for.inc81.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc81.i

if.end62.i:                                       ; preds = %if.end51.i
  %idxprom68.i = zext i8 %41 to i32
  %arrayidx69.i = getelementptr [130 x i8], ptr %counters.i, i32 0, i32 %idxprom68.i
  %45 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx69.i, align 1
  %dec.i = add i8 %46, -1
  store i8 %dec.i, ptr %arrayidx69.i, align 1
  %arrayidx71.i = getelementptr [130 x i16], ptr @key_offsets, i32 0, i32 %idxprom68.i
  %47 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx71.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool73.not.i = icmp eq i16 %48, 0
  br i1 %tobool73.not.i, label %if.end62.i.for.inc81.i_crit_edge, label %if.end75.i

if.end62.i.for.inc81.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc81.i

if.end75.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv72.i = zext i16 %48 to i32
  %conv64.i = zext i8 %43 to i16
  %shl.i = shl nuw i16 %conv64.i, 8
  %add66.i = or i16 %shl.i, %conv65.i
  %add.ptr76.i = getelementptr i16, ptr @key_data, i32 %conv72.i
  %conv79.i = zext i8 %dec.i to i32
  %add.ptr80.i = getelementptr i16, ptr %add.ptr76.i, i32 %conv79.i
  %49 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %add66.i, ptr %add.ptr80.i, align 2
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %if.end75.i, %if.end62.i.for.inc81.i_crit_edge, %if.end51.i.for.inc81.i_crit_edge, %for.body47.i.for.inc81.i_crit_edge
  %inc82.i = add nuw nsw i32 %i.2124.i, 1
  %kp.3.i = getelementptr i8, ptr %kp.3126.i, i32 1
  %exitcond133.not.i = icmp eq i32 %inc82.i, %conv.i
  br i1 %exitcond133.not.i, label %for.inc81.i.while.cond40.loopexit.i_crit_edge, label %for.inc81.i.for.body47.i_crit_edge

for.inc81.i.for.body47.i_crit_edge:               ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body47.i

for.inc81.i.while.cond40.loopexit.i_crit_edge:    ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond40.loopexit.i

build_key_data.exit:                              ; preds = %while.cond40.loopexit.i.build_key_data.exit_crit_edge, %for.end37.i.build_key_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %counters.i) #3
  br label %cleanup

land.lhs.true71:                                  ; preds = %if.end
  %50 = add i16 %key, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %50)
  %51 = icmp ult i16 %50, 180
  br i1 %51, label %if.then79, label %land.lhs.true71.for.body.preheader_crit_edge

land.lhs.true71.for.body.preheader_crit_edge:     ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true71.for.body.preheader_crit_edge, %land.lhs.true64.for.body.preheader_crit_edge, %land.lhs.true60.for.body.preheader_crit_edge
  br label %for.body

if.then79:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #5
  %conv72 = zext i16 %key to i32
  %sub82 = add nuw nsw i32 %conv72, 82
  %call83 = tail call ptr @spk_msg_get(i32 noundef %sub82) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str, ptr noundef %call83) #3
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0208 = phi i32 [ %inc99, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx85 = getelementptr [69 x i8], ptr @funcvals, i32 0, i32 %i.0208
  %52 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %ch)
  %cmp93 = icmp eq i8 %53, %ch
  br i1 %cmp93, label %if.then95, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %add96 = add nuw nsw i32 %i.0208, 263
  %call97 = tail call ptr @spk_msg_get(i32 noundef %add96) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then95, %for.body.for.inc_crit_edge
  %name.1 = phi ptr [ %call97, %if.then95 ], [ null, %for.body.for.inc_crit_edge ]
  %inc99 = add nuw nsw i32 %i.0208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %inc99)
  %cmp87.not = icmp ne i32 %inc99, 68
  %tobool89.not = icmp eq ptr %name.1, null
  %or.cond198 = select i1 %cmp87.not, i1 %tobool89.not, i1 false
  br i1 %or.cond198, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool89.not, label %for.end.cleanup_crit_edge, label %if.end102

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end102:                                        ; preds = %for.end
  %idxprom = zext i16 %key to i32
  %arrayidx103 = getelementptr [0 x ptr], ptr @spk_our_keys, i32 0, i32 %idxprom
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx103, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 1
  %56 = load i32, ptr @nstates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp105209 = icmp sgt i32 %56, 0
  br i1 %cmp105209, label %if.end102.for.body107_crit_edge, label %if.end102.for.end117_crit_edge

if.end102.for.end117_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end117

if.end102.for.body107_crit_edge:                  ; preds = %if.end102
  br label %for.body107

for.body107:                                      ; preds = %for.inc115.for.body107_crit_edge, %if.end102.for.body107_crit_edge
  %i.1210 = phi i32 [ %inc116, %for.inc115.for.body107_crit_edge ], [ 0, %if.end102.for.body107_crit_edge ]
  %arrayidx109 = getelementptr i8, ptr %add.ptr, i32 %i.1210
  %57 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx109, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %ch)
  %cmp111 = icmp eq i8 %58, %ch
  br i1 %cmp111, label %for.body107.for.end117_crit_edge, label %for.inc115

for.body107.for.end117_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end117

for.inc115:                                       ; preds = %for.body107
  %inc116 = add nuw nsw i32 %i.1210, 1
  %exitcond.not = icmp eq i32 %inc116, %56
  br i1 %exitcond.not, label %for.inc115.for.end117_crit_edge, label %for.inc115.for.body107_crit_edge

for.inc115.for.body107_crit_edge:                 ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body107

for.inc115.for.end117_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end117

for.end117:                                       ; preds = %for.inc115.for.end117_crit_edge, %for.body107.for.end117_crit_edge, %if.end102.for.end117_crit_edge
  %i.1.lcssa = phi i32 [ 0, %if.end102.for.end117_crit_edge ], [ %i.1210, %for.body107.for.end117_crit_edge ], [ %56, %for.inc115.for.end117_crit_edge ]
  %59 = load ptr, ptr @state_tbl, align 4
  %arrayidx118 = getelementptr i8, ptr %59, i32 %i.1.lcssa
  %60 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %61 to i16
  %shl = shl nuw i16 %conv119, 8
  %add121 = add i16 %shl, %key
  %conv123 = zext i16 %add121 to i32
  tail call fastcc void @say_key(i32 noundef %conv123)
  %call124 = tail call ptr @spk_msg_get(i32 noundef 51) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef %call124, ptr noundef nonnull %name.1) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end126:                                        ; preds = %if.then52, %if.then44, %if.end29
  %dec.sink = phi i32 [ %dec, %if.then52 ], [ %inc, %if.then44 ], [ %conv23, %if.end29 ]
  store i32 %dec.sink, ptr @cur_item, align 4
  %add127 = add i32 %dec.sink, 263
  %call128 = tail call ptr @spk_msg_get(i32 noundef %add127) #3
  %62 = load i32, ptr @cur_item, align 4
  %arrayidx129 = getelementptr [69 x i8], ptr @funcvals, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx129, align 1
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.2, ptr noundef %call128) #3
  %idxprom130 = zext i8 %64 to i32
  %arrayidx131 = getelementptr [130 x i16], ptr @key_offsets, i32 0, i32 %idxprom130
  %65 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx131, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp133 = icmp eq i16 %66, 0
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #5
  %call136 = tail call ptr @spk_msg_get(i32 noundef 31) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.3, ptr noundef %call136) #3
  br label %cleanup

if.end137:                                        ; preds = %if.end126
  %conv132 = zext i16 %66 to i32
  %add.ptr141 = getelementptr i16, ptr @key_data, i32 %conv132
  %67 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr141, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool144.not206 = icmp eq i16 %68, 0
  br i1 %tobool144.not206, label %if.end137.cleanup_crit_edge, label %if.end137.for.body145_crit_edge

if.end137.for.body145_crit_edge:                  ; preds = %if.end137
  br label %for.body145

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body145:                                      ; preds = %if.end151.for.body145_crit_edge, %if.end137.for.body145_crit_edge
  %69 = phi i16 [ %71, %if.end151.for.body145_crit_edge ], [ %68, %if.end137.for.body145_crit_edge ]
  %n.0207 = phi i32 [ %inc154, %if.end151.for.body145_crit_edge ], [ 0, %if.end137.for.body145_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0207)
  %cmp147 = icmp sgt i32 %n.0207, 0
  br i1 %cmp147, label %if.then149, label %for.body145.if.end151_crit_edge

for.body145.if.end151_crit_edge:                  ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end151

if.then149:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #5
  %call150 = tail call ptr @spk_msg_get(i32 noundef 42) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.4, ptr noundef %call150) #3
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %for.body145.if.end151_crit_edge
  %conv152 = zext i16 %69 to i32
  tail call fastcc void @say_key(i32 noundef %conv152)
  %inc154 = add i32 %n.0207, 1
  %arrayidx143 = getelementptr i16, ptr %add.ptr141, i32 %inc154
  %70 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx143, align 2
  %tobool144.not = icmp eq i16 %71, 0
  br i1 %tobool144.not, label %if.end151.cleanup_crit_edge, label %if.end151.for.body145_crit_edge

if.end151.for.body145_crit_edge:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body145

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end151.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.then135, %for.end117, %for.end.cleanup_crit_edge, %if.then79, %build_key_data.exit, %land.lhs.true49.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then26, %if.end11.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.then26 ], [ 1, %if.then135 ], [ 1, %if.then79 ], [ 1, %for.end117 ], [ 1, %build_key_data.exit ], [ -1, %if.end11.cleanup_crit_edge ], [ -1, %if.then37.cleanup_crit_edge ], [ -1, %land.lhs.true49.cleanup_crit_edge ], [ -1, %for.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end137.cleanup_crit_edge ], [ 1, %if.end151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_msg_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @say_key(i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %key, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @spk_msg_get(i32 noundef 77) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %1 = and i32 %key, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.1 = icmp eq i32 %1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %call.1 = tail call ptr @spk_msg_get(i32 noundef 78) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call.1) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %2 = and i32 %key, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.2 = icmp eq i32 %2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %call.2 = tail call ptr @spk_msg_get(i32 noundef 79) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call.2) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %3 = and i32 %key, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.3 = icmp eq i32 %3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %call.3 = tail call ptr @spk_msg_get(i32 noundef 80) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call.3) #3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %4 = and i32 %key, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.4 = icmp eq i32 %4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %call.4 = tail call ptr @spk_msg_get(i32 noundef 81) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call.4) #3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %5 = and i32 %key, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.5 = icmp eq i32 %5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %call.5 = tail call ptr @spk_msg_get(i32 noundef 82) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.5, ptr noundef %call.5) #3
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and = and i32 %key, 255
  %6 = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %6)
  %7 = icmp ult i32 %6, 180
  br i1 %7, label %if.then6, label %for.inc.5.if.end9_crit_edge

for.inc.5.if.end9_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %add7 = add nuw nsw i32 %and, 82
  %call8 = tail call ptr @spk_msg_get(i32 noundef %add7) #3
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.3, ptr noundef %call8) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.inc.5.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 144, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 152, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 196, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 198, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 205, i32 17}
!10 = !{ptr @key_offsets, !11, !"key_offsets", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 17, i32 16}
!12 = !{ptr @key_data, !13, !"key_data", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 17, i32 39}
!14 = !{ptr @state_tbl, !15, !"state_tbl", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 46, i32 16}
!16 = !{ptr @cur_item, !17, !"cur_item", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 47, i32 12}
!18 = !{ptr @nstates, !19, !"nstates", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 47, i32 22}
!20 = !{ptr @letter_offsets, !21, !"letter_offsets", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 20, i32 14}
!22 = !{ptr @funcvals, !23, !"funcvals", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 26, i32 15}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 107, i32 17}
!26 = distinct !{null, !27, !"masks", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/keyhelp.c", i32 18, i32 16}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
