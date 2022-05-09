; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_keyboard.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_keyboard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kdb_get_kbd_char\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_get_kbd_char\09\09\09\09"
module asm "\09.long\09__crc_kdb_get_kbd_char\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_get_kbd_char:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_get_kbd_char\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_get_kbd_char:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@kdb_get_kbd_char.shift_lock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_get_kbd_char.shift_key = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kdb_get_kbd_char.ctrl_key = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@kbd_last_ret = internal global { i1, [31 x i8] } zeroinitializer, align 32
@plain_map = external dso_local local_unnamed_addr global [256 x i16], align 2
@key_maps = external dso_local local_unnamed_addr global [256 x ptr], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown state/scancode (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_kdb_get_kbd_char = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_get_kbd_char = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_get_kbd_char = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_get_kbd_char to i32), ptr @__kstrtab_kdb_get_kbd_char, ptr @__kstrtabns_kdb_get_kbd_char }, section "___ksymtab_gpl+kdb_get_kbd_char", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 29, i64 42, i64 54]
@__sancov_gen_cov_switch_values.1 = internal global [14 x i64] [i64 12, i64 32, i64 14, i64 15, i64 58, i64 71, i64 72, i64 75, i64 77, i64 79, i64 80, i64 83, i64 115, i64 125]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 11]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"shift_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 38, i32 13 }
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"kdb_get_kbd_char.shift_key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"kdb_get_kbd_char.ctrl_key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"kbd_last_ret\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [35 x i8] c"../kernel/debug/kdb/kdb_keyboard.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 166, i32 14 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_kdb_get_kbd_char, ptr @kdb_get_kbd_char.shift_lock, ptr @kdb_get_kbd_char.shift_key, ptr @kdb_get_kbd_char.ctrl_key, ptr @kbd_last_ret, ptr @.str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_get_kbd_char.shift_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_get_kbd_char.shift_key to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_get_kbd_char.ctrl_key to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_last_ret to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_get_kbd_char() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %0 = load i32, ptr @kdb_flags, align 4
  %1 = and i32 %0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %lor.lhs.false3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false3.if.end_crit_edge

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874272 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp11 = icmp eq i8 %4, -1
  br i1 %cmp11, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp19 = icmp eq i8 %6, 0
  br i1 %cmp19, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874272 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !27
  %conv27 = zext i8 %7 to i32
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !28
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool34.not = icmp eq i8 %9, 0
  br i1 %tobool34.not, label %if.end36, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %and37 = and i32 %conv27, 127
  %10 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and37, label %if.end61 [
    i32 42, label %if.end36.if.then44_crit_edge
    i32 54, label %if.end36.if.then44_crit_edge189
    i32 29, label %if.then54
  ]

if.end36.if.then44_crit_edge189:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then44

if.end36.if.then44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then44

if.then44:                                        ; preds = %if.end36.if.then44_crit_edge, %if.end36.if.then44_crit_edge189
  %and45 = and i32 %conv27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 0
  store i1 %cmp46, ptr @kdb_get_kbd_char.shift_key, align 4
  br label %cleanup

if.then54:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  %and55 = and i32 %conv27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 0
  store i1 %cmp56, ptr @kdb_get_kbd_char.ctrl_key, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end36
  %and62 = and i32 %conv27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %cmp63.not = icmp eq i32 %and62, 0
  br i1 %cmp63.not, label %if.end70, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp1(i8 -100, i8 %7)
  %cmp66 = icmp eq i8 %7, -100
  br i1 %cmp66, label %if.then68, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #4
  store i1 false, ptr @kbd_last_ret, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  %11 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and37, label %if.end99.fold.split [
    i32 58, label %if.then74
    i32 14, label %if.end70.cleanup_crit_edge
    i32 15, label %sw.bb
    i32 83, label %sw.bb80
    i32 71, label %sw.bb81
    i32 79, label %sw.bb82
    i32 75, label %sw.bb83
    i32 72, label %sw.bb84
    i32 80, label %sw.bb85
    i32 77, label %sw.bb86
    i32 115, label %if.end70.if.end99_crit_edge
    i32 125, label %if.then97
  ]

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end99

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  %12 = load i32, ptr @kdb_get_kbd_char.shift_lock, align 4
  %xor = xor i32 %12, 1
  store i32 %xor, ptr @kdb_get_kbd_char.shift_lock, align 4
  br label %cleanup

