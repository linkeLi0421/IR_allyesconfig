; ModuleID = '/llk/IR_all_yes/fs/binfmt_script.c_pt.bc'
source_filename = "../fs/binfmt_script.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }

@script_format = internal global { %struct.linux_binfmt, [36 x i8] } { %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_script, ptr null, ptr null, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_binfmt_script__200_156_init_script_binfmt1 = internal global ptr @init_script_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_script_binfmt = internal global ptr @exit_script_binfmt, section ".exitcall.exit", align 4
@__UNIQUE_ID_file201 = internal constant [36 x i8] c"binfmt_script.file=fs/binfmt_script\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [26 x i8] c"binfmt_script.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"script_format\00", align 1
@___asan_gen_.7 = private constant [22 x i8] c"../fs/binfmt_script.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 140, i32 28 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_exit_script_binfmt, ptr @__initcall__kmod_binfmt_script__200_156_init_script_binfmt1, ptr @exit_script_binfmt, ptr @script_format], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @script_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_script_binfmt() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @unregister_binfmt(ptr noundef nonnull @script_format) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_script_binfmt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_binfmt(ptr noundef nonnull @script_format, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_script(ptr noundef %bprm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %1)
  %cmp.not = icmp eq i8 %1, 35
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %3)
  %cmp6.not = icmp eq i8 %3, 33
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr9 = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 255
  %call = tail call ptr @strnchr(ptr noundef %buf, i32 noundef 256, i32 noundef 10) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then12, label %if.end.while.cond.preheader_crit_edge

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.then12:                                        ; preds = %if.end
  %add.ptr15 = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 2
  %cmp.not4.i = icmp ugt ptr %add.ptr15, %add.ptr9
  br i1 %cmp.not4.i, label %if.then12.cleanup_crit_edge, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %first.addr.05.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr15, %if.then12.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %first.addr.05.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first.addr.05.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %next_non_spacetab.exit [
    i8 32, label %for.body.i.for.inc.i_crit_edge
    i8 9, label %for.body.i.for.inc.i_crit_edge222
  ]

for.body.i.for.inc.i_crit_edge222:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge222
  %incdec.ptr.i = getelementptr i8, ptr %first.addr.05.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %add.ptr9
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

next_non_spacetab.exit:                           ; preds = %for.body.i
  %tobool17.not = icmp eq ptr %first.addr.05.i, null
  %cmp.not5.i = icmp ugt ptr %first.addr.05.i, %add.ptr9
  %or.cond177 = or i1 %tobool17.not, %cmp.not5.i
  br i1 %or.cond177, label %next_non_spacetab.exit.cleanup_crit_edge, label %next_non_spacetab.exit.for.body.i136_crit_edge

next_non_spacetab.exit.for.body.i136_crit_edge:   ; preds = %next_non_spacetab.exit
  br label %for.body.i136

next_non_spacetab.exit.cleanup_crit_edge:         ; preds = %next_non_spacetab.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i136:                                    ; preds = %for.inc.i139.for.body.i136_crit_edge, %next_non_spacetab.exit.for.body.i136_crit_edge
  %first.addr.06.i = phi ptr [ %incdec.ptr.i137, %for.inc.i139.for.body.i136_crit_edge ], [ %first.addr.05.i, %next_non_spacetab.exit.for.body.i136_crit_edge ]
  %7 = ptrtoint ptr %first.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %first.addr.06.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %8, label %for.inc.i139 [
    i8 32, label %for.body.i136.next_terminator.exit_crit_edge
    i8 9, label %for.body.i136.next_terminator.exit_crit_edge223
    i8 0, label %for.body.i136.next_terminator.exit_crit_edge224
  ]

for.body.i136.next_terminator.exit_crit_edge224:  ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit

for.body.i136.next_terminator.exit_crit_edge223:  ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit

for.body.i136.next_terminator.exit_crit_edge:     ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit

for.inc.i139:                                     ; preds = %for.body.i136
  %incdec.ptr.i137 = getelementptr i8, ptr %first.addr.06.i, i32 1
  %cmp.not.i138 = icmp ugt ptr %incdec.ptr.i137, %add.ptr9
  br i1 %cmp.not.i138, label %for.inc.i139.cleanup_crit_edge, label %for.inc.i139.for.body.i136_crit_edge

for.inc.i139.for.body.i136_crit_edge:             ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i136

for.inc.i139.cleanup_crit_edge:                   ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

