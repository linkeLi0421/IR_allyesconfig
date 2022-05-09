; ModuleID = '/llk/IR_all_yes/lib/strncpy_from_user.c_pt.bc'
source_filename = "../lib/strncpy_from_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+strncpy_from_user\22, \22a\22\09"
module asm "\09.weak\09__crc_strncpy_from_user\09\09\09\09"
module asm "\09.long\09__crc_strncpy_from_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncpy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strncpy_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_strncpy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lib/strncpy_from_user.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_strncpy_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncpy_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strncpy_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncpy_from_user to i32), ptr @__kstrtab_strncpy_from_user, ptr @__kstrtabns_strncpy_from_user }, section "___ksymtab+strncpy_from_user", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [27 x i8] c"../lib/strncpy_from_user.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 117, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_strncpy_from_user, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_user(ptr noundef %dst, ptr noundef %src, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 117) #6
  %call = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp slt i32 %count, 1
  br i1 %cmp, label %if.end.cleanup24_crit_edge, label %if.end3, !prof !13

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp ult ptr %src, inttoptr (i32 -1226833920 to ptr)
  br i1 %cmp4, label %if.then11, label %if.end3.cleanup24_crit_edge, !prof !14

if.end3.cleanup24_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.then11:                                        ; preds = %if.end3
  %0 = ptrtoint ptr %src to i32
  %sub = sub i32 -1226833920, %0
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %call16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %count) #6
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %count, i1 noundef zeroext false) #6
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %1, i32 -1226833920) #7, !srcloc !15
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp18 = icmp eq i32 %asmresult, 0
  br i1 %cmp18, label %if.then19, label %if.then11.cleanup24_crit_edge

if.then11.cleanup24_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.then19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp114.i = icmp ugt i32 %1, 3
  br i1 %cmp114.i, label %if.then19.while.body.i_crit_edge, label %if.then19.byte_at_a_time.i_crit_edge

if.then19.byte_at_a_time.i_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %byte_at_a_time.i

if.then19.while.body.i_crit_edge:                 ; preds = %if.then19
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then19.while.body.i_crit_edge
  %max.addr.0116.i = phi i32 [ %sub.i, %cleanup.i.while.body.i_crit_edge ], [ %1, %if.then19.while.body.i_crit_edge ]
  %res.0115.i = phi i32 [ %add13.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.then19.while.body.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 41) #6
  %add.ptr.i = getelementptr i8, ptr %src, i32 %res.0115.i
  %3 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #2, !srcloc !16
  %and.i.i = and i32 %5, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i, i32 -1226833921) #6, !srcloc !19
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  %asmresult1.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %while.body.i.while.body18.i.preheader_crit_edge, !prof !14

while.body.i.while.body18.i.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body18.i.preheader

do.end.i:                                         ; preds = %while.body.i
  %or.i83.i = or i32 %asmresult1.i, 2139062143
  %add.i.i = add i32 %asmresult1.i, -16843009
  %neg.i.i = xor i32 %or.i83.i, -1
  %and.i84.i = and i32 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.i.not.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool.i.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i.le = extractvalue { i32, i32 } %6, 1
  %and.i86.i = and i32 %asmresult1.i.le, 2139062143
  %add.i87.i = add nuw i32 %and.i86.i, 2139062143
  %or.i88.i = or i32 %add.i87.i, %or.i83.i
  %neg.i89.i = xor i32 %or.i88.i, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %neg.i89.i, i1 false) #6, !range !20
  %sub.i.i = sub nsw i32 31, %7
  %shl.i = shl i32 -2, %sub.i.i
  %and.i = and i32 %shl.i, %asmresult1.i.le
  %add.ptr9.i = getelementptr i8, ptr %dst, i32 %res.0115.i
  %8 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %add.ptr9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %or.i88.i)
  %tobool.not.i.i = icmp ugt i32 %or.i88.i, -65537
  %shr.i.i = lshr i32 %neg.i89.i, 16
  %mask.addr.0.i.i = select i1 %tobool.not.i.i, i32 %neg.i89.i, i32 %shr.i.i
  %byte.0.i.i = select i1 %tobool.not.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mask.addr.0.i.i)
  %tobool3.not.i.i = icmp ult i32 %mask.addr.0.i.i, 256
  %add4.i.i = zext i1 %tobool3.not.i.i to i32
  %cond.i.i = or i32 %byte.0.i.i, %res.0115.i
  %add.i = or i32 %cond.i.i, %add4.i.i
  br label %cleanup24

cleanup.i:                                        ; preds = %do.end.i
  %add.ptr12.i = getelementptr i8, ptr %dst, i32 %res.0115.i
  %9 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %asmresult1.i, ptr %add.ptr12.i, align 4
  %add13.i = add i32 %res.0115.i, 4
  %sub.i = add i32 %max.addr.0116.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.byte_at_a_time.i_crit_edge

cleanup.i.byte_at_a_time.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %byte_at_a_time.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

byte_at_a_time.i:                                 ; preds = %cleanup.i.byte_at_a_time.i_crit_edge, %if.then19.byte_at_a_time.i_crit_edge
  %res.0.lcssa.i = phi i32 [ 0, %if.then19.byte_at_a_time.i_crit_edge ], [ %add13.i, %cleanup.i.byte_at_a_time.i_crit_edge ]
  %max.addr.0.lcssa.i = phi i32 [ %1, %if.then19.byte_at_a_time.i_crit_edge ], [ %sub.i, %cleanup.i.byte_at_a_time.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.0.lcssa.i)
  %tobool17.not120.i = icmp eq i32 %max.addr.0.lcssa.i, 0
  br i1 %tobool17.not120.i, label %byte_at_a_time.i.while.end51.i_crit_edge, label %byte_at_a_time.i.while.body18.i.preheader_crit_edge

