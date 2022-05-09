; ModuleID = '/llk/IR_all_yes/mm/kasan/shadow.c_pt.bc'
source_filename = "../mm/kasan/shadow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__kasan_check_read\22, \22a\22\09"
module asm "\09.weak\09__crc___kasan_check_read\09\09\09\09"
module asm "\09.long\09__crc___kasan_check_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kasan_check_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__kasan_check_read\22\09\09\09\09\09"
module asm "__kstrtabns___kasan_check_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kasan_check_write\22, \22a\22\09"
module asm "\09.weak\09__crc___kasan_check_write\09\09\09\09"
module asm "\09.long\09__crc___kasan_check_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kasan_check_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__kasan_check_write\22\09\09\09\09\09"
module asm "__kstrtabns___kasan_check_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kasan_poison\22, \22a\22\09"
module asm "\09.weak\09__crc_kasan_poison\09\09\09\09"
module asm "\09.long\09__crc_kasan_poison\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasan_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22kasan_poison\22\09\09\09\09\09"
module asm "__kstrtabns_kasan_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }

@__kstrtab___kasan_check_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___kasan_check_read = external dso_local constant [0 x i8], align 1
@__ksymtab___kasan_check_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kasan_check_read to i32), ptr @__kstrtab___kasan_check_read, ptr @__kstrtabns___kasan_check_read }, section "___ksymtab+__kasan_check_read", align 4
@__kstrtab___kasan_check_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___kasan_check_write = external dso_local constant [0 x i8], align 1
@__ksymtab___kasan_check_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kasan_check_write to i32), ptr @__kstrtab___kasan_check_write, ptr @__kstrtabns___kasan_check_write }, section "___ksymtab+__kasan_check_write", align 4
@.str = private unnamed_addr constant [18 x i8] c"mm/kasan/shadow.c\00", align 1
@__kstrtab_kasan_poison = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasan_poison = external dso_local constant [0 x i8], align 1
@__ksymtab_kasan_poison = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasan_poison to i32), ptr @__kstrtab_kasan_poison, ptr @__kstrtabns_kasan_poison }, section "___ksymtab+kasan_poison", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kfence_pool = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___kasan_check_read, ptr @__ksymtab___kasan_check_write, ptr @__ksymtab_kasan_poison], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @__kasan_check_read(ptr noundef %p, i32 noundef %size) #0 align 64 {
entry:
  %0 = ptrtoint ptr %p to i32
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %0, i32 noundef %size, i1 noundef zeroext false, i32 noundef %2) #5
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_check_range(i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @__kasan_check_write(ptr noundef %p, i32 noundef %size) #0 align 64 {
entry:
  %0 = ptrtoint ptr %p to i32
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %0, i32 noundef %size, i1 noundef zeroext true, i32 noundef %2) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @memset(ptr noundef %addr, i32 noundef %c, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %addr to i32
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %0, i32 noundef %len, i1 noundef zeroext true, i32 noundef %2) #5
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__memset(ptr noundef %addr, i32 noundef %c, i32 noundef %len) #5
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @memmove(ptr noundef %dest, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %src to i32
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %0, i32 noundef %len, i1 noundef zeroext false, i32 noundef %2) #5
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %dest to i32
  %call1 = tail call zeroext i1 @kasan_check_range(i32 noundef %3, i32 noundef %len, i1 noundef zeroext true, i32 noundef %2) #5
  br i1 %call1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @__memmove(ptr noundef %dest, ptr noundef %src, i32 noundef %len) #5
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @memcpy(ptr noundef %dest, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %src to i32
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %0, i32 noundef %len, i1 noundef zeroext false, i32 noundef %2) #5
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %dest to i32
  %call1 = tail call zeroext i1 @kasan_check_range(i32 noundef %3, i32 noundef %len, i1 noundef zeroext true, i32 noundef %2) #5
  br i1 %call1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @__memcpy(ptr noundef %dest, ptr noundef %src, i32 noundef %len) #5
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_poison(ptr noundef %addr, i32 noundef %size, i8 noundef zeroext %value, i1 zeroext %init) #0 align 64 {
entry:
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 2097152
  %tobool.i = icmp ne ptr %0, null
  %1 = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %and = and i32 %sub.ptr.lhs.cast.i, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %do.end, !prof !8

do.end:                                           ; preds = %if.end4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end4
  %and30 = and i32 %size, 7
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end63, label %do.end47, !prof !8