sw.bb:                                            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb85:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb86:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then97:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end99

if.end99.fold.split:                              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end99

if.end99:                                         ; preds = %if.end99.fold.split, %if.then97, %if.end70.if.end99_crit_edge
  %scancode.0 = phi i32 [ 124, %if.then97 ], [ 89, %if.end70.if.end99_crit_edge ], [ %and37, %if.end99.fold.split ]
  %13 = load i32, ptr @kdb_get_kbd_char.shift_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool100.not = icmp eq i32 %13, 0
  br i1 %tobool100.not, label %land.lhs.true101, label %if.end99.land.lhs.true110_crit_edge

if.end99.land.lhs.true110_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true110

land.lhs.true101:                                 ; preds = %if.end99
  %.b183 = load i1, ptr @kdb_get_kbd_char.shift_key, align 4
  br i1 %.b183, label %land.lhs.true101.land.lhs.true110_crit_edge, label %land.lhs.true103

land.lhs.true101.land.lhs.true110_crit_edge:      ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true110

land.lhs.true103:                                 ; preds = %land.lhs.true101
  %.b185 = load i1, ptr @kdb_get_kbd_char.ctrl_key, align 4
  br i1 %.b185, label %land.lhs.true103.land.lhs.true116_crit_edge, label %if.then105

land.lhs.true103.land.lhs.true116_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true116

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr [256 x i16], ptr @plain_map, i32 0, i32 %scancode.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  br label %if.end124

land.lhs.true110:                                 ; preds = %land.lhs.true101.land.lhs.true110_crit_edge, %if.end99.land.lhs.true110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @key_maps, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @key_maps, i32 0, i32 1), align 4
  %tobool111.not = icmp eq ptr %16, null
  br i1 %tobool111.not, label %if.else114, label %if.then112

if.then112:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx113 = getelementptr i16, ptr %16, i32 %scancode.0
  %17 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx113, align 2
  br label %if.end124

if.else114:                                       ; preds = %land.lhs.true110
  %.b184.pr = load i1, ptr @kdb_get_kbd_char.ctrl_key, align 4
  br i1 %.b184.pr, label %if.else114.land.lhs.true116_crit_edge, label %if.else114.if.else120_crit_edge

if.else114.if.else120_crit_edge:                  ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else120

if.else114.land.lhs.true116_crit_edge:            ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.else114.land.lhs.true116_crit_edge, %land.lhs.true103.land.lhs.true116_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @key_maps, i32 0, i32 4) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @key_maps, i32 0, i32 4), align 4
  %tobool117.not = icmp eq ptr %19, null
  br i1 %tobool117.not, label %land.lhs.true116.if.else120_crit_edge, label %if.then118

land.lhs.true116.if.else120_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else120

if.then118:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx119 = getelementptr i16, ptr %19, i32 %scancode.0
  %20 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx119, align 2
  br label %if.end124

if.else120:                                       ; preds = %land.lhs.true116.if.else120_crit_edge, %if.else114.if.else120_crit_edge
  %call121 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str, i32 noundef %scancode.0) #2
  br label %if.end124

if.end124:                                        ; preds = %if.else120, %if.then118, %if.then112, %if.then105
  %keychar.0 = phi i16 [ %18, %if.then112 ], [ %21, %if.then118 ], [ 32, %if.else120 ], [ %15, %if.then105 ]
  %22 = and i16 %keychar.0, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %22)
  %cmp129 = icmp eq i16 %22, 9
  %spec.store.select = select i1 %cmp129, i16 32, i16 %22
  %conv133 = zext i16 %spec.store.select to i32
  %23 = lshr i32 %conv133, 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %23, label %if.end124.cleanup_crit_edge [
    i32 11, label %if.end124.sw.bb134_crit_edge
    i32 0, label %if.end124.sw.bb134_crit_edge190
    i32 2, label %sw.bb144
  ]

if.end124.sw.bb134_crit_edge190:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb134

