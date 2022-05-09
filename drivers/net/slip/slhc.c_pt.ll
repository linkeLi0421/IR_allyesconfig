; ModuleID = '/llk/IR_all_yes/drivers/net/slip/slhc.c_pt.bc'
source_filename = "../drivers/net/slip/slhc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+slhc_init\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_init\09\09\09\09"
module asm "\09.long\09__crc_slhc_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_init\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+slhc_free\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_free\09\09\09\09"
module asm "\09.long\09__crc_slhc_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_free\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+slhc_remember\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_remember\09\09\09\09"
module asm "\09.long\09__crc_slhc_remember\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_remember:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_remember\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_remember:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+slhc_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_compress\09\09\09\09"
module asm "\09.long\09__crc_slhc_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_compress\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+slhc_uncompress\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_uncompress\09\09\09\09"
module asm "\09.long\09__crc_slhc_uncompress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_uncompress:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_uncompress\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_uncompress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+slhc_toss\22, \22a\22\09"
module asm "\09.weak\09__crc_slhc_toss\09\09\09\09"
module asm "\09.long\09__crc_slhc_toss\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slhc_toss:\09\09\09\09\09"
module asm "\09.asciz \09\22slhc_toss\22\09\09\09\09\09"
module asm "__kstrtabns_slhc_toss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.slcompress = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cstate = type { i8, i8, ptr, %struct.iphdr, %struct.tcphdr, [64 x i8], [64 x i8], i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@__kstrtab_slhc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_init to i32), ptr @__kstrtab_slhc_init, ptr @__kstrtabns_slhc_init }, section "___ksymtab+slhc_init", align 4
@__kstrtab_slhc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_free to i32), ptr @__kstrtab_slhc_free, ptr @__kstrtabns_slhc_free }, section "___ksymtab+slhc_free", align 4
@__kstrtab_slhc_remember = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_remember = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_remember = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_remember to i32), ptr @__kstrtab_slhc_remember, ptr @__kstrtabns_slhc_remember }, section "___ksymtab+slhc_remember", align 4
@__kstrtab_slhc_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_compress to i32), ptr @__kstrtab_slhc_compress, ptr @__kstrtabns_slhc_compress }, section "___ksymtab+slhc_compress", align 4
@__kstrtab_slhc_uncompress = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_uncompress = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_uncompress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_uncompress to i32), ptr @__kstrtab_slhc_uncompress, ptr @__kstrtabns_slhc_uncompress }, section "___ksymtab+slhc_uncompress", align 4
@__kstrtab_slhc_toss = external dso_local constant [0 x i8], align 1
@__kstrtabns_slhc_toss = external dso_local constant [0 x i8], align 1
@__ksymtab_slhc_toss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slhc_toss to i32), ptr @__kstrtab_slhc_toss, ptr @__kstrtabns_slhc_toss }, section "___ksymtab+slhc_toss", align 4
@__UNIQUE_ID_file593 = internal constant [32 x i8] c"slhc.file=drivers/net/slip/slhc\00", section ".modinfo", align 1
@__UNIQUE_ID_license594 = internal constant [26 x i8] c"slhc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 8, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 15]
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file593, ptr @__UNIQUE_ID_license594, ptr @__ksymtab_slhc_compress, ptr @__ksymtab_slhc_free, ptr @__ksymtab_slhc_init, ptr @__ksymtab_slhc_remember, ptr @__ksymtab_slhc_toss, ptr @__ksymtab_slhc_uncompress], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @slhc_init(i32 noundef %rslots, i32 noundef %tslots) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %tslots, %rslots
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %.not = icmp ult i32 %0, 256
  br i1 %.not, label %if.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup59_crit_edge, label %if.end8

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rslots)
  %cmp9.not = icmp eq i32 %rslots, 0
  br i1 %cmp9.not, label %if.end8.if.end16_crit_edge, label %if.end8.i.i

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end8.i.i:                                      ; preds = %if.end8
  %mul = mul nuw nsw i32 %rslots, 180
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %rstate = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %rstate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %rstate, align 4
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i.out_free_crit_edge, label %cleanup.thread

if.end8.i.i.out_free_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

cleanup.thread:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = trunc i32 %rslots to i8
  %conv = add i8 %3, -1
  %rslot_limit = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rslot_limit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %rslot_limit, align 1
  br label %if.end16

if.end16:                                         ; preds = %cleanup.thread, %if.end8.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tslots)
  %cmp17.not = icmp eq i32 %tslots, 0
  br i1 %cmp17.not, label %if.end56.critedge, label %if.end8.i.i130

if.end8.i.i130:                                   ; preds = %if.end16
  %mul20 = mul nuw nsw i32 %tslots, 180
  %call9.i.i129 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul20, i32 noundef 3520) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i129, ptr %call7.i.i, align 8
  %tobool23.not = icmp eq ptr %call9.i.i129, null
  br i1 %tobool23.not, label %out_free2, label %if.then36.critedge

if.then36.critedge:                               ; preds = %if.end8.i.i130
  %6 = trunc i32 %tslots to i8
  %conv27 = add i8 %6, -1
  %tslot_limit = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %tslot_limit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv27, ptr %tslot_limit, align 8
  %xmit_oldest.c = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %xmit_oldest.c to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %xmit_oldest.c, align 2
  %xmit_current.c = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %xmit_current.c to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %xmit_current.c, align 1
  %recv_current.c = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %recv_current.c to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %recv_current.c, align 4
  %flags.c = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %flags.c to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.c, align 1
  %13 = or i8 %12, 1
  store i8 %13, ptr %flags.c, align 1
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv27)
  %cmp41137.not = icmp eq i8 %conv27, 0
  br i1 %cmp41137.not, label %if.then36.critedge.for.end_crit_edge, label %for.body.preheader

if.then36.critedge.for.end_crit_edge:             ; preds = %if.then36.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.then36.critedge
  %16 = zext i8 %conv27 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %16, %for.body.preheader ], [ %sub45, %for.body.for.body_crit_edge ]
  %conv43 = trunc i32 %indvars.iv to i8
  %arrayidx = getelementptr %struct.cstate, ptr %15, i32 %indvars.iv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv43, ptr %arrayidx, align 4
  %sub45 = add nsw i32 %indvars.iv, -1
  %arrayidx46 = getelementptr %struct.cstate, ptr %15, i32 %sub45
  %next = getelementptr %struct.cstate, ptr %15, i32 %indvars.iv, i32 2
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx46, ptr %next, align 4
  %cmp41 = icmp ugt i32 %indvars.iv, 1
  br i1 %cmp41, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then36.critedge.for.end_crit_edge
  %19 = ptrtoint ptr %tslot_limit to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tslot_limit, align 8
  %idxprom50 = zext i8 %20 to i32
  %arrayidx51 = getelementptr %struct.cstate, ptr %15, i32 %idxprom50
  %next53 = getelementptr inbounds %struct.cstate, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %next53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx51, ptr %next53, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %15, align 4
  br label %cleanup59

if.end56.critedge:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %xmit_oldest.c101 = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %xmit_oldest.c101 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %xmit_oldest.c101, align 2
  %xmit_current.c102 = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %xmit_current.c102 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %xmit_current.c102, align 1
  %recv_current.c103 = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %recv_current.c103 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %recv_current.c103, align 4
  %flags.c104 = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %flags.c104 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.c104, align 1
  %28 = or i8 %27, 1
  store i8 %28, ptr %flags.c104, align 1
  br label %cleanup59

out_free2:                                        ; preds = %if.end8.i.i130
  call void @__sanitizer_cov_trace_pc() #10
  %rstate57 = getelementptr inbounds %struct.slcompress, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %rstate57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rstate57, align 4
  tail call void @kfree(ptr noundef %30) #8
  br label %out_free

out_free:                                         ; preds = %out_free2, %if.end8.i.i.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup59

