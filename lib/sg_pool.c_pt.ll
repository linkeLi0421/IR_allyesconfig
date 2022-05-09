; ModuleID = '/llk/IR_all_yes/lib/sg_pool.c_pt.bc'
source_filename = "../lib/sg_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sg_free_table_chained\22, \22a\22\09"
module asm "\09.weak\09__crc_sg_free_table_chained\09\09\09\09"
module asm "\09.long\09__crc_sg_free_table_chained\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_free_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_free_table_chained\22\09\09\09\09\09"
module asm "__kstrtabns_sg_free_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sg_alloc_table_chained\22, \22a\22\09"
module asm "\09.weak\09__crc_sg_alloc_table_chained\09\09\09\09"
module asm "\09.long\09__crc_sg_alloc_table_chained\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_alloc_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_alloc_table_chained\22\09\09\09\09\09"
module asm "__kstrtabns_sg_alloc_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sg_pool = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }

@__kstrtab_sg_free_table_chained = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_free_table_chained = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_free_table_chained = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_free_table_chained to i32), ptr @__kstrtab_sg_free_table_chained, ptr @__kstrtabns_sg_free_table_chained }, section "___ksymtab_gpl+sg_free_table_chained", align 4
@__kstrtab_sg_alloc_table_chained = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_alloc_table_chained = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_alloc_table_chained = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_alloc_table_chained to i32), ptr @__kstrtab_sg_alloc_table_chained, ptr @__kstrtabns_sg_alloc_table_chained }, section "___ksymtab_gpl+sg_alloc_table_chained", align 4
@sg_pools = internal global { [5 x %struct.sg_pool], [48 x i8] } { [5 x %struct.sg_pool] [%struct.sg_pool { i32 8, ptr @.str, ptr null, ptr null }, %struct.sg_pool { i32 16, ptr @.str.1, ptr null, ptr null }, %struct.sg_pool { i32 32, ptr @.str.2, ptr null, ptr null }, %struct.sg_pool { i32 64, ptr @.str.3, ptr null, ptr null }, %struct.sg_pool { i32 128, ptr @.str.4, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_sg_pool__226_191_sg_pool_init6 = internal global ptr @sg_pool_init, section ".initcall6.init", align 4
@__exitcall_sg_pool_exit = internal global ptr @sg_pool_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgpool-8\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgpool-16\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgpool-32\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgpool-64\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sgpool-128\00", [21 x i8] zeroinitializer }, align 32
@sg_pool_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013SG_POOL: can't init sg slab %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sg_pool_init\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lib/sg_pool.c\00", [18 x i8] zeroinitializer }, align 32
@sg_pool_init._entry_ptr = internal global ptr @sg_pool_init._entry, section ".printk_index", align 4
@sg_pool_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013SG_POOL: can't init sg mempool %s\0A\00", [59 x i8] zeroinitializer }, align 32
@sg_pool_init._entry_ptr.10 = internal global ptr @sg_pool_init._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"sg_pools\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 21, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 22, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 23, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 25, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 27, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 36, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 153, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [17 x i8] c"../lib/sg_pool.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 161, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__exitcall_sg_pool_exit, ptr @__initcall__kmod_sg_pool__226_191_sg_pool_init6, ptr @__ksymtab_sg_alloc_table_chained, ptr @__ksymtab_sg_free_table_chained, ptr @sg_pool_exit, ptr @sg_pool_init._entry, ptr @sg_pool_init._entry.8, ptr @sg_pool_init._entry_ptr, ptr @sg_pool_init._entry_ptr.10, ptr @sg_pools, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_pools to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_pool_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_pool_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sg_free_table_chained(ptr noundef %table, i32 noundef %nents_first_chunk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nents_first_chunk)
  %cmp.not = icmp ugt i32 %1, %nents_first_chunk
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nents_first_chunk)
  %cmp1 = icmp eq i32 %nents_first_chunk, 1
  %spec.store.select = select i1 %cmp1, i32 0, i32 %nents_first_chunk
  tail call void @__sg_free_table(ptr noundef %table, i32 noundef 128, i32 noundef %spec.store.select, ptr noundef nonnull @sg_pool_free, i32 noundef %1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_free_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_pool_free(ptr noundef %sgl, i32 noundef %nents) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %nents to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv)
  %cmp.i = icmp ugt i16 %conv, 128
  br i1 %cmp.i, label %do.body3.i, label %sg_pool_index.exit, !prof !38

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

sg_pool_index.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = and i32 %nents, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv)
  %cmp10.i = icmp ult i16 %conv, 9
  %dec.i.i = add nsw i32 %conv.i, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 false) #7, !range !40
  %sub.i = sub nsw i32 29, %0
  %index.0.i = select i1 %cmp10.i, i32 0, i32 %sub.i
  %pool = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %index.0.i, i32 3
  %1 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool, align 4
  tail call void @mempool_free(ptr noundef %sgl, ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sg_alloc_table_chained(ptr noundef %table, i32 noundef %nents, ptr noundef %first_chunk, i32 noundef %nents_first_chunk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %tobool.not = icmp eq i32 %nents, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !38

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %first_chunk, null
  call void @__sanitizer_cov_trace_cmp4(i32 %nents, i32 %nents_first_chunk)
  %cmp.not = icmp ugt i32 %nents, %nents_first_chunk
  %or.cond43 = or i1 %tobool10.not, %cmp.not
  br i1 %or.cond43, label %if.end16, label %if.then13

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %orig_nents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nents, ptr %orig_nents, align 4
  %nents14 = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 1
  %1 = ptrtoint ptr %nents14 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %nents, ptr %nents14, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  tail call void @sg_init_table(ptr noundef %3, i32 noundef %nents) #7
  br label %cleanup

if.end16:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nents_first_chunk)
  %cmp17 = icmp ult i32 %nents_first_chunk, 2
  %spec.select = select i1 %cmp17, ptr null, ptr %first_chunk
  %spec.select44 = select i1 %cmp17, i32 0, i32 %nents_first_chunk
  %call = tail call i32 @__sg_alloc_table(ptr noundef %table, i32 noundef %nents, i32 noundef 128, ptr noundef %spec.select, i32 noundef %spec.select44, i32 noundef 2592, ptr noundef nonnull @sg_pool_alloc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.then27, !prof !42

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %if.end16
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select44)
  %cmp.not.i = icmp ugt i32 %5, %spec.select44
  br i1 %cmp.not.i, label %if.end.i, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select44)
  %cmp1.i = icmp eq i32 %spec.select44, 1
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %spec.select44
  tail call void @__sg_free_table(ptr noundef %table, i32 noundef 128, i32 noundef %spec.store.select.i, ptr noundef nonnull @sg_pool_free, i32 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then27.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.end16.cleanup_crit_edge ], [ %call, %if.then27.cleanup_crit_edge ], [ %call, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sg_alloc_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sg_pool_alloc(i32 noundef %nents, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %nents to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv)
  %cmp.i = icmp ugt i16 %conv, 128
  br i1 %cmp.i, label %do.body3.i, label %sg_pool_index.exit, !prof !38

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

sg_pool_index.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = and i32 %nents, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv)
  %cmp10.i = icmp ult i16 %conv, 9
  %dec.i.i = add nsw i32 %conv.i, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 false) #7, !range !40
  %sub.i = sub nsw i32 29, %0
  %index.0.i = select i1 %cmp10.i, i32 0, i32 %sub.i
  %pool = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %index.0.i, i32 3
  %1 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool, align 4
  %call1 = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef %gfp_mask) #7
  ret ptr %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sg_pool_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pool = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.04, i32 3
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #7
  %slab = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.04, i32 2
  %2 = ptrtoint ptr %slab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #7
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_pool_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond.cleanup28_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup28_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.046
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %mul = mul i32 %1, 20
  %name = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.046, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call ptr @kmem_cache_create(ptr noundef %3, i32 noundef %mul, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  %slab = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.046, i32 2
  %4 = ptrtoint ptr %slab to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %slab, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #7
  %pool = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.046, i32 3
  %5 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %pool, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %.str.9.sink = phi ptr [ @.str.5, %for.body.cleanup_crit_edge ], [ @.str.9, %if.end.cleanup_crit_edge ]
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef %7) #8
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %cleanup
  %i.147 = phi i32 [ 0, %cleanup ], [ %inc26, %for.body20.for.body20_crit_edge ]
  %pool23 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.147, i32 3
  %8 = ptrtoint ptr %pool23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool23, align 4
  tail call void @mempool_destroy(ptr noundef %9) #7
  %slab24 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %i.147, i32 2
  %10 = ptrtoint ptr %slab24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slab24, align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #7
  %inc26 = add nuw nsw i32 %i.147, 1
  %exitcond51.not = icmp eq i32 %inc26, 5
  br i1 %exitcond51.not, label %for.body20.cleanup28_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

