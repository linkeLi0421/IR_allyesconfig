; ModuleID = '/llk/IR_all_yes/kernel/regset.c_pt.bc'
source_filename = "../kernel/regset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+regset_get\22, \22a\22\09"
module asm "\09.weak\09__crc_regset_get\09\09\09\09"
module asm "\09.long\09__crc_regset_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regset_get:\09\09\09\09\09"
module asm "\09.asciz \09\22regset_get\22\09\09\09\09\09"
module asm "__kstrtabns_regset_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+regset_get_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_regset_get_alloc\09\09\09\09"
module asm "\09.long\09__crc_regset_get_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regset_get_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22regset_get_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_regset_get_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }

@__kstrtab_regset_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_regset_get = external dso_local constant [0 x i8], align 1
@__ksymtab_regset_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regset_get to i32), ptr @__kstrtab_regset_get, ptr @__kstrtabns_regset_get }, section "___ksymtab+regset_get", align 4
@__kstrtab_regset_get_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_regset_get_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_regset_get_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regset_get_alloc to i32), ptr @__kstrtab_regset_get_alloc, ptr @__kstrtabns_regset_get_alloc }, section "___ksymtab+regset_get_alloc", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [19 x i8] c"../kernel/regset.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 230, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 214, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 174, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_regset_get, ptr @__ksymtab_regset_get_alloc, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regset_get(ptr noundef %target, ptr noundef %regset, i32 noundef %size, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regset, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__regset_get.exit_crit_edge, label %if.end.i

entry.__regset_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__regset_get.exit

if.end.i:                                         ; preds = %entry
  %n.i = getelementptr inbounds %struct.user_regset, ptr %regset, i32 0, i32 4
  %2 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n.i, align 4
  %size1.i = getelementptr inbounds %struct.user_regset, ptr %regset, i32 0, i32 5
  %4 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size1.i, align 4
  %mul.i = mul i32 %5, %3
  %6 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %size) #4
  %tobool7.not.i = icmp eq ptr %data, null
  br i1 %tobool7.not.i, label %if.end8.i.i.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end8.i.i.i:                                    ; preds = %if.end.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #7
  %tobool9.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool9.not.i, label %if.end8.i.i.i.__regset_get.exit_crit_edge, label %if.end8.i.i.i.if.end12.i_crit_edge

if.end8.i.i.i.if.end12.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end8.i.i.i.__regset_get.exit_crit_edge:        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__regset_get.exit

if.end12.i:                                       ; preds = %if.end8.i.i.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %p.0.i = phi ptr [ %data, %if.end.i.if.end12.i_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i.if.end12.i_crit_edge ]
  %to_free.0.i = phi ptr [ null, %if.end.i.if.end12.i_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i.if.end12.i_crit_edge ]
  %7 = ptrtoint ptr %regset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regset, align 4
  %9 = ptrtoint ptr %p.0.i to i32
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %9, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %6, 1
  %call15.i = tail call i32 %8(ptr noundef %target, ptr noundef %regset, [2 x i32] %.fca.1.insert.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %to_free.0.i) #4
  br label %__regset_get.exit

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %6, %call15.i
  br label %__regset_get.exit