cleanup59:                                        ; preds = %out_free, %if.end56.critedge, %for.end, %if.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end56.critedge ], [ %call7.i.i, %for.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup59_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup59_crit_edge ], [ inttoptr (i32 -12 to ptr), %out_free ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @slhc_free(ptr noundef %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %comp, null
  %cmp.i = icmp ugt ptr %comp, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %rstate = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 1
  %2 = ptrtoint ptr %rstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstate, align 4
  %cmp4.not = icmp eq ptr %3, null
  br i1 %cmp4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %comp) #8
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slhc_compress(ptr nocapture noundef %comp, ptr nocapture noundef readonly %icp, i32 noundef %isize, ptr noundef %ocp, ptr nocapture noundef writeonly %cpp, i32 noundef %compress_cid) #3 align 64 {
entry:
  %new_seq = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  %xmit_oldest = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 4
  %2 = ptrtoint ptr %xmit_oldest to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xmit_oldest, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.cstate, ptr %1, i32 %idxprom
  %next = getelementptr %struct.cstate, ptr %1, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_seq) #8
  %6 = getelementptr inbounds [16 x i8], ptr %new_seq, i32 0, i32 1
  %7 = getelementptr inbounds [16 x i8], ptr %new_seq, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %isize)
  %cmp = icmp ult i32 %isize, 20
  %8 = call ptr @memset(ptr %new_seq, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %icp, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp1.not = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp5 = icmp ult i8 %bf.clear, 5
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 6
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp10.not = icmp eq i8 %11, 6
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.then19

lor.lhs.false12:                                  ; preds = %if.end8
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 4
  %12 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_off, align 2
  %14 = and i16 %13, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.end22, label %if.else

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %sls_o_nontcp = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 8
  %15 = ptrtoint ptr %sls_o_nontcp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sls_o_nontcp, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %sls_o_nontcp, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  %sls_o_tcp = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 9
  %17 = ptrtoint ptr %sls_o_tcp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sls_o_tcp, align 4
  %inc20 = add i32 %18, 1
  store i32 %inc20, ptr %sls_o_tcp, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false12
  %19 = shl nuw nsw i8 %bf.clear, 2
  %mul = zext i8 %19 to i32
  %add = add nuw nsw i32 %mul, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %isize)
  %cmp26 = icmp ugt i32 %add, %isize
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %icp, i32 %mul
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 4
  %20 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load30 = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load30)
  %cmp33 = icmp ult i16 %bf.load30, 20480
  br i1 %cmp33, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %21 = lshr i16 %bf.load30, 10
  %22 = and i16 %21, 60
  %mul41 = zext i16 %22 to i32
  %add42 = add nuw nsw i32 %mul41, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %isize)
  %cmp43 = icmp sgt i32 %add42, %isize
  %23 = and i16 %bf.load30, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool50.not = icmp ne i16 %23, 0
  %or.cond = select i1 %cmp43, i1 true, i1 %tobool50.not
  %bf.clear53 = and i16 %bf.load30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear53)
  %tobool55.not = icmp ne i16 %bf.clear53, 0
  %or.cond611 = select i1 %or.cond, i1 true, i1 %tobool55.not
  %24 = and i16 %bf.load30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool61.not = icmp ne i16 %24, 0
  %or.cond612 = select i1 %or.cond611, i1 true, i1 %tobool61.not
  %25 = and i16 %bf.load30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool66.not = icmp eq i16 %25, 0
  %or.cond613 = select i1 %or.cond612, i1 true, i1 %tobool66.not
  br i1 %or.cond613, label %if.then67, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end36
  %saddr = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 9
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 1
  %sls_o_searches = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 12
  br label %for.cond

if.then67:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %sls_o_tcp68 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 9
  %26 = ptrtoint ptr %sls_o_tcp68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sls_o_tcp68, align 4
  %inc69 = add i32 %27, 1
  store i32 %inc69, ptr %sls_o_tcp68, align 4
  br label %cleanup

for.cond:                                         ; preds = %if.end96, %for.cond.preheader
  %lcs.0 = phi ptr [ %cs.0, %if.end96 ], [ %arrayidx, %for.cond.preheader ]
  %cs.0 = phi ptr [ %45, %if.end96 ], [ %5, %for.cond.preheader ]
  %28 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saddr, align 4
  %saddr71 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %saddr71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saddr71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp72 = icmp eq i32 %29, %31
  br i1 %cmp72, label %land.lhs.true, label %for.cond.if.end92_crit_edge

for.cond.if.end92_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true:                                    ; preds = %for.cond
  %32 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr, align 4
  %daddr75 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %daddr75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %daddr75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp76 = icmp eq i32 %33, %35
  br i1 %cmp76, label %land.lhs.true78, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true78:                                  ; preds = %land.lhs.true
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr, align 4
  %cs_tcp = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4
  %38 = ptrtoint ptr %cs_tcp to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cs_tcp, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp82 = icmp eq i16 %37, %39
  br i1 %cmp82, label %land.lhs.true84, label %land.lhs.true78.if.end92_crit_edge

land.lhs.true78.if.end92_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true84:                                  ; preds = %land.lhs.true78
  %40 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dest, align 2
  %dest87 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %dest87 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dest87, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp89 = icmp eq i16 %41, %43
  br i1 %cmp89, label %found, label %land.lhs.true84.if.end92_crit_edge

land.lhs.true84.if.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true84.if.end92_crit_edge, %land.lhs.true78.if.end92_crit_edge, %land.lhs.true.if.end92_crit_edge, %for.cond.if.end92_crit_edge
  %cmp93 = icmp eq ptr %cs.0, %arrayidx
  br i1 %cmp93, label %for.end, label %if.end96

if.end96:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %next97 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 2
  %44 = ptrtoint ptr %next97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next97, align 4
  %46 = ptrtoint ptr %sls_o_searches to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sls_o_searches, align 4
  %inc98 = add i32 %47, 1
  store i32 %inc98, ptr %sls_o_searches, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %cs_ip.le = getelementptr %struct.cstate, ptr %1, i32 %idxprom, i32 3
  %sls_o_misses = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 13
  %48 = ptrtoint ptr %sls_o_misses to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sls_o_misses, align 4
  %inc99 = add i32 %49, 1
  store i32 %inc99, ptr %sls_o_misses, align 4
  %50 = ptrtoint ptr %lcs.0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %lcs.0, align 4
  %52 = ptrtoint ptr %xmit_oldest to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %xmit_oldest, align 2
  br label %uncompressed

found:                                            ; preds = %land.lhs.true84
  %cs_ip.le665 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3
  %cmp101 = icmp eq ptr %lcs.0, %arrayidx
  br i1 %cmp101, label %found.if.end117_crit_edge, label %if.else104

found.if.end117_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.else104:                                       ; preds = %found
  %cmp105 = icmp eq ptr %cs.0, %arrayidx
  br i1 %cmp105, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %lcs.0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lcs.0, align 4
  %55 = ptrtoint ptr %xmit_oldest to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %xmit_oldest, align 2
  br label %if.end117

if.else110:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %next111 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 2
  %56 = ptrtoint ptr %next111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next111, align 4
  %next112 = getelementptr inbounds %struct.cstate, ptr %lcs.0, i32 0, i32 2
  %58 = ptrtoint ptr %next112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %next112, align 4
  %59 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %next, align 4
  store ptr %60, ptr %next111, align 4
  store ptr %cs.0, ptr %next, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.else110, %if.then107, %found.if.end117_crit_edge
  %61 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load119 = load i8, ptr %icp, align 4
  %62 = ptrtoint ptr %cs_ip.le665 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load123 = load i8, ptr %cs_ip.le665, align 4
  %cmp126.not.unshifted = xor i8 %bf.load123, %bf.load119
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cmp126.not.unshifted)
  %cmp126.not = icmp ult i8 %cmp126.not.unshifted, 16
  br i1 %cmp126.not, label %lor.lhs.false128, label %if.end117.uncompressed_crit_edge

if.end117.uncompressed_crit_edge:                 ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false128:                                 ; preds = %if.end117
  %bf.clear130 = and i8 %bf.load119, 15
  %bf.clear134 = and i8 %bf.load123, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear130, i8 %bf.clear134)
  %cmp136.not = icmp eq i8 %bf.clear130, %bf.clear134
  br i1 %cmp136.not, label %lor.lhs.false138, label %lor.lhs.false128.uncompressed_crit_edge

lor.lhs.false128.uncompressed_crit_edge:          ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false138:                                 ; preds = %lor.lhs.false128
  %tos = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 1
  %63 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tos, align 1
  %tos141 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %tos141 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tos141, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp143.not = icmp eq i8 %64, %66
  br i1 %cmp143.not, label %lor.lhs.false145, label %lor.lhs.false138.uncompressed_crit_edge

lor.lhs.false138.uncompressed_crit_edge:          ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false145:                                 ; preds = %lor.lhs.false138
  %67 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %frag_off, align 2
  %frag_off150 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 4
  %69 = ptrtoint ptr %frag_off150 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %frag_off150, align 2
  %71 = xor i16 %70, %68
  %72 = and i16 %71, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp153.not = icmp eq i16 %72, 0
  br i1 %cmp153.not, label %lor.lhs.false155, label %lor.lhs.false145.uncompressed_crit_edge

lor.lhs.false145.uncompressed_crit_edge:          ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false155:                                 ; preds = %lor.lhs.false145
  %ttl = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 5
  %73 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ttl, align 4
  %ttl158 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 5
  %75 = ptrtoint ptr %ttl158 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ttl158, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp160.not = icmp eq i8 %74, %76
  br i1 %cmp160.not, label %lor.lhs.false162, label %lor.lhs.false155.uncompressed_crit_edge

lor.lhs.false155.uncompressed_crit_edge:          ; preds = %lor.lhs.false155
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false162:                                 ; preds = %lor.lhs.false155
  %77 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load164 = load i16, ptr %doff, align 4
  %doff168 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %doff168 to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load169 = load i16, ptr %doff168, align 4
  %cmp172.not.unshifted = xor i16 %bf.load169, %bf.load164
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %cmp172.not.unshifted)
  %cmp172.not = icmp ult i16 %cmp172.not.unshifted, 4096
  br i1 %cmp172.not, label %lor.lhs.false174, label %lor.lhs.false162.uncompressed_crit_edge

lor.lhs.false162.uncompressed_crit_edge:          ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