byte_at_a_time.i.while.body18.i.preheader_crit_edge: ; preds = %byte_at_a_time.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body18.i.preheader

byte_at_a_time.i.while.end51.i_crit_edge:         ; preds = %byte_at_a_time.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end51.i

while.body18.i.preheader:                         ; preds = %byte_at_a_time.i.while.body18.i.preheader_crit_edge, %while.body.i.while.body18.i.preheader_crit_edge
  %max.addr.3122.i.ph = phi i32 [ %max.addr.0.lcssa.i, %byte_at_a_time.i.while.body18.i.preheader_crit_edge ], [ %max.addr.0116.i, %while.body.i.while.body18.i.preheader_crit_edge ]
  %res.3121.i.ph = phi i32 [ %res.0.lcssa.i, %byte_at_a_time.i.while.body18.i.preheader_crit_edge ], [ %res.0115.i, %while.body.i.while.body18.i.preheader_crit_edge ]
  br label %while.body18.i

while.body18.i:                                   ; preds = %cleanup48.i.while.body18.i_crit_edge, %while.body18.i.preheader
  %max.addr.3122.i = phi i32 [ %dec.i, %cleanup48.i.while.body18.i_crit_edge ], [ %max.addr.3122.i.ph, %while.body18.i.preheader ]
  %res.3121.i = phi i32 [ %inc.i, %cleanup48.i.while.body18.i_crit_edge ], [ %res.3121.i.ph, %while.body18.i.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 72) #6
  %add.ptr24.i = getelementptr i8, ptr %src, i32 %res.3121.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i.i79.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i79.i to ptr
  %cpu_domain.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i80.i) #2, !srcloc !16
  %and.i81.i = and i32 %12, -13
  %or.i82.i = or i32 %and.i81.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i82.i) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr24.i, i32 -1226833921) #6, !srcloc !21
  %asmresult31.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult31.i)
  %tobool34.not.i = icmp eq i32 %asmresult31.i, 0
  br i1 %tobool34.not.i, label %do.end44.i, label %while.body18.i.efault.i_crit_edge, !prof !14

while.body18.i.efault.i_crit_edge:                ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %efault.i

do.end44.i:                                       ; preds = %while.body18.i
  %asmresult32.i = extractvalue { i32, i32 } %13, 1
  %conv.i = trunc i32 %asmresult32.i to i8
  %arrayidx.i = getelementptr i8, ptr %dst, i32 %res.3121.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool45.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool45.not.i, label %do.end44.i.cleanup24_crit_edge, label %cleanup48.i

do.end44.i.cleanup24_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

cleanup48.i:                                      ; preds = %do.end44.i
  %inc.i = add i32 %res.3121.i, 1
  %dec.i = add i32 %max.addr.3122.i, -1
  %tobool17.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool17.not.i, label %cleanup48.i.while.end51.i_crit_edge, label %cleanup48.i.while.body18.i_crit_edge

cleanup48.i.while.body18.i_crit_edge:             ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body18.i

cleanup48.i.while.end51.i_crit_edge:              ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end51.i

while.end51.i:                                    ; preds = %cleanup48.i.while.end51.i_crit_edge, %byte_at_a_time.i.while.end51.i_crit_edge
  %res.3.lcssa.i = phi i32 [ %res.0.lcssa.i, %byte_at_a_time.i.while.end51.i_crit_edge ], [ %inc.i, %cleanup48.i.while.end51.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %res.3.lcssa.i, i32 %count)
  %cmp52.not.i = icmp ult i32 %res.3.lcssa.i, %count
  br i1 %cmp52.not.i, label %while.end51.i.efault.i_crit_edge, label %while.end51.i.cleanup24_crit_edge

while.end51.i.cleanup24_crit_edge:                ; preds = %while.end51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

while.end51.i.efault.i_crit_edge:                 ; preds = %while.end51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %efault.i

efault.i:                                         ; preds = %while.end51.i.efault.i_crit_edge, %while.body18.i.efault.i_crit_edge
  br label %cleanup24

cleanup24:                                        ; preds = %efault.i, %while.end51.i.cleanup24_crit_edge, %do.end44.i.cleanup24_crit_edge, %cleanup.thread.i, %if.then11.cleanup24_crit_edge, %if.end3.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i32 [ -14, %entry.cleanup24_crit_edge ], [ 0, %if.end.cleanup24_crit_edge ], [ -14, %efault.i ], [ %res.3.lcssa.i, %while.end51.i.cleanup24_crit_edge ], [ %add.i, %cleanup.thread.i ], [ -14, %if.then11.cleanup24_crit_edge ], [ -14, %if.end3.cleanup24_crit_edge ], [ %res.3121.i, %do.end44.i.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/strncpy_from_user.c", i32 117, i32 2}
!2 = !{ptr @__ksymtab_strncpy_from_user, !3, !"__ksymtab_strncpy_from_user", i1 false, i1 false}
!3 = !{!"../lib/strncpy_from_user.c", i32 146, i32 1}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153318977, i64 2153319002}
!16 = !{i64 2995605}
!17 = !{i64 2995802}
!18 = !{i64 2150481035}
!19 = !{i64 2153282993, i64 2153283303, i64 2153283617, i64 2153283931}
!20 = !{i32 0, i32 33}
!21 = !{i64 2153310252, i64 2153310562, i64 2153310876, i64 2153311190}
