; ModuleID = '/llk/IR_all_yes/fs/ntfs3/bitfunc.c_pt.bc'
source_filename = "../fs/ntfs3/bitfunc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@fill_mask = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", [23 x i8] zeroinitializer }, align 32
@zero_mask = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"fill_mask\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 18, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"zero_mask\00", align 1
@___asan_gen_.5 = private constant [22 x i8] c"../fs/ntfs3/bitfunc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 17 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @fill_mask, ptr @zero_mask], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_mask to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_mask to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @are_bits_clear(ptr noundef %lmap, i32 noundef %bit, i32 noundef %nbits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %bit, 7
  %shr = lshr i32 %bit, 3
  %add.ptr = getelementptr i8, ptr %lmap, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end18

if.then:                                          ; preds = %entry
  %sub = sub nuw nsw i32 8, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nbits)
  %cmp.not = icmp ult i32 %sub, %nbits
  br i1 %cmp.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %tobool2.not = icmp eq i32 %nbits, 0
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %lor.rhs

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

lor.rhs:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  %add = add i32 %and, %nbits
  %arrayidx = getelementptr [9 x i8], ptr @fill_mask, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and4104 = and i8 %3, %1
  %arrayidx5 = getelementptr [9 x i8], ptr @zero_mask, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %and7105 = and i8 %and4104, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and7105)
  %tobool8.not = icmp eq i8 %and7105, 0
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %arrayidx10 = getelementptr [9 x i8], ptr @zero_mask, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %and12103 = and i8 %9, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12103)
  %tobool13.not = icmp eq i8 %and12103, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %sub17 = sub i32 %nbits, %sub
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %entry.if.end18_crit_edge
  %nbits.addr.0 = phi i32 [ %sub17, %if.end15 ], [ %nbits, %entry.if.end18_crit_edge ]
  %map.0 = phi ptr [ %incdec.ptr, %if.end15 ], [ %add.ptr, %entry.if.end18_crit_edge ]
  %10 = ptrtoint ptr %map.0 to i32
  %and19 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end34_crit_edge, label %if.then21

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end34

if.then21:                                        ; preds = %if.end18
  %sub22 = sub nuw nsw i32 4, %and19
  %mul = shl nuw nsw i32 %sub22, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %nbits.addr.0, i32 %mul)
  %cmp23.not = icmp ult i32 %nbits.addr.0, %mul
  br i1 %cmp23.not, label %if.then21.if.end34_crit_edge, label %for.body.preheader

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end34

for.body.preheader:                               ; preds = %if.then21
  %sub27 = sub i32 %nbits.addr.0, %mul
  %uglygep = getelementptr i8, ptr %map.0, i32 %sub22
  %11 = ptrtoint ptr %map.0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %map.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and19)
  %tobool28.not = icmp eq i32 %and19, 3
  br i1 %tobool28.not, label %for.inc.if.end34_crit_edge, label %for.body.1

for.inc.if.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end34

for.body.1:                                       ; preds = %for.inc
  %incdec.ptr32 = getelementptr i8, ptr %map.0, i32 1
  %13 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool29.not.1 = icmp eq i8 %14, 0
  br i1 %tobool29.not.1, label %for.inc.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and19)
  %tobool28.not.1 = icmp eq i32 %and19, 2
  br i1 %tobool28.not.1, label %for.inc.1.if.end34_crit_edge, label %for.body.2

for.inc.1.if.end34_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end34

for.body.2:                                       ; preds = %for.inc.1
  %incdec.ptr32.1 = getelementptr i8, ptr %map.0, i32 2
  %15 = ptrtoint ptr %incdec.ptr32.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr32.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not.2 = icmp eq i8 %16, 0
  br i1 %tobool29.not.2, label %for.body.2.if.end34_crit_edge, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.2.if.end34_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end34