lor.lhs.false174:                                 ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear130)
  %cmp178 = icmp ugt i8 %bf.clear130, 5
  br i1 %cmp178, label %land.lhs.true180, label %lor.lhs.false174.lor.lhs.false189_crit_edge

lor.lhs.false174.lor.lhs.false189_crit_edge:      ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false189

land.lhs.true180:                                 ; preds = %lor.lhs.false174
  %add.ptr181 = getelementptr %struct.iphdr, ptr %icp, i32 1
  %cs_ipopt = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 5
  %79 = shl nuw nsw i8 %bf.clear130, 2
  %sub = zext i8 %79 to i32
  %mul186 = add nsw i32 %sub, -20
  %bcmp610 = tail call i32 @bcmp(ptr %add.ptr181, ptr %cs_ipopt, i32 %mul186) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp610)
  %cmp187.not = icmp eq i32 %bcmp610, 0
  br i1 %cmp187.not, label %land.lhs.true180.lor.lhs.false189_crit_edge, label %land.lhs.true180.uncompressed_crit_edge

land.lhs.true180.uncompressed_crit_edge:          ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

land.lhs.true180.lor.lhs.false189_crit_edge:      ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %land.lhs.true180.lor.lhs.false189_crit_edge, %lor.lhs.false174.lor.lhs.false189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %bf.load164)
  %cmp194 = icmp ugt i16 %bf.load164, 24575
  br i1 %cmp194, label %land.lhs.true196, label %lor.lhs.false189.if.end209_crit_edge

lor.lhs.false189.if.end209_crit_edge:             ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

land.lhs.true196:                                 ; preds = %lor.lhs.false189
  %add.ptr197 = getelementptr %struct.tcphdr, ptr %add.ptr, i32 1
  %cs_tcpopt = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 6
  %80 = lshr i16 %bf.load164, 10
  %81 = and i16 %80, 60
  %sub203 = zext i16 %81 to i32
  %mul204 = add nsw i32 %sub203, -20
  %bcmp = tail call i32 @bcmp(ptr %add.ptr197, ptr %cs_tcpopt, i32 %mul204) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp206.not = icmp eq i32 %bcmp, 0
  br i1 %cmp206.not, label %land.lhs.true196.if.end209_crit_edge, label %land.lhs.true196.uncompressed_crit_edge

land.lhs.true196.uncompressed_crit_edge:          ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

land.lhs.true196.if.end209_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.end209:                                        ; preds = %land.lhs.true196.if.end209_crit_edge, %lor.lhs.false189.if.end209_crit_edge
  %82 = and i16 %bf.load164, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool213.not = icmp eq i16 %82, 0
  %urg_ptr221 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 7
  %83 = ptrtoint ptr %urg_ptr221 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %urg_ptr221, align 2
  br i1 %tobool213.not, label %if.else220, label %if.then214

if.then214:                                       ; preds = %if.end209
  %85 = add i16 %84, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %85)
  %86 = icmp ult i16 %85, -255
  br i1 %86, label %if.then.i, label %if.then214.encode.exit_crit_edge

if.then214.encode.exit_crit_edge:                 ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode.exit

if.then.i:                                        ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %new_seq to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %new_seq, align 1
  %88 = lshr i16 %84, 8
  %conv1.i.i = trunc i16 %88 to i8
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv1.i.i, ptr %6, align 1
  br label %encode.exit

encode.exit:                                      ; preds = %if.then.i, %if.then214.encode.exit_crit_edge
  %.sink.i = phi i32 [ 3, %if.then.i ], [ 1, %if.then214.encode.exit_crit_edge ]
  %cp.sink.i = phi ptr [ %7, %if.then.i ], [ %new_seq, %if.then214.encode.exit_crit_edge ]
  %conv5.i = trunc i16 %84 to i8
  %incdec.ptr6.i = getelementptr i8, ptr %new_seq, i32 %.sink.i
  %90 = ptrtoint ptr %cp.sink.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv5.i, ptr %cp.sink.i, align 1
  br label %if.end229

if.else220:                                       ; preds = %if.end209
  %urg_ptr223 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 7
  %91 = ptrtoint ptr %urg_ptr223 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %urg_ptr223, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %92)
  %cmp225.not = icmp eq i16 %84, %92
  br i1 %cmp225.not, label %if.else220.if.end229_crit_edge, label %if.else220.uncompressed_crit_edge

if.else220.uncompressed_crit_edge:                ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

if.else220.if.end229_crit_edge:                   ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.end229:                                        ; preds = %if.else220.if.end229_crit_edge, %encode.exit
  %changes.0 = phi i16 [ 1, %encode.exit ], [ 0, %if.else220.if.end229_crit_edge ]
  %cp.0 = phi ptr [ %incdec.ptr6.i, %encode.exit ], [ %new_seq, %if.else220.if.end229_crit_edge ]
  %window = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 5
  %93 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %window, align 2
  %window231 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 5
  %95 = ptrtoint ptr %window231 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %window231, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp234.not = icmp eq i16 %94, %96
  br i1 %cmp234.not, label %if.end229.if.end242_crit_edge, label %if.then236

if.end229.if.end242_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

if.then236:                                       ; preds = %if.end229
  %sub233 = sub i16 %94, %96
  %97 = add i16 %sub233, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %97)
  %98 = icmp ult i16 %97, -255
  br i1 %98, label %if.then.i622, label %if.then236.encode.exit627_crit_edge

if.then236.encode.exit627_crit_edge:              ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode.exit627

if.then.i622:                                     ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i619 = getelementptr i8, ptr %cp.0, i32 1
  %99 = ptrtoint ptr %cp.0 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %cp.0, align 1
  %100 = lshr i16 %sub233, 8
  %conv1.i.i620 = trunc i16 %100 to i8
  %incdec.ptr.i.i621 = getelementptr i8, ptr %cp.0, i32 2
  %101 = ptrtoint ptr %incdec.ptr.i619 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv1.i.i620, ptr %incdec.ptr.i619, align 1
  br label %encode.exit627

encode.exit627:                                   ; preds = %if.then.i622, %if.then236.encode.exit627_crit_edge
  %.sink.i623 = phi i32 [ 3, %if.then.i622 ], [ 1, %if.then236.encode.exit627_crit_edge ]
  %cp.sink.i624 = phi ptr [ %incdec.ptr.i.i621, %if.then.i622 ], [ %cp.0, %if.then236.encode.exit627_crit_edge ]
  %conv5.i625 = trunc i16 %sub233 to i8
  %incdec.ptr6.i626 = getelementptr i8, ptr %cp.0, i32 %.sink.i623
  %102 = ptrtoint ptr %cp.sink.i624 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv5.i625, ptr %cp.sink.i624, align 1
  %103 = or i16 %changes.0, 2
  br label %if.end242

if.end242:                                        ; preds = %encode.exit627, %if.end229.if.end242_crit_edge
  %changes.1 = phi i16 [ %103, %encode.exit627 ], [ %changes.0, %if.end229.if.end242_crit_edge ]
  %cp.1 = phi ptr [ %incdec.ptr6.i626, %encode.exit627 ], [ %cp.0, %if.end229.if.end242_crit_edge ]
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 3
  %104 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ack_seq, align 4
  %ack_seq243 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 3
  %106 = ptrtoint ptr %ack_seq243 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ack_seq243, align 4
  %sub244 = sub i32 %105, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp245.not = icmp eq i32 %105, %107
  br i1 %cmp245.not, label %if.end242.if.end257_crit_edge, label %if.then247

if.end242.if.end257_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.then247:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub244)
  %cmp248 = icmp ugt i32 %sub244, 65535
  br i1 %cmp248, label %if.then247.uncompressed_crit_edge, label %if.end251

if.then247.uncompressed_crit_edge:                ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

if.end251:                                        ; preds = %if.then247
  %conv252 = trunc i32 %sub244 to i16
  %108 = add i16 %conv252, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %108)
  %109 = icmp ult i16 %108, -255
  br i1 %109, label %if.then.i631, label %if.end251.encode.exit636_crit_edge

if.end251.encode.exit636_crit_edge:               ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode.exit636

if.then.i631:                                     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i628 = getelementptr i8, ptr %cp.1, i32 1
  %110 = ptrtoint ptr %cp.1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %cp.1, align 1
  %111 = lshr i32 %sub244, 8
  %conv1.i.i629 = trunc i32 %111 to i8
  %incdec.ptr.i.i630 = getelementptr i8, ptr %cp.1, i32 2
  %112 = ptrtoint ptr %incdec.ptr.i628 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv1.i.i629, ptr %incdec.ptr.i628, align 1
  br label %encode.exit636

encode.exit636:                                   ; preds = %if.then.i631, %if.end251.encode.exit636_crit_edge
  %.sink.i632 = phi i32 [ 3, %if.then.i631 ], [ 1, %if.end251.encode.exit636_crit_edge ]
  %cp.sink.i633 = phi ptr [ %incdec.ptr.i.i630, %if.then.i631 ], [ %cp.1, %if.end251.encode.exit636_crit_edge ]
  %conv5.i634 = trunc i32 %sub244 to i8
  %incdec.ptr6.i635 = getelementptr i8, ptr %cp.1, i32 %.sink.i632
  %113 = ptrtoint ptr %cp.sink.i633 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv5.i634, ptr %cp.sink.i633, align 1
  %114 = or i16 %changes.1, 4
  br label %if.end257