do.end47:                                         ; preds = %if.end28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end63:                                         ; preds = %if.end28
  %shr.i = lshr i32 %sub.ptr.lhs.cast.i, 3
  %2 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %2, i32 -1627389952
  %add.ptr = getelementptr i8, ptr %addr, i32 %size
  %3 = ptrtoint ptr %add.ptr to i32
  %shr.i76 = lshr i32 %3, 3
  %4 = inttoptr i32 %shr.i76 to ptr
  %add.ptr.i77 = getelementptr i8, ptr %4, i32 -1627389952
  %conv = zext i8 %value to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i77 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub nsw i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call66 = tail call ptr @__memset(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %sub.ptr.sub) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end47, %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn writeonly uwtable(sync)
define dso_local void @kasan_poison_last_granule(ptr noundef %addr, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  %and = and i32 %size, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %addr, i32 %size
  %0 = ptrtoint ptr %add.ptr to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %add.ptr.i, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_unpoison(ptr noundef %addr, i32 noundef %size, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, 2097152
  %tobool.i = icmp ne ptr %0, null
  %1 = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %sub.ptr.lhs.cast.i, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end63.i, label %do.end, !prof !8

do.end:                                           ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end63.i:                                       ; preds = %if.end
  %sub = add i32 %size, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %shr.i.i = lshr i32 %sub.ptr.lhs.cast.i, 3
  %2 = inttoptr i32 %shr.i.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -1627389952
  %add.ptr.i = getelementptr i8, ptr %addr, i32 %add
  %3 = ptrtoint ptr %add.ptr.i to i32
  %shr.i76.i = lshr i32 %3, 3
  %4 = inttoptr i32 %shr.i76.i to ptr
  %add.ptr.i77.i = getelementptr i8, ptr %4, i32 -1627389952
  %sub.ptr.lhs.cast.i32 = ptrtoint ptr %add.ptr.i77.i to i32
  %sub.ptr.rhs.cast.i33 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i34 = sub nsw i32 %sub.ptr.lhs.cast.i32, %sub.ptr.rhs.cast.i33
  %call66.i = tail call ptr @__memset(ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef %sub.ptr.sub.i34) #5
  %and.i35 = and i32 %size, 7
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %cleanup, label %if.then1.i

if.then1.i:                                       ; preds = %if.end63.i
  %add.ptr.i37 = getelementptr i8, ptr %addr, i32 %size
  %5 = ptrtoint ptr %add.ptr.i37 to i32
  %shr.i.i38 = lshr i32 %5, 3
  %6 = inttoptr i32 %shr.i.i38 to ptr
  %add.ptr.i.i39 = getelementptr i8, ptr %6, i32 -1627389952
  %conv.i = trunc i32 %and.i35 to i8
  store i8 %conv.i, ptr %add.ptr.i.i39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %if.end63.i, %do.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local i32 @kasan_module_alloc(ptr noundef %addr, i32 noundef %size, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %addr to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = ptrtoint ptr %add.ptr.i to i32
  %sub = add i32 %size, 7
  %shr = lshr i32 %sub, 3
  %sub1 = add nsw i32 %shr, -1
  %or = or i32 %sub1, 4095
  %add2 = add nsw i32 %or, 1
  %and = and i32 %2, 4095
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !8

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 513, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  %add25 = add i32 %add2, %2
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or26 = or i32 %3, 512
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %call27 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %add2, i32 noundef 1, i32 noundef %2, i32 noundef %add25, i32 noundef 3264, i32 noundef %or26, i32 noundef 64, i32 noundef -1, ptr noundef %4) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.end24
  %call30 = tail call ptr @find_vm_area(ptr noundef %addr) #5
  %call31 = tail call ptr @__memset(ptr noundef nonnull %call27, i32 noundef 0, i32 noundef %add2) #5
  %flags = getelementptr inbounds %struct.vm_struct, ptr %call30, i32 0, i32 3
  %5 = load i32, ptr %flags, align 4
  %or32 = or i32 %5, 128
  store i32 %or32, ptr %flags, align 4
  tail call void @kmemleak_ignore(ptr noundef nonnull %call27) #5
  %6 = load i32, ptr %flags, align 4
  %and34 = and i32 %6, 2048
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %if.then29
  tail call void @kmemleak_vmalloc(ptr noundef %call30, i32 noundef %size, i32 noundef %gfp_mask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.then29, %if.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then36 ], [ 0, %if.then29 ], [ -12, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore(ptr noundef) local_unnamed_addr #1 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_vmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_free_shadow(ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  %flags = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 3
  %0 = load i32, ptr %flags, align 4
  %and = and i32 %0, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 1
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %1 to i32
  %shr.i = lshr i32 %2, 3
  %3 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1627389952
  tail call void @vfree(ptr noundef %add.ptr.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{!"branch_weights", i32 2000, i32 1}