if.end34:                                         ; preds = %for.body.2.if.end34_crit_edge, %for.inc.1.if.end34_crit_edge, %for.inc.if.end34_crit_edge, %if.then21.if.end34_crit_edge, %if.end18.if.end34_crit_edge
  %nbits.addr.1 = phi i32 [ %nbits.addr.0, %if.then21.if.end34_crit_edge ], [ %nbits.addr.0, %if.end18.if.end34_crit_edge ], [ %sub27, %for.body.2.if.end34_crit_edge ], [ %sub27, %for.inc.1.if.end34_crit_edge ], [ %sub27, %for.inc.if.end34_crit_edge ]
  %map.2 = phi ptr [ %map.0, %if.then21.if.end34_crit_edge ], [ %map.0, %if.end18.if.end34_crit_edge ], [ %uglygep, %for.body.2.if.end34_crit_edge ], [ %uglygep, %for.inc.1.if.end34_crit_edge ], [ %uglygep, %for.inc.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits.addr.1)
  %tobool36.not114 = icmp ult i32 %nbits.addr.1, 32
  br i1 %tobool36.not114, label %if.end34.for.end44_crit_edge, label %for.body37.preheader

if.end34.for.end44_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end44

for.body37.preheader:                             ; preds = %if.end34
  %div101 = lshr i32 %nbits.addr.1, 5
  %17 = shl nuw nsw i32 %div101, 2
  %uglygep124 = getelementptr i8, ptr %map.2, i32 %17
  br label %for.body37

for.body37:                                       ; preds = %for.inc41.for.body37_crit_edge, %for.body37.preheader
  %map.3116 = phi ptr [ %add.ptr43, %for.inc41.for.body37_crit_edge ], [ %map.2, %for.body37.preheader ]
  %pos.1115 = phi i32 [ %dec42, %for.inc41.for.body37_crit_edge ], [ %div101, %for.body37.preheader ]
  %18 = ptrtoint ptr %map.3116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map.3116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %for.inc41, label %for.body37.cleanup_crit_edge

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc41:                                        ; preds = %for.body37
  %dec42 = add nsw i32 %pos.1115, -1
  %add.ptr43 = getelementptr i8, ptr %map.3116, i32 4
  %tobool36.not = icmp eq i32 %dec42, 0
  br i1 %tobool36.not, label %for.inc41.for.end44_crit_edge, label %for.inc41.for.body37_crit_edge

for.inc41.for.body37_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body37

for.inc41.for.end44_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end44

for.end44:                                        ; preds = %for.inc41.for.end44_crit_edge, %if.end34.for.end44_crit_edge
  %map.3.lcssa = phi ptr [ %map.2, %if.end34.for.end44_crit_edge ], [ %uglygep124, %for.inc41.for.end44_crit_edge ]
  %rem = lshr i32 %nbits.addr.1, 3
  %shr45 = and i32 %rem, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr45)
  %tobool47.not118 = icmp eq i32 %shr45, 0
  br i1 %tobool47.not118, label %for.end44.for.end55_crit_edge, label %for.body48.preheader

for.end44.for.end55_crit_edge:                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end55

for.body48.preheader:                             ; preds = %for.end44
  %uglygep125 = getelementptr i8, ptr %map.3.lcssa, i32 %shr45
  %20 = ptrtoint ptr %map.3.lcssa to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %map.3.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool49.not = icmp eq i8 %21, 0
  br i1 %tobool49.not, label %for.inc52, label %for.body48.preheader.cleanup_crit_edge

for.body48.preheader.cleanup_crit_edge:           ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc52:                                        ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr45)
  %tobool47.not = icmp eq i32 %shr45, 1
  br i1 %tobool47.not, label %for.inc52.for.end55_crit_edge, label %for.body48.1

for.inc52.for.end55_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end55

for.body48.1:                                     ; preds = %for.inc52
  %incdec.ptr54 = getelementptr i8, ptr %map.3.lcssa, i32 1
  %22 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool49.not.1 = icmp eq i8 %23, 0
  br i1 %tobool49.not.1, label %for.inc52.1, label %for.body48.1.cleanup_crit_edge

for.body48.1.cleanup_crit_edge:                   ; preds = %for.body48.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc52.1:                                      ; preds = %for.body48.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr45)
  %tobool47.not.1 = icmp eq i32 %shr45, 2
  br i1 %tobool47.not.1, label %for.inc52.1.for.end55_crit_edge, label %for.body48.2

for.inc52.1.for.end55_crit_edge:                  ; preds = %for.inc52.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end55

for.body48.2:                                     ; preds = %for.inc52.1
  %incdec.ptr54.1 = getelementptr i8, ptr %map.3.lcssa, i32 2
  %24 = ptrtoint ptr %incdec.ptr54.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr54.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool49.not.2 = icmp eq i8 %25, 0
  br i1 %tobool49.not.2, label %for.body48.2.for.end55_crit_edge, label %for.body48.2.cleanup_crit_edge