if.end257:                                        ; preds = %encode.exit636, %if.end242.if.end257_crit_edge
  %changes.2 = phi i16 [ %114, %encode.exit636 ], [ %changes.1, %if.end242.if.end257_crit_edge ]
  %cp.2 = phi ptr [ %incdec.ptr6.i635, %encode.exit636 ], [ %cp.1, %if.end242.if.end257_crit_edge ]
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %115 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %seq, align 4
  %seq258 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 4, i32 2
  %117 = ptrtoint ptr %seq258 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %seq258, align 4
  %sub259 = sub i32 %116, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp260.not = icmp eq i32 %116, %118
  br i1 %cmp260.not, label %if.end257.if.end272_crit_edge, label %if.then262

if.end257.if.end272_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

if.then262:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub259)
  %cmp263 = icmp ugt i32 %sub259, 65535
  br i1 %cmp263, label %if.then262.uncompressed_crit_edge, label %if.end266

if.then262.uncompressed_crit_edge:                ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

if.end266:                                        ; preds = %if.then262
  %conv267 = trunc i32 %sub259 to i16
  %119 = add i16 %conv267, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %119)
  %120 = icmp ult i16 %119, -255
  br i1 %120, label %if.then.i640, label %if.end266.encode.exit645_crit_edge

if.end266.encode.exit645_crit_edge:               ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode.exit645

if.then.i640:                                     ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i637 = getelementptr i8, ptr %cp.2, i32 1
  %121 = ptrtoint ptr %cp.2 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %cp.2, align 1
  %122 = lshr i32 %sub259, 8
  %conv1.i.i638 = trunc i32 %122 to i8
  %incdec.ptr.i.i639 = getelementptr i8, ptr %cp.2, i32 2
  %123 = ptrtoint ptr %incdec.ptr.i637 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv1.i.i638, ptr %incdec.ptr.i637, align 1
  br label %encode.exit645

encode.exit645:                                   ; preds = %if.then.i640, %if.end266.encode.exit645_crit_edge
  %.sink.i641 = phi i32 [ 3, %if.then.i640 ], [ 1, %if.end266.encode.exit645_crit_edge ]
  %cp.sink.i642 = phi ptr [ %incdec.ptr.i.i639, %if.then.i640 ], [ %cp.2, %if.end266.encode.exit645_crit_edge ]
  %conv5.i643 = trunc i32 %sub259 to i8
  %incdec.ptr6.i644 = getelementptr i8, ptr %cp.2, i32 %.sink.i641
  %124 = ptrtoint ptr %cp.sink.i642 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv5.i643, ptr %cp.sink.i642, align 1
  %125 = or i16 %changes.2, 8
  br label %if.end272

if.end272:                                        ; preds = %encode.exit645, %if.end257.if.end272_crit_edge
  %changes.3 = phi i16 [ %125, %encode.exit645 ], [ %changes.2, %if.end257.if.end272_crit_edge ]
  %cp.3 = phi ptr [ %incdec.ptr6.i644, %encode.exit645 ], [ %cp.2, %if.end257.if.end272_crit_edge ]
  %conv273 = sext i16 %changes.3 to i32
  %extract.t = trunc i16 %changes.3 to i8
  %126 = zext i32 %conv273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv273, label %if.end272.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 11, label %if.end272.uncompressed_crit_edge
    i32 15, label %if.end272.uncompressed_crit_edge680
    i32 12, label %sw.bb289
    i32 8, label %sw.bb302
  ]

if.end272.uncompressed_crit_edge680:              ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

if.end272.uncompressed_crit_edge:                 ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

if.end272.sw.epilog_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end272
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 2
  %127 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %tot_len, align 2
  %tot_len276 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 2
  %129 = ptrtoint ptr %tot_len276 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %tot_len276, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %130)
  %cmp278.not = icmp ne i16 %128, %130
  %conv277 = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %conv277)
  %cmp284 = icmp eq i32 %add42, %conv277
  %or.cond614 = select i1 %cmp278.not, i1 %cmp284, i1 false
  br i1 %or.cond614, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.uncompressed_crit_edge

sw.bb.uncompressed_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %uncompressed

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb289:                                         ; preds = %if.end272
  call void @__sanitizer_cov_trace_cmp4(i32 %sub259, i32 %sub244)
  %cmp290 = icmp eq i32 %sub259, %sub244
  br i1 %cmp290, label %land.lhs.true292, label %sw.bb289.sw.epilog_crit_edge

sw.bb289.sw.epilog_crit_edge:                     ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true292:                                 ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  %tot_len294 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 2
  %131 = ptrtoint ptr %tot_len294 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %tot_len294, align 2
  %conv295 = zext i16 %132 to i32
  %sub296 = sub nsw i32 %conv295, %add42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub244, i32 %sub296)
  %cmp297 = icmp eq i32 %sub244, %sub296
  %spec.select = select i1 %cmp297, i8 11, i8 %extract.t
  %spec.select615 = select i1 %cmp297, ptr %new_seq, ptr %cp.3
  br label %sw.epilog

sw.bb302:                                         ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  %tot_len304 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %tot_len304 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %tot_len304, align 2
  %conv305 = zext i16 %134 to i32
  %sub306 = sub nsw i32 %conv305, %add42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub259, i32 %sub306)
  %cmp307 = icmp eq i32 %sub259, %sub306
  %spec.select616 = select i1 %cmp307, i8 15, i8 %extract.t
  %spec.select617 = select i1 %cmp307, ptr %new_seq, ptr %cp.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb302, %land.lhs.true292, %sw.bb289.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end272.sw.epilog_crit_edge
  %changes.4.off0 = phi i8 [ %extract.t, %if.end272.sw.epilog_crit_edge ], [ %extract.t, %sw.bb289.sw.epilog_crit_edge ], [ %extract.t, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true292 ], [ %spec.select616, %sw.bb302 ]
  %cp.4 = phi ptr [ %cp.3, %if.end272.sw.epilog_crit_edge ], [ %cp.3, %sw.bb289.sw.epilog_crit_edge ], [ %cp.3, %sw.bb.sw.epilog_crit_edge ], [ %spec.select615, %land.lhs.true292 ], [ %spec.select617, %sw.bb302 ]
  %id = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 3
  %135 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %id, align 4
  %conv312 = zext i16 %136 to i32
  %id314 = getelementptr inbounds %struct.cstate, ptr %cs.0, i32 0, i32 3, i32 3
  %137 = ptrtoint ptr %id314 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %id314, align 4
  %conv315 = zext i16 %138 to i32
  %sub316 = sub nsw i32 %conv312, %conv315
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub316)
  %cmp317.not = icmp eq i32 %sub316, 1
  br i1 %cmp317.not, label %sw.epilog.if.end325_crit_edge, label %if.then319

sw.epilog.if.end325_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end325

if.then319:                                       ; preds = %sw.epilog
  %conv320 = trunc i32 %sub316 to i16
  %139 = add i16 %conv320, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %139)
  %140 = icmp ult i16 %139, -255
  br i1 %140, label %if.then.i649, label %if.then319.encode.exit654_crit_edge

if.then319.encode.exit654_crit_edge:              ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode.exit654

if.then.i649:                                     ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i646 = getelementptr i8, ptr %cp.4, i32 1
  %141 = ptrtoint ptr %cp.4 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %cp.4, align 1
  %142 = lshr i32 %sub316, 8
  %conv1.i.i647 = trunc i32 %142 to i8
  %incdec.ptr.i.i648 = getelementptr i8, ptr %cp.4, i32 2
  %143 = ptrtoint ptr %incdec.ptr.i646 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv1.i.i647, ptr %incdec.ptr.i646, align 1
  br label %encode.exit654

encode.exit654:                                   ; preds = %if.then.i649, %if.then319.encode.exit654_crit_edge
  %.sink.i650 = phi i32 [ 3, %if.then.i649 ], [ 1, %if.then319.encode.exit654_crit_edge ]
  %cp.sink.i651 = phi ptr [ %incdec.ptr.i.i648, %if.then.i649 ], [ %cp.4, %if.then319.encode.exit654_crit_edge ]
  %conv5.i652 = trunc i32 %sub316 to i8
  %incdec.ptr6.i653 = getelementptr i8, ptr %cp.4, i32 %.sink.i650
  %144 = ptrtoint ptr %cp.sink.i651 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv5.i652, ptr %cp.sink.i651, align 1
  %or323 = or i8 %changes.4.off0, 32
  br label %if.end325