__regset_get.exit:                                ; preds = %if.end18.i, %if.then17.i, %if.end8.i.i.i.__regset_get.exit_crit_edge, %entry.__regset_get.exit_crit_edge
  %retval.0.i = phi i32 [ %call15.i, %if.then17.i ], [ %sub.i, %if.end18.i ], [ -95, %entry.__regset_get.exit_crit_edge ], [ -12, %if.end8.i.i.i.__regset_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regset_get_alloc(ptr noundef %target, ptr noundef %regset, i32 noundef %size, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %data, align 4
  %1 = ptrtoint ptr %regset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regset, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.__regset_get.exit_crit_edge, label %if.then8.i

entry.__regset_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__regset_get.exit

if.then8.i:                                       ; preds = %entry
  %n.i = getelementptr inbounds %struct.user_regset, ptr %regset, i32 0, i32 4
  %3 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n.i, align 4
  %size1.i = getelementptr inbounds %struct.user_regset, ptr %regset, i32 0, i32 5
  %5 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size1.i, align 4
  %mul.i = mul i32 %6, %4
  %7 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %size) #4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #7
  %tobool9.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool9.not.i, label %if.then8.i.__regset_get.exit_crit_edge, label %if.end12.i

if.then8.i.__regset_get.exit_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__regset_get.exit

if.end12.i:                                       ; preds = %if.then8.i
  %8 = ptrtoint ptr %regset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regset, align 4
  %10 = ptrtoint ptr %call9.i.i.i to i32
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %10, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %7, 1
  %call15.i = tail call i32 %9(ptr noundef %target, ptr noundef %regset, [2 x i32] %.fca.1.insert.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #4
  br label %__regset_get.exit

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %data, align 4
  %sub.i = sub i32 %7, %call15.i
  br label %__regset_get.exit

__regset_get.exit:                                ; preds = %if.end18.i, %if.then17.i, %if.then8.i.__regset_get.exit_crit_edge, %entry.__regset_get.exit_crit_edge
  %retval.0.i = phi i32 [ %call15.i, %if.then17.i ], [ %sub.i, %if.end18.i ], [ -95, %entry.__regset_get.exit_crit_edge ], [ -12, %if.then8.i.__regset_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_regset_to_user(ptr noundef %target, ptr nocapture noundef readonly %view, i32 noundef %setno, i32 noundef %offset, i32 noundef %size, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regsets = getelementptr inbounds %struct.user_regset_view, ptr %view, i32 0, i32 1
  %0 = ptrtoint ptr %regsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regsets, align 4
  %arrayidx = getelementptr %struct.user_regset, ptr %1, i32 %setno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.then8.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then8.i.i:                                     ; preds = %entry
  %n.i.i = getelementptr %struct.user_regset, ptr %1, i32 %setno, i32 4
  %4 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n.i.i, align 4
  %size1.i.i = getelementptr %struct.user_regset, ptr %1, i32 %setno, i32 5
  %6 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size1.i.i, align 4
  %mul.i.i = mul i32 %7, %5
  %8 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %size) #4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #7
  %tobool9.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.then8.i.i.if.end_crit_edge, label %if.end12.i.i

if.then8.i.i.if.end_crit_edge:                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end12.i.i:                                     ; preds = %if.then8.i.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %call9.i.i.i.i to i32
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %11, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %8, 1
  %call15.i.i = tail call i32 %10(ptr noundef %target, ptr noundef %arrayidx, [2 x i32] %.fca.1.insert.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %if.then17.i.i, label %regset_get_alloc.exit

if.then17.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #4
  br label %if.end

regset_get_alloc.exit:                            ; preds = %if.end12.i.i
  %sub.i.i = sub i32 %8, %call15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp, label %if.then.i.i.i, label %regset_get_alloc.exit.if.end_crit_edge

regset_get_alloc.exit.if.end_crit_edge:           ; preds = %regset_get_alloc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i.i.i:                                    ; preds = %regset_get_alloc.exit
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i, i1 noundef zeroext true) #4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #4
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.then.i.i.i.if.end_crit_edge, label %if.end.i.i

if.then.i.i.i.if.end_crit_edge:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %sub.i.i, i32 -1226833920) #8, !srcloc !20
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i) #4
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end

if.end:                                           ; preds = %if.then2.i.i, %if.end.i.i.if.end_crit_edge, %if.then.i.i.i.if.end_crit_edge, %regset_get_alloc.exit.if.end_crit_edge, %if.then17.i.i, %if.then8.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %buf.09 = phi ptr [ %call9.i.i.i.i, %regset_get_alloc.exit.if.end_crit_edge ], [ null, %if.then17.i.i ], [ null, %entry.if.end_crit_edge ], [ null, %if.then8.i.i.if.end_crit_edge ], [ %call9.i.i.i.i, %if.then.i.i.i.if.end_crit_edge ], [ %call9.i.i.i.i, %if.end.i.i.if.end_crit_edge ], [ %call9.i.i.i.i, %if.then2.i.i ]
  %ret.0 = phi i32 [ %sub.i.i, %regset_get_alloc.exit.if.end_crit_edge ], [ %call15.i.i, %if.then17.i.i ], [ -95, %entry.if.end_crit_edge ], [ -12, %if.then8.i.i.if.end_crit_edge ], [ -14, %if.then.i.i.i.if.end_crit_edge ], [ -14, %if.end.i.i.if.end_crit_edge ], [ %phi.sel, %if.then2.i.i ]
  tail call void @kfree(ptr noundef %buf.09) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_regset_get, !1, !"__ksymtab_regset_get", i1 false, i1 false}
!1 = !{!"../kernel/regset.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_regset_get_alloc, !3, !"__ksymtab_regset_get_alloc", i1 false, i1 false}
!3 = !{!"../kernel/regset.c", i32 50, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2152100840, i64 2152100865}