next_terminator.exit:                             ; preds = %for.body.i136.next_terminator.exit_crit_edge, %for.body.i136.next_terminator.exit_crit_edge223, %for.body.i136.next_terminator.exit_crit_edge224
  %tobool21.not = icmp eq ptr %first.addr.06.i, null
  br i1 %tobool21.not, label %next_terminator.exit.cleanup_crit_edge, label %next_terminator.exit.while.cond.preheader_crit_edge

next_terminator.exit.while.cond.preheader_crit_edge: ; preds = %next_terminator.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

next_terminator.exit.cleanup_crit_edge:           ; preds = %next_terminator.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.preheader:                             ; preds = %next_terminator.exit.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %i_end.1.ph = phi ptr [ %add.ptr9, %next_terminator.exit.while.cond.preheader_crit_edge ], [ %call, %if.end.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %i_end.1 = phi ptr [ %i_end.1.ph, %while.cond.preheader ], [ %arrayidx25, %while.cond.backedge ]
  %arrayidx25 = getelementptr i8, ptr %i_end.1, i32 -1
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %11, label %while.end [
    i8 32, label %while.cond.while.cond.backedge_crit_edge
    i8 9, label %while.cond.while.cond.backedge_crit_edge225
  ]

while.cond.while.cond.backedge_crit_edge225:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge225
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add.ptr29 = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 2
  %cmp.not4.i141 = icmp ugt ptr %add.ptr29, %i_end.1
  br i1 %cmp.not4.i141, label %while.end.cleanup_crit_edge, label %while.end.for.body.i143_crit_edge

while.end.for.body.i143_crit_edge:                ; preds = %while.end
  br label %for.body.i143

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i143:                                    ; preds = %for.inc.i146.for.body.i143_crit_edge, %while.end.for.body.i143_crit_edge
  %first.addr.05.i142 = phi ptr [ %incdec.ptr.i144, %for.inc.i146.for.body.i143_crit_edge ], [ %add.ptr29, %while.end.for.body.i143_crit_edge ]
  %13 = ptrtoint ptr %first.addr.05.i142 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %first.addr.05.i142, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %14, label %next_non_spacetab.exit148 [
    i8 32, label %for.body.i143.for.inc.i146_crit_edge
    i8 9, label %for.body.i143.for.inc.i146_crit_edge226
  ]

for.body.i143.for.inc.i146_crit_edge226:          ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i146

for.body.i143.for.inc.i146_crit_edge:             ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i146

for.inc.i146:                                     ; preds = %for.body.i143.for.inc.i146_crit_edge, %for.body.i143.for.inc.i146_crit_edge226
  %incdec.ptr.i144 = getelementptr i8, ptr %first.addr.05.i142, i32 1
  %cmp.not.i145 = icmp ugt ptr %incdec.ptr.i144, %i_end.1
  br i1 %cmp.not.i145, label %for.inc.i146.cleanup_crit_edge, label %for.inc.i146.for.body.i143_crit_edge

for.inc.i146.for.body.i143_crit_edge:             ; preds = %for.inc.i146
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i143

for.inc.i146.cleanup_crit_edge:                   ; preds = %for.inc.i146
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

next_non_spacetab.exit148:                        ; preds = %for.body.i143
  %tobool31.not = icmp eq ptr %first.addr.05.i142, null
  %cmp33 = icmp eq ptr %first.addr.05.i142, %i_end.1
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %next_non_spacetab.exit148.cleanup_crit_edge, label %if.end36

next_non_spacetab.exit148.cleanup_crit_edge:      ; preds = %next_non_spacetab.exit148
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end36:                                         ; preds = %next_non_spacetab.exit148
  %cmp.not5.i149 = icmp ugt ptr %first.addr.05.i142, %i_end.1
  br i1 %cmp.not5.i149, label %if.end36.if.end44_crit_edge, label %if.end36.for.body.i151_crit_edge

if.end36.for.body.i151_crit_edge:                 ; preds = %if.end36
  br label %for.body.i151

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

for.body.i151:                                    ; preds = %for.inc.i154.for.body.i151_crit_edge, %if.end36.for.body.i151_crit_edge
  %first.addr.06.i150 = phi ptr [ %incdec.ptr.i152, %for.inc.i154.for.body.i151_crit_edge ], [ %first.addr.05.i142, %if.end36.for.body.i151_crit_edge ]
  %16 = ptrtoint ptr %first.addr.06.i150 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first.addr.06.i150, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %17, label %for.inc.i154 [
    i8 32, label %for.body.i151.next_terminator.exit156_crit_edge
    i8 9, label %for.body.i151.next_terminator.exit156_crit_edge227
    i8 0, label %for.body.i151.next_terminator.exit156_crit_edge228
  ]

for.body.i151.next_terminator.exit156_crit_edge228: ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit156

for.body.i151.next_terminator.exit156_crit_edge227: ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit156

for.body.i151.next_terminator.exit156_crit_edge:  ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_terminator.exit156

for.inc.i154:                                     ; preds = %for.body.i151
  %incdec.ptr.i152 = getelementptr i8, ptr %first.addr.06.i150, i32 1
  %cmp.not.i153 = icmp ugt ptr %incdec.ptr.i152, %i_end.1
  br i1 %cmp.not.i153, label %for.inc.i154.if.end44_crit_edge, label %for.inc.i154.for.body.i151_crit_edge

for.inc.i154.for.body.i151_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i151

for.inc.i154.if.end44_crit_edge:                  ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

next_terminator.exit156:                          ; preds = %for.body.i151.next_terminator.exit156_crit_edge, %for.body.i151.next_terminator.exit156_crit_edge227, %for.body.i151.next_terminator.exit156_crit_edge228
  %tobool38.not = icmp eq ptr %first.addr.06.i150, null
  br i1 %tobool38.not, label %next_terminator.exit156.if.end44_crit_edge, label %land.lhs.true

next_terminator.exit156.if.end44_crit_edge:       ; preds = %next_terminator.exit156
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

land.lhs.true:                                    ; preds = %next_terminator.exit156
  %19 = ptrtoint ptr %first.addr.06.i150 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %first.addr.06.i150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp40.not = icmp eq i8 %20, 0
  %cmp.not4.i157 = icmp ugt ptr %first.addr.06.i150, %i_end.1
  %or.cond178 = select i1 %cmp40.not, i1 true, i1 %cmp.not4.i157
  br i1 %or.cond178, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.for.body.i159_crit_edge

land.lhs.true.for.body.i159_crit_edge:            ; preds = %land.lhs.true
  br label %for.body.i159

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

for.body.i159thread-pre-split:                    ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %incdec.ptr.i160 to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %incdec.ptr.i160, align 1
  br label %for.body.i159

for.body.i159:                                    ; preds = %for.body.i159thread-pre-split, %land.lhs.true.for.body.i159_crit_edge
  %22 = phi i8 [ %.pr, %for.body.i159thread-pre-split ], [ %20, %land.lhs.true.for.body.i159_crit_edge ]
  %first.addr.05.i158 = phi ptr [ %incdec.ptr.i160, %for.body.i159thread-pre-split ], [ %first.addr.06.i150, %land.lhs.true.for.body.i159_crit_edge ]
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %22, label %for.body.i159.if.end44_crit_edge [
    i8 32, label %for.body.i159.for.inc.i162_crit_edge
    i8 9, label %for.body.i159.for.inc.i162_crit_edge229
  ]

for.body.i159.for.inc.i162_crit_edge229:          ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i162

for.body.i159.for.inc.i162_crit_edge:             ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i162

for.body.i159.if.end44_crit_edge:                 ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

for.inc.i162:                                     ; preds = %for.body.i159.for.inc.i162_crit_edge, %for.body.i159.for.inc.i162_crit_edge229
  %incdec.ptr.i160 = getelementptr i8, ptr %first.addr.05.i158, i32 1
  %cmp.not.i161 = icmp ugt ptr %incdec.ptr.i160, %i_end.1
  br i1 %cmp.not.i161, label %for.inc.i162.if.end44_crit_edge, label %for.body.i159thread-pre-split

for.inc.i162.if.end44_crit_edge:                  ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.end44:                                         ; preds = %for.inc.i162.if.end44_crit_edge, %for.body.i159.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %next_terminator.exit156.if.end44_crit_edge, %for.inc.i154.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  %retval.0.i155176 = phi ptr [ %first.addr.06.i150, %land.lhs.true.if.end44_crit_edge ], [ null, %next_terminator.exit156.if.end44_crit_edge ], [ null, %if.end36.if.end44_crit_edge ], [ %first.addr.06.i150, %for.body.i159.if.end44_crit_edge ], [ %first.addr.06.i150, %for.inc.i162.if.end44_crit_edge ], [ null, %for.inc.i154.if.end44_crit_edge ]
  %i_arg.0 = phi ptr [ null, %land.lhs.true.if.end44_crit_edge ], [ null, %next_terminator.exit156.if.end44_crit_edge ], [ null, %if.end36.if.end44_crit_edge ], [ null, %for.inc.i162.if.end44_crit_edge ], [ %first.addr.05.i158, %for.body.i159.if.end44_crit_edge ], [ null, %for.inc.i154.if.end44_crit_edge ]
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %24 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interp_flags, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.end47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %call48 = tail call i32 @remove_arg_zero(ptr noundef %bprm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %interp = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 15
  %26 = ptrtoint ptr %interp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interp, align 4
  %call52 = tail call i32 @copy_string_kernel(ptr noundef %27, ptr noundef %bprm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %28 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %argc, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %argc, align 4
  %30 = ptrtoint ptr %i_end.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %i_end.1, align 1
  %tobool57.not = icmp eq ptr %i_arg.0, null
  br i1 %tobool57.not, label %if.end56.if.end66_crit_edge, label %if.then58

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then58:                                        ; preds = %if.end56
  %31 = ptrtoint ptr %retval.0.i155176 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %retval.0.i155176, align 1
  %call59 = tail call i32 @copy_string_kernel(ptr noundef nonnull %i_arg.0, ptr noundef %bprm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then58.cleanup_crit_edge, label %if.end63

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %argc, align 4
  %inc65 = add i32 %33, 1
  store i32 %inc65, ptr %argc, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %if.end56.if.end66_crit_edge
  %call67 = tail call i32 @copy_string_kernel(ptr noundef nonnull %first.addr.05.i142, ptr noundef %bprm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %34 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argc, align 4
  %inc72 = add i32 %35, 1
  store i32 %inc72, ptr %argc, align 4
  %call73 = tail call i32 @bprm_change_interp(ptr noundef nonnull %first.addr.05.i142, ptr noundef %bprm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end70.cleanup_crit_edge, label %if.end77

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  %call78 = tail call ptr @open_exec(ptr noundef nonnull %first.addr.05.i142) #3
  %cmp.i165 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %call78 to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  %interpreter = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 7
  %37 = ptrtoint ptr %interpreter to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call78, ptr %interpreter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then80, %if.end70.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %next_non_spacetab.exit148.cleanup_crit_edge, %for.inc.i146.cleanup_crit_edge, %while.end.cleanup_crit_edge, %next_terminator.exit.cleanup_crit_edge, %for.inc.i139.cleanup_crit_edge, %next_non_spacetab.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.then80 ], [ 0, %if.end82 ], [ -8, %lor.lhs.false.cleanup_crit_edge ], [ -8, %entry.cleanup_crit_edge ], [ -8, %next_non_spacetab.exit.cleanup_crit_edge ], [ -8, %next_terminator.exit.cleanup_crit_edge ], [ -8, %next_non_spacetab.exit148.cleanup_crit_edge ], [ -2, %if.end44.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call59, %if.then58.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call73, %if.end70.cleanup_crit_edge ], [ -8, %if.then12.cleanup_crit_edge ], [ -8, %while.end.cleanup_crit_edge ], [ -8, %for.inc.i146.cleanup_crit_edge ], [ -8, %for.inc.i139.cleanup_crit_edge ], [ -8, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_arg_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_string_kernel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bprm_change_interp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__initcall__kmod_binfmt_script__200_156_init_script_binfmt1, !1, !"__initcall__kmod_binfmt_script__200_156_init_script_binfmt1", i1 false, i1 false}
!1 = !{!"../fs/binfmt_script.c", i32 156, i32 1}
!2 = !{ptr @__exitcall_exit_script_binfmt, !3, !"__exitcall_exit_script_binfmt", i1 false, i1 false}
!3 = !{!"../fs/binfmt_script.c", i32 157, i32 1}
!4 = !{ptr @__UNIQUE_ID_file201, !5, !"__UNIQUE_ID_file201", i1 false, i1 false}
!5 = !{!"../fs/binfmt_script.c", i32 158, i32 1}
!6 = !{ptr @__UNIQUE_ID_license202, !5, !"__UNIQUE_ID_license202", i1 false, i1 false}
!7 = !{ptr @script_format, !8, !"script_format", i1 false, i1 false}
!8 = !{!"../fs/binfmt_script.c", i32 140, i32 28}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