if.end325:                                        ; preds = %encode.exit654, %sw.epilog.if.end325_crit_edge
  %changes.5.off0 = phi i8 [ %or323, %encode.exit654 ], [ %changes.4.off0, %sw.epilog.if.end325_crit_edge ]
  %cp.5 = phi ptr [ %incdec.ptr6.i653, %encode.exit654 ], [ %cp.4, %sw.epilog.if.end325_crit_edge ]
  %145 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load326 = load i16, ptr %doff, align 4
  %146 = trunc i16 %bf.load326 to i8
  %147 = shl i8 %146, 1
  %148 = and i8 %147, 16
  %149 = or i8 %148, %changes.5.off0
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  %150 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %check, align 4
  %152 = call ptr @memcpy(ptr %cs_ip.le665, ptr %icp, i32 20)
  %153 = call ptr @memcpy(ptr %cs_tcp, ptr %add.ptr, i32 20)
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %new_seq to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compress_cid)
  %cmp338 = icmp eq i32 %compress_cid, 0
  br i1 %cmp338, label %if.end325.if.then346_crit_edge, label %lor.lhs.false340

if.end325.if.then346_crit_edge:                   ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then346

lor.lhs.false340:                                 ; preds = %if.end325
  %xmit_current = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 5
  %154 = ptrtoint ptr %xmit_current to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %xmit_current, align 1
  %156 = ptrtoint ptr %cs.0 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %cs.0, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %157)
  %cmp344.not = icmp eq i8 %155, %157
  br i1 %cmp344.not, label %if.else354, label %lor.lhs.false340.if.then346_crit_edge

lor.lhs.false340.if.then346_crit_edge:            ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then346

if.then346:                                       ; preds = %lor.lhs.false340.if.then346_crit_edge, %if.end325.if.then346_crit_edge
  %158 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %ocp, ptr %cpp, align 4
  %conv349 = or i8 %149, 64
  %incdec.ptr = getelementptr i8, ptr %ocp, i32 1
  %159 = ptrtoint ptr %ocp to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv349, ptr %ocp, align 1
  %160 = ptrtoint ptr %cs.0 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %cs.0, align 4
  %162 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %incdec.ptr, align 1
  %163 = load i8, ptr %cs.0, align 4
  %xmit_current353 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 5
  %164 = ptrtoint ptr %xmit_current353 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %xmit_current353, align 1
  br label %if.end357

if.else354:                                       ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %ocp, ptr %cpp, align 4
  %166 = ptrtoint ptr %ocp to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %149, ptr %ocp, align 1
  br label %if.end357

if.end357:                                        ; preds = %if.else354, %if.then346
  %incdec.ptr.pn = phi ptr [ %incdec.ptr, %if.then346 ], [ %ocp, %if.else354 ]
  %cp.6 = getelementptr i8, ptr %incdec.ptr.pn, i32 1
  %167 = ptrtoint ptr %cp.6 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %151, ptr %cp.6, align 2
  %add.ptr358 = getelementptr i8, ptr %incdec.ptr.pn, i32 3
  %168 = call ptr @memcpy(ptr %add.ptr358, ptr %new_seq, i32 %sub.ptr.sub)
  %add.ptr360 = getelementptr i8, ptr %add.ptr358, i32 %sub.ptr.sub
  %add.ptr361 = getelementptr i8, ptr %icp, i32 %add42
  %sub362 = sub i32 %isize, %add42
  %169 = call ptr @memcpy(ptr %add.ptr360, ptr %add.ptr361, i32 %sub362)
  %sls_o_compressed = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 11
  %170 = ptrtoint ptr %sls_o_compressed to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sls_o_compressed, align 4
  %inc363 = add i32 %171, 1
  store i32 %inc363, ptr %sls_o_compressed, align 4
  %172 = ptrtoint ptr %ocp to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %ocp, align 1
  %174 = or i8 %173, -128
  store i8 %174, ptr %ocp, align 1
  %sub.ptr.lhs.cast370 = ptrtoint ptr %add.ptr358 to i32
  %sub.ptr.rhs.cast371 = ptrtoint ptr %ocp to i32
  %sub.ptr.sub372 = sub i32 %sub362, %sub.ptr.rhs.cast371
  %add369 = add i32 %sub.ptr.sub372, %sub.ptr.sub
  %add373 = add i32 %add369, %sub.ptr.lhs.cast370
  br label %cleanup

uncompressed:                                     ; preds = %sw.bb.uncompressed_crit_edge, %if.end272.uncompressed_crit_edge, %if.end272.uncompressed_crit_edge680, %if.then262.uncompressed_crit_edge, %if.then247.uncompressed_crit_edge, %if.else220.uncompressed_crit_edge, %land.lhs.true196.uncompressed_crit_edge, %land.lhs.true180.uncompressed_crit_edge, %lor.lhs.false162.uncompressed_crit_edge, %lor.lhs.false155.uncompressed_crit_edge, %lor.lhs.false145.uncompressed_crit_edge, %lor.lhs.false138.uncompressed_crit_edge, %lor.lhs.false128.uncompressed_crit_edge, %if.end117.uncompressed_crit_edge, %for.end
  %cs.0668 = phi ptr [ %cs.0, %if.end272.uncompressed_crit_edge ], [ %cs.0, %if.end272.uncompressed_crit_edge680 ], [ %cs.0, %sw.bb.uncompressed_crit_edge ], [ %cs.0, %if.then262.uncompressed_crit_edge ], [ %cs.0, %if.then247.uncompressed_crit_edge ], [ %cs.0, %if.else220.uncompressed_crit_edge ], [ %cs.0, %if.end117.uncompressed_crit_edge ], [ %cs.0, %lor.lhs.false128.uncompressed_crit_edge ], [ %cs.0, %lor.lhs.false138.uncompressed_crit_edge ], [ %cs.0, %lor.lhs.false145.uncompressed_crit_edge ], [ %cs.0, %lor.lhs.false155.uncompressed_crit_edge ], [ %cs.0, %lor.lhs.false162.uncompressed_crit_edge ], [ %cs.0, %land.lhs.true180.uncompressed_crit_edge ], [ %cs.0, %land.lhs.true196.uncompressed_crit_edge ], [ %arrayidx, %for.end ]
  %cs_ip656 = phi ptr [ %cs_ip.le665, %if.end272.uncompressed_crit_edge ], [ %cs_ip.le665, %if.end272.uncompressed_crit_edge680 ], [ %cs_ip.le665, %sw.bb.uncompressed_crit_edge ], [ %cs_ip.le665, %if.then262.uncompressed_crit_edge ], [ %cs_ip.le665, %if.then247.uncompressed_crit_edge ], [ %cs_ip.le665, %if.else220.uncompressed_crit_edge ], [ %cs_ip.le665, %if.end117.uncompressed_crit_edge ], [ %cs_ip.le665, %lor.lhs.false128.uncompressed_crit_edge ], [ %cs_ip.le665, %lor.lhs.false138.uncompressed_crit_edge ], [ %cs_ip.le665, %lor.lhs.false145.uncompressed_crit_edge ], [ %cs_ip.le665, %lor.lhs.false155.uncompressed_crit_edge ], [ %cs_ip.le665, %lor.lhs.false162.uncompressed_crit_edge ], [ %cs_ip.le665, %land.lhs.true180.uncompressed_crit_edge ], [ %cs_ip.le665, %land.lhs.true196.uncompressed_crit_edge ], [ %cs_ip.le, %for.end ]
  %175 = call ptr @memcpy(ptr %cs_ip656, ptr %icp, i32 20)
  %cs_tcp375 = getelementptr inbounds %struct.cstate, ptr %cs.0668, i32 0, i32 4
  %176 = call ptr @memcpy(ptr %cs_tcp375, ptr %add.ptr, i32 20)
  %177 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load376 = load i8, ptr %icp, align 4
  %bf.clear377 = and i8 %bf.load376, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear377)
  %cmp379 = icmp ugt i8 %bf.clear377, 5
  br i1 %cmp379, label %if.then381, label %uncompressed.if.end390_crit_edge

uncompressed.if.end390_crit_edge:                 ; preds = %uncompressed
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end390

if.then381:                                       ; preds = %uncompressed
  call void @__sanitizer_cov_trace_pc() #10
  %cs_ipopt382 = getelementptr inbounds %struct.cstate, ptr %cs.0668, i32 0, i32 5
  %add.ptr384 = getelementptr %struct.iphdr, ptr %icp, i32 1
  %178 = shl nuw nsw i8 %bf.clear377, 2
  %sub388 = zext i8 %178 to i32
  %mul389 = add nsw i32 %sub388, -20
  %179 = call ptr @memcpy(ptr %cs_ipopt382, ptr %add.ptr384, i32 %mul389)
  br label %if.end390

if.end390:                                        ; preds = %if.then381, %uncompressed.if.end390_crit_edge
  %180 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load392 = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %bf.load392)
  %cmp395 = icmp ugt i16 %bf.load392, 24575
  br i1 %cmp395, label %if.then397, label %if.end390.if.end407_crit_edge

if.end390.if.end407_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end407

if.then397:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #10
  %cs_tcpopt398 = getelementptr inbounds %struct.cstate, ptr %cs.0668, i32 0, i32 6
  %add.ptr400 = getelementptr %struct.tcphdr, ptr %add.ptr, i32 1
  %181 = lshr i16 %bf.load392, 10
  %182 = and i16 %181, 60
  %sub405 = zext i16 %182 to i32
  %mul406 = add nsw i32 %sub405, -20
  %183 = call ptr @memcpy(ptr %cs_tcpopt398, ptr %add.ptr400, i32 %mul406)
  br label %if.end407