for.body48.2.cleanup_crit_edge:                   ; preds = %for.body48.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body48.2.for.end55_crit_edge:                 ; preds = %for.body48.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end55

for.end55:                                        ; preds = %for.body48.2.for.end55_crit_edge, %for.inc52.1.for.end55_crit_edge, %for.inc52.for.end55_crit_edge, %for.end44.for.end55_crit_edge
  %map.4.lcssa = phi ptr [ %map.3.lcssa, %for.end44.for.end55_crit_edge ], [ %uglygep125, %for.body48.2.for.end55_crit_edge ], [ %uglygep125, %for.inc52.1.for.end55_crit_edge ], [ %uglygep125, %for.inc52.for.end55_crit_edge ]
  %and56 = and i32 %nbits.addr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %for.end55.if.end64_crit_edge, label %land.lhs.true

for.end55.if.end64_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end64

land.lhs.true:                                    ; preds = %for.end55
  %26 = ptrtoint ptr %map.4.lcssa to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %map.4.lcssa, align 1
  %arrayidx59 = getelementptr [9 x i8], ptr @fill_mask, i32 0, i32 %and56
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx59, align 1
  %and61102 = and i8 %29, %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61102)
  %tobool62.not = icmp eq i8 %and61102, 0
  br i1 %tobool62.not, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %for.end55.if.end64_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %land.lhs.true.cleanup_crit_edge, %for.body48.2.cleanup_crit_edge, %for.body48.1.cleanup_crit_edge, %for.body48.preheader.cleanup_crit_edge, %for.body37.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs, %if.then1.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end64 ], [ true, %if.then1.cleanup_crit_edge ], [ %tobool8.not, %lor.rhs ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %for.body48.2.cleanup_crit_edge ], [ false, %for.body48.1.cleanup_crit_edge ], [ false, %for.body48.preheader.cleanup_crit_edge ], [ false, %for.body37.cleanup_crit_edge ], [ false, %for.body.2.cleanup_crit_edge ], [ false, %for.body.1.cleanup_crit_edge ], [ false, %for.body.preheader.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @are_bits_set(ptr noundef %lmap, i32 noundef %bit, i32 noundef %nbits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %bit, 7
  %shr = lshr i32 %bit, 3
  %add.ptr = getelementptr i8, ptr %lmap, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end24

if.then:                                          ; preds = %entry
  %sub = sub nuw nsw i32 8, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nbits)
  %cmp.not = icmp ult i32 %sub, %nbits
  br i1 %cmp.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %tobool6.not = icmp eq i32 %nbits, 0
  br i1 %tobool6.not, label %if.then1.cleanup_crit_edge, label %lor.rhs

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

lor.rhs:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #3
  %add = add i32 %and, %nbits
  %arrayidx = getelementptr [9 x i8], ptr @fill_mask, i32 0, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [9 x i8], ptr @zero_mask, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %and4125 = and i8 %3, %1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %and9126 = and i8 %5, %and4125
  call void @__sanitizer_cov_trace_cmp1(i8 %and9126, i8 %and4125)
  %cmp11 = icmp eq i8 %and9126, %and4125
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx13 = getelementptr [9 x i8], ptr @zero_mask, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %and16124 = and i8 %9, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and16124, i8 %7)
  %cmp18.not = icmp eq i8 %and16124, %7
  br i1 %cmp18.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %sub23 = sub i32 %nbits, %sub
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %entry.if.end24_crit_edge
  %nbits.addr.0 = phi i32 [ %sub23, %if.end21 ], [ %nbits, %entry.if.end24_crit_edge ]
  %map.0 = phi ptr [ %incdec.ptr, %if.end21 ], [ %add.ptr, %entry.if.end24_crit_edge ]
  %10 = ptrtoint ptr %map.0 to i32
  %and25 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end42_crit_edge, label %if.then27

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end42

if.then27:                                        ; preds = %if.end24
  %sub28 = sub nuw nsw i32 4, %and25
  %mul = shl nuw nsw i32 %sub28, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %nbits.addr.0, i32 %mul)
  %cmp29.not = icmp ult i32 %nbits.addr.0, %mul
  br i1 %cmp29.not, label %if.then27.if.end42_crit_edge, label %for.body.preheader

if.then27.if.end42_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end42