for.body20.cleanup28_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

cleanup28:                                        ; preds = %for.body20.cleanup28_crit_edge, %for.cond.cleanup28_crit_edge
  %retval.0 = phi i32 [ -12, %for.body20.cleanup28_crit_edge ], [ 0, %for.cond.cleanup28_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_sg_free_table_chained, !1, !"__ksymtab_sg_free_table_chained", i1 false, i1 false}
!1 = !{!"../lib/sg_pool.c", i32 96, i32 1}
!2 = !{ptr @__ksymtab_sg_alloc_table_chained, !3, !"__ksymtab_sg_alloc_table_chained", i1 false, i1 false}
!3 = !{!"../lib/sg_pool.c", i32 140, i32 1}
!4 = !{ptr @__initcall__kmod_sg_pool__226_191_sg_pool_init6, !5, !"__initcall__kmod_sg_pool__226_191_sg_pool_init6", i1 false, i1 false}
!5 = !{!"../lib/sg_pool.c", i32 191, i32 1}
!6 = !{ptr @__exitcall_sg_pool_exit, !7, !"__exitcall_sg_pool_exit", i1 false, i1 false}
!7 = !{!"../lib/sg_pool.c", i32 192, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/sg_pool.c", i32 22, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/sg_pool.c", i32 23, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/sg_pool.c", i32 25, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/sg_pool.c", i32 27, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/sg_pool.c", i32 36, i32 2}
!18 = !{ptr @sg_pools, !19, !"sg_pools", i1 false, i1 false}
!19 = !{!"../lib/sg_pool.c", i32 21, i32 23}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/sg_pool.c", i32 153, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sg_pool_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @sg_pool_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/sg_pool.c", i32 161, i32 4}
!28 = !{ptr @sg_pool_init._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sg_pool_init._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2153607761, i64 2153608238, i64 2153607798, i64 2153607854, i64 2153607888, i64 2153607912, i64 2153607953, i64 2153607974, i64 2153608002, i64 2153608036}
!40 = !{i32 0, i32 33}
!41 = !{i64 2153610909, i64 2153615448, i64 2153610946, i64 2153611002, i64 2153611036, i64 2153611060, i64 2153611101, i64 2153611122, i64 2153611150, i64 2153611184}
!42 = !{!"branch_weights", i32 2000, i32 1}