if.end407:                                        ; preds = %if.then397, %if.end390.if.end407_crit_edge
  %184 = ptrtoint ptr %cs.0668 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %cs.0668, align 4
  %xmit_current409 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 5
  %186 = ptrtoint ptr %xmit_current409 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %xmit_current409, align 1
  %sls_o_uncompressed = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 10
  %187 = ptrtoint ptr %sls_o_uncompressed to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sls_o_uncompressed, align 4
  %inc410 = add i32 %188, 1
  store i32 %inc410, ptr %sls_o_uncompressed, align 4
  %189 = call ptr @memcpy(ptr %ocp, ptr %icp, i32 %isize)
  %190 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %ocp, ptr %cpp, align 4
  %191 = load i8, ptr %cs.0668, align 4
  %arrayidx412 = getelementptr i8, ptr %ocp, i32 9
  %192 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx412, align 1
  %193 = ptrtoint ptr %ocp to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ocp, align 1
  %195 = or i8 %194, 112
  store i8 %195, ptr %ocp, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end407, %if.end357, %if.then67, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.else, %if.then19, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %isize, %if.then67 ], [ %isize, %if.end407 ], [ %add373, %if.end357 ], [ %isize, %entry.cleanup_crit_edge ], [ %isize, %lor.lhs.false.cleanup_crit_edge ], [ %isize, %if.end.cleanup_crit_edge ], [ %isize, %if.else ], [ %isize, %if.then19 ], [ %isize, %if.end22.cleanup_crit_edge ], [ %isize, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_seq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slhc_uncompress(ptr noundef %comp, ptr noundef %icp, i32 noundef %isize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sls_i_compressed = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 15
  %0 = ptrtoint ptr %sls_i_compressed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sls_i_compressed, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sls_i_compressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %isize)
  %cmp = icmp slt i32 %isize, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sls_i_error = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 16
  %2 = ptrtoint ptr %sls_i_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sls_i_error, align 4
  %inc1 = add i32 %3, 1
  store i32 %inc1, ptr %sls_i_error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %icp, i32 1
  %4 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %icp, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %incdec.ptr3 = getelementptr i8, ptr %icp, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %rslot_limit = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 3
  %8 = ptrtoint ptr %rslot_limit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rslot_limit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp8 = icmp ugt i8 %7, %9
  br i1 %cmp8, label %if.then2.bad_crit_edge, label %if.end11

if.then2.bad_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end11:                                         ; preds = %if.then2
  %conv4 = zext i8 %7 to i32
  %rstate = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 1
  %10 = ptrtoint ptr %rstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rstate, align 4
  %initialized = getelementptr %struct.cstate, ptr %11, i32 %conv4, i32 1
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initialized, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end11.bad_crit_edge, label %if.end14

if.end11.bad_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %16 = and i8 %15, -2
  store i8 %16, ptr %flags, align 1
  %recv_current = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 6
  %17 = ptrtoint ptr %recv_current to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %7, ptr %recv_current, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end
  %flags19 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %18 = ptrtoint ptr %flags19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags19, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.else.if.end26_crit_edge, label %if.then23

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sls_i_tossed = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 17
  %21 = ptrtoint ptr %sls_i_tossed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sls_i_tossed, align 4
  %inc24 = add i32 %22, 1
  store i32 %inc24, ptr %sls_i_tossed, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end14
  %cp.0 = phi ptr [ %incdec.ptr, %if.else.if.end26_crit_edge ], [ %incdec.ptr3, %if.end14 ]
  %rstate27 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 1
  %23 = ptrtoint ptr %rstate27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rstate27, align 4
  %recv_current28 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 6
  %25 = ptrtoint ptr %recv_current28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %recv_current28, align 4
  %idxprom = zext i8 %26 to i32
  %cs_tcp = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4
  %cs_ip = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3
  %27 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cp.0, align 2
  %check = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 6
  %29 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %check, align 4
  %add.ptr = getelementptr i8, ptr %cp.0, i32 2
  %psh = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 4
  %30 = ptrtoint ptr %psh to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %psh, align 4
  %31 = lshr i8 %5, 1
  %32 = and i8 %31, 8
  %bf.shl = zext i8 %32 to i16
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %psh, align 4
  %33 = ptrtoint ptr %cs_ip to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load33 = load i8, ptr %cs_ip, align 4
  %bf.clear34 = shl i8 %bf.load33, 2
  %34 = and i8 %bf.clear34, 60
  %mul = zext i8 %34 to i32
  %35 = lshr i16 %bf.load, 10
  %36 = and i16 %35, 60
  %mul38 = zext i16 %36 to i32
  %add = add nuw nsw i32 %mul, %mul38
  %and39 = and i32 %conv, 15
  %37 = zext i32 %and39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and39, label %sw.default [
    i32 11, label %sw.bb
    i32 15, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %tot_len = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3, i32 2
  %38 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tot_len, align 2
  %40 = trunc i32 %add to i16
  %conv41 = sub i16 %39, %40
  %ack_seq = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 3
  %41 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ack_seq, align 4
  %conv42 = sext i16 %conv41 to i32
  %add43 = add i32 %42, %conv42
  store i32 %add43, ptr %ack_seq, align 4
  %seq = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 2
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq, align 4
  %add46 = add i32 %44, %conv42
  store i32 %add46, ptr %seq, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %seq49 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 2
  %45 = ptrtoint ptr %seq49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seq49, align 4
  %tot_len50 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3, i32 2
  %47 = ptrtoint ptr %tot_len50 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tot_len50, align 2
  %conv51 = zext i16 %48 to i32
  %add52 = sub i32 %46, %add
  %sub53 = add i32 %add52, %conv51
  store i32 %sub53, ptr %seq49, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  %and55 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %sw.default
  %bf.set60 = or i16 %bf.set, 32
  %49 = ptrtoint ptr %psh to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %bf.set60, ptr %psh, align 4
  %incdec.ptr.i = getelementptr i8, ptr %cp.0, i32 3
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i = icmp eq i8 %51, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr i8, ptr %cp.0, i32 4
  %52 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.i, align 1
  %54 = zext i8 %53 to i16
  %shl.i.i = shl nuw i16 %54, 8
  %incdec.ptr3.i.i = getelementptr i8, ptr %cp.0, i32 5
  %55 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv4.i.i = zext i8 %56 to i16
  %or.i.i = or i16 %shl.i.i, %conv4.i.i
  br label %decode.exit

if.else.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %51 to i16
  br label %decode.exit

decode.exit:                                      ; preds = %if.else.i, %if.then.i
  %cp.1 = phi ptr [ %incdec.ptr3.i.i, %if.then.i ], [ %incdec.ptr.i, %if.else.i ]
  %retval.0.i = phi i16 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %urg_ptr = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 7
  %57 = ptrtoint ptr %urg_ptr to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %retval.0.i, ptr %urg_ptr, align 2
  br label %if.end71

if.else66:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear69 = and i16 %bf.set, -33
  %58 = ptrtoint ptr %psh to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %bf.clear69, ptr %psh, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else66, %decode.exit
  %cp.2 = phi ptr [ %add.ptr, %if.else66 ], [ %cp.1, %decode.exit ]
  %and72 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end84_crit_edge, label %if.then74

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then74:                                        ; preds = %if.end71
  %incdec.ptr.i275 = getelementptr i8, ptr %cp.2, i32 1
  %59 = ptrtoint ptr %cp.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cp.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.i276 = icmp eq i8 %60, 0
  br i1 %cmp.i276, label %if.then.i282, label %if.else.i284

if.then.i282:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i277 = getelementptr i8, ptr %cp.2, i32 2
  %61 = ptrtoint ptr %incdec.ptr.i275 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.i275, align 1
  %63 = zext i8 %62 to i16
  %shl.i.i278 = shl nuw i16 %63, 8
  %incdec.ptr3.i.i279 = getelementptr i8, ptr %cp.2, i32 3
  %64 = ptrtoint ptr %incdec.ptr.i.i277 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.i.i277, align 1
  %conv4.i.i280 = zext i8 %65 to i16
  %or.i.i281 = or i16 %shl.i.i278, %conv4.i.i280
  br label %decode.exit286

if.else.i284:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i283 = zext i8 %60 to i16
  br label %decode.exit286

decode.exit286:                                   ; preds = %if.else.i284, %if.then.i282
  %cp.3 = phi ptr [ %incdec.ptr3.i.i279, %if.then.i282 ], [ %incdec.ptr.i275, %if.else.i284 ]
  %retval.0.i285 = phi i16 [ %or.i.i281, %if.then.i282 ], [ %conv.i283, %if.else.i284 ]
  %window = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 5
  %66 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %window, align 2
  %conv82 = add i16 %67, %retval.0.i285
  store i16 %conv82, ptr %window, align 2
  br label %if.end84

if.end84:                                         ; preds = %decode.exit286, %if.end71.if.end84_crit_edge
  %cp.4 = phi ptr [ %cp.2, %if.end71.if.end84_crit_edge ], [ %cp.3, %decode.exit286 ]
  %and85 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end96_crit_edge, label %if.then87

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then87:                                        ; preds = %if.end84
  %incdec.ptr.i287 = getelementptr i8, ptr %cp.4, i32 1
  %68 = ptrtoint ptr %cp.4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cp.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i288 = icmp eq i8 %69, 0
  br i1 %cmp.i288, label %if.then.i294, label %if.else.i296

if.then.i294:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i289 = getelementptr i8, ptr %cp.4, i32 2
  %70 = ptrtoint ptr %incdec.ptr.i287 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr.i287, align 1
  %72 = zext i8 %71 to i32
  %shl.i.i290 = shl nuw nsw i32 %72, 8
  %incdec.ptr3.i.i291 = getelementptr i8, ptr %cp.4, i32 3
  %73 = ptrtoint ptr %incdec.ptr.i.i289 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr.i.i289, align 1
  %conv4.i.i292 = zext i8 %74 to i32
  %or.i.i293 = or i32 %shl.i.i290, %conv4.i.i292
  br label %decode.exit298

if.else.i296:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i295 = zext i8 %69 to i32
  br label %decode.exit298

decode.exit298:                                   ; preds = %if.else.i296, %if.then.i294
  %cp.5 = phi ptr [ %incdec.ptr3.i.i291, %if.then.i294 ], [ %incdec.ptr.i287, %if.else.i296 ]
  %retval.0.i297 = phi i32 [ %or.i.i293, %if.then.i294 ], [ %conv.i295, %if.else.i296 ]
  %ack_seq93 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 3
  %75 = ptrtoint ptr %ack_seq93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ack_seq93, align 4
  %add94 = add i32 %76, %retval.0.i297
  store i32 %add94, ptr %ack_seq93, align 4
  br label %if.end96

if.end96:                                         ; preds = %decode.exit298, %if.end84.if.end96_crit_edge
  %cp.6 = phi ptr [ %cp.4, %if.end84.if.end96_crit_edge ], [ %cp.5, %decode.exit298 ]
  %and97 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.sw.epilog_crit_edge, label %if.then99

if.end96.sw.epilog_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then99:                                        ; preds = %if.end96
  %incdec.ptr.i299 = getelementptr i8, ptr %cp.6, i32 1
  %77 = ptrtoint ptr %cp.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cp.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp.i300 = icmp eq i8 %78, 0
  br i1 %cmp.i300, label %if.then.i306, label %if.else.i308

if.then.i306:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i301 = getelementptr i8, ptr %cp.6, i32 2
  %79 = ptrtoint ptr %incdec.ptr.i299 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr.i299, align 1
  %81 = zext i8 %80 to i32
  %shl.i.i302 = shl nuw nsw i32 %81, 8
  %incdec.ptr3.i.i303 = getelementptr i8, ptr %cp.6, i32 3
  %82 = ptrtoint ptr %incdec.ptr.i.i301 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i.i301, align 1
  %conv4.i.i304 = zext i8 %83 to i32
  %or.i.i305 = or i32 %shl.i.i302, %conv4.i.i304
  br label %decode.exit310

if.else.i308:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i307 = zext i8 %78 to i32
  br label %decode.exit310

decode.exit310:                                   ; preds = %if.else.i308, %if.then.i306
  %cp.7 = phi ptr [ %incdec.ptr3.i.i303, %if.then.i306 ], [ %incdec.ptr.i299, %if.else.i308 ]
  %retval.0.i309 = phi i32 [ %or.i.i305, %if.then.i306 ], [ %conv.i307, %if.else.i308 ]
  %seq105 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 4, i32 2
  %84 = ptrtoint ptr %seq105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %seq105, align 4
  %add106 = add i32 %85, %retval.0.i309
  store i32 %add106, ptr %seq105, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %decode.exit310, %if.end96.sw.epilog_crit_edge, %sw.bb48, %sw.bb
  %cp.8 = phi ptr [ %cp.6, %if.end96.sw.epilog_crit_edge ], [ %cp.7, %decode.exit310 ], [ %add.ptr, %sw.bb48 ], [ %add.ptr, %sw.bb ]
  %and109 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %sw.epilog.if.end127_crit_edge, label %if.then111

sw.epilog.if.end127_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then111:                                       ; preds = %sw.epilog
  %incdec.ptr.i311 = getelementptr i8, ptr %cp.8, i32 1
  %86 = ptrtoint ptr %cp.8 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cp.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i312 = icmp eq i8 %87, 0
  br i1 %cmp.i312, label %if.then.i318, label %if.else.i320

if.then.i318:                                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i313 = getelementptr i8, ptr %cp.8, i32 2
  %88 = ptrtoint ptr %incdec.ptr.i311 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i311, align 1
  %90 = zext i8 %89 to i16
  %shl.i.i314 = shl nuw i16 %90, 8
  %incdec.ptr3.i.i315 = getelementptr i8, ptr %cp.8, i32 3
  %91 = ptrtoint ptr %incdec.ptr.i.i313 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr.i.i313, align 1
  %conv4.i.i316 = zext i8 %92 to i16
  %or.i.i317 = or i16 %shl.i.i314, %conv4.i.i316
  br label %if.end127

if.else.i320:                                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i319 = zext i8 %87 to i16
  br label %if.end127

if.end127:                                        ; preds = %if.else.i320, %if.then.i318, %sw.epilog.if.end127_crit_edge
  %.sink336 = phi i16 [ %or.i.i317, %if.then.i318 ], [ %conv.i319, %if.else.i320 ], [ 1, %sw.epilog.if.end127_crit_edge ]
  %cp.10 = phi ptr [ %incdec.ptr3.i.i315, %if.then.i318 ], [ %incdec.ptr.i311, %if.else.i320 ], [ %cp.8, %sw.epilog.if.end127_crit_edge ]
  %id122 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3, i32 3
  %93 = ptrtoint ptr %id122 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %id122, align 4
  %add124 = add i16 %94, %.sink336
  store i16 %add124, ptr %id122, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %icp to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub128 = add i32 %sub.ptr.sub.neg, %isize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub128)
  %cmp129 = icmp slt i32 %sub128, 0
  br i1 %cmp129, label %if.end127.bad_crit_edge, label %if.end132

if.end127.bad_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end132:                                        ; preds = %if.end127
  %add133 = add nuw i32 %sub128, %add
  %conv134 = trunc i32 %add133 to i16
  %tot_len135 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3, i32 2
  %95 = ptrtoint ptr %tot_len135 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv134, ptr %tot_len135, align 2
  %check136 = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 3, i32 7
  %96 = ptrtoint ptr %check136 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %check136, align 2
  %add.ptr137 = getelementptr i8, ptr %icp, i32 %add
  %97 = call ptr @memmove(ptr %add.ptr137, ptr %cp.10, i32 %sub128)
  %98 = call ptr @memcpy(ptr %icp, ptr %cs_ip, i32 20)
  %add.ptr139 = getelementptr i8, ptr %icp, i32 20
  %99 = ptrtoint ptr %cs_ip to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load140 = load i8, ptr %cs_ip, align 4
  %bf.clear141 = and i8 %bf.load140, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear141)
  %cmp143 = icmp ugt i8 %bf.clear141, 5
  br i1 %cmp143, label %if.then145, label %if.end132.do.body_crit_edge