for.body.preheader:                               ; preds = %if.then27
  %sub33 = sub i32 %nbits.addr.0, %mul
  %uglygep = getelementptr i8, ptr %map.0, i32 %sub28
  %11 = ptrtoint ptr %map.0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %map.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp36.not = icmp eq i8 %12, -1
  br i1 %cmp36.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and25)
  %tobool34.not = icmp eq i32 %and25, 3
  br i1 %tobool34.not, label %for.inc.if.end42_crit_edge, label %for.body.1

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end42

for.body.1:                                       ; preds = %for.inc
  %incdec.ptr40 = getelementptr i8, ptr %map.0, i32 1
  %13 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp36.not.1 = icmp eq i8 %14, -1
  br i1 %cmp36.not.1, label %for.inc.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and25)
  %tobool34.not.1 = icmp eq i32 %and25, 2
  br i1 %tobool34.not.1, label %for.inc.1.if.end42_crit_edge, label %for.body.2

for.inc.1.if.end42_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end42

for.body.2:                                       ; preds = %for.inc.1
  %incdec.ptr40.1 = getelementptr i8, ptr %map.0, i32 2
  %15 = ptrtoint ptr %incdec.ptr40.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr40.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp36.not.2 = icmp eq i8 %16, -1
  br i1 %cmp36.not.2, label %for.body.2.if.end42_crit_edge, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.2.if.end42_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end42

if.end42:                                         ; preds = %for.body.2.if.end42_crit_edge, %for.inc.1.if.end42_crit_edge, %for.inc.if.end42_crit_edge, %if.then27.if.end42_crit_edge, %if.end24.if.end42_crit_edge
  %nbits.addr.1 = phi i32 [ %nbits.addr.0, %if.then27.if.end42_crit_edge ], [ %nbits.addr.0, %if.end24.if.end42_crit_edge ], [ %sub33, %for.body.2.if.end42_crit_edge ], [ %sub33, %for.inc.1.if.end42_crit_edge ], [ %sub33, %for.inc.if.end42_crit_edge ]
  %map.2 = phi ptr [ %map.0, %if.then27.if.end42_crit_edge ], [ %map.0, %if.end24.if.end42_crit_edge ], [ %uglygep, %for.body.2.if.end42_crit_edge ], [ %uglygep, %for.inc.1.if.end42_crit_edge ], [ %uglygep, %for.inc.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits.addr.1)
  %tobool44.not135 = icmp ult i32 %nbits.addr.1, 32
  br i1 %tobool44.not135, label %if.end42.for.end53_crit_edge, label %for.body45.preheader

if.end42.for.end53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end53

for.body45.preheader:                             ; preds = %if.end42
  %div122 = lshr i32 %nbits.addr.1, 5
  %17 = shl nuw nsw i32 %div122, 2
  %uglygep145 = getelementptr i8, ptr %map.2, i32 %17
  br label %for.body45

for.body45:                                       ; preds = %for.inc50.for.body45_crit_edge, %for.body45.preheader
  %map.3137 = phi ptr [ %add.ptr52, %for.inc50.for.body45_crit_edge ], [ %map.2, %for.body45.preheader ]
  %pos.1136 = phi i32 [ %dec51, %for.inc50.for.body45_crit_edge ], [ %div122, %for.body45.preheader ]
  %18 = ptrtoint ptr %map.3137 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map.3137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp46.not = icmp eq i32 %19, -1
  br i1 %cmp46.not, label %for.inc50, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc50:                                        ; preds = %for.body45
  %dec51 = add nsw i32 %pos.1136, -1
  %add.ptr52 = getelementptr i8, ptr %map.3137, i32 4
  %tobool44.not = icmp eq i32 %dec51, 0
  br i1 %tobool44.not, label %for.inc50.for.end53_crit_edge, label %for.inc50.for.body45_crit_edge

for.inc50.for.body45_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body45

for.inc50.for.end53_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end53

for.end53:                                        ; preds = %for.inc50.for.end53_crit_edge, %if.end42.for.end53_crit_edge
  %map.3.lcssa = phi ptr [ %map.2, %if.end42.for.end53_crit_edge ], [ %uglygep145, %for.inc50.for.end53_crit_edge ]
  %rem = lshr i32 %nbits.addr.1, 3
  %shr54 = and i32 %rem, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr54)
  %tobool56.not139 = icmp eq i32 %shr54, 0
  br i1 %tobool56.not139, label %for.end53.for.end66_crit_edge, label %for.body57.preheader