if.end124.sw.bb134_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb134

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb134:                                         ; preds = %if.end124.sw.bb134_crit_edge, %if.end124.sw.bb134_crit_edge190
  %25 = and i16 %spec.store.select, 255
  %conv136 = zext i16 %25 to i32
  %arrayidx137 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv136
  %26 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx137, align 1
  %28 = and i8 %27, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp140.not = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %spec.store.select)
  %cmp146 = icmp eq i16 %spec.store.select, 513
  %or.cond186 = select i1 %cmp140.not, i1 true, i1 %cmp146
  br i1 %or.cond186, label %sw.bb134.sw.epilog150_crit_edge, label %sw.bb134.cleanup_crit_edge

sw.bb134.cleanup_crit_edge:                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb134.sw.epilog150_crit_edge:                  ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog150

sw.bb144:                                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %spec.store.select)
  %cmp146.old = icmp eq i16 %spec.store.select, 513
  br i1 %cmp146.old, label %sw.bb144.sw.epilog150_crit_edge, label %sw.bb144.cleanup_crit_edge

sw.bb144.cleanup_crit_edge:                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb144.sw.epilog150_crit_edge:                  ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog150

sw.epilog150:                                     ; preds = %sw.bb144.sw.epilog150_crit_edge, %sw.bb134.sw.epilog150_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %scancode.0)
  %cmp151 = icmp eq i32 %scancode.0, 28
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %sw.epilog150
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @kbd_last_ret, align 4
  br label %cleanup

if.end154:                                        ; preds = %sw.epilog150
  call void @__sanitizer_cov_trace_pc() #4
  %and156 = and i32 %conv133, 255
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %if.then153, %sw.bb144.cleanup_crit_edge, %sw.bb134.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb, %if.then74, %if.end70.cleanup_crit_edge, %if.then68, %if.then65.cleanup_crit_edge, %if.then54, %if.then44, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then44 ], [ -1, %if.then54 ], [ -1, %if.then74 ], [ 13, %if.then153 ], [ %and156, %if.end154 ], [ 6, %sw.bb86 ], [ 14, %sw.bb85 ], [ 16, %sw.bb84 ], [ 2, %sw.bb83 ], [ 5, %sw.bb82 ], [ 1, %sw.bb81 ], [ 4, %sw.bb80 ], [ 9, %sw.bb ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end22.cleanup_crit_edge ], [ -1, %if.then68 ], [ -1, %if.then65.cleanup_crit_edge ], [ 8, %if.end70.cleanup_crit_edge ], [ -1, %sw.bb134.cleanup_crit_edge ], [ -1, %sw.bb144.cleanup_crit_edge ], [ -1, %if.end124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_kbd_cleanup_state() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @kbd_last_ret, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 false, ptr @kbd_last_ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %if.end
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !29
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp30 = icmp eq i8 %1, 0
  br i1 %cmp30, label %while.cond.do.end_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !31
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !29
  %3 = and i8 %2, 1
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.while.end_crit_edge
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874272 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !32
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874268 to ptr)) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !33
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool22.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -100, i8 %4)
  %cmp25.not = icmp eq i8 %4, -100
  %or.cond = select i1 %tobool22.not, i1 %cmp25.not, i1 false
  br i1 %or.cond, label %while.end.cleanup_crit_edge, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @kdb_get_kbd_char.shift_lock, !1, !"shift_lock", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 38, i32 13}
!2 = distinct !{null, !3, !"shift_key", i1 false, i1 false}
!3 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 39, i32 13}
!4 = distinct !{null, !5, !"ctrl_key", i1 false, i1 false}
!5 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 40, i32 13}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 166, i32 14}
!8 = !{ptr @__ksymtab_kdb_get_kbd_char, !9, !"__ksymtab_kdb_get_kbd_char", i1 false, i1 false}
!9 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 192, i32 1}
!10 = distinct !{null, !11, !"kbd_exists", i1 false, i1 false}
!11 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 27, i32 12}
!12 = distinct !{null, !13, !"kbd_last_ret", i1 false, i1 false}
!13 = !{!"../kernel/debug/kdb/kdb_keyboard.c", i32 28, i32 12}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 4556938}
!24 = !{i64 2152123805}
!25 = !{i64 2152124079}
!26 = !{i64 2152124353}
!27 = !{i64 2152124632}
!28 = !{i64 2152124906}
!29 = !{i64 2152126895}
!30 = !{i64 2152127175}
!31 = !{i64 2152127017}
!32 = !{i64 2152127449}
!33 = !{i64 2152127723}