if.end132.do.body_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then145:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %cs_ipopt = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 5
  %100 = shl nuw nsw i8 %bf.clear141, 2
  %sub149 = zext i8 %100 to i32
  %mul150 = add nsw i32 %sub149, -20
  %101 = call ptr @memcpy(ptr %add.ptr139, ptr %cs_ipopt, i32 %mul150)
  %102 = ptrtoint ptr %cs_ip to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load151 = load i8, ptr %cs_ip, align 4
  %bf.clear152 = shl i8 %bf.load151, 2
  %103 = and i8 %bf.clear152, 60
  %sub154 = zext i8 %103 to i32
  %add.ptr156 = getelementptr i8, ptr %icp, i32 %sub154
  br label %do.body

do.body:                                          ; preds = %if.then145, %if.end132.do.body_crit_edge
  %cp.11 = phi ptr [ %add.ptr156, %if.then145 ], [ %add.ptr139, %if.end132.do.body_crit_edge ]
  %check158 = getelementptr inbounds %struct.iphdr, ptr %icp, i32 0, i32 7
  %104 = ptrtoint ptr %cs_ip to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load159 = load i8, ptr %cs_ip, align 4
  %bf.clear160 = and i8 %bf.load159, 15
  %conv161 = zext i8 %bf.clear160 to i32
  %105 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %icp, i32 %conv161) #8, !srcloc !25
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %105, 0
  %106 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #14, !srcloc !26
  %neg.i.i = xor i32 %106, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %107 = ptrtoint ptr %check158 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %conv.i.i, ptr %check158, align 1
  %108 = call ptr @memcpy(ptr %cp.11, ptr %cs_tcp, i32 20)
  %109 = ptrtoint ptr %psh to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load166 = load i16, ptr %psh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %bf.load166)
  %cmp169 = icmp ugt i16 %bf.load166, 24575
  br i1 %cmp169, label %if.then171, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then171:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr164 = getelementptr i8, ptr %cp.11, i32 20
  %cs_tcpopt = getelementptr %struct.cstate, ptr %24, i32 %idxprom, i32 6
  %110 = lshr i16 %bf.load166, 10
  %111 = and i16 %110, 60
  %sub177 = zext i16 %111 to i32
  %mul178 = add nsw i32 %sub177, -20
  %112 = call ptr @memcpy(ptr %add.ptr164, ptr %cs_tcpopt, i32 %mul178)
  br label %cleanup