for.end53.for.end66_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end66

for.body57.preheader:                             ; preds = %for.end53
  %uglygep146 = getelementptr i8, ptr %map.3.lcssa, i32 %shr54
  %20 = ptrtoint ptr %map.3.lcssa to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %map.3.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp59.not = icmp eq i8 %21, -1
  br i1 %cmp59.not, label %for.inc63, label %for.body57.preheader.cleanup_crit_edge

for.body57.preheader.cleanup_crit_edge:           ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc63:                                        ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr54)
  %tobool56.not = icmp eq i32 %shr54, 1
  br i1 %tobool56.not, label %for.inc63.for.end66_crit_edge, label %for.body57.1

for.inc63.for.end66_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end66

for.body57.1:                                     ; preds = %for.inc63
  %incdec.ptr65 = getelementptr i8, ptr %map.3.lcssa, i32 1
  %22 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp59.not.1 = icmp eq i8 %23, -1
  br i1 %cmp59.not.1, label %for.inc63.1, label %for.body57.1.cleanup_crit_edge

for.body57.1.cleanup_crit_edge:                   ; preds = %for.body57.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.inc63.1:                                      ; preds = %for.body57.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr54)
  %tobool56.not.1 = icmp eq i32 %shr54, 2
  br i1 %tobool56.not.1, label %for.inc63.1.for.end66_crit_edge, label %for.body57.2

for.inc63.1.for.end66_crit_edge:                  ; preds = %for.inc63.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end66

for.body57.2:                                     ; preds = %for.inc63.1
  %incdec.ptr65.1 = getelementptr i8, ptr %map.3.lcssa, i32 2
  %24 = ptrtoint ptr %incdec.ptr65.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr65.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp59.not.2 = icmp eq i8 %25, -1
  br i1 %cmp59.not.2, label %for.body57.2.for.end66_crit_edge, label %for.body57.2.cleanup_crit_edge

for.body57.2.cleanup_crit_edge:                   ; preds = %for.body57.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body57.2.for.end66_crit_edge:                 ; preds = %for.body57.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end66

for.end66:                                        ; preds = %for.body57.2.for.end66_crit_edge, %for.inc63.1.for.end66_crit_edge, %for.inc63.for.end66_crit_edge, %for.end53.for.end66_crit_edge
  %map.4.lcssa = phi ptr [ %map.3.lcssa, %for.end53.for.end66_crit_edge ], [ %uglygep146, %for.body57.2.for.end66_crit_edge ], [ %uglygep146, %for.inc63.1.for.end66_crit_edge ], [ %uglygep146, %for.inc63.for.end66_crit_edge ]
  %and67 = and i32 %nbits.addr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.end66.if.end79_crit_edge, label %if.then69

for.end66.if.end79_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end79

if.then69:                                        ; preds = %for.end66
  %arrayidx70 = getelementptr [9 x i8], ptr @fill_mask, i32 0, i32 %and67
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx70, align 1
  %28 = ptrtoint ptr %map.4.lcssa to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %map.4.lcssa, align 1
  %and73123 = and i8 %29, %27
  call void @__sanitizer_cov_trace_cmp1(i8 %and73123, i8 %27)
  %cmp75.not = icmp eq i8 %and73123, %27
  br i1 %cmp75.not, label %if.then69.if.end79_crit_edge, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end79

if.end79:                                         ; preds = %if.then69.if.end79_crit_edge, %for.end66.if.end79_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then69.cleanup_crit_edge, %for.body57.2.cleanup_crit_edge, %for.body57.1.cleanup_crit_edge, %for.body57.preheader.cleanup_crit_edge, %for.body45.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs, %if.then1.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end79 ], [ true, %if.then1.cleanup_crit_edge ], [ %cmp11, %lor.rhs ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then69.cleanup_crit_edge ], [ false, %for.body57.2.cleanup_crit_edge ], [ false, %for.body57.1.cleanup_crit_edge ], [ false, %for.body57.preheader.cleanup_crit_edge ], [ false, %for.body45.cleanup_crit_edge ], [ false, %for.body.2.cleanup_crit_edge ], [ false, %for.body.1.cleanup_crit_edge ], [ false, %for.body.preheader.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @fill_mask, !1, !"fill_mask", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/bitfunc.c", i32 18, i32 17}
!2 = !{ptr @zero_mask, !3, !"zero_mask", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/bitfunc.c", i32 25, i32 17}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