bad:                                              ; preds = %if.end127.bad_crit_edge, %if.end11.bad_crit_edge, %if.then2.bad_crit_edge
  %sls_i_error187 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 16
  %113 = ptrtoint ptr %sls_i_error187 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sls_i_error187, align 4
  %inc188 = add i32 %114, 1
  store i32 %inc188, ptr %sls_i_error187, align 4
  %cmp.i323 = icmp eq ptr %comp, null
  br i1 %cmp.i323, label %bad.cleanup_crit_edge, label %if.end.i

bad.cleanup_crit_edge:                            ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %115 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %flags.i, align 1
  %117 = or i8 %116, 1
  store i8 %117, ptr %flags.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %bad.cleanup_crit_edge, %if.then171, %do.body.cleanup_crit_edge, %if.then23, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then23 ], [ %add133, %if.then171 ], [ %add133, %do.body.cleanup_crit_edge ], [ 0, %bad.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @slhc_toss(ptr noundef %comp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %comp, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = or i8 %1, 1
  store i8 %2, ptr %flags, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slhc_remember(ptr noundef %comp, ptr noundef %icp, i32 noundef %isize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %isize)
  %cmp = icmp slt i32 %isize, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sls_i_runt = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 18
  %0 = ptrtoint ptr %sls_i_runt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sls_i_runt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sls_i_runt, align 4
  %cmp.i = icmp eq ptr %comp, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 1
  %4 = or i8 %3, 1
  store i8 %4, ptr %flags.i, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %icp, align 1
  %7 = and i8 %6, 15
  %and = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp1 = icmp ult i8 %7, 5
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %sls_i_runt4 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 18
  %8 = ptrtoint ptr %sls_i_runt4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sls_i_runt4, align 4
  %inc5 = add i32 %9, 1
  store i32 %inc5, ptr %sls_i_runt4, align 4
  %cmp.i95 = icmp eq ptr %comp, null
  br i1 %cmp.i95, label %if.then3.cleanup_crit_edge, label %if.end.i97

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i97:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i96 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i96, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %flags.i96, align 1
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr i8, ptr %icp, i32 9
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  store i8 6, ptr %arrayidx8, align 1
  %15 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %icp, i32 %and) #8, !srcloc !25
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %15, 0
  %16 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #14, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %16)
  %tobool.not = icmp ugt i32 %16, -65537
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end7
  %sls_i_badcheck = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 19
  %17 = ptrtoint ptr %sls_i_badcheck to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sls_i_badcheck, align 4
  %inc12 = add i32 %18, 1
  store i32 %inc12, ptr %sls_i_badcheck, align 4
  %cmp.i99 = icmp eq ptr %comp, null
  br i1 %cmp.i99, label %if.then11.cleanup_crit_edge, label %if.end.i101

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i101:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i100 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %19 = ptrtoint ptr %flags.i100 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i100, align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr %flags.i100, align 1
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %rslot_limit = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 3
  %22 = ptrtoint ptr %rslot_limit to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rslot_limit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %23)
  %cmp17 = icmp ugt i8 %14, %23
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  %sls_i_error = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 16
  %24 = ptrtoint ptr %sls_i_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sls_i_error, align 4
  %inc20 = add i32 %25, 1
  store i32 %inc20, ptr %sls_i_error, align 4
  %cmp.i103 = icmp eq ptr %comp, null
  br i1 %cmp.i103, label %if.then19.cleanup_crit_edge, label %if.end.i105

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i105:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i104 = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %26 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.i104, align 1
  %28 = or i8 %27, 1
  store i8 %28, ptr %flags.i104, align 1
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %conv15 = zext i8 %14 to i32
  %rstate = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 1
  %29 = ptrtoint ptr %rstate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rstate, align 4
  %recv_current = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 6
  %31 = ptrtoint ptr %recv_current to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %14, ptr %recv_current, align 4
  %flags = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 7
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 1
  %34 = and i8 %33, -2
  store i8 %34, ptr %flags, align 1
  %cs_ip = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 3
  %35 = call ptr @memcpy(ptr %cs_ip, ptr %icp, i32 20)
  %cs_tcp = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 4
  %mul = shl nuw nsw i32 %and, 2
  %add.ptr = getelementptr i8, ptr %icp, i32 %mul
  %36 = call ptr @memcpy(ptr %cs_tcp, ptr %add.ptr, i32 20)
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp27 = icmp ugt i8 %7, 5
  br i1 %cmp27, label %if.then29, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %cs_ipopt = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 5
  %add.ptr30 = getelementptr i8, ptr %icp, i32 20
  %mul31 = add nsw i32 %mul, -20
  %37 = call ptr @memcpy(ptr %cs_ipopt, ptr %add.ptr30, i32 %mul31)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end22.if.end32_crit_edge
  %doff = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 4, i32 4
  %38 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %bf.load)
  %cmp35 = icmp ugt i16 %bf.load, 24575
  br i1 %cmp35, label %if.then37, label %if.end32.if.end49_crit_edge

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %cs_tcpopt = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 6
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 20
  %39 = lshr i16 %bf.load, 10
  %40 = and i16 %39, 60
  %sub47 = zext i16 %40 to i32
  %mul48 = add nsw i32 %sub47, -20
  %41 = call ptr @memcpy(ptr %cs_tcpopt, ptr %add.ptr41, i32 %mul48)
  br label %if.end49

if.end49:                                         ; preds = %if.then37, %if.end32.if.end49_crit_edge
  %mul50 = shl nuw nsw i32 %and, 1
  %42 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load53 = load i16, ptr %doff, align 4
  %43 = lshr i16 %bf.load53, 11
  %44 = and i16 %43, 30
  %mul56 = zext i16 %44 to i32
  %add = add nuw nsw i32 %mul50, %mul56
  %cs_hsize = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 7
  %45 = ptrtoint ptr %cs_hsize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %cs_hsize, align 4
  %initialized = getelementptr %struct.cstate, ptr %30, i32 %conv15, i32 1
  %46 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %initialized, align 1
  %sls_i_uncompressed = getelementptr inbounds %struct.slcompress, ptr %comp, i32 0, i32 14
  %47 = ptrtoint ptr %sls_i_uncompressed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sls_i_uncompressed, align 4
  %inc57 = add i32 %48, 1
  store i32 %inc57, ptr %sls_i_uncompressed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end.i105, %if.then19.cleanup_crit_edge, %if.end.i101, %if.then11.cleanup_crit_edge, %if.end.i97, %if.then3.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %isize, %if.end49 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.i97 ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end.i101 ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end.i105 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_slhc_init, !1, !"__ksymtab_slhc_init", i1 false, i1 false}
!1 = !{!"../drivers/net/slip/slhc.c", i32 748, i32 1}
!2 = !{ptr @__ksymtab_slhc_free, !3, !"__ksymtab_slhc_free", i1 false, i1 false}
!3 = !{!"../drivers/net/slip/slhc.c", i32 749, i32 1}
!4 = !{ptr @__ksymtab_slhc_remember, !5, !"__ksymtab_slhc_remember", i1 false, i1 false}
!5 = !{!"../drivers/net/slip/slhc.c", i32 750, i32 1}
!6 = !{ptr @__ksymtab_slhc_compress, !7, !"__ksymtab_slhc_compress", i1 false, i1 false}
!7 = !{!"../drivers/net/slip/slhc.c", i32 751, i32 1}
!8 = !{ptr @__ksymtab_slhc_uncompress, !9, !"__ksymtab_slhc_uncompress", i1 false, i1 false}
!9 = !{!"../drivers/net/slip/slhc.c", i32 752, i32 1}
!10 = !{ptr @__ksymtab_slhc_toss, !11, !"__ksymtab_slhc_toss", i1 false, i1 false}
!11 = !{!"../drivers/net/slip/slhc.c", i32 753, i32 1}
!12 = !{ptr @__UNIQUE_ID_file593, !13, !"__UNIQUE_ID_file593", i1 false, i1 false}
!13 = !{!"../drivers/net/slip/slhc.c", i32 755, i32 1}
!14 = !{ptr @__UNIQUE_ID_license594, !13, !"__UNIQUE_ID_license594", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{i64 6597279, i64 6597318, i64 6597344, i64 6597368, i64 6597393, i64 6597419, i64 6597444, i64 6597470, i64 6597497, i64 6597523, i64 6597562, i64 6597606, i64 6597637, i64 6597662}
!26 = !{i64 6596896}
