; ModuleID = '/llk/IR_all_yes/lib/reed_solomon/reed_solomon.c_pt.bc'
source_filename = "../lib/reed_solomon/reed_solomon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+free_rs\22, \22a\22\09"
module asm "\09.weak\09__crc_free_rs\09\09\09\09"
module asm "\09.long\09__crc_free_rs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_rs:\09\09\09\09\09"
module asm "\09.asciz \09\22free_rs\22\09\09\09\09\09"
module asm "__kstrtabns_free_rs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+init_rs_gfp\22, \22a\22\09"
module asm "\09.weak\09__crc_init_rs_gfp\09\09\09\09"
module asm "\09.long\09__crc_init_rs_gfp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_rs_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22init_rs_gfp\22\09\09\09\09\09"
module asm "__kstrtabns_init_rs_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+init_rs_non_canonical\22, \22a\22\09"
module asm "\09.weak\09__crc_init_rs_non_canonical\09\09\09\09"
module asm "\09.long\09__crc_init_rs_non_canonical\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_rs_non_canonical:\09\09\09\09\09"
module asm "\09.asciz \09\22init_rs_non_canonical\22\09\09\09\09\09"
module asm "__kstrtabns_init_rs_non_canonical:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+encode_rs8\22, \22a\22\09"
module asm "\09.weak\09__crc_encode_rs8\09\09\09\09"
module asm "\09.long\09__crc_encode_rs8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_encode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22encode_rs8\22\09\09\09\09\09"
module asm "__kstrtabns_encode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+decode_rs8\22, \22a\22\09"
module asm "\09.weak\09__crc_decode_rs8\09\09\09\09"
module asm "\09.long\09__crc_decode_rs8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_decode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22decode_rs8\22\09\09\09\09\09"
module asm "__kstrtabns_decode_rs8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+encode_rs16\22, \22a\22\09"
module asm "\09.weak\09__crc_encode_rs16\09\09\09\09"
module asm "\09.long\09__crc_encode_rs16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_encode_rs16:\09\09\09\09\09"
module asm "\09.asciz \09\22encode_rs16\22\09\09\09\09\09"
module asm "__kstrtabns_encode_rs16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+decode_rs16\22, \22a\22\09"
module asm "\09.weak\09__crc_decode_rs16\09\09\09\09"
module asm "\09.long\09__crc_decode_rs16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_decode_rs16:\09\09\09\09\09"
module asm "\09.asciz \09\22decode_rs16\22\09\09\09\09\09"
module asm "__kstrtabns_decode_rs16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rs_codec = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head }
%struct.rs_control = type { ptr, [0 x i16] }

@rslistlock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rslistlock, i64 52), ptr getelementptr (i8, ptr @rslistlock, i64 52) }, ptr @rslistlock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_free_rs = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_rs = external dso_local constant [0 x i8], align 1
@__ksymtab_free_rs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_rs to i32), ptr @__kstrtab_free_rs, ptr @__kstrtabns_free_rs }, section "___ksymtab_gpl+free_rs", align 4
@__kstrtab_init_rs_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_rs_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab_init_rs_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_rs_gfp to i32), ptr @__kstrtab_init_rs_gfp, ptr @__kstrtabns_init_rs_gfp }, section "___ksymtab_gpl+init_rs_gfp", align 4
@__kstrtab_init_rs_non_canonical = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_rs_non_canonical = external dso_local constant [0 x i8], align 1
@__ksymtab_init_rs_non_canonical = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_rs_non_canonical to i32), ptr @__kstrtab_init_rs_non_canonical, ptr @__kstrtabns_init_rs_non_canonical }, section "___ksymtab_gpl+init_rs_non_canonical", align 4
@__kstrtab_encode_rs8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_encode_rs8 = external dso_local constant [0 x i8], align 1
@__ksymtab_encode_rs8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @encode_rs8 to i32), ptr @__kstrtab_encode_rs8, ptr @__kstrtabns_encode_rs8 }, section "___ksymtab_gpl+encode_rs8", align 4
@__kstrtab_decode_rs8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_decode_rs8 = external dso_local constant [0 x i8], align 1
@__ksymtab_decode_rs8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @decode_rs8 to i32), ptr @__kstrtab_decode_rs8, ptr @__kstrtabns_decode_rs8 }, section "___ksymtab_gpl+decode_rs8", align 4
@__kstrtab_encode_rs16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_encode_rs16 = external dso_local constant [0 x i8], align 1
@__ksymtab_encode_rs16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @encode_rs16 to i32), ptr @__kstrtab_encode_rs16, ptr @__kstrtabns_encode_rs16 }, section "___ksymtab_gpl+encode_rs16", align 4
@__kstrtab_decode_rs16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_decode_rs16 = external dso_local constant [0 x i8], align 1
@__ksymtab_decode_rs16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @decode_rs16 to i32), ptr @__kstrtab_decode_rs16, ptr @__kstrtabns_decode_rs16 }, section "___ksymtab_gpl+decode_rs16", align 4
@__UNIQUE_ID_file177 = internal constant [48 x i8] c"reed_solomon.file=lib/reed_solomon/reed_solomon\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [25 x i8] c"reed_solomon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [54 x i8] c"reed_solomon.description=Reed Solomon encoder/decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [47 x i8] c"reed_solomon.author=Phil Karn, Thomas Gleixner\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rslistlock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rslistlock\00", [21 x i8] zeroinitializer }, align 32
@codec_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @codec_list, ptr @codec_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"rslistlock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 55, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"codec_list\00", align 1
@___asan_gen_.12 = private constant [35 x i8] c"../lib/reed_solomon/reed_solomon.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 53, i32 8 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__ksymtab_decode_rs16, ptr @__ksymtab_decode_rs8, ptr @__ksymtab_encode_rs16, ptr @__ksymtab_encode_rs8, ptr @__ksymtab_free_rs, ptr @__ksymtab_init_rs_gfp, ptr @__ksymtab_init_rs_non_canonical, ptr @rslistlock, ptr @.str, ptr @.str.1, ptr @codec_list], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rslistlock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_rs(ptr noundef %rs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rs, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rslistlock, i32 noundef 0) #6
  %users = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_del.exit_crit_edge

if.then3.list_del.exit_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then3.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %alpha_to = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %alpha_to to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alpha_to, align 4
  tail call void @kfree(ptr noundef %13) #6
  %index_of = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %index_of to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %index_of, align 4
  tail call void @kfree(ptr noundef %15) #6
  %genpoly = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %genpoly to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %genpoly, align 4
  tail call void @kfree(ptr noundef %17) #6
  tail call void @kfree(ptr noundef %1) #6
  br label %if.end4

if.end4:                                          ; preds = %list_del.exit, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rslistlock) #6
  tail call void @kfree(ptr noundef nonnull %rs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_rs_gfp(i32 noundef %symsize, i32 noundef %gfpoly, i32 noundef %fcr, i32 noundef %prim, i32 noundef %nroots, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @init_rs_internal(i32 noundef %symsize, i32 noundef %gfpoly, ptr noundef null, i32 noundef %fcr, i32 noundef %prim, i32 noundef %nroots, i32 noundef %gfp)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @init_rs_internal(i32 noundef %symsize, i32 noundef %gfpoly, ptr noundef %gffunc, i32 noundef %fcr, i32 noundef %prim, i32 noundef %nroots, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %symsize)
  %cmp = icmp slt i32 %symsize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcr)
  %cmp1 = icmp slt i32 %fcr, 0
  %or.cond89 = or i1 %cmp, %cmp1
  br i1 %or.cond89, label %entry.cleanup52_crit_edge, label %lor.lhs.false

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

lor.lhs.false:                                    ; preds = %entry
  %shl = shl nuw i32 1, %symsize
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %fcr)
  %cmp2.not = icmp sgt i32 %shl, %fcr
  br i1 %cmp2.not, label %if.end4, label %lor.lhs.false.cleanup52_crit_edge

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prim)
  %cmp5 = icmp sgt i32 %prim, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %prim)
  %cmp8.not = icmp sgt i32 %shl, %prim
  %or.cond = select i1 %cmp5, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end10, label %if.end4.cleanup52_crit_edge

if.end4.cleanup52_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nroots)
  %cmp11 = icmp sgt i32 %nroots, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %nroots)
  %cmp14.not = icmp sgt i32 %shl, %nroots
  %or.cond87 = select i1 %cmp11, i1 %cmp14.not, i1 false
  br i1 %or.cond87, label %if.end16, label %if.end10.cleanup52_crit_edge

if.end10.cleanup52_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end16:                                         ; preds = %if.end10
  %or.i = or i32 %gfp, 256
  %add = shl i32 %nroots, 4
  %add17 = add i32 %add, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add17, i32 noundef %or.i) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end16.cleanup52_crit_edge, label %if.end19

if.end16.cleanup52_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end19:                                         ; preds = %if.end16
  tail call void @mutex_lock_nested(ptr noundef nonnull @rslistlock, i32 noundef 0) #6
  %tmp.0102 = load ptr, ptr @codec_list, align 4
  %cmp.i.not103 = icmp eq ptr %tmp.0102, @codec_list
  br i1 %cmp.i.not103, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end19.for.body_crit_edge
  %tmp.0104 = phi ptr [ %tmp.0, %cleanup.for.body_crit_edge ], [ %tmp.0102, %if.end19.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %tmp.0104, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %symsize)
  %cmp23.not = icmp eq i32 %1, %symsize
  br i1 %cmp23.not, label %if.end25, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %gfpoly26 = getelementptr i8, ptr %tmp.0104, i32 -12
  %2 = ptrtoint ptr %gfpoly26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfpoly26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %gfpoly)
  %cmp27.not = icmp eq i32 %3, %gfpoly
  br i1 %cmp27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %gffunc30 = getelementptr i8, ptr %tmp.0104, i32 -8
  %4 = ptrtoint ptr %gffunc30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gffunc30, align 4
  %cmp31.not = icmp eq ptr %5, %gffunc
  br i1 %cmp31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %fcr34 = getelementptr i8, ptr %tmp.0104, i32 -24
  %6 = ptrtoint ptr %fcr34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcr34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fcr)
  %cmp35.not = icmp eq i32 %7, %fcr
  br i1 %cmp35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %prim38 = getelementptr i8, ptr %tmp.0104, i32 -20
  %8 = ptrtoint ptr %prim38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prim38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %prim)
  %cmp39.not = icmp eq i32 %9, %prim
  br i1 %cmp39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %nroots42 = getelementptr i8, ptr %tmp.0104, i32 -28
  %10 = ptrtoint ptr %nroots42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nroots42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %nroots)
  %cmp43.not = icmp eq i32 %11, %nroots
  br i1 %cmp43.not, label %cleanup.thread, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le = getelementptr i8, ptr %tmp.0104, i32 -48
  %users = getelementptr i8, ptr %tmp.0104, i32 -4
  %12 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %users, align 4
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.le, ptr %call9.i.i, align 128
  br label %out

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %15 = ptrtoint ptr %tmp.0104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0 = load ptr, ptr %tmp.0104, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, @codec_list
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end19.for.end_crit_edge
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %for.end.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !36

for.end.kzalloc.exit.i_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %for.end
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge

if.end.i20.i.i.i.kzalloc.exit.i_crit_edge:        ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge, %for.end.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %for.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 7
  %16 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %or.i, i32 noundef 56) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.if.then50_crit_edge, label %if.end.i

kzalloc.exit.i.if.then50_crit_edge:               ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.end.i:                                         ; preds = %kzalloc.exit.i
  %list.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %symsize, ptr %call7.i.i.i, align 8
  %sub.i = add i32 %shl, -1
  %nn.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %nn.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i, ptr %nn.i, align 4
  %fcr1.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %fcr1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %fcr, ptr %fcr1.i, align 8
  %prim2.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %prim2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %prim, ptr %prim2.i, align 4
  %nroots3.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %nroots3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %nroots, ptr %nroots3.i, align 4
  %gfpoly4.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %gfpoly4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %gfpoly, ptr %gfpoly4.i, align 4
  %gffunc5.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %gffunc5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %gffunc, ptr %gffunc5.i, align 8
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 2) #6
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !37

kmalloc_array.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %alpha_to389.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %alpha_to389.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %alpha_to389.i, align 8
  br label %err.i

if.end7.i.i:                                      ; preds = %if.end.i
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef %gfp) #9
  %alpha_to.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %alpha_to.i, align 8
  %cmp.i93 = icmp eq ptr %call8.i.i, null
  br i1 %cmp.i93, label %if.end7.i.i.err.i_crit_edge, label %if.end10.i

if.end7.i.i.err.i_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end10.i:                                       ; preds = %if.end7.i.i
  %32 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nn.i, align 4
  %add12.i = add i32 %33, 1
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add12.i, i32 2) #6
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kmalloc_array.exit330.thread.i, label %if.end7.i328.i, !prof !37

kmalloc_array.exit330.thread.i:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %index_of398.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %index_of398.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %index_of398.i, align 4
  br label %err.i

if.end7.i328.i:                                   ; preds = %if.end10.i
  %37 = extractvalue { i32, i1 } %34, 0
  %call8.i327.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef %gfp) #9
  %index_of.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %index_of.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i327.i, ptr %index_of.i, align 4
  %cmp15.i = icmp eq ptr %call8.i327.i, null
  br i1 %cmp15.i, label %if.end7.i328.i.err.i_crit_edge, label %if.end17.i

if.end7.i328.i.err.i_crit_edge:                   ; preds = %if.end7.i328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end17.i:                                       ; preds = %if.end7.i328.i
  %39 = ptrtoint ptr %nroots3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nroots3.i, align 4
  %add19.i = add i32 %40, 1
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add19.i, i32 2) #6
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %kmalloc_array.exit374.thread.i, label %if.end7.i372.i, !prof !37

kmalloc_array.exit374.thread.i:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %genpoly407.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %genpoly407.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %genpoly407.i, align 8
  br label %err.i

if.end7.i372.i:                                   ; preds = %if.end17.i
  %44 = extractvalue { i32, i1 } %41, 0
  %call8.i371.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef %gfp) #9
  %genpoly.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i371.i, ptr %genpoly.i, align 8
  %cmp22.i = icmp eq ptr %call8.i371.i, null
  br i1 %cmp22.i, label %if.end7.i372.i.err.i_crit_edge, label %if.end24.i

if.end7.i372.i.err.i_crit_edge:                   ; preds = %if.end7.i372.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end24.i:                                       ; preds = %if.end7.i372.i
  %46 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nn.i, align 4
  %conv.i94 = trunc i32 %47 to i16
  %48 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %index_of.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i94, ptr %49, align 2
  %51 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alpha_to.i, align 8
  %53 = load i32, ptr %nn.i, align 4
  %arrayidx29.i = getelementptr i16, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %arrayidx29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gfpoly)
  %tobool30.not.i = icmp eq i32 %gfpoly, 0
  br i1 %tobool30.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end24.i
  %55 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp33415.i = icmp sgt i32 %56, 0
  br i1 %cmp33415.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end64.i_crit_edge

for.cond.preheader.i.if.end64.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %sr.0417.i = phi i32 [ %and47.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0416.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv35.i = trunc i32 %i.0416.i to i16
  %57 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %index_of.i, align 4
  %arrayidx37.i = getelementptr i16, ptr %58, i32 %sr.0417.i
  %59 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv35.i, ptr %arrayidx37.i, align 2
  %conv38.i = trunc i32 %sr.0417.i to i16
  %60 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %alpha_to.i, align 8
  %arrayidx40.i = getelementptr i16, ptr %61, i32 %i.0416.i
  %62 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv38.i, ptr %arrayidx40.i, align 2
  %shl41.i = shl i32 %sr.0417.i, 1
  %and.i = and i32 %shl41.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  %xor.i = select i1 %tobool43.not.i, i32 0, i32 %gfpoly
  %spec.select.i = xor i32 %xor.i, %shl41.i
  %63 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nn.i, align 4
  %and47.i = and i32 %64, %spec.select.i
  %inc.i = add nuw nsw i32 %i.0416.i, 1
  %cmp33.i = icmp slt i32 %inc.i, %64
  br i1 %cmp33.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end64.i_crit_edge

for.body.i.if.end64.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.else.i:                                        ; preds = %if.end24.i
  %call48.i = tail call i32 %gffunc(i32 noundef 0) #6
  %65 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp51418.i = icmp sgt i32 %66, 0
  br i1 %cmp51418.i, label %if.else.i.for.body53.i_crit_edge, label %if.else.i.if.end64.i_crit_edge

if.else.i.if.end64.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.else.i.for.body53.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.body53.i.for.body53.i_crit_edge, %if.else.i.for.body53.i_crit_edge
  %sr.2420.i = phi i32 [ %call60.i, %for.body53.i.for.body53.i_crit_edge ], [ %call48.i, %if.else.i.for.body53.i_crit_edge ]
  %i.1419.i = phi i32 [ %inc62.i, %for.body53.i.for.body53.i_crit_edge ], [ 0, %if.else.i.for.body53.i_crit_edge ]
  %conv54.i = trunc i32 %i.1419.i to i16
  %67 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %index_of.i, align 4
  %arrayidx56.i = getelementptr i16, ptr %68, i32 %sr.2420.i
  %69 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv54.i, ptr %arrayidx56.i, align 2
  %conv57.i = trunc i32 %sr.2420.i to i16
  %70 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %alpha_to.i, align 8
  %arrayidx59.i = getelementptr i16, ptr %71, i32 %i.1419.i
  %72 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv57.i, ptr %arrayidx59.i, align 2
  %call60.i = tail call i32 %gffunc(i32 noundef %sr.2420.i) #6
  %inc62.i = add nuw nsw i32 %i.1419.i, 1
  %73 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nn.i, align 4
  %cmp51.i = icmp slt i32 %inc62.i, %74
  br i1 %cmp51.i, label %for.body53.i.for.body53.i_crit_edge, label %for.body53.i.if.end64.i_crit_edge

for.body53.i.if.end64.i_crit_edge:                ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

for.body53.i.for.body53.i_crit_edge:              ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53.i

if.end64.i:                                       ; preds = %for.body53.i.if.end64.i_crit_edge, %if.else.i.if.end64.i_crit_edge, %for.body.i.if.end64.i_crit_edge, %for.cond.preheader.i.if.end64.i_crit_edge
  %sr.3.i = phi i32 [ %call48.i, %if.else.i.if.end64.i_crit_edge ], [ 1, %for.cond.preheader.i.if.end64.i_crit_edge ], [ %call60.i, %for.body53.i.if.end64.i_crit_edge ], [ %and47.i, %for.body.i.if.end64.i_crit_edge ]
  %75 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %alpha_to.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %76, align 2
  %conv67.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sr.3.i, i32 %conv67.i)
  %cmp68.not.i = icmp eq i32 %sr.3.i, %conv67.i
  br i1 %cmp68.not.i, label %for.cond72.preheader.i, label %if.end64.i.err.i_crit_edge

if.end64.i.err.i_crit_edge:                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

for.cond72.preheader.i:                           ; preds = %if.end64.i
  %rem422.i = srem i32 1, %prim
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem422.i)
  %cmp73.not423.i = icmp eq i32 %rem422.i, 0
  br i1 %cmp73.not423.i, label %for.cond72.preheader.i.for.end79.i_crit_edge, label %for.inc76.lr.ph.i

for.cond72.preheader.i.for.end79.i_crit_edge:     ; preds = %for.cond72.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79.i

for.inc76.lr.ph.i:                                ; preds = %for.cond72.preheader.i
  %79 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nn.i, align 4
  br label %for.inc76.i

for.inc76.i:                                      ; preds = %for.inc76.i.for.inc76.i_crit_edge, %for.inc76.lr.ph.i
  %iprim.0424.i = phi i32 [ 1, %for.inc76.lr.ph.i ], [ %add78.i, %for.inc76.i.for.inc76.i_crit_edge ]
  %add78.i = add i32 %iprim.0424.i, %80
  %rem.i = srem i32 %add78.i, %prim
  %cmp73.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp73.not.i, label %for.inc76.i.for.end79.i_crit_edge, label %for.inc76.i.for.inc76.i_crit_edge

for.inc76.i.for.inc76.i_crit_edge:                ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc76.i

for.inc76.i.for.end79.i_crit_edge:                ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79.i

for.end79.i:                                      ; preds = %for.inc76.i.for.end79.i_crit_edge, %for.cond72.preheader.i.for.end79.i_crit_edge
  %iprim.0.lcssa.i = phi i32 [ 1, %for.cond72.preheader.i.for.end79.i_crit_edge ], [ %add78.i, %for.inc76.i.for.end79.i_crit_edge ]
  %div.i = sdiv i32 %iprim.0.lcssa.i, %prim
  %iprim80.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 8
  %81 = ptrtoint ptr %iprim80.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div.i, ptr %iprim80.i, align 8
  %82 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %genpoly.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %83, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nroots)
  %cmp84429.i = icmp sgt i32 %nroots, 0
  br i1 %cmp84429.i, label %for.body86.preheader.i, label %for.end79.i.for.cond143.preheader.i_crit_edge

for.end79.i.for.cond143.preheader.i_crit_edge:    ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond143.preheader.i

for.body86.preheader.i:                           ; preds = %for.end79.i
  %mul.i = mul i32 %prim, %fcr
  br label %for.body86.i

for.cond143.preheader.i:                          ; preds = %rs_modnn.exit386.i.for.cond143.preheader.i_crit_edge, %for.end79.i.for.cond143.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nroots)
  %cmp144.not432.i = icmp slt i32 %nroots, 0
  br i1 %cmp144.not432.i, label %for.cond143.preheader.i.for.end156.i_crit_edge, label %for.cond143.preheader.i.for.body146.i_crit_edge

for.cond143.preheader.i.for.body146.i_crit_edge:  ; preds = %for.cond143.preheader.i
  br label %for.body146.i

for.cond143.preheader.i.for.end156.i_crit_edge:   ; preds = %for.cond143.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end156.i

for.body86.i:                                     ; preds = %rs_modnn.exit386.i.for.body86.i_crit_edge, %for.body86.preheader.i
  %root.0431.i = phi i32 [ %add141.i, %rs_modnn.exit386.i.for.body86.i_crit_edge ], [ %mul.i, %for.body86.preheader.i ]
  %i.2430.i = phi i32 [ %add88.i, %rs_modnn.exit386.i.for.body86.i_crit_edge ], [ 0, %for.body86.preheader.i ]
  %85 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %genpoly.i, align 8
  %add88.i = add nuw nsw i32 %i.2430.i, 1
  %arrayidx89.i = getelementptr i16, ptr %86, i32 %add88.i
  %87 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %arrayidx89.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2430.i)
  %cmp91426.not.i = icmp eq i32 %i.2430.i, 0
  br i1 %cmp91426.not.i, label %for.body86.i.for.end126.i_crit_edge, label %for.body86.i.for.body93.i_crit_edge

for.body86.i.for.body93.i_crit_edge:              ; preds = %for.body86.i
  br label %for.body93.i

for.body86.i.for.end126.i_crit_edge:              ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end126.i

for.body93.i:                                     ; preds = %for.inc125.i.for.body93.i_crit_edge, %for.body86.i.for.body93.i_crit_edge
  %j.0427.i = phi i32 [ %dec.pre-phi.i, %for.inc125.i.for.body93.i_crit_edge ], [ %i.2430.i, %for.body86.i.for.body93.i_crit_edge ]
  %88 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %genpoly.i, align 8
  %arrayidx95.i = getelementptr i16, ptr %89, i32 %j.0427.i
  %90 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx95.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp97.not.i = icmp eq i16 %91, 0
  br i1 %cmp97.not.i, label %if.else118.i, label %if.then99.i

if.then99.i:                                      ; preds = %for.body93.i
  %conv96.i = zext i16 %91 to i32
  %sub101.i = add nsw i32 %j.0427.i, -1
  %arrayidx102.i = getelementptr i16, ptr %89, i32 %sub101.i
  %92 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx102.i, align 2
  %94 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %alpha_to.i, align 8
  %96 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %index_of.i, align 4
  %arrayidx108.i = getelementptr i16, ptr %97, i32 %conv96.i
  %98 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx108.i, align 2
  %conv109.i = zext i16 %99 to i32
  %add110.i = add i32 %root.0431.i, %conv109.i
  %100 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add110.i)
  %cmp.not10.i.i = icmp sgt i32 %101, %add110.i
  br i1 %cmp.not10.i.i, label %if.then99.i.rs_modnn.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then99.i.rs_modnn.exit.i_crit_edge:            ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then99.i
  %102 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call7.i.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %x.addr.011.i.i = phi i32 [ %add110.i, %while.body.lr.ph.i.i ], [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %x.addr.011.i.i, %101
  %shr.i.i = ashr i32 %sub.i.i, %103
  %and.i.i = and i32 %sub.i.i, %101
  %add.i.i = add i32 %shr.i.i, %and.i.i
  %cmp.not.i.i = icmp slt i32 %add.i.i, %101
  br i1 %cmp.not.i.i, label %while.body.i.i.rs_modnn.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.rs_modnn.exit.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit.i

rs_modnn.exit.i:                                  ; preds = %while.body.i.i.rs_modnn.exit.i_crit_edge, %if.then99.i.rs_modnn.exit.i_crit_edge
  %x.addr.0.lcssa.i.i = phi i32 [ %add110.i, %if.then99.i.rs_modnn.exit.i_crit_edge ], [ %add.i.i, %while.body.i.i.rs_modnn.exit.i_crit_edge ]
  %arrayidx112.i = getelementptr i16, ptr %95, i32 %x.addr.0.lcssa.i.i
  %104 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx112.i, align 2
  %xor114274.i = xor i16 %105, %93
  br label %for.inc125.i

if.else118.i:                                     ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub120.i = add nsw i32 %j.0427.i, -1
  %arrayidx121.i = getelementptr i16, ptr %89, i32 %sub120.i
  %106 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx121.i, align 2
  br label %for.inc125.i

for.inc125.i:                                     ; preds = %if.else118.i, %rs_modnn.exit.i
  %dec.pre-phi.i = phi i32 [ %sub101.i, %rs_modnn.exit.i ], [ %sub120.i, %if.else118.i ]
  %storemerge.i = phi i16 [ %xor114274.i, %rs_modnn.exit.i ], [ %107, %if.else118.i ]
  %108 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %storemerge.i, ptr %arrayidx95.i, align 2
  %cmp91.i = icmp sgt i32 %dec.pre-phi.i, 0
  br i1 %cmp91.i, label %for.inc125.i.for.body93.i_crit_edge, label %for.inc125.i.for.end126.i_crit_edge

for.inc125.i.for.end126.i_crit_edge:              ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end126.i

for.inc125.i.for.body93.i_crit_edge:              ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body93.i

for.end126.i:                                     ; preds = %for.inc125.i.for.end126.i_crit_edge, %for.body86.i.for.end126.i_crit_edge
  %109 = ptrtoint ptr %alpha_to.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %alpha_to.i, align 8
  %111 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %index_of.i, align 4
  %113 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %genpoly.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %114, align 2
  %idxprom131.i = zext i16 %116 to i32
  %arrayidx132.i = getelementptr i16, ptr %112, i32 %idxprom131.i
  %117 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx132.i, align 2
  %conv133.i = zext i16 %118 to i32
  %add134.i = add i32 %root.0431.i, %conv133.i
  %119 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %add134.i)
  %cmp.not10.i376.i = icmp sgt i32 %120, %add134.i
  br i1 %cmp.not10.i376.i, label %for.end126.i.rs_modnn.exit386.i_crit_edge, label %while.body.lr.ph.i377.i

for.end126.i.rs_modnn.exit386.i_crit_edge:        ; preds = %for.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit386.i

while.body.lr.ph.i377.i:                          ; preds = %for.end126.i
  %121 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call7.i.i.i, align 8
  br label %while.body.i384.i

while.body.i384.i:                                ; preds = %while.body.i384.i.while.body.i384.i_crit_edge, %while.body.lr.ph.i377.i
  %x.addr.011.i378.i = phi i32 [ %add134.i, %while.body.lr.ph.i377.i ], [ %add.i382.i, %while.body.i384.i.while.body.i384.i_crit_edge ]
  %sub.i379.i = sub i32 %x.addr.011.i378.i, %120
  %shr.i380.i = ashr i32 %sub.i379.i, %122
  %and.i381.i = and i32 %sub.i379.i, %120
  %add.i382.i = add i32 %shr.i380.i, %and.i381.i
  %cmp.not.i383.i = icmp slt i32 %add.i382.i, %120
  br i1 %cmp.not.i383.i, label %while.body.i384.i.rs_modnn.exit386.i_crit_edge, label %while.body.i384.i.while.body.i384.i_crit_edge

while.body.i384.i.while.body.i384.i_crit_edge:    ; preds = %while.body.i384.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i384.i

while.body.i384.i.rs_modnn.exit386.i_crit_edge:   ; preds = %while.body.i384.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit386.i

rs_modnn.exit386.i:                               ; preds = %while.body.i384.i.rs_modnn.exit386.i_crit_edge, %for.end126.i.rs_modnn.exit386.i_crit_edge
  %x.addr.0.lcssa.i385.i = phi i32 [ %add134.i, %for.end126.i.rs_modnn.exit386.i_crit_edge ], [ %add.i382.i, %while.body.i384.i.rs_modnn.exit386.i_crit_edge ]
  %arrayidx136.i = getelementptr i16, ptr %110, i32 %x.addr.0.lcssa.i385.i
  %123 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx136.i, align 2
  %125 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %114, align 2
  %add141.i = add i32 %root.0431.i, %prim
  %exitcond.not.i = icmp eq i32 %add88.i, %nroots
  br i1 %exitcond.not.i, label %rs_modnn.exit386.i.for.cond143.preheader.i_crit_edge, label %rs_modnn.exit386.i.for.body86.i_crit_edge

rs_modnn.exit386.i.for.body86.i_crit_edge:        ; preds = %rs_modnn.exit386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86.i

rs_modnn.exit386.i.for.cond143.preheader.i_crit_edge: ; preds = %rs_modnn.exit386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond143.preheader.i

for.body146.i:                                    ; preds = %for.body146.i.for.body146.i_crit_edge, %for.cond143.preheader.i.for.body146.i_crit_edge
  %i.3433.i = phi i32 [ %inc155.i, %for.body146.i.for.body146.i_crit_edge ], [ 0, %for.cond143.preheader.i.for.body146.i_crit_edge ]
  %126 = ptrtoint ptr %index_of.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %index_of.i, align 4
  %128 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %genpoly.i, align 8
  %arrayidx149.i = getelementptr i16, ptr %129, i32 %i.3433.i
  %130 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx149.i, align 2
  %idxprom150.i = zext i16 %131 to i32
  %arrayidx151.i = getelementptr i16, ptr %127, i32 %idxprom150.i
  %132 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx151.i, align 2
  store i16 %133, ptr %arrayidx149.i, align 2
  %inc155.i = add i32 %i.3433.i, 1
  %cmp144.not.i = icmp sgt i32 %inc155.i, %nroots
  br i1 %cmp144.not.i, label %for.body146.i.for.end156.i_crit_edge, label %for.body146.i.for.body146.i_crit_edge

for.body146.i.for.body146.i_crit_edge:            ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body146.i

for.body146.i.for.end156.i_crit_edge:             ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end156.i

for.end156.i:                                     ; preds = %for.body146.i.for.end156.i_crit_edge, %for.cond143.preheader.i.for.end156.i_crit_edge
  %users.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 11
  %134 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %users.i, align 4
  %135 = load ptr, ptr @codec_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @codec_list, ptr noundef %135) #6
  br i1 %call.i.i.i, label %if.end.i.i387.i, label %for.end156.i.codec_init.exit_crit_edge

for.end156.i.codec_init.exit_crit_edge:           ; preds = %for.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %codec_init.exit

if.end.i.i387.i:                                  ; preds = %for.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %137 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %list.i, align 8
  %138 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @codec_list, ptr %prev.i.i, align 4
  store volatile ptr %list.i, ptr @codec_list, align 4
  br label %codec_init.exit

err.i:                                            ; preds = %if.end64.i.err.i_crit_edge, %if.end7.i372.i.err.i_crit_edge, %kmalloc_array.exit374.thread.i, %if.end7.i328.i.err.i_crit_edge, %kmalloc_array.exit330.thread.i, %if.end7.i.i.err.i_crit_edge, %kmalloc_array.exit.thread.i
  %alpha_to391.i = phi ptr [ %alpha_to389.i, %kmalloc_array.exit.thread.i ], [ %alpha_to.i, %if.end64.i.err.i_crit_edge ], [ %alpha_to.i, %if.end7.i372.i.err.i_crit_edge ], [ %alpha_to.i, %if.end7.i328.i.err.i_crit_edge ], [ %alpha_to.i, %if.end7.i.i.err.i_crit_edge ], [ %alpha_to.i, %kmalloc_array.exit330.thread.i ], [ %alpha_to.i, %kmalloc_array.exit374.thread.i ]
  %genpoly158.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %genpoly158.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %genpoly158.i, align 8
  tail call void @kfree(ptr noundef %140) #6
  %index_of159.i = getelementptr inbounds %struct.rs_codec, ptr %call7.i.i.i, i32 0, i32 3
  %141 = ptrtoint ptr %index_of159.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %index_of159.i, align 4
  tail call void @kfree(ptr noundef %142) #6
  %143 = ptrtoint ptr %alpha_to391.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %alpha_to391.i, align 4
  tail call void @kfree(ptr noundef %144) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %if.then50

codec_init.exit:                                  ; preds = %if.end.i.i387.i, %for.end156.i.codec_init.exit_crit_edge
  %145 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call7.i.i.i, ptr %call9.i.i, align 128
  br label %out

if.then50:                                        ; preds = %err.i, %kzalloc.exit.i.if.then50_crit_edge
  %146 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %call9.i.i, align 128
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out

out:                                              ; preds = %if.then50, %codec_init.exit, %cleanup.thread
  %rs.0 = phi ptr [ %call9.i.i, %codec_init.exit ], [ null, %if.then50 ], [ %call9.i.i, %cleanup.thread ]
  tail call void @mutex_unlock(ptr noundef nonnull @rslistlock) #6
  br label %cleanup52

cleanup52:                                        ; preds = %out, %if.end16.cleanup52_crit_edge, %if.end10.cleanup52_crit_edge, %if.end4.cleanup52_crit_edge, %lor.lhs.false.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.0 = phi ptr [ %rs.0, %out ], [ null, %entry.cleanup52_crit_edge ], [ null, %lor.lhs.false.cleanup52_crit_edge ], [ null, %if.end4.cleanup52_crit_edge ], [ null, %if.end10.cleanup52_crit_edge ], [ null, %if.end16.cleanup52_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_rs_non_canonical(i32 noundef %symsize, ptr noundef %gffunc, i32 noundef %fcr, i32 noundef %prim, i32 noundef %nroots) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @init_rs_internal(i32 noundef %symsize, i32 noundef 0, ptr noundef %gffunc, i32 noundef %fcr, i32 noundef %prim, i32 noundef %nroots, i32 noundef 3264)
  ret ptr %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @encode_rs8(ptr nocapture noundef readonly %rsc, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef %par, i16 noundef zeroext %invmsk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc, align 4
  %nn1 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nn1, align 4
  %nroots2 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nroots2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nroots2, align 4
  %alpha_to3 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %alpha_to3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alpha_to3, align 4
  %index_of4 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %index_of4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %index_of4, align 4
  %genpoly5 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %genpoly5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genpoly5, align 4
  %12 = add i32 %5, %len
  %sub7 = sub i32 %3, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub7)
  %cmp = icmp sgt i32 %sub7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %3)
  %cmp9.not = icmp slt i32 %sub7, %3
  %or.cond = and i1 %cmp, %cmp9.not
  br i1 %or.cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp11124 = icmp sgt i32 %len, 0
  br i1 %cmp11124, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv15 = zext i16 %invmsk to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp26122 = icmp sgt i32 %5, 1
  %arrayidx41 = getelementptr i16, ptr %par, i32 1
  %sub42 = add i32 %5, -1
  %mul = shl i32 %sub42, 1
  %arrayidx54 = getelementptr i16, ptr %par, i32 %sub42
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc59, %for.inc58.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0125
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %14 to i32
  %xor = xor i32 %conv14, %conv15
  %and = and i32 %3, %xor
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %par, align 2
  %conv18 = zext i16 %16 to i32
  %xor19 = xor i32 %and, %conv18
  %arrayidx20 = getelementptr i16, ptr %9, i32 %xor19
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx20, align 2
  %conv21 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv21)
  %cmp22.not = icmp eq i32 %3, %conv21
  br i1 %cmp22.not, label %if.else, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.body
  br i1 %cmp26122, label %for.cond25.preheader.for.body28_crit_edge, label %for.cond25.preheader.if.then46_crit_edge

for.cond25.preheader.if.then46_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

for.body28:                                       ; preds = %rs_modnn.exit.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %j.0123 = phi i32 [ %inc, %rs_modnn.exit.for.body28_crit_edge ], [ 1, %for.cond25.preheader.for.body28_crit_edge ]
  %sub30 = sub i32 %5, %j.0123
  %arrayidx31 = getelementptr i16, ptr %11, i32 %sub30
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv32, %conv21
  %21 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp.not10.i = icmp sgt i32 %22, %add
  br i1 %cmp.not10.i, label %for.body28.rs_modnn.exit_crit_edge, label %while.body.lr.ph.i

for.body28.rs_modnn.exit_crit_edge:               ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

while.body.lr.ph.i:                               ; preds = %for.body28
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %x.addr.011.i = phi i32 [ %add, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %x.addr.011.i, %22
  %shr.i = ashr i32 %sub.i, %24
  %and.i = and i32 %sub.i, %22
  %add.i = add i32 %shr.i, %and.i
  %cmp.not.i = icmp slt i32 %add.i, %22
  br i1 %cmp.not.i, label %while.body.i.rs_modnn.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.rs_modnn.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

rs_modnn.exit:                                    ; preds = %while.body.i.rs_modnn.exit_crit_edge, %for.body28.rs_modnn.exit_crit_edge
  %x.addr.0.lcssa.i = phi i32 [ %add, %for.body28.rs_modnn.exit_crit_edge ], [ %add.i, %while.body.i.rs_modnn.exit_crit_edge ]
  %arrayidx33 = getelementptr i16, ptr %7, i32 %x.addr.0.lcssa.i
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx33, align 2
  %arrayidx35 = getelementptr i16, ptr %par, i32 %j.0123
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx35, align 2
  %xor37104 = xor i16 %28, %26
  store i16 %xor37104, ptr %arrayidx35, align 2
  %inc = add nuw nsw i32 %j.0123, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %rs_modnn.exit.if.then46_crit_edge, label %rs_modnn.exit.for.body28_crit_edge

rs_modnn.exit.for.body28_crit_edge:               ; preds = %rs_modnn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

rs_modnn.exit.if.then46_crit_edge:                ; preds = %rs_modnn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %rs_modnn.exit.if.then46_crit_edge, %for.cond25.preheader.if.then46_crit_edge
  %29 = call ptr @memmove(ptr %par, ptr %arrayidx41, i32 %mul)
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %11, align 2
  %conv49 = zext i16 %31 to i32
  %add50 = add nuw nsw i32 %conv49, %conv21
  %32 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add50)
  %cmp.not10.i106 = icmp sgt i32 %33, %add50
  br i1 %cmp.not10.i106, label %if.then46.rs_modnn.exit116_crit_edge, label %while.body.lr.ph.i107

if.then46.rs_modnn.exit116_crit_edge:             ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit116

while.body.lr.ph.i107:                            ; preds = %if.then46
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  br label %while.body.i114

while.body.i114:                                  ; preds = %while.body.i114.while.body.i114_crit_edge, %while.body.lr.ph.i107
  %x.addr.011.i108 = phi i32 [ %add50, %while.body.lr.ph.i107 ], [ %add.i112, %while.body.i114.while.body.i114_crit_edge ]
  %sub.i109 = sub i32 %x.addr.011.i108, %33
  %shr.i110 = ashr i32 %sub.i109, %35
  %and.i111 = and i32 %sub.i109, %33
  %add.i112 = add i32 %shr.i110, %and.i111
  %cmp.not.i113 = icmp slt i32 %add.i112, %33
  br i1 %cmp.not.i113, label %while.body.i114.rs_modnn.exit116_crit_edge, label %while.body.i114.while.body.i114_crit_edge

while.body.i114.while.body.i114_crit_edge:        ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i114

while.body.i114.rs_modnn.exit116_crit_edge:       ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit116

rs_modnn.exit116:                                 ; preds = %while.body.i114.rs_modnn.exit116_crit_edge, %if.then46.rs_modnn.exit116_crit_edge
  %x.addr.0.lcssa.i115 = phi i32 [ %add50, %if.then46.rs_modnn.exit116_crit_edge ], [ %add.i112, %while.body.i114.rs_modnn.exit116_crit_edge ]
  %arrayidx52 = getelementptr i16, ptr %7, i32 %x.addr.0.lcssa.i115
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx52, align 2
  br label %for.inc58

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = call ptr @memmove(ptr %par, ptr %arrayidx41, i32 %mul)
  br label %for.inc58

for.inc58:                                        ; preds = %if.else, %rs_modnn.exit116
  %storemerge = phi i16 [ %37, %rs_modnn.exit116 ], [ 0, %if.else ]
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %storemerge, ptr %arrayidx54, align 2
  %inc59 = add nuw nsw i32 %i.0125, 1
  %exitcond126.not = icmp eq i32 %inc59, %len
  br i1 %exitcond126.not, label %for.inc58.cleanup_crit_edge, label %for.inc58.for.body_crit_edge

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc58.cleanup_crit_edge:                      ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc58.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_rs8(ptr noundef %rsc, ptr noundef %data, ptr noundef %par, i32 noundef %len, ptr noundef readonly %s, i32 noundef %no_eras, ptr noundef %eras_pos, i16 noundef zeroext %invmsk, ptr noundef writeonly %corr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc, align 4
  %nn1 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nn1, align 4
  %nroots2 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nroots2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nroots2, align 4
  %fcr3 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fcr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcr3, align 4
  %prim4 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %prim4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prim4, align 4
  %iprim5 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %iprim5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iprim5, align 4
  %alpha_to6 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %alpha_to6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alpha_to6, align 4
  %index_of7 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %index_of7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %index_of7, align 4
  %conv = trunc i32 %3 to i16
  %buffers = getelementptr inbounds %struct.rs_control, ptr %rsc, i32 0, i32 1
  %add = add i32 %5, 1
  %add.ptr13 = getelementptr i16, ptr %buffers, i32 %add
  %mul17 = shl i32 %add, 1
  %add.ptr18 = getelementptr i16, ptr %buffers, i32 %mul17
  %mul22 = mul i32 %add, 3
  %add.ptr23 = getelementptr i16, ptr %buffers, i32 %mul22
  %mul27 = shl i32 %add, 2
  %add.ptr28 = getelementptr i16, ptr %buffers, i32 %mul27
  %mul32 = mul i32 %add, 5
  %add.ptr33 = getelementptr i16, ptr %buffers, i32 %mul32
  %mul37 = mul i32 %add, 6
  %add.ptr38 = getelementptr i16, ptr %buffers, i32 %mul37
  %mul42 = mul i32 %add, 7
  %add.ptr43 = getelementptr i16, ptr %buffers, i32 %mul42
  %sub = sub i32 %3, %5
  %sub44 = sub i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp = icmp slt i32 %sub44, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %sub)
  %cmp47 = icmp sge i32 %sub44, %sub
  %spec.select = or i1 %cmp, %cmp47
  br i1 %spec.select, label %do.body50, label %do.end55, !prof !37

do.body50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/reed_solomon/decode_rs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

do.end55:                                         ; preds = %entry
  %cmp56.not = icmp eq ptr %s, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp681336 = icmp sgt i32 %5, 0
  br i1 %cmp56.not, label %for.cond67.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end55
  br i1 %cmp681336, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond67.preheader:                             ; preds = %do.end55
  br i1 %cmp681336, label %for.body70.lr.ph, label %for.cond67.preheader.for.cond81.preheader_crit_edge

for.cond67.preheader.for.cond81.preheader_crit_edge: ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond81.preheader

for.body70.lr.ph:                                 ; preds = %for.cond67.preheader
  %conv74 = zext i16 %invmsk to i32
  br label %for.body70

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.01335, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.01335 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %s, i32 %i.01335
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %conv61 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv61)
  %cmp62.not = icmp eq i32 %3, %conv61
  br i1 %cmp62.not, label %for.cond, label %for.body.decode_crit_edge

for.body.decode_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode

for.cond81.preheader:                             ; preds = %for.body70.for.cond81.preheader_crit_edge, %for.cond67.preheader.for.cond81.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp821340 = icmp sgt i32 %len, 1
  br i1 %cmp821340, label %for.cond85.preheader.lr.ph, label %for.cond81.preheader.for.cond128.preheader_crit_edge

for.cond81.preheader.for.cond128.preheader_crit_edge: ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond128.preheader

for.cond85.preheader.lr.ph:                       ; preds = %for.cond81.preheader
  %conv106 = zext i16 %invmsk to i32
  br label %for.cond85.preheader

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.lr.ph
  %i.11337 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc79, %for.body70.for.body70_crit_edge ]
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv73 = zext i8 %19 to i32
  %xor = xor i32 %conv73, %conv74
  %and = and i32 %xor, %3
  %conv76 = trunc i32 %and to i16
  %arrayidx77 = getelementptr i16, ptr %add.ptr13, i32 %i.11337
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv76, ptr %arrayidx77, align 2
  %inc79 = add nuw nsw i32 %i.11337, 1
  %exitcond1432.not = icmp eq i32 %inc79, %5
  br i1 %exitcond1432.not, label %for.body70.for.cond81.preheader_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.body70.for.cond81.preheader_crit_edge:        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond81.preheader

for.cond85.preheader:                             ; preds = %for.inc125.for.cond85.preheader_crit_edge, %for.cond85.preheader.lr.ph
  %j.01341 = phi i32 [ 1, %for.cond85.preheader.lr.ph ], [ %inc126, %for.inc125.for.cond85.preheader_crit_edge ]
  br i1 %cmp681336, label %for.body88.lr.ph, label %for.cond85.preheader.for.inc125_crit_edge

for.cond85.preheader.for.inc125_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc125

for.body88.lr.ph:                                 ; preds = %for.cond85.preheader
  %arrayidx103 = getelementptr i8, ptr %data, i32 %j.01341
  br label %for.body88

for.cond128.preheader:                            ; preds = %for.inc125.for.cond128.preheader_crit_edge, %for.cond81.preheader.for.cond128.preheader_crit_edge
  br i1 %cmp681336, label %for.cond128.preheader.for.body135.lr.ph_crit_edge, label %for.cond128.preheader.cleanup_crit_edge

for.cond128.preheader.cleanup_crit_edge:          ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond128.preheader.for.body135.lr.ph_crit_edge: ; preds = %for.cond128.preheader
  br label %for.body135.lr.ph

for.body88:                                       ; preds = %for.inc122.for.body88_crit_edge, %for.body88.lr.ph
  %i.21339 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc123, %for.inc122.for.body88_crit_edge ]
  %arrayidx89 = getelementptr i16, ptr %add.ptr13, i32 %i.21339
  %21 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp91 = icmp eq i16 %22, 0
  br i1 %cmp91, label %if.then93, label %if.else

if.then93:                                        ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx103, align 1
  %conv96 = zext i8 %24 to i32
  %xor98 = xor i32 %conv96, %conv106
  %and100 = and i32 %xor98, %3
  %conv101 = trunc i32 %and100 to i16
  br label %for.inc122

if.else:                                          ; preds = %for.body88
  %conv90 = zext i16 %22 to i32
  %25 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx103, align 1
  %conv105 = zext i8 %26 to i32
  %xor107 = xor i32 %conv105, %conv106
  %and109 = and i32 %xor107, %3
  %arrayidx111 = getelementptr i16, ptr %15, i32 %conv90
  %27 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx111, align 2
  %conv112 = zext i16 %28 to i32
  %add113 = add i32 %i.21339, %7
  %mul114 = mul i32 %add113, %9
  %add115 = add i32 %mul114, %conv112
  %29 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add115)
  %cmp.not10.i = icmp sgt i32 %30, %add115
  br i1 %cmp.not10.i, label %if.else.rs_modnn.exit_crit_edge, label %while.body.lr.ph.i

if.else.rs_modnn.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %x.addr.011.i = phi i32 [ %add115, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %x.addr.011.i, %30
  %shr.i = ashr i32 %sub.i, %32
  %and.i = and i32 %sub.i, %30
  %add.i = add i32 %shr.i, %and.i
  %cmp.not.i = icmp slt i32 %add.i, %30
  br i1 %cmp.not.i, label %while.body.i.rs_modnn.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.rs_modnn.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

rs_modnn.exit:                                    ; preds = %while.body.i.rs_modnn.exit_crit_edge, %if.else.rs_modnn.exit_crit_edge
  %x.addr.0.lcssa.i = phi i32 [ %add115, %if.else.rs_modnn.exit_crit_edge ], [ %add.i, %while.body.i.rs_modnn.exit_crit_edge ]
  %arrayidx116 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i
  %33 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx116, align 2
  %35 = trunc i32 %and109 to i16
  %conv119 = xor i16 %34, %35
  br label %for.inc122

for.inc122:                                       ; preds = %rs_modnn.exit, %if.then93
  %storemerge1146 = phi i16 [ %conv119, %rs_modnn.exit ], [ %conv101, %if.then93 ]
  %36 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %storemerge1146, ptr %arrayidx89, align 2
  %inc123 = add nuw nsw i32 %i.21339, 1
  %exitcond1433.not = icmp eq i32 %inc123, %5
  br i1 %exitcond1433.not, label %for.inc122.for.inc125_crit_edge, label %for.inc122.for.body88_crit_edge

for.inc122.for.body88_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body88

for.inc122.for.inc125_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc125

for.inc125:                                       ; preds = %for.inc122.for.inc125_crit_edge, %for.cond85.preheader.for.inc125_crit_edge
  %inc126 = add nuw nsw i32 %j.01341, 1
  %exitcond1434.not = icmp eq i32 %inc126, %len
  br i1 %exitcond1434.not, label %for.inc125.for.cond128.preheader_crit_edge, label %for.inc125.for.cond85.preheader_crit_edge

for.inc125.for.cond85.preheader_crit_edge:        ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond85.preheader

for.inc125.for.cond128.preheader_crit_edge:       ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond128.preheader

for.body135.lr.ph:                                ; preds = %for.inc169.for.body135.lr.ph_crit_edge, %for.cond128.preheader.for.body135.lr.ph_crit_edge
  %j.11346 = phi i32 [ %inc170, %for.inc169.for.body135.lr.ph_crit_edge ], [ 0, %for.cond128.preheader.for.body135.lr.ph_crit_edge ]
  %arrayidx148 = getelementptr i16, ptr %par, i32 %j.11346
  br label %for.body135

for.cond172.preheader:                            ; preds = %for.inc169
  br i1 %cmp681336, label %for.cond172.preheader.for.body175_crit_edge, label %for.cond172.preheader.cleanup_crit_edge

for.cond172.preheader.cleanup_crit_edge:          ; preds = %for.cond172.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond172.preheader.for.body175_crit_edge:      ; preds = %for.cond172.preheader
  br label %for.body175

for.body135:                                      ; preds = %for.inc166.for.body135_crit_edge, %for.body135.lr.ph
  %i.31344 = phi i32 [ 0, %for.body135.lr.ph ], [ %inc167, %for.inc166.for.body135_crit_edge ]
  %arrayidx136 = getelementptr i16, ptr %add.ptr13, i32 %i.31344
  %37 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx136, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp138 = icmp eq i16 %38, 0
  br i1 %cmp138, label %if.then140, label %if.else147

if.then140:                                       ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx148, align 2
  %conv145 = and i16 %40, %conv
  br label %for.inc166

if.else147:                                       ; preds = %for.body135
  %conv137 = zext i16 %38 to i32
  %41 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx148, align 2
  %arrayidx154 = getelementptr i16, ptr %15, i32 %conv137
  %43 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx154, align 2
  %conv155 = zext i16 %44 to i32
  %add156 = add i32 %i.31344, %7
  %mul157 = mul i32 %add156, %9
  %add158 = add i32 %mul157, %conv155
  %45 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add158)
  %cmp.not10.i1150 = icmp sgt i32 %46, %add158
  br i1 %cmp.not10.i1150, label %if.else147.rs_modnn.exit1160_crit_edge, label %while.body.lr.ph.i1151

if.else147.rs_modnn.exit1160_crit_edge:           ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1160

while.body.lr.ph.i1151:                           ; preds = %if.else147
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  br label %while.body.i1158

while.body.i1158:                                 ; preds = %while.body.i1158.while.body.i1158_crit_edge, %while.body.lr.ph.i1151
  %x.addr.011.i1152 = phi i32 [ %add158, %while.body.lr.ph.i1151 ], [ %add.i1156, %while.body.i1158.while.body.i1158_crit_edge ]
  %sub.i1153 = sub i32 %x.addr.011.i1152, %46
  %shr.i1154 = ashr i32 %sub.i1153, %48
  %and.i1155 = and i32 %sub.i1153, %46
  %add.i1156 = add i32 %shr.i1154, %and.i1155
  %cmp.not.i1157 = icmp slt i32 %add.i1156, %46
  br i1 %cmp.not.i1157, label %while.body.i1158.rs_modnn.exit1160_crit_edge, label %while.body.i1158.while.body.i1158_crit_edge

while.body.i1158.while.body.i1158_crit_edge:      ; preds = %while.body.i1158
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1158

while.body.i1158.rs_modnn.exit1160_crit_edge:     ; preds = %while.body.i1158
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1160

rs_modnn.exit1160:                                ; preds = %while.body.i1158.rs_modnn.exit1160_crit_edge, %if.else147.rs_modnn.exit1160_crit_edge
  %x.addr.0.lcssa.i1159 = phi i32 [ %add158, %if.else147.rs_modnn.exit1160_crit_edge ], [ %add.i1156, %while.body.i1158.rs_modnn.exit1160_crit_edge ]
  %arrayidx160 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1159
  %49 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx160, align 2
  %51 = and i16 %42, %conv
  %conv163 = xor i16 %50, %51
  br label %for.inc166

for.inc166:                                       ; preds = %rs_modnn.exit1160, %if.then140
  %storemerge = phi i16 [ %conv163, %rs_modnn.exit1160 ], [ %conv145, %if.then140 ]
  %52 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %storemerge, ptr %arrayidx136, align 2
  %inc167 = add nuw nsw i32 %i.31344, 1
  %exitcond1435.not = icmp eq i32 %inc167, %5
  br i1 %exitcond1435.not, label %for.inc169, label %for.inc166.for.body135_crit_edge

for.inc166.for.body135_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body135

for.inc169:                                       ; preds = %for.inc166
  %inc170 = add nuw nsw i32 %j.11346, 1
  %exitcond1436.not = icmp eq i32 %inc170, %5
  br i1 %exitcond1436.not, label %for.cond172.preheader, label %for.inc169.for.body135.lr.ph_crit_edge

for.inc169.for.body135.lr.ph_crit_edge:           ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body135.lr.ph

for.body175:                                      ; preds = %for.body175.for.body175_crit_edge, %for.cond172.preheader.for.body175_crit_edge
  %syn_error.01350 = phi i16 [ %or1145, %for.body175.for.body175_crit_edge ], [ 0, %for.cond172.preheader.for.body175_crit_edge ]
  %i.41349 = phi i32 [ %inc185, %for.body175.for.body175_crit_edge ], [ 0, %for.cond172.preheader.for.body175_crit_edge ]
  %arrayidx176 = getelementptr i16, ptr %add.ptr13, i32 %i.41349
  %53 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx176, align 2
  %conv177 = zext i16 %54 to i32
  %or1145 = or i16 %54, %syn_error.01350
  %arrayidx182 = getelementptr i16, ptr %15, i32 %conv177
  %55 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx182, align 2
  store i16 %56, ptr %arrayidx176, align 2
  %inc185 = add nuw nsw i32 %i.41349, 1
  %exitcond1437.not = icmp eq i32 %inc185, %5
  br i1 %exitcond1437.not, label %for.end186, label %for.body175.for.body175_crit_edge

for.body175.for.body175_crit_edge:                ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body175

for.end186:                                       ; preds = %for.body175
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or1145)
  %tobool187.not = icmp eq i16 %or1145, 0
  br i1 %tobool187.not, label %for.end186.cleanup_crit_edge, label %for.end186.decode_crit_edge

for.end186.decode_crit_edge:                      ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode

for.end186.cleanup_crit_edge:                     ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode:                                           ; preds = %for.end186.decode_crit_edge, %for.body.decode_crit_edge
  %s.addr.0 = phi ptr [ %add.ptr13, %for.end186.decode_crit_edge ], [ %s, %for.body.decode_crit_edge ]
  %arrayidx190 = getelementptr i16, ptr %buffers, i32 1
  %mul191 = shl i32 %5, 1
  %57 = call ptr @memset(ptr %arrayidx190, i32 0, i32 %mul191)
  %58 = ptrtoint ptr %buffers to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %buffers, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_eras)
  %cmp193 = icmp sgt i32 %no_eras, 0
  br i1 %cmp193, label %if.then195, label %decode.if.end244_crit_edge

decode.if.end244_crit_edge:                       ; preds = %decode
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then195:                                       ; preds = %decode
  %sub196 = add i32 %3, -1
  %59 = ptrtoint ptr %eras_pos to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %eras_pos, align 4
  %61 = add i32 %sub44, %60
  %sub199 = sub i32 %sub196, %61
  %mul200 = mul i32 %sub199, %9
  %62 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul200)
  %cmp.not10.i1162 = icmp sgt i32 %63, %mul200
  br i1 %cmp.not10.i1162, label %if.then195.rs_modnn.exit1172_crit_edge, label %while.body.lr.ph.i1163

if.then195.rs_modnn.exit1172_crit_edge:           ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1172

while.body.lr.ph.i1163:                           ; preds = %if.then195
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %1, align 4
  br label %while.body.i1170

while.body.i1170:                                 ; preds = %while.body.i1170.while.body.i1170_crit_edge, %while.body.lr.ph.i1163
  %x.addr.011.i1164 = phi i32 [ %mul200, %while.body.lr.ph.i1163 ], [ %add.i1168, %while.body.i1170.while.body.i1170_crit_edge ]
  %sub.i1165 = sub i32 %x.addr.011.i1164, %63
  %shr.i1166 = ashr i32 %sub.i1165, %65
  %and.i1167 = and i32 %sub.i1165, %63
  %add.i1168 = add i32 %shr.i1166, %and.i1167
  %cmp.not.i1169 = icmp slt i32 %add.i1168, %63
  br i1 %cmp.not.i1169, label %while.body.i1170.rs_modnn.exit1172_crit_edge, label %while.body.i1170.while.body.i1170_crit_edge

while.body.i1170.while.body.i1170_crit_edge:      ; preds = %while.body.i1170
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1170

while.body.i1170.rs_modnn.exit1172_crit_edge:     ; preds = %while.body.i1170
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1172

rs_modnn.exit1172:                                ; preds = %while.body.i1170.rs_modnn.exit1172_crit_edge, %if.then195.rs_modnn.exit1172_crit_edge
  %x.addr.0.lcssa.i1171 = phi i32 [ %mul200, %if.then195.rs_modnn.exit1172_crit_edge ], [ %add.i1168, %while.body.i1170.rs_modnn.exit1172_crit_edge ]
  %arrayidx202 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1171
  %66 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx202, align 2
  %68 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx190, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %no_eras)
  %cmp2051353 = icmp sgt i32 %no_eras, 1
  br i1 %cmp2051353, label %rs_modnn.exit1172.for.body207_crit_edge, label %rs_modnn.exit1172.if.end244_crit_edge

rs_modnn.exit1172.if.end244_crit_edge:            ; preds = %rs_modnn.exit1172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

rs_modnn.exit1172.for.body207_crit_edge:          ; preds = %rs_modnn.exit1172
  br label %for.body207

for.cond204.loopexit:                             ; preds = %for.inc239
  %exitcond1438.not = icmp eq i32 %add215, %no_eras
  br i1 %exitcond1438.not, label %for.cond204.loopexit.if.end244_crit_edge, label %for.cond204.loopexit.for.body207_crit_edge

for.cond204.loopexit.for.body207_crit_edge:       ; preds = %for.cond204.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body207

for.cond204.loopexit.if.end244_crit_edge:         ; preds = %for.cond204.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

for.body207:                                      ; preds = %for.cond204.loopexit.for.body207_crit_edge, %rs_modnn.exit1172.for.body207_crit_edge
  %i.51354 = phi i32 [ %add215, %for.cond204.loopexit.for.body207_crit_edge ], [ 1, %rs_modnn.exit1172.for.body207_crit_edge ]
  %arrayidx209 = getelementptr i32, ptr %eras_pos, i32 %i.51354
  %69 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx209, align 4
  %71 = add i32 %sub44, %70
  %sub211 = sub i32 %sub196, %71
  %mul212 = mul i32 %sub211, %9
  %72 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %mul212)
  %cmp.not10.i1174 = icmp sgt i32 %73, %mul212
  br i1 %cmp.not10.i1174, label %for.body207.for.body219.lr.ph_crit_edge, label %while.body.lr.ph.i1175

for.body207.for.body219.lr.ph_crit_edge:          ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body219.lr.ph

while.body.lr.ph.i1175:                           ; preds = %for.body207
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %1, align 4
  br label %while.body.i1182

while.body.i1182:                                 ; preds = %while.body.i1182.while.body.i1182_crit_edge, %while.body.lr.ph.i1175
  %x.addr.011.i1176 = phi i32 [ %mul212, %while.body.lr.ph.i1175 ], [ %add.i1180, %while.body.i1182.while.body.i1182_crit_edge ]
  %sub.i1177 = sub i32 %x.addr.011.i1176, %73
  %shr.i1178 = ashr i32 %sub.i1177, %75
  %and.i1179 = and i32 %sub.i1177, %73
  %add.i1180 = add i32 %shr.i1178, %and.i1179
  %cmp.not.i1181 = icmp slt i32 %add.i1180, %73
  br i1 %cmp.not.i1181, label %while.body.i1182.for.body219.lr.ph_crit_edge, label %while.body.i1182.while.body.i1182_crit_edge

while.body.i1182.while.body.i1182_crit_edge:      ; preds = %while.body.i1182
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1182

while.body.i1182.for.body219.lr.ph_crit_edge:     ; preds = %while.body.i1182
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body219.lr.ph

for.body219.lr.ph:                                ; preds = %while.body.i1182.for.body219.lr.ph_crit_edge, %for.body207.for.body219.lr.ph_crit_edge
  %x.addr.0.lcssa.i1183 = phi i32 [ %mul212, %for.body207.for.body219.lr.ph_crit_edge ], [ %add.i1180, %while.body.i1182.for.body219.lr.ph_crit_edge ]
  %add215 = add nuw nsw i32 %i.51354, 1
  %conv228 = and i32 %x.addr.0.lcssa.i1183, 65535
  br label %for.body219

for.body219:                                      ; preds = %for.inc239.for.body219_crit_edge, %for.body219.lr.ph
  %j.21352 = phi i32 [ %add215, %for.body219.lr.ph ], [ %sub220, %for.inc239.for.body219_crit_edge ]
  %sub220 = add nsw i32 %j.21352, -1
  %arrayidx221 = getelementptr i16, ptr %buffers, i32 %sub220
  %76 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx221, align 2
  %idxprom222 = zext i16 %77 to i32
  %arrayidx223 = getelementptr i16, ptr %15, i32 %idxprom222
  %78 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx223, align 2
  %conv224 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv224)
  %cmp225.not = icmp eq i32 %3, %conv224
  br i1 %cmp225.not, label %for.body219.for.inc239_crit_edge, label %if.then227

for.body219.for.inc239_crit_edge:                 ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc239

if.then227:                                       ; preds = %for.body219
  %add230 = add nuw nsw i32 %conv228, %conv224
  %80 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add230)
  %cmp.not10.i1186 = icmp sgt i32 %81, %add230
  br i1 %cmp.not10.i1186, label %if.then227.rs_modnn.exit1196_crit_edge, label %while.body.lr.ph.i1187

if.then227.rs_modnn.exit1196_crit_edge:           ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1196

while.body.lr.ph.i1187:                           ; preds = %if.then227
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  br label %while.body.i1194

while.body.i1194:                                 ; preds = %while.body.i1194.while.body.i1194_crit_edge, %while.body.lr.ph.i1187
  %x.addr.011.i1188 = phi i32 [ %add230, %while.body.lr.ph.i1187 ], [ %add.i1192, %while.body.i1194.while.body.i1194_crit_edge ]
  %sub.i1189 = sub i32 %x.addr.011.i1188, %81
  %shr.i1190 = ashr i32 %sub.i1189, %83
  %and.i1191 = and i32 %sub.i1189, %81
  %add.i1192 = add i32 %shr.i1190, %and.i1191
  %cmp.not.i1193 = icmp slt i32 %add.i1192, %81
  br i1 %cmp.not.i1193, label %while.body.i1194.rs_modnn.exit1196_crit_edge, label %while.body.i1194.while.body.i1194_crit_edge

while.body.i1194.while.body.i1194_crit_edge:      ; preds = %while.body.i1194
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1194

while.body.i1194.rs_modnn.exit1196_crit_edge:     ; preds = %while.body.i1194
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1196

rs_modnn.exit1196:                                ; preds = %while.body.i1194.rs_modnn.exit1196_crit_edge, %if.then227.rs_modnn.exit1196_crit_edge
  %x.addr.0.lcssa.i1195 = phi i32 [ %add230, %if.then227.rs_modnn.exit1196_crit_edge ], [ %add.i1192, %while.body.i1194.rs_modnn.exit1196_crit_edge ]
  %arrayidx232 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1195
  %84 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx232, align 2
  %arrayidx234 = getelementptr i16, ptr %buffers, i32 %j.21352
  %86 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx234, align 2
  %xor2361144 = xor i16 %87, %85
  store i16 %xor2361144, ptr %arrayidx234, align 2
  br label %for.inc239

for.inc239:                                       ; preds = %rs_modnn.exit1196, %for.body219.for.inc239_crit_edge
  %cmp217 = icmp sgt i32 %j.21352, 1
  br i1 %cmp217, label %for.inc239.for.body219_crit_edge, label %for.cond204.loopexit

for.inc239.for.body219_crit_edge:                 ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body219

if.end244:                                        ; preds = %for.cond204.loopexit.if.end244_crit_edge, %rs_modnn.exit1172.if.end244_crit_edge, %decode.if.end244_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp2471355 = icmp ult i32 %5, 2147483647
  br i1 %cmp2471355, label %if.end244.for.body249_crit_edge, label %if.end244.while.cond.preheader_crit_edge

if.end244.while.cond.preheader_crit_edge:         ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.end244.for.body249_crit_edge:                  ; preds = %if.end244
  br label %for.body249

while.cond.preheader:                             ; preds = %for.body249.while.cond.preheader_crit_edge, %if.end244.while.cond.preheader_crit_edge
  %inc2571367 = add i32 %no_eras, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2571367, i32 %5)
  %cmp258.not1368 = icmp sgt i32 %inc2571367, %5
  br i1 %cmp258.not1368, label %while.cond.preheader.for.cond377.preheader_crit_edge, label %for.cond260.preheader.lr.ph

while.cond.preheader.for.cond377.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond377.preheader

for.cond260.preheader.lr.ph:                      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3081362 = icmp sgt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp348.not1365 = icmp slt i32 %5, 0
  %arrayidx369 = getelementptr i16, ptr %add.ptr18, i32 1
  br label %for.cond260.preheader

for.body249:                                      ; preds = %for.body249.for.body249_crit_edge, %if.end244.for.body249_crit_edge
  %i.61356 = phi i32 [ %inc255, %for.body249.for.body249_crit_edge ], [ 0, %if.end244.for.body249_crit_edge ]
  %arrayidx250 = getelementptr i16, ptr %buffers, i32 %i.61356
  %88 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx250, align 2
  %idxprom251 = zext i16 %89 to i32
  %arrayidx252 = getelementptr i16, ptr %15, i32 %idxprom251
  %90 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx252, align 2
  %arrayidx253 = getelementptr i16, ptr %add.ptr18, i32 %i.61356
  %92 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx253, align 2
  %inc255 = add nuw nsw i32 %i.61356, 1
  %exitcond1439.not = icmp eq i32 %i.61356, %5
  br i1 %exitcond1439.not, label %for.body249.while.cond.preheader_crit_edge, label %for.body249.for.body249_crit_edge

for.body249.for.body249_crit_edge:                ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body249

for.body249.while.cond.preheader_crit_edge:       ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.cond260.preheader:                            ; preds = %if.end376.for.cond260.preheader_crit_edge, %for.cond260.preheader.lr.ph
  %inc2571372 = phi i32 [ %inc2571367, %for.cond260.preheader.lr.ph ], [ %inc257, %if.end376.for.cond260.preheader_crit_edge ]
  %r.01370 = phi i32 [ %no_eras, %for.cond260.preheader.lr.ph ], [ %inc2571372, %if.end376.for.cond260.preheader_crit_edge ]
  %el.01369 = phi i32 [ %no_eras, %for.cond260.preheader.lr.ph ], [ %el.2, %if.end376.for.cond260.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc2571372)
  %cmp2611357 = icmp sgt i32 %inc2571372, 0
  br i1 %cmp2611357, label %for.cond260.preheader.for.body263_crit_edge, label %for.cond260.preheader.for.end293_crit_edge

for.cond260.preheader.for.end293_crit_edge:       ; preds = %for.cond260.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end293

for.cond260.preheader.for.body263_crit_edge:      ; preds = %for.cond260.preheader
  br label %for.body263

for.cond377.preheader:                            ; preds = %if.end376.for.cond377.preheader_crit_edge, %while.cond.preheader.for.cond377.preheader_crit_edge
  br i1 %cmp2471355, label %for.cond377.preheader.for.body381_crit_edge, label %for.cond377.preheader.cleanup_crit_edge

for.cond377.preheader.cleanup_crit_edge:          ; preds = %for.cond377.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond377.preheader.for.body381_crit_edge:      ; preds = %for.cond377.preheader
  br label %for.body381

for.body263:                                      ; preds = %for.inc291.for.body263_crit_edge, %for.cond260.preheader.for.body263_crit_edge
  %discr_r.01360 = phi i16 [ %discr_r.1, %for.inc291.for.body263_crit_edge ], [ 0, %for.cond260.preheader.for.body263_crit_edge ]
  %i.71358 = phi i32 [ %inc292, %for.inc291.for.body263_crit_edge ], [ 0, %for.cond260.preheader.for.body263_crit_edge ]
  %arrayidx264 = getelementptr i16, ptr %buffers, i32 %i.71358
  %93 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx264, align 2
  %conv265 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp266.not = icmp eq i16 %94, 0
  br i1 %cmp266.not, label %for.body263.for.inc291_crit_edge, label %land.lhs.true

for.body263.for.inc291_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc291

land.lhs.true:                                    ; preds = %for.body263
  %sub269 = sub i32 %r.01370, %i.71358
  %arrayidx270 = getelementptr i16, ptr %s.addr.0, i32 %sub269
  %95 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx270, align 2
  %conv271 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv271)
  %cmp272.not = icmp eq i32 %3, %conv271
  br i1 %cmp272.not, label %land.lhs.true.for.inc291_crit_edge, label %if.then274

land.lhs.true.for.inc291_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc291

if.then274:                                       ; preds = %land.lhs.true
  %arrayidx277 = getelementptr i16, ptr %15, i32 %conv265
  %97 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx277, align 2
  %conv278 = zext i16 %98 to i32
  %add283 = add nuw nsw i32 %conv278, %conv271
  %99 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add283)
  %cmp.not10.i1198 = icmp sgt i32 %100, %add283
  br i1 %cmp.not10.i1198, label %if.then274.rs_modnn.exit1208_crit_edge, label %while.body.lr.ph.i1199

if.then274.rs_modnn.exit1208_crit_edge:           ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1208

while.body.lr.ph.i1199:                           ; preds = %if.then274
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %1, align 4
  br label %while.body.i1206

while.body.i1206:                                 ; preds = %while.body.i1206.while.body.i1206_crit_edge, %while.body.lr.ph.i1199
  %x.addr.011.i1200 = phi i32 [ %add283, %while.body.lr.ph.i1199 ], [ %add.i1204, %while.body.i1206.while.body.i1206_crit_edge ]
  %sub.i1201 = sub i32 %x.addr.011.i1200, %100
  %shr.i1202 = ashr i32 %sub.i1201, %102
  %and.i1203 = and i32 %sub.i1201, %100
  %add.i1204 = add i32 %shr.i1202, %and.i1203
  %cmp.not.i1205 = icmp slt i32 %add.i1204, %100
  br i1 %cmp.not.i1205, label %while.body.i1206.rs_modnn.exit1208_crit_edge, label %while.body.i1206.while.body.i1206_crit_edge

while.body.i1206.while.body.i1206_crit_edge:      ; preds = %while.body.i1206
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1206

while.body.i1206.rs_modnn.exit1208_crit_edge:     ; preds = %while.body.i1206
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1208

rs_modnn.exit1208:                                ; preds = %while.body.i1206.rs_modnn.exit1208_crit_edge, %if.then274.rs_modnn.exit1208_crit_edge
  %x.addr.0.lcssa.i1207 = phi i32 [ %add283, %if.then274.rs_modnn.exit1208_crit_edge ], [ %add.i1204, %while.body.i1206.rs_modnn.exit1208_crit_edge ]
  %arrayidx285 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1207
  %103 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx285, align 2
  %xor2881143 = xor i16 %104, %discr_r.01360
  br label %for.inc291

for.inc291:                                       ; preds = %rs_modnn.exit1208, %land.lhs.true.for.inc291_crit_edge, %for.body263.for.inc291_crit_edge
  %discr_r.1 = phi i16 [ %xor2881143, %rs_modnn.exit1208 ], [ %discr_r.01360, %land.lhs.true.for.inc291_crit_edge ], [ %discr_r.01360, %for.body263.for.inc291_crit_edge ]
  %inc292 = add nuw nsw i32 %i.71358, 1
  %exitcond1440.not = icmp eq i32 %inc292, %inc2571372
  br i1 %exitcond1440.not, label %for.inc291.for.end293_crit_edge, label %for.inc291.for.body263_crit_edge

for.inc291.for.body263_crit_edge:                 ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body263

for.inc291.for.end293_crit_edge:                  ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end293

for.end293:                                       ; preds = %for.inc291.for.end293_crit_edge, %for.cond260.preheader.for.end293_crit_edge
  %discr_r.0.lcssa = phi i16 [ 0, %for.cond260.preheader.for.end293_crit_edge ], [ %discr_r.1, %for.inc291.for.end293_crit_edge ]
  %idxprom294 = zext i16 %discr_r.0.lcssa to i32
  %arrayidx295 = getelementptr i16, ptr %15, i32 %idxprom294
  %105 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx295, align 2
  %conv296 = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv296)
  %cmp297 = icmp eq i32 %3, %conv296
  br i1 %cmp297, label %if.then299, label %if.else304

if.then299:                                       ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #8
  %107 = call ptr @memmove(ptr %arrayidx369, ptr %add.ptr18, i32 %mul191)
  %108 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv, ptr %add.ptr18, align 2
  br label %if.end376

if.else304:                                       ; preds = %for.end293
  %109 = ptrtoint ptr %buffers to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %buffers, align 2
  %111 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %add.ptr23, align 2
  br i1 %cmp3081362, label %if.else304.for.body310_crit_edge, label %if.else304.for.end338_crit_edge

if.else304.for.end338_crit_edge:                  ; preds = %if.else304
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end338

if.else304.for.body310_crit_edge:                 ; preds = %if.else304
  br label %for.body310

for.body310:                                      ; preds = %for.inc336.for.body310_crit_edge, %if.else304.for.body310_crit_edge
  %i.81363 = phi i32 [ %add331, %for.inc336.for.body310_crit_edge ], [ 0, %if.else304.for.body310_crit_edge ]
  %arrayidx311 = getelementptr i16, ptr %add.ptr18, i32 %i.81363
  %112 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx311, align 2
  %conv312 = zext i16 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv312)
  %cmp313.not = icmp eq i32 %3, %conv312
  %add331 = add nuw nsw i32 %i.81363, 1
  %arrayidx332 = getelementptr i16, ptr %buffers, i32 %add331
  %114 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx332, align 2
  br i1 %cmp313.not, label %for.body310.for.inc336_crit_edge, label %if.then315

for.body310.for.inc336_crit_edge:                 ; preds = %for.body310
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336

if.then315:                                       ; preds = %for.body310
  %add322 = add nuw nsw i32 %conv312, %conv296
  %116 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %add322)
  %cmp.not10.i1210 = icmp sgt i32 %117, %add322
  br i1 %cmp.not10.i1210, label %if.then315.rs_modnn.exit1220_crit_edge, label %while.body.lr.ph.i1211

if.then315.rs_modnn.exit1220_crit_edge:           ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1220

while.body.lr.ph.i1211:                           ; preds = %if.then315
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %1, align 4
  br label %while.body.i1218

while.body.i1218:                                 ; preds = %while.body.i1218.while.body.i1218_crit_edge, %while.body.lr.ph.i1211
  %x.addr.011.i1212 = phi i32 [ %add322, %while.body.lr.ph.i1211 ], [ %add.i1216, %while.body.i1218.while.body.i1218_crit_edge ]
  %sub.i1213 = sub i32 %x.addr.011.i1212, %117
  %shr.i1214 = ashr i32 %sub.i1213, %119
  %and.i1215 = and i32 %sub.i1213, %117
  %add.i1216 = add i32 %shr.i1214, %and.i1215
  %cmp.not.i1217 = icmp slt i32 %add.i1216, %117
  br i1 %cmp.not.i1217, label %while.body.i1218.rs_modnn.exit1220_crit_edge, label %while.body.i1218.while.body.i1218_crit_edge

while.body.i1218.while.body.i1218_crit_edge:      ; preds = %while.body.i1218
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1218

while.body.i1218.rs_modnn.exit1220_crit_edge:     ; preds = %while.body.i1218
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1220

rs_modnn.exit1220:                                ; preds = %while.body.i1218.rs_modnn.exit1220_crit_edge, %if.then315.rs_modnn.exit1220_crit_edge
  %x.addr.0.lcssa.i1219 = phi i32 [ %add322, %if.then315.rs_modnn.exit1220_crit_edge ], [ %add.i1216, %while.body.i1218.rs_modnn.exit1220_crit_edge ]
  %arrayidx324 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1219
  %120 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx324, align 2
  %xor3261142 = xor i16 %121, %115
  br label %for.inc336

for.inc336:                                       ; preds = %rs_modnn.exit1220, %for.body310.for.inc336_crit_edge
  %xor3261142.sink = phi i16 [ %xor3261142, %rs_modnn.exit1220 ], [ %115, %for.body310.for.inc336_crit_edge ]
  %arrayidx329 = getelementptr i16, ptr %add.ptr23, i32 %add331
  %122 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %xor3261142.sink, ptr %arrayidx329, align 2
  %exitcond1441.not = icmp eq i32 %add331, %5
  br i1 %exitcond1441.not, label %for.inc336.for.end338_crit_edge, label %for.inc336.for.body310_crit_edge

for.inc336.for.body310_crit_edge:                 ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body310

for.inc336.for.end338_crit_edge:                  ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end338

for.end338:                                       ; preds = %for.inc336.for.end338_crit_edge, %if.else304.for.end338_crit_edge
  %mul339 = shl i32 %el.01369, 1
  %sub341 = add i32 %r.01370, %no_eras
  call void @__sanitizer_cov_trace_cmp4(i32 %mul339, i32 %sub341)
  %cmp342.not = icmp sgt i32 %mul339, %sub341
  br i1 %cmp342.not, label %if.else368, label %if.then344

if.then344:                                       ; preds = %for.end338
  %add340 = sub i32 %no_eras, %el.01369
  %sub346 = add i32 %add340, %inc2571372
  br i1 %cmp348.not1365, label %if.then344.if.end373_crit_edge, label %if.then344.for.body350_crit_edge

if.then344.for.body350_crit_edge:                 ; preds = %if.then344
  br label %for.body350

if.then344.if.end373_crit_edge:                   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end373

for.body350:                                      ; preds = %cond.end.for.body350_crit_edge, %if.then344.for.body350_crit_edge
  %i.91366 = phi i32 [ %inc366, %cond.end.for.body350_crit_edge ], [ 0, %if.then344.for.body350_crit_edge ]
  %arrayidx351 = getelementptr i16, ptr %buffers, i32 %i.91366
  %123 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx351, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp353 = icmp eq i16 %124, 0
  br i1 %cmp353, label %for.body350.cond.end_crit_edge, label %cond.false

for.body350.cond.end_crit_edge:                   ; preds = %for.body350
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body350
  %conv352 = zext i16 %124 to i32
  %arrayidx357 = getelementptr i16, ptr %15, i32 %conv352
  %125 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx357, align 2
  %conv358 = zext i16 %126 to i32
  %sub360 = sub nsw i32 %conv358, %conv296
  %add361 = add i32 %sub360, %3
  %127 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %add361)
  %cmp.not10.i1222 = icmp sgt i32 %128, %add361
  br i1 %cmp.not10.i1222, label %cond.false.cond.end_crit_edge, label %while.body.lr.ph.i1223

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

while.body.lr.ph.i1223:                           ; preds = %cond.false
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %1, align 4
  br label %while.body.i1230

while.body.i1230:                                 ; preds = %while.body.i1230.while.body.i1230_crit_edge, %while.body.lr.ph.i1223
  %x.addr.011.i1224 = phi i32 [ %add361, %while.body.lr.ph.i1223 ], [ %add.i1228, %while.body.i1230.while.body.i1230_crit_edge ]
  %sub.i1225 = sub i32 %x.addr.011.i1224, %128
  %shr.i1226 = ashr i32 %sub.i1225, %130
  %and.i1227 = and i32 %sub.i1225, %128
  %add.i1228 = add i32 %shr.i1226, %and.i1227
  %cmp.not.i1229 = icmp slt i32 %add.i1228, %128
  br i1 %cmp.not.i1229, label %while.body.i1230.cond.end_crit_edge, label %while.body.i1230.while.body.i1230_crit_edge

while.body.i1230.while.body.i1230_crit_edge:      ; preds = %while.body.i1230
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1230

while.body.i1230.cond.end_crit_edge:              ; preds = %while.body.i1230
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end:                                         ; preds = %while.body.i1230.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %for.body350.cond.end_crit_edge
  %cond = phi i32 [ %3, %for.body350.cond.end_crit_edge ], [ %add361, %cond.false.cond.end_crit_edge ], [ %add.i1228, %while.body.i1230.cond.end_crit_edge ]
  %conv363 = trunc i32 %cond to i16
  %arrayidx364 = getelementptr i16, ptr %add.ptr18, i32 %i.91366
  %131 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv363, ptr %arrayidx364, align 2
  %inc366 = add i32 %i.91366, 1
  %cmp348.not = icmp sgt i32 %inc366, %5
  br i1 %cmp348.not, label %cond.end.if.end373_crit_edge, label %cond.end.for.body350_crit_edge

cond.end.for.body350_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body350

cond.end.if.end373_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end373

if.else368:                                       ; preds = %for.end338
  call void @__sanitizer_cov_trace_pc() #8
  %132 = call ptr @memmove(ptr %arrayidx369, ptr %add.ptr18, i32 %mul191)
  %133 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv, ptr %add.ptr18, align 2
  br label %if.end373

if.end373:                                        ; preds = %if.else368, %cond.end.if.end373_crit_edge, %if.then344.if.end373_crit_edge
  %el.1 = phi i32 [ %el.01369, %if.else368 ], [ %sub346, %if.then344.if.end373_crit_edge ], [ %sub346, %cond.end.if.end373_crit_edge ]
  %134 = call ptr @memcpy(ptr %buffers, ptr %add.ptr23, i32 %mul17)
  br label %if.end376

if.end376:                                        ; preds = %if.end373, %if.then299
  %el.2 = phi i32 [ %el.01369, %if.then299 ], [ %el.1, %if.end373 ]
  %inc257 = add i32 %inc2571372, 1
  %cmp258.not = icmp sgt i32 %inc257, %5
  br i1 %cmp258.not, label %if.end376.for.cond377.preheader_crit_edge, label %if.end376.for.cond260.preheader_crit_edge

if.end376.for.cond260.preheader_crit_edge:        ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond260.preheader

if.end376.for.cond377.preheader_crit_edge:        ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond377.preheader

for.body381:                                      ; preds = %for.body381.for.body381_crit_edge, %for.cond377.preheader.for.body381_crit_edge
  %i.101377 = phi i32 [ %inc393, %for.body381.for.body381_crit_edge ], [ 0, %for.cond377.preheader.for.body381_crit_edge ]
  %deg_lambda.01376 = phi i32 [ %spec.select1147, %for.body381.for.body381_crit_edge ], [ 0, %for.cond377.preheader.for.body381_crit_edge ]
  %arrayidx382 = getelementptr i16, ptr %buffers, i32 %i.101377
  %135 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx382, align 2
  %idxprom383 = zext i16 %136 to i32
  %arrayidx384 = getelementptr i16, ptr %15, i32 %idxprom383
  %137 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx384, align 2
  store i16 %138, ptr %arrayidx382, align 2
  %conv387 = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv387)
  %cmp388.not = icmp eq i32 %3, %conv387
  %spec.select1147 = select i1 %cmp388.not, i32 %deg_lambda.01376, i32 %i.101377
  %inc393 = add nuw nsw i32 %i.101377, 1
  %exitcond1443.not = icmp eq i32 %i.101377, %5
  br i1 %exitcond1443.not, label %for.end394, label %for.body381.for.body381_crit_edge

for.body381.for.body381_crit_edge:                ; preds = %for.body381
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body381

for.end394:                                       ; preds = %for.body381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1147)
  %cmp395 = icmp eq i32 %spec.select1147, 0
  br i1 %cmp395, label %for.end394.cleanup_crit_edge, label %if.end398

for.end394.cleanup_crit_edge:                     ; preds = %for.end394
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end398:                                        ; preds = %for.end394
  %arrayidx399 = getelementptr i16, ptr %add.ptr38, i32 1
  %139 = call ptr @memcpy(ptr %arrayidx399, ptr %arrayidx190, i32 %mul191)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp404.not1384 = icmp slt i32 %3, 1
  br i1 %cmp404.not1384, label %if.end398.for.end455_crit_edge, label %for.cond407.preheader.lr.ph

if.end398.for.end455_crit_edge:                   ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end455

for.cond407.preheader.lr.ph:                      ; preds = %if.end398
  %sub402 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1147)
  %cmp4081379 = icmp sgt i32 %spec.select1147, 0
  br label %for.cond407.preheader

for.cond407.preheader:                            ; preds = %rs_modnn.exit1256.for.cond407.preheader_crit_edge, %for.cond407.preheader.lr.ph
  %count.01388 = phi i32 [ 0, %for.cond407.preheader.lr.ph ], [ %count.1, %rs_modnn.exit1256.for.cond407.preheader_crit_edge ]
  %k.01386 = phi i32 [ %sub402, %for.cond407.preheader.lr.ph ], [ %x.addr.0.lcssa.i1255, %rs_modnn.exit1256.for.cond407.preheader_crit_edge ]
  %i.111385 = phi i32 [ 1, %for.cond407.preheader.lr.ph ], [ %inc452, %rs_modnn.exit1256.for.cond407.preheader_crit_edge ]
  br i1 %cmp4081379, label %for.cond407.preheader.for.body410_crit_edge, label %for.cond407.preheader.for.inc451_crit_edge

for.cond407.preheader.for.inc451_crit_edge:       ; preds = %for.cond407.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc451

for.cond407.preheader.for.body410_crit_edge:      ; preds = %for.cond407.preheader
  br label %for.body410

for.body410:                                      ; preds = %for.inc430.for.body410_crit_edge, %for.cond407.preheader.for.body410_crit_edge
  %q.01382 = phi i16 [ %q.1, %for.inc430.for.body410_crit_edge ], [ 1, %for.cond407.preheader.for.body410_crit_edge ]
  %j.31380 = phi i32 [ %dec431, %for.inc430.for.body410_crit_edge ], [ %spec.select1147, %for.cond407.preheader.for.body410_crit_edge ]
  %arrayidx411 = getelementptr i16, ptr %add.ptr38, i32 %j.31380
  %140 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx411, align 2
  %conv412 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv412)
  %cmp413.not = icmp eq i32 %3, %conv412
  br i1 %cmp413.not, label %for.body410.for.inc430_crit_edge, label %if.then415

for.body410.for.inc430_crit_edge:                 ; preds = %for.body410
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc430

if.then415:                                       ; preds = %for.body410
  %add418 = add nuw i32 %j.31380, %conv412
  %142 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %add418)
  %cmp.not10.i1234 = icmp sgt i32 %143, %add418
  br i1 %cmp.not10.i1234, label %if.then415.rs_modnn.exit1244_crit_edge, label %while.body.lr.ph.i1235

if.then415.rs_modnn.exit1244_crit_edge:           ; preds = %if.then415
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1244

while.body.lr.ph.i1235:                           ; preds = %if.then415
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %1, align 4
  br label %while.body.i1242

while.body.i1242:                                 ; preds = %while.body.i1242.while.body.i1242_crit_edge, %while.body.lr.ph.i1235
  %x.addr.011.i1236 = phi i32 [ %add418, %while.body.lr.ph.i1235 ], [ %add.i1240, %while.body.i1242.while.body.i1242_crit_edge ]
  %sub.i1237 = sub i32 %x.addr.011.i1236, %143
  %shr.i1238 = ashr i32 %sub.i1237, %145
  %and.i1239 = and i32 %sub.i1237, %143
  %add.i1240 = add i32 %shr.i1238, %and.i1239
  %cmp.not.i1241 = icmp slt i32 %add.i1240, %143
  br i1 %cmp.not.i1241, label %while.body.i1242.rs_modnn.exit1244_crit_edge, label %while.body.i1242.while.body.i1242_crit_edge

while.body.i1242.while.body.i1242_crit_edge:      ; preds = %while.body.i1242
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1242

while.body.i1242.rs_modnn.exit1244_crit_edge:     ; preds = %while.body.i1242
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1244

rs_modnn.exit1244:                                ; preds = %while.body.i1242.rs_modnn.exit1244_crit_edge, %if.then415.rs_modnn.exit1244_crit_edge
  %x.addr.0.lcssa.i1243 = phi i32 [ %add418, %if.then415.rs_modnn.exit1244_crit_edge ], [ %add.i1240, %while.body.i1242.rs_modnn.exit1244_crit_edge ]
  %conv420 = trunc i32 %x.addr.0.lcssa.i1243 to i16
  %146 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv420, ptr %arrayidx411, align 2
  %idxprom423 = and i32 %x.addr.0.lcssa.i1243, 65535
  %arrayidx424 = getelementptr i16, ptr %13, i32 %idxprom423
  %147 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx424, align 2
  %xor4271141 = xor i16 %148, %q.01382
  br label %for.inc430

for.inc430:                                       ; preds = %rs_modnn.exit1244, %for.body410.for.inc430_crit_edge
  %q.1 = phi i16 [ %xor4271141, %rs_modnn.exit1244 ], [ %q.01382, %for.body410.for.inc430_crit_edge ]
  %dec431 = add nsw i32 %j.31380, -1
  %cmp408 = icmp sgt i32 %j.31380, 1
  br i1 %cmp408, label %for.inc430.for.body410_crit_edge, label %for.end432

for.inc430.for.body410_crit_edge:                 ; preds = %for.inc430
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body410

for.end432:                                       ; preds = %for.inc430
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %q.1)
  %cmp434.not = icmp eq i16 %q.1, 0
  br i1 %cmp434.not, label %if.end437, label %for.end432.for.inc451_crit_edge

for.end432.for.inc451_crit_edge:                  ; preds = %for.end432
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc451

if.end437:                                        ; preds = %for.end432
  call void @__sanitizer_cov_trace_cmp4(i32 %k.01386, i32 %sub44)
  %cmp438 = icmp slt i32 %k.01386, %sub44
  br i1 %cmp438, label %if.end437.cleanup_crit_edge, label %if.end441

if.end437.cleanup_crit_edge:                      ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end441:                                        ; preds = %if.end437
  %conv442 = trunc i32 %i.111385 to i16
  %arrayidx443 = getelementptr i16, ptr %add.ptr33, i32 %count.01388
  %149 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv442, ptr %arrayidx443, align 2
  %conv444 = trunc i32 %k.01386 to i16
  %arrayidx445 = getelementptr i16, ptr %add.ptr43, i32 %count.01388
  %150 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv444, ptr %arrayidx445, align 2
  %inc446 = add i32 %count.01388, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc446, i32 %spec.select1147)
  %cmp447 = icmp eq i32 %inc446, %spec.select1147
  br i1 %cmp447, label %if.end441.for.end455_crit_edge, label %if.end441.for.inc451_crit_edge

if.end441.for.inc451_crit_edge:                   ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc451

if.end441.for.end455_crit_edge:                   ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end455

for.inc451:                                       ; preds = %if.end441.for.inc451_crit_edge, %for.end432.for.inc451_crit_edge, %for.cond407.preheader.for.inc451_crit_edge
  %count.1 = phi i32 [ %count.01388, %for.end432.for.inc451_crit_edge ], [ %inc446, %if.end441.for.inc451_crit_edge ], [ %count.01388, %for.cond407.preheader.for.inc451_crit_edge ]
  %inc452 = add i32 %i.111385, 1
  %add453 = add i32 %k.01386, %11
  %151 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %add453)
  %cmp.not10.i1246 = icmp sgt i32 %152, %add453
  br i1 %cmp.not10.i1246, label %for.inc451.rs_modnn.exit1256_crit_edge, label %while.body.lr.ph.i1247

for.inc451.rs_modnn.exit1256_crit_edge:           ; preds = %for.inc451
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1256

while.body.lr.ph.i1247:                           ; preds = %for.inc451
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %1, align 4
  br label %while.body.i1254

while.body.i1254:                                 ; preds = %while.body.i1254.while.body.i1254_crit_edge, %while.body.lr.ph.i1247
  %x.addr.011.i1248 = phi i32 [ %add453, %while.body.lr.ph.i1247 ], [ %add.i1252, %while.body.i1254.while.body.i1254_crit_edge ]
  %sub.i1249 = sub i32 %x.addr.011.i1248, %152
  %shr.i1250 = ashr i32 %sub.i1249, %154
  %and.i1251 = and i32 %sub.i1249, %152
  %add.i1252 = add i32 %shr.i1250, %and.i1251
  %cmp.not.i1253 = icmp slt i32 %add.i1252, %152
  br i1 %cmp.not.i1253, label %while.body.i1254.rs_modnn.exit1256_crit_edge, label %while.body.i1254.while.body.i1254_crit_edge

while.body.i1254.while.body.i1254_crit_edge:      ; preds = %while.body.i1254
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1254

while.body.i1254.rs_modnn.exit1256_crit_edge:     ; preds = %while.body.i1254
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1256

rs_modnn.exit1256:                                ; preds = %while.body.i1254.rs_modnn.exit1256_crit_edge, %for.inc451.rs_modnn.exit1256_crit_edge
  %x.addr.0.lcssa.i1255 = phi i32 [ %add453, %for.inc451.rs_modnn.exit1256_crit_edge ], [ %add.i1252, %while.body.i1254.rs_modnn.exit1256_crit_edge ]
  %cmp404.not = icmp sgt i32 %inc452, %3
  br i1 %cmp404.not, label %rs_modnn.exit1256.for.end455_crit_edge, label %rs_modnn.exit1256.for.cond407.preheader_crit_edge

rs_modnn.exit1256.for.cond407.preheader_crit_edge: ; preds = %rs_modnn.exit1256
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond407.preheader

rs_modnn.exit1256.for.end455_crit_edge:           ; preds = %rs_modnn.exit1256
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end455

for.end455:                                       ; preds = %rs_modnn.exit1256.for.end455_crit_edge, %if.end441.for.end455_crit_edge, %if.end398.for.end455_crit_edge
  %count.2 = phi i32 [ 0, %if.end398.for.end455_crit_edge ], [ %spec.select1147, %if.end441.for.end455_crit_edge ], [ %count.1, %rs_modnn.exit1256.for.end455_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select1147, i32 %count.2)
  %cmp456.not = icmp eq i32 %spec.select1147, %count.2
  br i1 %cmp456.not, label %if.end459, label %for.end455.cleanup_crit_edge

for.end455.cleanup_crit_edge:                     ; preds = %for.end455
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end459:                                        ; preds = %for.end455
  %sub460 = add i32 %spec.select1147, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub460)
  %cmp462.not1396 = icmp slt i32 %sub460, 0
  br i1 %cmp462.not1396, label %if.end459.for.cond600.preheader_crit_edge, label %if.end459.for.cond465.preheader_crit_edge

if.end459.for.cond465.preheader_crit_edge:        ; preds = %if.end459
  br label %for.cond465.preheader

if.end459.for.cond600.preheader_crit_edge:        ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond600.preheader

for.cond465.preheader:                            ; preds = %for.end495.for.cond465.preheader_crit_edge, %if.end459.for.cond465.preheader_crit_edge
  %i.121397 = phi i32 [ %inc500, %for.end495.for.cond465.preheader_crit_edge ], [ 0, %if.end459.for.cond465.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.121397)
  %cmp4661391 = icmp sgt i32 %i.121397, -1
  br i1 %cmp4661391, label %for.cond465.preheader.for.body468_crit_edge, label %for.cond465.preheader.for.end495_crit_edge

for.cond465.preheader.for.end495_crit_edge:       ; preds = %for.cond465.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end495

for.cond465.preheader.for.body468_crit_edge:      ; preds = %for.cond465.preheader
  br label %for.body468

for.cond503.preheader:                            ; preds = %for.end495
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub460)
  %cmp5041409 = icmp sgt i32 %sub460, -1
  br i1 %cmp5041409, label %for.cond507.preheader.lr.ph, label %for.cond503.preheader.for.cond600.preheader_crit_edge

for.cond503.preheader.for.cond600.preheader_crit_edge: ; preds = %for.cond503.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond600.preheader

for.cond507.preheader.lr.ph:                      ; preds = %for.cond503.preheader
  %sub540 = add i32 %7, -1
  %sub545 = add i32 %5, -1
  %155 = tail call i32 @llvm.smin.i32(i32 %spec.select1147, i32 %sub545)
  %and553 = and i32 %155, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and553)
  %cmp5551404 = icmp sgt i32 %and553, -1
  br label %for.body510.lr.ph

for.body468:                                      ; preds = %for.inc493.for.body468_crit_edge, %for.cond465.preheader.for.body468_crit_edge
  %tmp.01394 = phi i16 [ %tmp.1, %for.inc493.for.body468_crit_edge ], [ 0, %for.cond465.preheader.for.body468_crit_edge ]
  %j.41392 = phi i32 [ %dec494, %for.inc493.for.body468_crit_edge ], [ %i.121397, %for.cond465.preheader.for.body468_crit_edge ]
  %sub469 = sub i32 %i.121397, %j.41392
  %arrayidx470 = getelementptr i16, ptr %s.addr.0, i32 %sub469
  %156 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx470, align 2
  %conv471 = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv471)
  %cmp472.not = icmp eq i32 %3, %conv471
  br i1 %cmp472.not, label %for.body468.for.inc493_crit_edge, label %land.lhs.true474

for.body468.for.inc493_crit_edge:                 ; preds = %for.body468
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc493

land.lhs.true474:                                 ; preds = %for.body468
  %arrayidx475 = getelementptr i16, ptr %buffers, i32 %j.41392
  %158 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx475, align 2
  %conv476 = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv476)
  %cmp477.not = icmp eq i32 %3, %conv476
  br i1 %cmp477.not, label %land.lhs.true474.for.inc493_crit_edge, label %if.then479

land.lhs.true474.for.inc493_crit_edge:            ; preds = %land.lhs.true474
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc493

if.then479:                                       ; preds = %land.lhs.true474
  %add485 = add nuw nsw i32 %conv476, %conv471
  %160 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %add485)
  %cmp.not10.i1258 = icmp sgt i32 %161, %add485
  br i1 %cmp.not10.i1258, label %if.then479.rs_modnn.exit1268_crit_edge, label %while.body.lr.ph.i1259

if.then479.rs_modnn.exit1268_crit_edge:           ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1268

while.body.lr.ph.i1259:                           ; preds = %if.then479
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %1, align 4
  br label %while.body.i1266

while.body.i1266:                                 ; preds = %while.body.i1266.while.body.i1266_crit_edge, %while.body.lr.ph.i1259
  %x.addr.011.i1260 = phi i32 [ %add485, %while.body.lr.ph.i1259 ], [ %add.i1264, %while.body.i1266.while.body.i1266_crit_edge ]
  %sub.i1261 = sub i32 %x.addr.011.i1260, %161
  %shr.i1262 = ashr i32 %sub.i1261, %163
  %and.i1263 = and i32 %sub.i1261, %161
  %add.i1264 = add i32 %shr.i1262, %and.i1263
  %cmp.not.i1265 = icmp slt i32 %add.i1264, %161
  br i1 %cmp.not.i1265, label %while.body.i1266.rs_modnn.exit1268_crit_edge, label %while.body.i1266.while.body.i1266_crit_edge

while.body.i1266.while.body.i1266_crit_edge:      ; preds = %while.body.i1266
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1266

while.body.i1266.rs_modnn.exit1268_crit_edge:     ; preds = %while.body.i1266
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1268

rs_modnn.exit1268:                                ; preds = %while.body.i1266.rs_modnn.exit1268_crit_edge, %if.then479.rs_modnn.exit1268_crit_edge
  %x.addr.0.lcssa.i1267 = phi i32 [ %add485, %if.then479.rs_modnn.exit1268_crit_edge ], [ %add.i1264, %while.body.i1266.rs_modnn.exit1268_crit_edge ]
  %arrayidx487 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1267
  %164 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx487, align 2
  %xor4901140 = xor i16 %165, %tmp.01394
  br label %for.inc493

for.inc493:                                       ; preds = %rs_modnn.exit1268, %land.lhs.true474.for.inc493_crit_edge, %for.body468.for.inc493_crit_edge
  %tmp.1 = phi i16 [ %xor4901140, %rs_modnn.exit1268 ], [ %tmp.01394, %land.lhs.true474.for.inc493_crit_edge ], [ %tmp.01394, %for.body468.for.inc493_crit_edge ]
  %dec494 = add i32 %j.41392, -1
  %cmp466 = icmp sgt i32 %dec494, -1
  br i1 %cmp466, label %for.inc493.for.body468_crit_edge, label %for.inc493.for.end495_crit_edge

for.inc493.for.end495_crit_edge:                  ; preds = %for.inc493
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end495

for.inc493.for.body468_crit_edge:                 ; preds = %for.inc493
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body468

for.end495:                                       ; preds = %for.inc493.for.end495_crit_edge, %for.cond465.preheader.for.end495_crit_edge
  %tmp.0.lcssa = phi i16 [ 0, %for.cond465.preheader.for.end495_crit_edge ], [ %tmp.1, %for.inc493.for.end495_crit_edge ]
  %idxprom496 = zext i16 %tmp.0.lcssa to i32
  %arrayidx497 = getelementptr i16, ptr %15, i32 %idxprom496
  %166 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx497, align 2
  %arrayidx498 = getelementptr i16, ptr %add.ptr28, i32 %i.121397
  %168 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %arrayidx498, align 2
  %inc500 = add i32 %i.121397, 1
  %cmp462.not = icmp sgt i32 %inc500, %sub460
  br i1 %cmp462.not, label %for.cond503.preheader, label %for.end495.for.cond465.preheader_crit_edge

for.end495.for.cond465.preheader_crit_edge:       ; preds = %for.end495
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond465.preheader

for.body510.lr.ph:                                ; preds = %for.inc597.for.body510.lr.ph_crit_edge, %for.cond507.preheader.lr.ph
  %j.51411 = phi i32 [ %sub460, %for.cond507.preheader.lr.ph ], [ %j.5, %for.inc597.for.body510.lr.ph_crit_edge ]
  %num_corrected.01410 = phi i32 [ 0, %for.cond507.preheader.lr.ph ], [ %num_corrected.1, %for.inc597.for.body510.lr.ph_crit_edge ]
  %arrayidx518 = getelementptr i16, ptr %add.ptr33, i32 %j.51411
  br label %for.body510

for.cond600.preheader:                            ; preds = %for.inc597.for.cond600.preheader_crit_edge, %for.cond503.preheader.for.cond600.preheader_crit_edge, %if.end459.for.cond600.preheader_crit_edge
  %num_corrected.0.lcssa = phi i32 [ 0, %for.cond503.preheader.for.cond600.preheader_crit_edge ], [ 0, %if.end459.for.cond600.preheader_crit_edge ], [ %num_corrected.1, %for.inc597.for.cond600.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6011417 = icmp sgt i32 %5, 0
  br i1 %cmp6011417, label %for.cond604.preheader.lr.ph, label %for.cond600.preheader.for.end646_crit_edge

for.cond600.preheader.for.end646_crit_edge:       ; preds = %for.cond600.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end646

for.cond604.preheader.lr.ph:                      ; preds = %for.cond600.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1147)
  %cmp6051413 = icmp sgt i32 %spec.select1147, 0
  br label %for.cond604.preheader

for.body510:                                      ; preds = %for.inc529.for.body510_crit_edge, %for.body510.lr.ph
  %num1.01402 = phi i16 [ 0, %for.body510.lr.ph ], [ %num1.1, %for.inc529.for.body510_crit_edge ]
  %i.131400 = phi i32 [ %sub460, %for.body510.lr.ph ], [ %dec530, %for.inc529.for.body510_crit_edge ]
  %arrayidx511 = getelementptr i16, ptr %add.ptr28, i32 %i.131400
  %169 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx511, align 2
  %conv512 = zext i16 %170 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv512)
  %cmp513.not = icmp eq i32 %3, %conv512
  br i1 %cmp513.not, label %for.body510.for.inc529_crit_edge, label %if.then515

for.body510.for.inc529_crit_edge:                 ; preds = %for.body510
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc529

if.then515:                                       ; preds = %for.body510
  %171 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx518, align 2
  %conv519 = zext i16 %172 to i32
  %mul520 = mul i32 %i.131400, %conv519
  %add521 = add i32 %mul520, %conv512
  %173 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %add521)
  %cmp.not10.i1270 = icmp sgt i32 %174, %add521
  br i1 %cmp.not10.i1270, label %if.then515.rs_modnn.exit1280_crit_edge, label %while.body.lr.ph.i1271

if.then515.rs_modnn.exit1280_crit_edge:           ; preds = %if.then515
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1280

while.body.lr.ph.i1271:                           ; preds = %if.then515
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %1, align 4
  br label %while.body.i1278

while.body.i1278:                                 ; preds = %while.body.i1278.while.body.i1278_crit_edge, %while.body.lr.ph.i1271
  %x.addr.011.i1272 = phi i32 [ %add521, %while.body.lr.ph.i1271 ], [ %add.i1276, %while.body.i1278.while.body.i1278_crit_edge ]
  %sub.i1273 = sub i32 %x.addr.011.i1272, %174
  %shr.i1274 = ashr i32 %sub.i1273, %176
  %and.i1275 = and i32 %sub.i1273, %174
  %add.i1276 = add i32 %shr.i1274, %and.i1275
  %cmp.not.i1277 = icmp slt i32 %add.i1276, %174
  br i1 %cmp.not.i1277, label %while.body.i1278.rs_modnn.exit1280_crit_edge, label %while.body.i1278.while.body.i1278_crit_edge

while.body.i1278.while.body.i1278_crit_edge:      ; preds = %while.body.i1278
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1278

while.body.i1278.rs_modnn.exit1280_crit_edge:     ; preds = %while.body.i1278
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1280

rs_modnn.exit1280:                                ; preds = %while.body.i1278.rs_modnn.exit1280_crit_edge, %if.then515.rs_modnn.exit1280_crit_edge
  %x.addr.0.lcssa.i1279 = phi i32 [ %add521, %if.then515.rs_modnn.exit1280_crit_edge ], [ %add.i1276, %while.body.i1278.rs_modnn.exit1280_crit_edge ]
  %arrayidx523 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1279
  %177 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx523, align 2
  %xor5261139 = xor i16 %178, %num1.01402
  br label %for.inc529

for.inc529:                                       ; preds = %rs_modnn.exit1280, %for.body510.for.inc529_crit_edge
  %num1.1 = phi i16 [ %xor5261139, %rs_modnn.exit1280 ], [ %num1.01402, %for.body510.for.inc529_crit_edge ]
  %dec530 = add i32 %i.131400, -1
  %cmp508 = icmp sgt i32 %dec530, -1
  br i1 %cmp508, label %for.inc529.for.body510_crit_edge, label %for.end531

for.inc529.for.body510_crit_edge:                 ; preds = %for.inc529
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body510

for.end531:                                       ; preds = %for.inc529
  %conv532 = zext i16 %num1.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num1.1)
  %cmp533 = icmp eq i16 %num1.1, 0
  br i1 %cmp533, label %if.then535, label %if.end537

if.then535:                                       ; preds = %for.end531
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx536 = getelementptr i16, ptr %add.ptr18, i32 %j.51411
  %179 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %arrayidx536, align 2
  br label %for.inc597

if.end537:                                        ; preds = %for.end531
  %arrayidx538 = getelementptr i16, ptr %add.ptr33, i32 %j.51411
  %180 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx538, align 2
  %conv539 = zext i16 %181 to i32
  %mul541 = mul i32 %sub540, %conv539
  %add542 = add i32 %mul541, %3
  %182 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add542)
  %cmp.not10.i1282 = icmp sgt i32 %183, %add542
  br i1 %cmp.not10.i1282, label %if.end537.rs_modnn.exit1292_crit_edge, label %while.body.lr.ph.i1283

if.end537.rs_modnn.exit1292_crit_edge:            ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1292

while.body.lr.ph.i1283:                           ; preds = %if.end537
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %1, align 4
  br label %while.body.i1290

while.body.i1290:                                 ; preds = %while.body.i1290.while.body.i1290_crit_edge, %while.body.lr.ph.i1283
  %x.addr.011.i1284 = phi i32 [ %add542, %while.body.lr.ph.i1283 ], [ %add.i1288, %while.body.i1290.while.body.i1290_crit_edge ]
  %sub.i1285 = sub i32 %x.addr.011.i1284, %183
  %shr.i1286 = ashr i32 %sub.i1285, %185
  %and.i1287 = and i32 %sub.i1285, %183
  %add.i1288 = add i32 %shr.i1286, %and.i1287
  %cmp.not.i1289 = icmp slt i32 %add.i1288, %183
  br i1 %cmp.not.i1289, label %while.body.i1290.rs_modnn.exit1292_crit_edge, label %while.body.i1290.while.body.i1290_crit_edge

while.body.i1290.while.body.i1290_crit_edge:      ; preds = %while.body.i1290
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1290

while.body.i1290.rs_modnn.exit1292_crit_edge:     ; preds = %while.body.i1290
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1292

rs_modnn.exit1292:                                ; preds = %while.body.i1290.rs_modnn.exit1292_crit_edge, %if.end537.rs_modnn.exit1292_crit_edge
  %x.addr.0.lcssa.i1291 = phi i32 [ %add542, %if.end537.rs_modnn.exit1292_crit_edge ], [ %add.i1288, %while.body.i1290.rs_modnn.exit1292_crit_edge ]
  %arrayidx544 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1291
  %186 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx544, align 2
  br i1 %cmp5551404, label %rs_modnn.exit1292.for.body557_crit_edge, label %rs_modnn.exit1292.for.end580_crit_edge

rs_modnn.exit1292.for.end580_crit_edge:           ; preds = %rs_modnn.exit1292
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end580

rs_modnn.exit1292.for.body557_crit_edge:          ; preds = %rs_modnn.exit1292
  br label %for.body557

for.body557:                                      ; preds = %for.inc578.for.body557_crit_edge, %rs_modnn.exit1292.for.body557_crit_edge
  %den.01406 = phi i16 [ %den.1, %for.inc578.for.body557_crit_edge ], [ 0, %rs_modnn.exit1292.for.body557_crit_edge ]
  %i.141405 = phi i32 [ %sub579, %for.inc578.for.body557_crit_edge ], [ %and553, %rs_modnn.exit1292.for.body557_crit_edge ]
  %add558 = or i32 %i.141405, 1
  %arrayidx559 = getelementptr i16, ptr %buffers, i32 %add558
  %188 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx559, align 2
  %conv560 = zext i16 %189 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv560)
  %cmp561.not = icmp eq i32 %3, %conv560
  br i1 %cmp561.not, label %for.body557.for.inc578_crit_edge, label %if.then563

for.body557.for.inc578_crit_edge:                 ; preds = %for.body557
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc578

if.then563:                                       ; preds = %for.body557
  %mul569 = mul i32 %i.141405, %conv539
  %add570 = add i32 %mul569, %conv560
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add570)
  %cmp.not10.i1294 = icmp sgt i32 %183, %add570
  br i1 %cmp.not10.i1294, label %if.then563.rs_modnn.exit1304_crit_edge, label %while.body.lr.ph.i1295

if.then563.rs_modnn.exit1304_crit_edge:           ; preds = %if.then563
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1304

while.body.lr.ph.i1295:                           ; preds = %if.then563
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %1, align 4
  br label %while.body.i1302

while.body.i1302:                                 ; preds = %while.body.i1302.while.body.i1302_crit_edge, %while.body.lr.ph.i1295
  %x.addr.011.i1296 = phi i32 [ %add570, %while.body.lr.ph.i1295 ], [ %add.i1300, %while.body.i1302.while.body.i1302_crit_edge ]
  %sub.i1297 = sub i32 %x.addr.011.i1296, %183
  %shr.i1298 = ashr i32 %sub.i1297, %191
  %and.i1299 = and i32 %sub.i1297, %183
  %add.i1300 = add i32 %shr.i1298, %and.i1299
  %cmp.not.i1301 = icmp slt i32 %add.i1300, %183
  br i1 %cmp.not.i1301, label %while.body.i1302.rs_modnn.exit1304_crit_edge, label %while.body.i1302.while.body.i1302_crit_edge

while.body.i1302.while.body.i1302_crit_edge:      ; preds = %while.body.i1302
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1302

while.body.i1302.rs_modnn.exit1304_crit_edge:     ; preds = %while.body.i1302
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1304

rs_modnn.exit1304:                                ; preds = %while.body.i1302.rs_modnn.exit1304_crit_edge, %if.then563.rs_modnn.exit1304_crit_edge
  %x.addr.0.lcssa.i1303 = phi i32 [ %add570, %if.then563.rs_modnn.exit1304_crit_edge ], [ %add.i1300, %while.body.i1302.rs_modnn.exit1304_crit_edge ]
  %arrayidx572 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1303
  %192 = ptrtoint ptr %arrayidx572 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx572, align 2
  %xor5751138 = xor i16 %193, %den.01406
  br label %for.inc578

for.inc578:                                       ; preds = %rs_modnn.exit1304, %for.body557.for.inc578_crit_edge
  %den.1 = phi i16 [ %xor5751138, %rs_modnn.exit1304 ], [ %den.01406, %for.body557.for.inc578_crit_edge ]
  %sub579 = add nsw i32 %i.141405, -2
  %cmp555 = icmp sgt i32 %i.141405, 1
  br i1 %cmp555, label %for.inc578.for.body557_crit_edge, label %for.inc578.for.end580_crit_edge

for.inc578.for.end580_crit_edge:                  ; preds = %for.inc578
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end580

for.inc578.for.body557_crit_edge:                 ; preds = %for.inc578
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body557

for.end580:                                       ; preds = %for.inc578.for.end580_crit_edge, %rs_modnn.exit1292.for.end580_crit_edge
  %den.0.lcssa = phi i16 [ 0, %rs_modnn.exit1292.for.end580_crit_edge ], [ %den.1, %for.inc578.for.end580_crit_edge ]
  %arrayidx582 = getelementptr i16, ptr %15, i32 %conv532
  %194 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx582, align 2
  %conv583 = zext i16 %195 to i32
  %idxprom584 = zext i16 %187 to i32
  %arrayidx585 = getelementptr i16, ptr %15, i32 %idxprom584
  %196 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx585, align 2
  %conv586 = zext i16 %197 to i32
  %idxprom589 = zext i16 %den.0.lcssa to i32
  %arrayidx590 = getelementptr i16, ptr %15, i32 %idxprom589
  %198 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx590, align 2
  %conv591 = zext i16 %199 to i32
  %add587 = add i32 %3, %conv583
  %add588 = add i32 %add587, %conv586
  %sub592 = sub i32 %add588, %conv591
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %sub592)
  %cmp.not10.i1306 = icmp sgt i32 %183, %sub592
  br i1 %cmp.not10.i1306, label %for.end580.rs_modnn.exit1316_crit_edge, label %while.body.lr.ph.i1307

for.end580.rs_modnn.exit1316_crit_edge:           ; preds = %for.end580
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1316

while.body.lr.ph.i1307:                           ; preds = %for.end580
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %1, align 4
  br label %while.body.i1314

while.body.i1314:                                 ; preds = %while.body.i1314.while.body.i1314_crit_edge, %while.body.lr.ph.i1307
  %x.addr.011.i1308 = phi i32 [ %sub592, %while.body.lr.ph.i1307 ], [ %add.i1312, %while.body.i1314.while.body.i1314_crit_edge ]
  %sub.i1309 = sub i32 %x.addr.011.i1308, %183
  %shr.i1310 = ashr i32 %sub.i1309, %201
  %and.i1311 = and i32 %sub.i1309, %183
  %add.i1312 = add i32 %shr.i1310, %and.i1311
  %cmp.not.i1313 = icmp slt i32 %add.i1312, %183
  br i1 %cmp.not.i1313, label %while.body.i1314.rs_modnn.exit1316_crit_edge, label %while.body.i1314.while.body.i1314_crit_edge

while.body.i1314.while.body.i1314_crit_edge:      ; preds = %while.body.i1314
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1314

while.body.i1314.rs_modnn.exit1316_crit_edge:     ; preds = %while.body.i1314
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1316

rs_modnn.exit1316:                                ; preds = %while.body.i1314.rs_modnn.exit1316_crit_edge, %for.end580.rs_modnn.exit1316_crit_edge
  %x.addr.0.lcssa.i1315 = phi i32 [ %sub592, %for.end580.rs_modnn.exit1316_crit_edge ], [ %add.i1312, %while.body.i1314.rs_modnn.exit1316_crit_edge ]
  %arrayidx594 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1315
  %202 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx594, align 2
  %arrayidx595 = getelementptr i16, ptr %add.ptr18, i32 %j.51411
  %204 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %arrayidx595, align 2
  %inc596 = add i32 %num_corrected.01410, 1
  br label %for.inc597

for.inc597:                                       ; preds = %rs_modnn.exit1316, %if.then535
  %num_corrected.1 = phi i32 [ %num_corrected.01410, %if.then535 ], [ %inc596, %rs_modnn.exit1316 ]
  %j.5 = add i32 %j.51411, -1
  %cmp504 = icmp sgt i32 %j.5, -1
  br i1 %cmp504, label %for.inc597.for.body510.lr.ph_crit_edge, label %for.inc597.for.cond600.preheader_crit_edge

for.inc597.for.cond600.preheader_crit_edge:       ; preds = %for.inc597
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond600.preheader

for.inc597.for.body510.lr.ph_crit_edge:           ; preds = %for.inc597
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body510.lr.ph

for.cond600:                                      ; preds = %for.end634
  %inc645 = add nuw nsw i32 %i.151418, 1
  %exitcond1445.not = icmp eq i32 %inc645, %5
  br i1 %exitcond1445.not, label %for.cond600.for.end646_crit_edge, label %for.cond600.for.cond604.preheader_crit_edge

for.cond600.for.cond604.preheader_crit_edge:      ; preds = %for.cond600
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond604.preheader

for.cond600.for.end646_crit_edge:                 ; preds = %for.cond600
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end646

for.cond604.preheader:                            ; preds = %for.cond600.for.cond604.preheader_crit_edge, %for.cond604.preheader.lr.ph
  %i.151418 = phi i32 [ 0, %for.cond604.preheader.lr.ph ], [ %inc645, %for.cond600.for.cond604.preheader_crit_edge ]
  br i1 %cmp6051413, label %for.body607.lr.ph, label %for.cond604.preheader.for.end634_crit_edge

for.cond604.preheader.for.end634_crit_edge:       ; preds = %for.cond604.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end634

for.body607.lr.ph:                                ; preds = %for.cond604.preheader
  %add614 = add i32 %i.151418, %7
  %mul615 = mul i32 %add614, %9
  br label %for.body607

for.body607:                                      ; preds = %for.inc632.for.body607_crit_edge, %for.body607.lr.ph
  %tmp.21415 = phi i16 [ 0, %for.body607.lr.ph ], [ %tmp.3, %for.inc632.for.body607_crit_edge ]
  %j.61414 = phi i32 [ 0, %for.body607.lr.ph ], [ %inc633, %for.inc632.for.body607_crit_edge ]
  %arrayidx608 = getelementptr i16, ptr %add.ptr18, i32 %j.61414
  %205 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx608, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp610 = icmp eq i16 %206, 0
  br i1 %cmp610, label %for.body607.for.inc632_crit_edge, label %if.end613

for.body607.for.inc632_crit_edge:                 ; preds = %for.body607
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc632

if.end613:                                        ; preds = %for.body607
  %conv609 = zext i16 %206 to i32
  %arrayidx616 = getelementptr i16, ptr %add.ptr43, i32 %j.61414
  %207 = ptrtoint ptr %arrayidx616 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx616, align 2
  %conv617 = zext i16 %208 to i32
  %209 = xor i32 %conv617, -1
  %sub619 = add i32 %3, %209
  %mul620 = mul i32 %mul615, %sub619
  %arrayidx623 = getelementptr i16, ptr %15, i32 %conv609
  %210 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx623, align 2
  %conv624 = zext i16 %211 to i32
  %add625 = add i32 %mul620, %conv624
  %212 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %add625)
  %cmp.not10.i1318 = icmp sgt i32 %213, %add625
  br i1 %cmp.not10.i1318, label %if.end613.rs_modnn.exit1328_crit_edge, label %while.body.lr.ph.i1319

if.end613.rs_modnn.exit1328_crit_edge:            ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1328

while.body.lr.ph.i1319:                           ; preds = %if.end613
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %1, align 4
  br label %while.body.i1326

while.body.i1326:                                 ; preds = %while.body.i1326.while.body.i1326_crit_edge, %while.body.lr.ph.i1319
  %x.addr.011.i1320 = phi i32 [ %add625, %while.body.lr.ph.i1319 ], [ %add.i1324, %while.body.i1326.while.body.i1326_crit_edge ]
  %sub.i1321 = sub i32 %x.addr.011.i1320, %213
  %shr.i1322 = ashr i32 %sub.i1321, %215
  %and.i1323 = and i32 %sub.i1321, %213
  %add.i1324 = add i32 %shr.i1322, %and.i1323
  %cmp.not.i1325 = icmp slt i32 %add.i1324, %213
  br i1 %cmp.not.i1325, label %while.body.i1326.rs_modnn.exit1328_crit_edge, label %while.body.i1326.while.body.i1326_crit_edge

while.body.i1326.while.body.i1326_crit_edge:      ; preds = %while.body.i1326
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1326

while.body.i1326.rs_modnn.exit1328_crit_edge:     ; preds = %while.body.i1326
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1328

rs_modnn.exit1328:                                ; preds = %while.body.i1326.rs_modnn.exit1328_crit_edge, %if.end613.rs_modnn.exit1328_crit_edge
  %x.addr.0.lcssa.i1327 = phi i32 [ %add625, %if.end613.rs_modnn.exit1328_crit_edge ], [ %add.i1324, %while.body.i1326.rs_modnn.exit1328_crit_edge ]
  %arrayidx627 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1327
  %216 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx627, align 2
  %xor6301137 = xor i16 %217, %tmp.21415
  br label %for.inc632

for.inc632:                                       ; preds = %rs_modnn.exit1328, %for.body607.for.inc632_crit_edge
  %tmp.3 = phi i16 [ %tmp.21415, %for.body607.for.inc632_crit_edge ], [ %xor6301137, %rs_modnn.exit1328 ]
  %inc633 = add nuw nsw i32 %j.61414, 1
  %exitcond1444.not = icmp eq i32 %inc633, %spec.select1147
  br i1 %exitcond1444.not, label %for.inc632.for.end634_crit_edge, label %for.inc632.for.body607_crit_edge

for.inc632.for.body607_crit_edge:                 ; preds = %for.inc632
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body607

for.inc632.for.end634_crit_edge:                  ; preds = %for.inc632
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end634

for.end634:                                       ; preds = %for.inc632.for.end634_crit_edge, %for.cond604.preheader.for.end634_crit_edge
  %tmp.2.lcssa = phi i16 [ 0, %for.cond604.preheader.for.end634_crit_edge ], [ %tmp.3, %for.inc632.for.end634_crit_edge ]
  %arrayidx636 = getelementptr i16, ptr %s.addr.0, i32 %i.151418
  %218 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %arrayidx636, align 2
  %idxprom637 = zext i16 %219 to i32
  %arrayidx638 = getelementptr i16, ptr %13, i32 %idxprom637
  %220 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx638, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %tmp.2.lcssa, i16 %221)
  %cmp640.not = icmp eq i16 %tmp.2.lcssa, %221
  br i1 %cmp640.not, label %for.cond600, label %for.end634.cleanup_crit_edge

for.end634.cleanup_crit_edge:                     ; preds = %for.end634
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end646:                                       ; preds = %for.cond600.for.end646_crit_edge, %for.cond600.preheader.for.end646_crit_edge
  %tobool647.not = icmp eq ptr %corr, null
  %tobool649.not = icmp eq ptr %eras_pos, null
  %or.cond = or i1 %tobool649.not, %tobool647.not
  br i1 %or.cond, label %if.else669, label %for.cond651.preheader

for.cond651.preheader:                            ; preds = %for.end646
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1147)
  %cmp6521420 = icmp sgt i32 %spec.select1147, 0
  br i1 %cmp6521420, label %for.cond651.preheader.for.body654_crit_edge, label %for.cond651.preheader.cleanup_crit_edge

for.cond651.preheader.cleanup_crit_edge:          ; preds = %for.cond651.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond651.preheader.for.body654_crit_edge:      ; preds = %for.cond651.preheader
  br label %for.body654

for.body654:                                      ; preds = %for.inc666.for.body654_crit_edge, %for.cond651.preheader.for.body654_crit_edge
  %j.71423 = phi i32 [ %j.8, %for.inc666.for.body654_crit_edge ], [ 0, %for.cond651.preheader.for.body654_crit_edge ]
  %i.161421 = phi i32 [ %inc667, %for.inc666.for.body654_crit_edge ], [ 0, %for.cond651.preheader.for.body654_crit_edge ]
  %arrayidx655 = getelementptr i16, ptr %add.ptr18, i32 %i.161421
  %222 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx655, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool656.not = icmp eq i16 %223, 0
  br i1 %tobool656.not, label %for.body654.for.inc666_crit_edge, label %if.then657

for.body654.for.inc666_crit_edge:                 ; preds = %for.body654
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc666

if.then657:                                       ; preds = %for.body654
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx659 = getelementptr i16, ptr %corr, i32 %j.71423
  %224 = ptrtoint ptr %arrayidx659 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %arrayidx659, align 2
  %arrayidx660 = getelementptr i16, ptr %add.ptr43, i32 %i.161421
  %225 = ptrtoint ptr %arrayidx660 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx660, align 2
  %conv661 = zext i16 %226 to i32
  %sub662 = sub i32 %conv661, %sub44
  %inc663 = add i32 %j.71423, 1
  %arrayidx664 = getelementptr i32, ptr %eras_pos, i32 %j.71423
  %227 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub662, ptr %arrayidx664, align 4
  br label %for.inc666

for.inc666:                                       ; preds = %if.then657, %for.body654.for.inc666_crit_edge
  %j.8 = phi i32 [ %inc663, %if.then657 ], [ %j.71423, %for.body654.for.inc666_crit_edge ]
  %inc667 = add nuw nsw i32 %i.161421, 1
  %exitcond1446.not = icmp eq i32 %inc667, %spec.select1147
  br i1 %exitcond1446.not, label %for.inc666.cleanup_crit_edge, label %for.inc666.for.body654_crit_edge

for.inc666.for.body654_crit_edge:                 ; preds = %for.inc666
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body654

for.inc666.cleanup_crit_edge:                     ; preds = %for.inc666
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else669:                                       ; preds = %for.end646
  %tobool670.not = icmp ne ptr %data, null
  %tobool672.not = icmp ne ptr %par, null
  %or.cond1148.not = and i1 %tobool670.not, %tobool672.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1147)
  %cmp6751424 = icmp sgt i32 %spec.select1147, 0
  %or.cond1427 = select i1 %or.cond1148.not, i1 %cmp6751424, i1 false
  br i1 %or.cond1427, label %if.else669.for.body677_crit_edge, label %if.else669.cleanup_crit_edge

if.else669.cleanup_crit_edge:                     ; preds = %if.else669
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else669.for.body677_crit_edge:                 ; preds = %if.else669
  br label %for.body677

for.body677:                                      ; preds = %for.inc705.for.body677_crit_edge, %if.else669.for.body677_crit_edge
  %i.171425 = phi i32 [ %inc706, %for.inc705.for.body677_crit_edge ], [ 0, %if.else669.for.body677_crit_edge ]
  %arrayidx678 = getelementptr i16, ptr %add.ptr43, i32 %i.171425
  %228 = ptrtoint ptr %arrayidx678 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx678, align 2
  %conv679 = zext i16 %229 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv679)
  %cmp681 = icmp sgt i32 %sub, %conv679
  %arrayidx684 = getelementptr i16, ptr %add.ptr18, i32 %i.171425
  %230 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx684, align 2
  br i1 %cmp681, label %if.then683, label %if.else693

if.then683:                                       ; preds = %for.body677
  call void @__sanitizer_cov_trace_pc() #8
  %conv685 = trunc i16 %231 to i8
  %sub688 = sub i32 %conv679, %sub44
  %arrayidx689 = getelementptr i8, ptr %data, i32 %sub688
  %232 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx689, align 1
  %xor691 = xor i8 %233, %conv685
  store i8 %xor691, ptr %arrayidx689, align 1
  br label %for.inc705

if.else693:                                       ; preds = %for.body677
  call void @__sanitizer_cov_trace_pc() #8
  %sub699 = sub i32 %conv679, %sub
  %arrayidx700 = getelementptr i16, ptr %par, i32 %sub699
  %234 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx700, align 2
  %xor7021136 = xor i16 %235, %231
  store i16 %xor7021136, ptr %arrayidx700, align 2
  br label %for.inc705

for.inc705:                                       ; preds = %if.else693, %if.then683
  %inc706 = add nuw nsw i32 %i.171425, 1
  %exitcond1447.not = icmp eq i32 %inc706, %spec.select1147
  br i1 %exitcond1447.not, label %for.inc705.cleanup_crit_edge, label %for.inc705.for.body677_crit_edge

for.inc705.for.body677_crit_edge:                 ; preds = %for.inc705
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body677

for.inc705.cleanup_crit_edge:                     ; preds = %for.inc705
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc705.cleanup_crit_edge, %if.else669.cleanup_crit_edge, %for.inc666.cleanup_crit_edge, %for.cond651.preheader.cleanup_crit_edge, %for.end634.cleanup_crit_edge, %for.end455.cleanup_crit_edge, %if.end437.cleanup_crit_edge, %for.end394.cleanup_crit_edge, %for.cond377.preheader.cleanup_crit_edge, %for.end186.cleanup_crit_edge, %for.cond172.preheader.cleanup_crit_edge, %for.cond128.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end186.cleanup_crit_edge ], [ -74, %for.end394.cleanup_crit_edge ], [ -74, %for.end455.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %if.else669.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.cond651.preheader.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond172.preheader.cleanup_crit_edge ], [ 0, %for.cond128.preheader.cleanup_crit_edge ], [ -74, %for.cond377.preheader.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.inc705.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.inc666.cleanup_crit_edge ], [ -74, %for.end634.cleanup_crit_edge ], [ -74, %if.end437.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @encode_rs16(ptr nocapture noundef readonly %rsc, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef %par, i16 noundef zeroext %invmsk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc, align 4
  %nn1 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nn1, align 4
  %nroots2 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nroots2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nroots2, align 4
  %alpha_to3 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %alpha_to3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alpha_to3, align 4
  %index_of4 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %index_of4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %index_of4, align 4
  %genpoly5 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %genpoly5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genpoly5, align 4
  %12 = add i32 %5, %len
  %sub7 = sub i32 %3, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub7)
  %cmp = icmp sgt i32 %sub7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %3)
  %cmp9.not = icmp slt i32 %sub7, %3
  %or.cond = and i1 %cmp, %cmp9.not
  br i1 %or.cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp11124 = icmp sgt i32 %len, 0
  br i1 %cmp11124, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp25122 = icmp sgt i32 %5, 1
  %arrayidx40 = getelementptr i16, ptr %par, i32 1
  %sub41 = add i32 %5, -1
  %mul = shl i32 %sub41, 1
  %arrayidx53 = getelementptr i16, ptr %par, i32 %sub41
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc57.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.0125
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %xor103 = xor i16 %14, %invmsk
  %xor = zext i16 %xor103 to i32
  %and = and i32 %3, %xor
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %par, align 2
  %conv17 = zext i16 %16 to i32
  %xor18 = xor i32 %and, %conv17
  %arrayidx19 = getelementptr i16, ptr %9, i32 %xor18
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv20)
  %cmp21.not = icmp eq i32 %3, %conv20
  br i1 %cmp21.not, label %if.else, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.body
  br i1 %cmp25122, label %for.cond24.preheader.for.body27_crit_edge, label %for.cond24.preheader.if.then45_crit_edge

for.cond24.preheader.if.then45_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

for.cond24.preheader.for.body27_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body27

for.body27:                                       ; preds = %rs_modnn.exit.for.body27_crit_edge, %for.cond24.preheader.for.body27_crit_edge
  %j.0123 = phi i32 [ %inc, %rs_modnn.exit.for.body27_crit_edge ], [ 1, %for.cond24.preheader.for.body27_crit_edge ]
  %sub29 = sub i32 %5, %j.0123
  %arrayidx30 = getelementptr i16, ptr %11, i32 %sub29
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv31, %conv20
  %21 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp.not10.i = icmp sgt i32 %22, %add
  br i1 %cmp.not10.i, label %for.body27.rs_modnn.exit_crit_edge, label %while.body.lr.ph.i

for.body27.rs_modnn.exit_crit_edge:               ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

while.body.lr.ph.i:                               ; preds = %for.body27
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %x.addr.011.i = phi i32 [ %add, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %x.addr.011.i, %22
  %shr.i = ashr i32 %sub.i, %24
  %and.i = and i32 %sub.i, %22
  %add.i = add i32 %shr.i, %and.i
  %cmp.not.i = icmp slt i32 %add.i, %22
  br i1 %cmp.not.i, label %while.body.i.rs_modnn.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.rs_modnn.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

rs_modnn.exit:                                    ; preds = %while.body.i.rs_modnn.exit_crit_edge, %for.body27.rs_modnn.exit_crit_edge
  %x.addr.0.lcssa.i = phi i32 [ %add, %for.body27.rs_modnn.exit_crit_edge ], [ %add.i, %while.body.i.rs_modnn.exit_crit_edge ]
  %arrayidx32 = getelementptr i16, ptr %7, i32 %x.addr.0.lcssa.i
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx32, align 2
  %arrayidx34 = getelementptr i16, ptr %par, i32 %j.0123
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx34, align 2
  %xor36104 = xor i16 %28, %26
  store i16 %xor36104, ptr %arrayidx34, align 2
  %inc = add nuw nsw i32 %j.0123, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %rs_modnn.exit.if.then45_crit_edge, label %rs_modnn.exit.for.body27_crit_edge

rs_modnn.exit.for.body27_crit_edge:               ; preds = %rs_modnn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

rs_modnn.exit.if.then45_crit_edge:                ; preds = %rs_modnn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %rs_modnn.exit.if.then45_crit_edge, %for.cond24.preheader.if.then45_crit_edge
  %29 = call ptr @memmove(ptr %par, ptr %arrayidx40, i32 %mul)
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %11, align 2
  %conv48 = zext i16 %31 to i32
  %add49 = add nuw nsw i32 %conv48, %conv20
  %32 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add49)
  %cmp.not10.i106 = icmp sgt i32 %33, %add49
  br i1 %cmp.not10.i106, label %if.then45.rs_modnn.exit116_crit_edge, label %while.body.lr.ph.i107

if.then45.rs_modnn.exit116_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit116

while.body.lr.ph.i107:                            ; preds = %if.then45
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  br label %while.body.i114

while.body.i114:                                  ; preds = %while.body.i114.while.body.i114_crit_edge, %while.body.lr.ph.i107
  %x.addr.011.i108 = phi i32 [ %add49, %while.body.lr.ph.i107 ], [ %add.i112, %while.body.i114.while.body.i114_crit_edge ]
  %sub.i109 = sub i32 %x.addr.011.i108, %33
  %shr.i110 = ashr i32 %sub.i109, %35
  %and.i111 = and i32 %sub.i109, %33
  %add.i112 = add i32 %shr.i110, %and.i111
  %cmp.not.i113 = icmp slt i32 %add.i112, %33
  br i1 %cmp.not.i113, label %while.body.i114.rs_modnn.exit116_crit_edge, label %while.body.i114.while.body.i114_crit_edge

while.body.i114.while.body.i114_crit_edge:        ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i114

while.body.i114.rs_modnn.exit116_crit_edge:       ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit116

rs_modnn.exit116:                                 ; preds = %while.body.i114.rs_modnn.exit116_crit_edge, %if.then45.rs_modnn.exit116_crit_edge
  %x.addr.0.lcssa.i115 = phi i32 [ %add49, %if.then45.rs_modnn.exit116_crit_edge ], [ %add.i112, %while.body.i114.rs_modnn.exit116_crit_edge ]
  %arrayidx51 = getelementptr i16, ptr %7, i32 %x.addr.0.lcssa.i115
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx51, align 2
  br label %for.inc57

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = call ptr @memmove(ptr %par, ptr %arrayidx40, i32 %mul)
  br label %for.inc57

for.inc57:                                        ; preds = %if.else, %rs_modnn.exit116
  %storemerge = phi i16 [ %37, %rs_modnn.exit116 ], [ 0, %if.else ]
  %39 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %storemerge, ptr %arrayidx53, align 2
  %inc58 = add nuw nsw i32 %i.0125, 1
  %exitcond126.not = icmp eq i32 %inc58, %len
  br i1 %exitcond126.not, label %for.inc57.cleanup_crit_edge, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc57.cleanup_crit_edge:                      ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc57.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_rs16(ptr noundef %rsc, ptr noundef %data, ptr noundef %par, i32 noundef %len, ptr noundef readonly %s, i32 noundef %no_eras, ptr noundef %eras_pos, i16 noundef zeroext %invmsk, ptr noundef writeonly %corr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc, align 4
  %nn1 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nn1, align 4
  %nroots2 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nroots2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nroots2, align 4
  %fcr3 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fcr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcr3, align 4
  %prim4 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %prim4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prim4, align 4
  %iprim5 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %iprim5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iprim5, align 4
  %alpha_to6 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %alpha_to6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alpha_to6, align 4
  %index_of7 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %index_of7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %index_of7, align 4
  %conv = trunc i32 %3 to i16
  %buffers = getelementptr inbounds %struct.rs_control, ptr %rsc, i32 0, i32 1
  %add = add i32 %5, 1
  %add.ptr13 = getelementptr i16, ptr %buffers, i32 %add
  %mul17 = shl i32 %add, 1
  %add.ptr18 = getelementptr i16, ptr %buffers, i32 %mul17
  %mul22 = mul i32 %add, 3
  %add.ptr23 = getelementptr i16, ptr %buffers, i32 %mul22
  %mul27 = shl i32 %add, 2
  %add.ptr28 = getelementptr i16, ptr %buffers, i32 %mul27
  %mul32 = mul i32 %add, 5
  %add.ptr33 = getelementptr i16, ptr %buffers, i32 %mul32
  %mul37 = mul i32 %add, 6
  %add.ptr38 = getelementptr i16, ptr %buffers, i32 %mul37
  %mul42 = mul i32 %add, 7
  %add.ptr43 = getelementptr i16, ptr %buffers, i32 %mul42
  %sub = sub i32 %3, %5
  %sub44 = sub i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp = icmp slt i32 %sub44, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %sub)
  %cmp47 = icmp sge i32 %sub44, %sub
  %spec.select = or i1 %cmp, %cmp47
  br i1 %spec.select, label %do.body50, label %do.end55, !prof !37

do.body50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/reed_solomon/decode_rs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end55:                                         ; preds = %entry
  %cmp56.not = icmp eq ptr %s, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp681337 = icmp sgt i32 %5, 0
  br i1 %cmp56.not, label %for.cond67.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end55
  br i1 %cmp681337, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond67.preheader:                             ; preds = %do.end55
  br i1 %cmp681337, label %for.cond67.preheader.for.body70_crit_edge, label %for.cond67.preheader.for.cond80.preheader_crit_edge

for.cond67.preheader.for.cond80.preheader_crit_edge: ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond80.preheader

for.cond67.preheader.for.body70_crit_edge:        ; preds = %for.cond67.preheader
  br label %for.body70

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.01336, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.01336 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %s, i32 %i.01336
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %conv61 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv61)
  %cmp62.not = icmp eq i32 %3, %conv61
  br i1 %cmp62.not, label %for.cond, label %for.body.decode_crit_edge

for.body.decode_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode

for.cond80.preheader:                             ; preds = %for.body70.for.cond80.preheader_crit_edge, %for.cond67.preheader.for.cond80.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp811341 = icmp sgt i32 %len, 1
  br i1 %cmp811341, label %for.cond80.preheader.for.cond84.preheader_crit_edge, label %for.cond80.preheader.for.cond125.preheader_crit_edge

for.cond80.preheader.for.cond125.preheader_crit_edge: ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond125.preheader

for.cond80.preheader.for.cond84.preheader_crit_edge: ; preds = %for.cond80.preheader
  br label %for.cond84.preheader

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.cond67.preheader.for.body70_crit_edge
  %i.11338 = phi i32 [ %inc78, %for.body70.for.body70_crit_edge ], [ 0, %for.cond67.preheader.for.body70_crit_edge ]
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data, align 2
  %xor1147 = xor i16 %19, %invmsk
  %conv75 = and i16 %xor1147, %conv
  %arrayidx76 = getelementptr i16, ptr %add.ptr13, i32 %i.11338
  %20 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv75, ptr %arrayidx76, align 2
  %inc78 = add nuw nsw i32 %i.11338, 1
  %exitcond1433.not = icmp eq i32 %inc78, %5
  br i1 %exitcond1433.not, label %for.body70.for.cond80.preheader_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.body70.for.cond80.preheader_crit_edge:        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond80.preheader

for.cond84.preheader:                             ; preds = %for.inc122.for.cond84.preheader_crit_edge, %for.cond80.preheader.for.cond84.preheader_crit_edge
  %j.01342 = phi i32 [ %inc123, %for.inc122.for.cond84.preheader_crit_edge ], [ 1, %for.cond80.preheader.for.cond84.preheader_crit_edge ]
  br i1 %cmp681337, label %for.body87.lr.ph, label %for.cond84.preheader.for.inc122_crit_edge

for.cond84.preheader.for.inc122_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc122

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  %arrayidx101 = getelementptr i16, ptr %data, i32 %j.01342
  br label %for.body87

for.cond125.preheader:                            ; preds = %for.inc122.for.cond125.preheader_crit_edge, %for.cond80.preheader.for.cond125.preheader_crit_edge
  br i1 %cmp681337, label %for.cond125.preheader.for.body132.lr.ph_crit_edge, label %for.cond125.preheader.cleanup_crit_edge

for.cond125.preheader.cleanup_crit_edge:          ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond125.preheader.for.body132.lr.ph_crit_edge: ; preds = %for.cond125.preheader
  br label %for.body132.lr.ph

for.body87:                                       ; preds = %for.inc119.for.body87_crit_edge, %for.body87.lr.ph
  %i.21340 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc120, %for.inc119.for.body87_crit_edge ]
  %arrayidx88 = getelementptr i16, ptr %add.ptr13, i32 %i.21340
  %21 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx88, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp90 = icmp eq i16 %22, 0
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx101, align 2
  %xor961146 = xor i16 %24, %invmsk
  %conv99 = and i16 %xor961146, %conv
  br label %for.inc119

if.else:                                          ; preds = %for.body87
  %conv89 = zext i16 %22 to i32
  %25 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx101, align 2
  %xor1041144 = xor i16 %26, %invmsk
  %arrayidx108 = getelementptr i16, ptr %15, i32 %conv89
  %27 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %28 to i32
  %add110 = add i32 %i.21340, %7
  %mul111 = mul i32 %add110, %9
  %add112 = add i32 %mul111, %conv109
  %29 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add112)
  %cmp.not10.i = icmp sgt i32 %30, %add112
  br i1 %cmp.not10.i, label %if.else.rs_modnn.exit_crit_edge, label %while.body.lr.ph.i

if.else.rs_modnn.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %x.addr.011.i = phi i32 [ %add112, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %x.addr.011.i, %30
  %shr.i = ashr i32 %sub.i, %32
  %and.i = and i32 %sub.i, %30
  %add.i = add i32 %shr.i, %and.i
  %cmp.not.i = icmp slt i32 %add.i, %30
  br i1 %cmp.not.i, label %while.body.i.rs_modnn.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.rs_modnn.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit

rs_modnn.exit:                                    ; preds = %while.body.i.rs_modnn.exit_crit_edge, %if.else.rs_modnn.exit_crit_edge
  %x.addr.0.lcssa.i = phi i32 [ %add112, %if.else.rs_modnn.exit_crit_edge ], [ %add.i, %while.body.i.rs_modnn.exit_crit_edge ]
  %arrayidx113 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i
  %33 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx113, align 2
  %35 = and i16 %xor1041144, %conv
  %conv116 = xor i16 %34, %35
  br label %for.inc119

for.inc119:                                       ; preds = %rs_modnn.exit, %if.then92
  %storemerge1145 = phi i16 [ %conv116, %rs_modnn.exit ], [ %conv99, %if.then92 ]
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %storemerge1145, ptr %arrayidx88, align 2
  %inc120 = add nuw nsw i32 %i.21340, 1
  %exitcond1434.not = icmp eq i32 %inc120, %5
  br i1 %exitcond1434.not, label %for.inc119.for.inc122_crit_edge, label %for.inc119.for.body87_crit_edge

for.inc119.for.body87_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87

for.inc119.for.inc122_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc122

for.inc122:                                       ; preds = %for.inc119.for.inc122_crit_edge, %for.cond84.preheader.for.inc122_crit_edge
  %inc123 = add nuw nsw i32 %j.01342, 1
  %exitcond1435.not = icmp eq i32 %inc123, %len
  br i1 %exitcond1435.not, label %for.inc122.for.cond125.preheader_crit_edge, label %for.inc122.for.cond84.preheader_crit_edge

for.inc122.for.cond84.preheader_crit_edge:        ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond84.preheader

for.inc122.for.cond125.preheader_crit_edge:       ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond125.preheader

for.body132.lr.ph:                                ; preds = %for.inc166.for.body132.lr.ph_crit_edge, %for.cond125.preheader.for.body132.lr.ph_crit_edge
  %j.11347 = phi i32 [ %inc167, %for.inc166.for.body132.lr.ph_crit_edge ], [ 0, %for.cond125.preheader.for.body132.lr.ph_crit_edge ]
  %arrayidx145 = getelementptr i16, ptr %par, i32 %j.11347
  br label %for.body132

for.cond169.preheader:                            ; preds = %for.inc166
  br i1 %cmp681337, label %for.cond169.preheader.for.body172_crit_edge, label %for.cond169.preheader.cleanup_crit_edge

for.cond169.preheader.cleanup_crit_edge:          ; preds = %for.cond169.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond169.preheader.for.body172_crit_edge:      ; preds = %for.cond169.preheader
  br label %for.body172

for.body132:                                      ; preds = %for.inc163.for.body132_crit_edge, %for.body132.lr.ph
  %i.31345 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc164, %for.inc163.for.body132_crit_edge ]
  %arrayidx133 = getelementptr i16, ptr %add.ptr13, i32 %i.31345
  %37 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx133, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp135 = icmp eq i16 %38, 0
  br i1 %cmp135, label %if.then137, label %if.else144

if.then137:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx145, align 2
  %conv142 = and i16 %40, %conv
  br label %for.inc163

if.else144:                                       ; preds = %for.body132
  %conv134 = zext i16 %38 to i32
  %41 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx145, align 2
  %arrayidx151 = getelementptr i16, ptr %15, i32 %conv134
  %43 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx151, align 2
  %conv152 = zext i16 %44 to i32
  %add153 = add i32 %i.31345, %7
  %mul154 = mul i32 %add153, %9
  %add155 = add i32 %mul154, %conv152
  %45 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add155)
  %cmp.not10.i1151 = icmp sgt i32 %46, %add155
  br i1 %cmp.not10.i1151, label %if.else144.rs_modnn.exit1161_crit_edge, label %while.body.lr.ph.i1152

if.else144.rs_modnn.exit1161_crit_edge:           ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1161

while.body.lr.ph.i1152:                           ; preds = %if.else144
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  br label %while.body.i1159

while.body.i1159:                                 ; preds = %while.body.i1159.while.body.i1159_crit_edge, %while.body.lr.ph.i1152
  %x.addr.011.i1153 = phi i32 [ %add155, %while.body.lr.ph.i1152 ], [ %add.i1157, %while.body.i1159.while.body.i1159_crit_edge ]
  %sub.i1154 = sub i32 %x.addr.011.i1153, %46
  %shr.i1155 = ashr i32 %sub.i1154, %48
  %and.i1156 = and i32 %sub.i1154, %46
  %add.i1157 = add i32 %shr.i1155, %and.i1156
  %cmp.not.i1158 = icmp slt i32 %add.i1157, %46
  br i1 %cmp.not.i1158, label %while.body.i1159.rs_modnn.exit1161_crit_edge, label %while.body.i1159.while.body.i1159_crit_edge

while.body.i1159.while.body.i1159_crit_edge:      ; preds = %while.body.i1159
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1159

while.body.i1159.rs_modnn.exit1161_crit_edge:     ; preds = %while.body.i1159
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1161

rs_modnn.exit1161:                                ; preds = %while.body.i1159.rs_modnn.exit1161_crit_edge, %if.else144.rs_modnn.exit1161_crit_edge
  %x.addr.0.lcssa.i1160 = phi i32 [ %add155, %if.else144.rs_modnn.exit1161_crit_edge ], [ %add.i1157, %while.body.i1159.rs_modnn.exit1161_crit_edge ]
  %arrayidx157 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1160
  %49 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx157, align 2
  %51 = and i16 %42, %conv
  %conv160 = xor i16 %50, %51
  br label %for.inc163

for.inc163:                                       ; preds = %rs_modnn.exit1161, %if.then137
  %storemerge = phi i16 [ %conv160, %rs_modnn.exit1161 ], [ %conv142, %if.then137 ]
  %52 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %storemerge, ptr %arrayidx133, align 2
  %inc164 = add nuw nsw i32 %i.31345, 1
  %exitcond1436.not = icmp eq i32 %inc164, %5
  br i1 %exitcond1436.not, label %for.inc166, label %for.inc163.for.body132_crit_edge

for.inc163.for.body132_crit_edge:                 ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132

for.inc166:                                       ; preds = %for.inc163
  %inc167 = add nuw nsw i32 %j.11347, 1
  %exitcond1437.not = icmp eq i32 %inc167, %5
  br i1 %exitcond1437.not, label %for.cond169.preheader, label %for.inc166.for.body132.lr.ph_crit_edge

for.inc166.for.body132.lr.ph_crit_edge:           ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132.lr.ph

for.body172:                                      ; preds = %for.body172.for.body172_crit_edge, %for.cond169.preheader.for.body172_crit_edge
  %syn_error.01351 = phi i16 [ %or1143, %for.body172.for.body172_crit_edge ], [ 0, %for.cond169.preheader.for.body172_crit_edge ]
  %i.41350 = phi i32 [ %inc182, %for.body172.for.body172_crit_edge ], [ 0, %for.cond169.preheader.for.body172_crit_edge ]
  %arrayidx173 = getelementptr i16, ptr %add.ptr13, i32 %i.41350
  %53 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx173, align 2
  %conv174 = zext i16 %54 to i32
  %or1143 = or i16 %54, %syn_error.01351
  %arrayidx179 = getelementptr i16, ptr %15, i32 %conv174
  %55 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx179, align 2
  store i16 %56, ptr %arrayidx173, align 2
  %inc182 = add nuw nsw i32 %i.41350, 1
  %exitcond1438.not = icmp eq i32 %inc182, %5
  br i1 %exitcond1438.not, label %for.end183, label %for.body172.for.body172_crit_edge

for.body172.for.body172_crit_edge:                ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body172

for.end183:                                       ; preds = %for.body172
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or1143)
  %tobool184.not = icmp eq i16 %or1143, 0
  br i1 %tobool184.not, label %for.end183.cleanup_crit_edge, label %for.end183.decode_crit_edge

for.end183.decode_crit_edge:                      ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode

for.end183.cleanup_crit_edge:                     ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode:                                           ; preds = %for.end183.decode_crit_edge, %for.body.decode_crit_edge
  %s.addr.0 = phi ptr [ %add.ptr13, %for.end183.decode_crit_edge ], [ %s, %for.body.decode_crit_edge ]
  %arrayidx187 = getelementptr i16, ptr %buffers, i32 1
  %mul188 = shl i32 %5, 1
  %57 = call ptr @memset(ptr %arrayidx187, i32 0, i32 %mul188)
  %58 = ptrtoint ptr %buffers to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %buffers, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_eras)
  %cmp190 = icmp sgt i32 %no_eras, 0
  br i1 %cmp190, label %if.then192, label %decode.if.end241_crit_edge

decode.if.end241_crit_edge:                       ; preds = %decode
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

if.then192:                                       ; preds = %decode
  %sub193 = add i32 %3, -1
  %59 = ptrtoint ptr %eras_pos to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %eras_pos, align 4
  %61 = add i32 %sub44, %60
  %sub196 = sub i32 %sub193, %61
  %mul197 = mul i32 %sub196, %9
  %62 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul197)
  %cmp.not10.i1163 = icmp sgt i32 %63, %mul197
  br i1 %cmp.not10.i1163, label %if.then192.rs_modnn.exit1173_crit_edge, label %while.body.lr.ph.i1164

if.then192.rs_modnn.exit1173_crit_edge:           ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1173

while.body.lr.ph.i1164:                           ; preds = %if.then192
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %1, align 4
  br label %while.body.i1171

while.body.i1171:                                 ; preds = %while.body.i1171.while.body.i1171_crit_edge, %while.body.lr.ph.i1164
  %x.addr.011.i1165 = phi i32 [ %mul197, %while.body.lr.ph.i1164 ], [ %add.i1169, %while.body.i1171.while.body.i1171_crit_edge ]
  %sub.i1166 = sub i32 %x.addr.011.i1165, %63
  %shr.i1167 = ashr i32 %sub.i1166, %65
  %and.i1168 = and i32 %sub.i1166, %63
  %add.i1169 = add i32 %shr.i1167, %and.i1168
  %cmp.not.i1170 = icmp slt i32 %add.i1169, %63
  br i1 %cmp.not.i1170, label %while.body.i1171.rs_modnn.exit1173_crit_edge, label %while.body.i1171.while.body.i1171_crit_edge

while.body.i1171.while.body.i1171_crit_edge:      ; preds = %while.body.i1171
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1171

while.body.i1171.rs_modnn.exit1173_crit_edge:     ; preds = %while.body.i1171
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1173

rs_modnn.exit1173:                                ; preds = %while.body.i1171.rs_modnn.exit1173_crit_edge, %if.then192.rs_modnn.exit1173_crit_edge
  %x.addr.0.lcssa.i1172 = phi i32 [ %mul197, %if.then192.rs_modnn.exit1173_crit_edge ], [ %add.i1169, %while.body.i1171.rs_modnn.exit1173_crit_edge ]
  %arrayidx199 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1172
  %66 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx199, align 2
  %68 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx187, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %no_eras)
  %cmp2021354 = icmp sgt i32 %no_eras, 1
  br i1 %cmp2021354, label %rs_modnn.exit1173.for.body204_crit_edge, label %rs_modnn.exit1173.if.end241_crit_edge

rs_modnn.exit1173.if.end241_crit_edge:            ; preds = %rs_modnn.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

rs_modnn.exit1173.for.body204_crit_edge:          ; preds = %rs_modnn.exit1173
  br label %for.body204

for.cond201.loopexit:                             ; preds = %for.inc236
  %exitcond1439.not = icmp eq i32 %add212, %no_eras
  br i1 %exitcond1439.not, label %for.cond201.loopexit.if.end241_crit_edge, label %for.cond201.loopexit.for.body204_crit_edge

for.cond201.loopexit.for.body204_crit_edge:       ; preds = %for.cond201.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body204

for.cond201.loopexit.if.end241_crit_edge:         ; preds = %for.cond201.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

for.body204:                                      ; preds = %for.cond201.loopexit.for.body204_crit_edge, %rs_modnn.exit1173.for.body204_crit_edge
  %i.51355 = phi i32 [ %add212, %for.cond201.loopexit.for.body204_crit_edge ], [ 1, %rs_modnn.exit1173.for.body204_crit_edge ]
  %arrayidx206 = getelementptr i32, ptr %eras_pos, i32 %i.51355
  %69 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx206, align 4
  %71 = add i32 %sub44, %70
  %sub208 = sub i32 %sub193, %71
  %mul209 = mul i32 %sub208, %9
  %72 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %mul209)
  %cmp.not10.i1175 = icmp sgt i32 %73, %mul209
  br i1 %cmp.not10.i1175, label %for.body204.for.body216.lr.ph_crit_edge, label %while.body.lr.ph.i1176

for.body204.for.body216.lr.ph_crit_edge:          ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body216.lr.ph

while.body.lr.ph.i1176:                           ; preds = %for.body204
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %1, align 4
  br label %while.body.i1183

while.body.i1183:                                 ; preds = %while.body.i1183.while.body.i1183_crit_edge, %while.body.lr.ph.i1176
  %x.addr.011.i1177 = phi i32 [ %mul209, %while.body.lr.ph.i1176 ], [ %add.i1181, %while.body.i1183.while.body.i1183_crit_edge ]
  %sub.i1178 = sub i32 %x.addr.011.i1177, %73
  %shr.i1179 = ashr i32 %sub.i1178, %75
  %and.i1180 = and i32 %sub.i1178, %73
  %add.i1181 = add i32 %shr.i1179, %and.i1180
  %cmp.not.i1182 = icmp slt i32 %add.i1181, %73
  br i1 %cmp.not.i1182, label %while.body.i1183.for.body216.lr.ph_crit_edge, label %while.body.i1183.while.body.i1183_crit_edge

while.body.i1183.while.body.i1183_crit_edge:      ; preds = %while.body.i1183
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1183

while.body.i1183.for.body216.lr.ph_crit_edge:     ; preds = %while.body.i1183
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body216.lr.ph

for.body216.lr.ph:                                ; preds = %while.body.i1183.for.body216.lr.ph_crit_edge, %for.body204.for.body216.lr.ph_crit_edge
  %x.addr.0.lcssa.i1184 = phi i32 [ %mul209, %for.body204.for.body216.lr.ph_crit_edge ], [ %add.i1181, %while.body.i1183.for.body216.lr.ph_crit_edge ]
  %add212 = add nuw nsw i32 %i.51355, 1
  %conv225 = and i32 %x.addr.0.lcssa.i1184, 65535
  br label %for.body216

for.body216:                                      ; preds = %for.inc236.for.body216_crit_edge, %for.body216.lr.ph
  %j.21353 = phi i32 [ %add212, %for.body216.lr.ph ], [ %sub217, %for.inc236.for.body216_crit_edge ]
  %sub217 = add nsw i32 %j.21353, -1
  %arrayidx218 = getelementptr i16, ptr %buffers, i32 %sub217
  %76 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx218, align 2
  %idxprom219 = zext i16 %77 to i32
  %arrayidx220 = getelementptr i16, ptr %15, i32 %idxprom219
  %78 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx220, align 2
  %conv221 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv221)
  %cmp222.not = icmp eq i32 %3, %conv221
  br i1 %cmp222.not, label %for.body216.for.inc236_crit_edge, label %if.then224

for.body216.for.inc236_crit_edge:                 ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc236

if.then224:                                       ; preds = %for.body216
  %add227 = add nuw nsw i32 %conv225, %conv221
  %80 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add227)
  %cmp.not10.i1187 = icmp sgt i32 %81, %add227
  br i1 %cmp.not10.i1187, label %if.then224.rs_modnn.exit1197_crit_edge, label %while.body.lr.ph.i1188

if.then224.rs_modnn.exit1197_crit_edge:           ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1197

while.body.lr.ph.i1188:                           ; preds = %if.then224
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  br label %while.body.i1195

while.body.i1195:                                 ; preds = %while.body.i1195.while.body.i1195_crit_edge, %while.body.lr.ph.i1188
  %x.addr.011.i1189 = phi i32 [ %add227, %while.body.lr.ph.i1188 ], [ %add.i1193, %while.body.i1195.while.body.i1195_crit_edge ]
  %sub.i1190 = sub i32 %x.addr.011.i1189, %81
  %shr.i1191 = ashr i32 %sub.i1190, %83
  %and.i1192 = and i32 %sub.i1190, %81
  %add.i1193 = add i32 %shr.i1191, %and.i1192
  %cmp.not.i1194 = icmp slt i32 %add.i1193, %81
  br i1 %cmp.not.i1194, label %while.body.i1195.rs_modnn.exit1197_crit_edge, label %while.body.i1195.while.body.i1195_crit_edge

while.body.i1195.while.body.i1195_crit_edge:      ; preds = %while.body.i1195
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1195

while.body.i1195.rs_modnn.exit1197_crit_edge:     ; preds = %while.body.i1195
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1197

rs_modnn.exit1197:                                ; preds = %while.body.i1195.rs_modnn.exit1197_crit_edge, %if.then224.rs_modnn.exit1197_crit_edge
  %x.addr.0.lcssa.i1196 = phi i32 [ %add227, %if.then224.rs_modnn.exit1197_crit_edge ], [ %add.i1193, %while.body.i1195.rs_modnn.exit1197_crit_edge ]
  %arrayidx229 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1196
  %84 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx229, align 2
  %arrayidx231 = getelementptr i16, ptr %buffers, i32 %j.21353
  %86 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx231, align 2
  %xor2331142 = xor i16 %87, %85
  store i16 %xor2331142, ptr %arrayidx231, align 2
  br label %for.inc236

for.inc236:                                       ; preds = %rs_modnn.exit1197, %for.body216.for.inc236_crit_edge
  %cmp214 = icmp sgt i32 %j.21353, 1
  br i1 %cmp214, label %for.inc236.for.body216_crit_edge, label %for.cond201.loopexit

for.inc236.for.body216_crit_edge:                 ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body216

if.end241:                                        ; preds = %for.cond201.loopexit.if.end241_crit_edge, %rs_modnn.exit1173.if.end241_crit_edge, %decode.if.end241_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp2441356 = icmp ult i32 %5, 2147483647
  br i1 %cmp2441356, label %if.end241.for.body246_crit_edge, label %if.end241.while.cond.preheader_crit_edge

if.end241.while.cond.preheader_crit_edge:         ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.end241.for.body246_crit_edge:                  ; preds = %if.end241
  br label %for.body246

while.cond.preheader:                             ; preds = %for.body246.while.cond.preheader_crit_edge, %if.end241.while.cond.preheader_crit_edge
  %inc2541368 = add i32 %no_eras, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2541368, i32 %5)
  %cmp255.not1369 = icmp sgt i32 %inc2541368, %5
  br i1 %cmp255.not1369, label %while.cond.preheader.for.cond374.preheader_crit_edge, label %for.cond257.preheader.lr.ph

while.cond.preheader.for.cond374.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond374.preheader

for.cond257.preheader.lr.ph:                      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3051363 = icmp sgt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp345.not1366 = icmp slt i32 %5, 0
  %arrayidx366 = getelementptr i16, ptr %add.ptr18, i32 1
  br label %for.cond257.preheader

for.body246:                                      ; preds = %for.body246.for.body246_crit_edge, %if.end241.for.body246_crit_edge
  %i.61357 = phi i32 [ %inc252, %for.body246.for.body246_crit_edge ], [ 0, %if.end241.for.body246_crit_edge ]
  %arrayidx247 = getelementptr i16, ptr %buffers, i32 %i.61357
  %88 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx247, align 2
  %idxprom248 = zext i16 %89 to i32
  %arrayidx249 = getelementptr i16, ptr %15, i32 %idxprom248
  %90 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx249, align 2
  %arrayidx250 = getelementptr i16, ptr %add.ptr18, i32 %i.61357
  %92 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx250, align 2
  %inc252 = add nuw nsw i32 %i.61357, 1
  %exitcond1440.not = icmp eq i32 %i.61357, %5
  br i1 %exitcond1440.not, label %for.body246.while.cond.preheader_crit_edge, label %for.body246.for.body246_crit_edge

for.body246.for.body246_crit_edge:                ; preds = %for.body246
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body246

for.body246.while.cond.preheader_crit_edge:       ; preds = %for.body246
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.cond257.preheader:                            ; preds = %if.end373.for.cond257.preheader_crit_edge, %for.cond257.preheader.lr.ph
  %inc2541373 = phi i32 [ %inc2541368, %for.cond257.preheader.lr.ph ], [ %inc254, %if.end373.for.cond257.preheader_crit_edge ]
  %r.01371 = phi i32 [ %no_eras, %for.cond257.preheader.lr.ph ], [ %inc2541373, %if.end373.for.cond257.preheader_crit_edge ]
  %el.01370 = phi i32 [ %no_eras, %for.cond257.preheader.lr.ph ], [ %el.2, %if.end373.for.cond257.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc2541373)
  %cmp2581358 = icmp sgt i32 %inc2541373, 0
  br i1 %cmp2581358, label %for.cond257.preheader.for.body260_crit_edge, label %for.cond257.preheader.for.end290_crit_edge

for.cond257.preheader.for.end290_crit_edge:       ; preds = %for.cond257.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end290

for.cond257.preheader.for.body260_crit_edge:      ; preds = %for.cond257.preheader
  br label %for.body260

for.cond374.preheader:                            ; preds = %if.end373.for.cond374.preheader_crit_edge, %while.cond.preheader.for.cond374.preheader_crit_edge
  br i1 %cmp2441356, label %for.cond374.preheader.for.body378_crit_edge, label %for.cond374.preheader.cleanup_crit_edge

for.cond374.preheader.cleanup_crit_edge:          ; preds = %for.cond374.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond374.preheader.for.body378_crit_edge:      ; preds = %for.cond374.preheader
  br label %for.body378

for.body260:                                      ; preds = %for.inc288.for.body260_crit_edge, %for.cond257.preheader.for.body260_crit_edge
  %discr_r.01361 = phi i16 [ %discr_r.1, %for.inc288.for.body260_crit_edge ], [ 0, %for.cond257.preheader.for.body260_crit_edge ]
  %i.71359 = phi i32 [ %inc289, %for.inc288.for.body260_crit_edge ], [ 0, %for.cond257.preheader.for.body260_crit_edge ]
  %arrayidx261 = getelementptr i16, ptr %buffers, i32 %i.71359
  %93 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx261, align 2
  %conv262 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp263.not = icmp eq i16 %94, 0
  br i1 %cmp263.not, label %for.body260.for.inc288_crit_edge, label %land.lhs.true

for.body260.for.inc288_crit_edge:                 ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc288

land.lhs.true:                                    ; preds = %for.body260
  %sub266 = sub i32 %r.01371, %i.71359
  %arrayidx267 = getelementptr i16, ptr %s.addr.0, i32 %sub266
  %95 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx267, align 2
  %conv268 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv268)
  %cmp269.not = icmp eq i32 %3, %conv268
  br i1 %cmp269.not, label %land.lhs.true.for.inc288_crit_edge, label %if.then271

land.lhs.true.for.inc288_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc288

if.then271:                                       ; preds = %land.lhs.true
  %arrayidx274 = getelementptr i16, ptr %15, i32 %conv262
  %97 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx274, align 2
  %conv275 = zext i16 %98 to i32
  %add280 = add nuw nsw i32 %conv275, %conv268
  %99 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add280)
  %cmp.not10.i1199 = icmp sgt i32 %100, %add280
  br i1 %cmp.not10.i1199, label %if.then271.rs_modnn.exit1209_crit_edge, label %while.body.lr.ph.i1200

if.then271.rs_modnn.exit1209_crit_edge:           ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1209

while.body.lr.ph.i1200:                           ; preds = %if.then271
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %1, align 4
  br label %while.body.i1207

while.body.i1207:                                 ; preds = %while.body.i1207.while.body.i1207_crit_edge, %while.body.lr.ph.i1200
  %x.addr.011.i1201 = phi i32 [ %add280, %while.body.lr.ph.i1200 ], [ %add.i1205, %while.body.i1207.while.body.i1207_crit_edge ]
  %sub.i1202 = sub i32 %x.addr.011.i1201, %100
  %shr.i1203 = ashr i32 %sub.i1202, %102
  %and.i1204 = and i32 %sub.i1202, %100
  %add.i1205 = add i32 %shr.i1203, %and.i1204
  %cmp.not.i1206 = icmp slt i32 %add.i1205, %100
  br i1 %cmp.not.i1206, label %while.body.i1207.rs_modnn.exit1209_crit_edge, label %while.body.i1207.while.body.i1207_crit_edge

while.body.i1207.while.body.i1207_crit_edge:      ; preds = %while.body.i1207
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1207

while.body.i1207.rs_modnn.exit1209_crit_edge:     ; preds = %while.body.i1207
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1209

rs_modnn.exit1209:                                ; preds = %while.body.i1207.rs_modnn.exit1209_crit_edge, %if.then271.rs_modnn.exit1209_crit_edge
  %x.addr.0.lcssa.i1208 = phi i32 [ %add280, %if.then271.rs_modnn.exit1209_crit_edge ], [ %add.i1205, %while.body.i1207.rs_modnn.exit1209_crit_edge ]
  %arrayidx282 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1208
  %103 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx282, align 2
  %xor2851141 = xor i16 %104, %discr_r.01361
  br label %for.inc288

for.inc288:                                       ; preds = %rs_modnn.exit1209, %land.lhs.true.for.inc288_crit_edge, %for.body260.for.inc288_crit_edge
  %discr_r.1 = phi i16 [ %xor2851141, %rs_modnn.exit1209 ], [ %discr_r.01361, %land.lhs.true.for.inc288_crit_edge ], [ %discr_r.01361, %for.body260.for.inc288_crit_edge ]
  %inc289 = add nuw nsw i32 %i.71359, 1
  %exitcond1441.not = icmp eq i32 %inc289, %inc2541373
  br i1 %exitcond1441.not, label %for.inc288.for.end290_crit_edge, label %for.inc288.for.body260_crit_edge

for.inc288.for.body260_crit_edge:                 ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body260

for.inc288.for.end290_crit_edge:                  ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end290

for.end290:                                       ; preds = %for.inc288.for.end290_crit_edge, %for.cond257.preheader.for.end290_crit_edge
  %discr_r.0.lcssa = phi i16 [ 0, %for.cond257.preheader.for.end290_crit_edge ], [ %discr_r.1, %for.inc288.for.end290_crit_edge ]
  %idxprom291 = zext i16 %discr_r.0.lcssa to i32
  %arrayidx292 = getelementptr i16, ptr %15, i32 %idxprom291
  %105 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx292, align 2
  %conv293 = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv293)
  %cmp294 = icmp eq i32 %3, %conv293
  br i1 %cmp294, label %if.then296, label %if.else301

if.then296:                                       ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #8
  %107 = call ptr @memmove(ptr %arrayidx366, ptr %add.ptr18, i32 %mul188)
  %108 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv, ptr %add.ptr18, align 2
  br label %if.end373

if.else301:                                       ; preds = %for.end290
  %109 = ptrtoint ptr %buffers to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %buffers, align 2
  %111 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %add.ptr23, align 2
  br i1 %cmp3051363, label %if.else301.for.body307_crit_edge, label %if.else301.for.end335_crit_edge

if.else301.for.end335_crit_edge:                  ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end335

if.else301.for.body307_crit_edge:                 ; preds = %if.else301
  br label %for.body307

for.body307:                                      ; preds = %for.inc333.for.body307_crit_edge, %if.else301.for.body307_crit_edge
  %i.81364 = phi i32 [ %add328, %for.inc333.for.body307_crit_edge ], [ 0, %if.else301.for.body307_crit_edge ]
  %arrayidx308 = getelementptr i16, ptr %add.ptr18, i32 %i.81364
  %112 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx308, align 2
  %conv309 = zext i16 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv309)
  %cmp310.not = icmp eq i32 %3, %conv309
  %add328 = add nuw nsw i32 %i.81364, 1
  %arrayidx329 = getelementptr i16, ptr %buffers, i32 %add328
  %114 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx329, align 2
  br i1 %cmp310.not, label %for.body307.for.inc333_crit_edge, label %if.then312

for.body307.for.inc333_crit_edge:                 ; preds = %for.body307
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc333

if.then312:                                       ; preds = %for.body307
  %add319 = add nuw nsw i32 %conv309, %conv293
  %116 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %add319)
  %cmp.not10.i1211 = icmp sgt i32 %117, %add319
  br i1 %cmp.not10.i1211, label %if.then312.rs_modnn.exit1221_crit_edge, label %while.body.lr.ph.i1212

if.then312.rs_modnn.exit1221_crit_edge:           ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1221

while.body.lr.ph.i1212:                           ; preds = %if.then312
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %1, align 4
  br label %while.body.i1219

while.body.i1219:                                 ; preds = %while.body.i1219.while.body.i1219_crit_edge, %while.body.lr.ph.i1212
  %x.addr.011.i1213 = phi i32 [ %add319, %while.body.lr.ph.i1212 ], [ %add.i1217, %while.body.i1219.while.body.i1219_crit_edge ]
  %sub.i1214 = sub i32 %x.addr.011.i1213, %117
  %shr.i1215 = ashr i32 %sub.i1214, %119
  %and.i1216 = and i32 %sub.i1214, %117
  %add.i1217 = add i32 %shr.i1215, %and.i1216
  %cmp.not.i1218 = icmp slt i32 %add.i1217, %117
  br i1 %cmp.not.i1218, label %while.body.i1219.rs_modnn.exit1221_crit_edge, label %while.body.i1219.while.body.i1219_crit_edge

while.body.i1219.while.body.i1219_crit_edge:      ; preds = %while.body.i1219
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1219

while.body.i1219.rs_modnn.exit1221_crit_edge:     ; preds = %while.body.i1219
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1221

rs_modnn.exit1221:                                ; preds = %while.body.i1219.rs_modnn.exit1221_crit_edge, %if.then312.rs_modnn.exit1221_crit_edge
  %x.addr.0.lcssa.i1220 = phi i32 [ %add319, %if.then312.rs_modnn.exit1221_crit_edge ], [ %add.i1217, %while.body.i1219.rs_modnn.exit1221_crit_edge ]
  %arrayidx321 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1220
  %120 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx321, align 2
  %xor3231140 = xor i16 %121, %115
  br label %for.inc333

for.inc333:                                       ; preds = %rs_modnn.exit1221, %for.body307.for.inc333_crit_edge
  %xor3231140.sink = phi i16 [ %xor3231140, %rs_modnn.exit1221 ], [ %115, %for.body307.for.inc333_crit_edge ]
  %arrayidx326 = getelementptr i16, ptr %add.ptr23, i32 %add328
  %122 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %xor3231140.sink, ptr %arrayidx326, align 2
  %exitcond1442.not = icmp eq i32 %add328, %5
  br i1 %exitcond1442.not, label %for.inc333.for.end335_crit_edge, label %for.inc333.for.body307_crit_edge

for.inc333.for.body307_crit_edge:                 ; preds = %for.inc333
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body307

for.inc333.for.end335_crit_edge:                  ; preds = %for.inc333
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end335

for.end335:                                       ; preds = %for.inc333.for.end335_crit_edge, %if.else301.for.end335_crit_edge
  %mul336 = shl i32 %el.01370, 1
  %sub338 = add i32 %r.01371, %no_eras
  call void @__sanitizer_cov_trace_cmp4(i32 %mul336, i32 %sub338)
  %cmp339.not = icmp sgt i32 %mul336, %sub338
  br i1 %cmp339.not, label %if.else365, label %if.then341

if.then341:                                       ; preds = %for.end335
  %add337 = sub i32 %no_eras, %el.01370
  %sub343 = add i32 %add337, %inc2541373
  br i1 %cmp345.not1366, label %if.then341.if.end370_crit_edge, label %if.then341.for.body347_crit_edge

if.then341.for.body347_crit_edge:                 ; preds = %if.then341
  br label %for.body347

if.then341.if.end370_crit_edge:                   ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370

for.body347:                                      ; preds = %cond.end.for.body347_crit_edge, %if.then341.for.body347_crit_edge
  %i.91367 = phi i32 [ %inc363, %cond.end.for.body347_crit_edge ], [ 0, %if.then341.for.body347_crit_edge ]
  %arrayidx348 = getelementptr i16, ptr %buffers, i32 %i.91367
  %123 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx348, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp350 = icmp eq i16 %124, 0
  br i1 %cmp350, label %for.body347.cond.end_crit_edge, label %cond.false

for.body347.cond.end_crit_edge:                   ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body347
  %conv349 = zext i16 %124 to i32
  %arrayidx354 = getelementptr i16, ptr %15, i32 %conv349
  %125 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx354, align 2
  %conv355 = zext i16 %126 to i32
  %sub357 = sub nsw i32 %conv355, %conv293
  %add358 = add i32 %sub357, %3
  %127 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %add358)
  %cmp.not10.i1223 = icmp sgt i32 %128, %add358
  br i1 %cmp.not10.i1223, label %cond.false.cond.end_crit_edge, label %while.body.lr.ph.i1224

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

while.body.lr.ph.i1224:                           ; preds = %cond.false
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %1, align 4
  br label %while.body.i1231

while.body.i1231:                                 ; preds = %while.body.i1231.while.body.i1231_crit_edge, %while.body.lr.ph.i1224
  %x.addr.011.i1225 = phi i32 [ %add358, %while.body.lr.ph.i1224 ], [ %add.i1229, %while.body.i1231.while.body.i1231_crit_edge ]
  %sub.i1226 = sub i32 %x.addr.011.i1225, %128
  %shr.i1227 = ashr i32 %sub.i1226, %130
  %and.i1228 = and i32 %sub.i1226, %128
  %add.i1229 = add i32 %shr.i1227, %and.i1228
  %cmp.not.i1230 = icmp slt i32 %add.i1229, %128
  br i1 %cmp.not.i1230, label %while.body.i1231.cond.end_crit_edge, label %while.body.i1231.while.body.i1231_crit_edge

while.body.i1231.while.body.i1231_crit_edge:      ; preds = %while.body.i1231
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1231

while.body.i1231.cond.end_crit_edge:              ; preds = %while.body.i1231
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end:                                         ; preds = %while.body.i1231.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %for.body347.cond.end_crit_edge
  %cond = phi i32 [ %3, %for.body347.cond.end_crit_edge ], [ %add358, %cond.false.cond.end_crit_edge ], [ %add.i1229, %while.body.i1231.cond.end_crit_edge ]
  %conv360 = trunc i32 %cond to i16
  %arrayidx361 = getelementptr i16, ptr %add.ptr18, i32 %i.91367
  %131 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv360, ptr %arrayidx361, align 2
  %inc363 = add i32 %i.91367, 1
  %cmp345.not = icmp sgt i32 %inc363, %5
  br i1 %cmp345.not, label %cond.end.if.end370_crit_edge, label %cond.end.for.body347_crit_edge

cond.end.for.body347_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body347

cond.end.if.end370_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370

if.else365:                                       ; preds = %for.end335
  call void @__sanitizer_cov_trace_pc() #8
  %132 = call ptr @memmove(ptr %arrayidx366, ptr %add.ptr18, i32 %mul188)
  %133 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv, ptr %add.ptr18, align 2
  br label %if.end370

if.end370:                                        ; preds = %if.else365, %cond.end.if.end370_crit_edge, %if.then341.if.end370_crit_edge
  %el.1 = phi i32 [ %el.01370, %if.else365 ], [ %sub343, %if.then341.if.end370_crit_edge ], [ %sub343, %cond.end.if.end370_crit_edge ]
  %134 = call ptr @memcpy(ptr %buffers, ptr %add.ptr23, i32 %mul17)
  br label %if.end373

if.end373:                                        ; preds = %if.end370, %if.then296
  %el.2 = phi i32 [ %el.01370, %if.then296 ], [ %el.1, %if.end370 ]
  %inc254 = add i32 %inc2541373, 1
  %cmp255.not = icmp sgt i32 %inc254, %5
  br i1 %cmp255.not, label %if.end373.for.cond374.preheader_crit_edge, label %if.end373.for.cond257.preheader_crit_edge

if.end373.for.cond257.preheader_crit_edge:        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond257.preheader

if.end373.for.cond374.preheader_crit_edge:        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond374.preheader

for.body378:                                      ; preds = %for.body378.for.body378_crit_edge, %for.cond374.preheader.for.body378_crit_edge
  %i.101378 = phi i32 [ %inc390, %for.body378.for.body378_crit_edge ], [ 0, %for.cond374.preheader.for.body378_crit_edge ]
  %deg_lambda.01377 = phi i32 [ %spec.select1148, %for.body378.for.body378_crit_edge ], [ 0, %for.cond374.preheader.for.body378_crit_edge ]
  %arrayidx379 = getelementptr i16, ptr %buffers, i32 %i.101378
  %135 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx379, align 2
  %idxprom380 = zext i16 %136 to i32
  %arrayidx381 = getelementptr i16, ptr %15, i32 %idxprom380
  %137 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx381, align 2
  store i16 %138, ptr %arrayidx379, align 2
  %conv384 = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv384)
  %cmp385.not = icmp eq i32 %3, %conv384
  %spec.select1148 = select i1 %cmp385.not, i32 %deg_lambda.01377, i32 %i.101378
  %inc390 = add nuw nsw i32 %i.101378, 1
  %exitcond1444.not = icmp eq i32 %i.101378, %5
  br i1 %exitcond1444.not, label %for.end391, label %for.body378.for.body378_crit_edge

for.body378.for.body378_crit_edge:                ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body378

for.end391:                                       ; preds = %for.body378
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1148)
  %cmp392 = icmp eq i32 %spec.select1148, 0
  br i1 %cmp392, label %for.end391.cleanup_crit_edge, label %if.end395

for.end391.cleanup_crit_edge:                     ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end395:                                        ; preds = %for.end391
  %arrayidx396 = getelementptr i16, ptr %add.ptr38, i32 1
  %139 = call ptr @memcpy(ptr %arrayidx396, ptr %arrayidx187, i32 %mul188)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp401.not1385 = icmp slt i32 %3, 1
  br i1 %cmp401.not1385, label %if.end395.for.end452_crit_edge, label %for.cond404.preheader.lr.ph

if.end395.for.end452_crit_edge:                   ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end452

for.cond404.preheader.lr.ph:                      ; preds = %if.end395
  %sub399 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1148)
  %cmp4051380 = icmp sgt i32 %spec.select1148, 0
  br label %for.cond404.preheader

for.cond404.preheader:                            ; preds = %rs_modnn.exit1257.for.cond404.preheader_crit_edge, %for.cond404.preheader.lr.ph
  %count.01389 = phi i32 [ 0, %for.cond404.preheader.lr.ph ], [ %count.1, %rs_modnn.exit1257.for.cond404.preheader_crit_edge ]
  %k.01387 = phi i32 [ %sub399, %for.cond404.preheader.lr.ph ], [ %x.addr.0.lcssa.i1256, %rs_modnn.exit1257.for.cond404.preheader_crit_edge ]
  %i.111386 = phi i32 [ 1, %for.cond404.preheader.lr.ph ], [ %inc449, %rs_modnn.exit1257.for.cond404.preheader_crit_edge ]
  br i1 %cmp4051380, label %for.cond404.preheader.for.body407_crit_edge, label %for.cond404.preheader.for.inc448_crit_edge

for.cond404.preheader.for.inc448_crit_edge:       ; preds = %for.cond404.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc448

for.cond404.preheader.for.body407_crit_edge:      ; preds = %for.cond404.preheader
  br label %for.body407

for.body407:                                      ; preds = %for.inc427.for.body407_crit_edge, %for.cond404.preheader.for.body407_crit_edge
  %q.01383 = phi i16 [ %q.1, %for.inc427.for.body407_crit_edge ], [ 1, %for.cond404.preheader.for.body407_crit_edge ]
  %j.31381 = phi i32 [ %dec428, %for.inc427.for.body407_crit_edge ], [ %spec.select1148, %for.cond404.preheader.for.body407_crit_edge ]
  %arrayidx408 = getelementptr i16, ptr %add.ptr38, i32 %j.31381
  %140 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx408, align 2
  %conv409 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv409)
  %cmp410.not = icmp eq i32 %3, %conv409
  br i1 %cmp410.not, label %for.body407.for.inc427_crit_edge, label %if.then412

for.body407.for.inc427_crit_edge:                 ; preds = %for.body407
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc427

if.then412:                                       ; preds = %for.body407
  %add415 = add nuw i32 %j.31381, %conv409
  %142 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %add415)
  %cmp.not10.i1235 = icmp sgt i32 %143, %add415
  br i1 %cmp.not10.i1235, label %if.then412.rs_modnn.exit1245_crit_edge, label %while.body.lr.ph.i1236

if.then412.rs_modnn.exit1245_crit_edge:           ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1245

while.body.lr.ph.i1236:                           ; preds = %if.then412
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %1, align 4
  br label %while.body.i1243

while.body.i1243:                                 ; preds = %while.body.i1243.while.body.i1243_crit_edge, %while.body.lr.ph.i1236
  %x.addr.011.i1237 = phi i32 [ %add415, %while.body.lr.ph.i1236 ], [ %add.i1241, %while.body.i1243.while.body.i1243_crit_edge ]
  %sub.i1238 = sub i32 %x.addr.011.i1237, %143
  %shr.i1239 = ashr i32 %sub.i1238, %145
  %and.i1240 = and i32 %sub.i1238, %143
  %add.i1241 = add i32 %shr.i1239, %and.i1240
  %cmp.not.i1242 = icmp slt i32 %add.i1241, %143
  br i1 %cmp.not.i1242, label %while.body.i1243.rs_modnn.exit1245_crit_edge, label %while.body.i1243.while.body.i1243_crit_edge

while.body.i1243.while.body.i1243_crit_edge:      ; preds = %while.body.i1243
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1243

while.body.i1243.rs_modnn.exit1245_crit_edge:     ; preds = %while.body.i1243
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1245

rs_modnn.exit1245:                                ; preds = %while.body.i1243.rs_modnn.exit1245_crit_edge, %if.then412.rs_modnn.exit1245_crit_edge
  %x.addr.0.lcssa.i1244 = phi i32 [ %add415, %if.then412.rs_modnn.exit1245_crit_edge ], [ %add.i1241, %while.body.i1243.rs_modnn.exit1245_crit_edge ]
  %conv417 = trunc i32 %x.addr.0.lcssa.i1244 to i16
  %146 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv417, ptr %arrayidx408, align 2
  %idxprom420 = and i32 %x.addr.0.lcssa.i1244, 65535
  %arrayidx421 = getelementptr i16, ptr %13, i32 %idxprom420
  %147 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx421, align 2
  %xor4241139 = xor i16 %148, %q.01383
  br label %for.inc427

for.inc427:                                       ; preds = %rs_modnn.exit1245, %for.body407.for.inc427_crit_edge
  %q.1 = phi i16 [ %xor4241139, %rs_modnn.exit1245 ], [ %q.01383, %for.body407.for.inc427_crit_edge ]
  %dec428 = add nsw i32 %j.31381, -1
  %cmp405 = icmp sgt i32 %j.31381, 1
  br i1 %cmp405, label %for.inc427.for.body407_crit_edge, label %for.end429

for.inc427.for.body407_crit_edge:                 ; preds = %for.inc427
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body407

for.end429:                                       ; preds = %for.inc427
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %q.1)
  %cmp431.not = icmp eq i16 %q.1, 0
  br i1 %cmp431.not, label %if.end434, label %for.end429.for.inc448_crit_edge

for.end429.for.inc448_crit_edge:                  ; preds = %for.end429
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc448

if.end434:                                        ; preds = %for.end429
  call void @__sanitizer_cov_trace_cmp4(i32 %k.01387, i32 %sub44)
  %cmp435 = icmp slt i32 %k.01387, %sub44
  br i1 %cmp435, label %if.end434.cleanup_crit_edge, label %if.end438

if.end434.cleanup_crit_edge:                      ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end438:                                        ; preds = %if.end434
  %conv439 = trunc i32 %i.111386 to i16
  %arrayidx440 = getelementptr i16, ptr %add.ptr33, i32 %count.01389
  %149 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv439, ptr %arrayidx440, align 2
  %conv441 = trunc i32 %k.01387 to i16
  %arrayidx442 = getelementptr i16, ptr %add.ptr43, i32 %count.01389
  %150 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv441, ptr %arrayidx442, align 2
  %inc443 = add i32 %count.01389, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc443, i32 %spec.select1148)
  %cmp444 = icmp eq i32 %inc443, %spec.select1148
  br i1 %cmp444, label %if.end438.for.end452_crit_edge, label %if.end438.for.inc448_crit_edge

if.end438.for.inc448_crit_edge:                   ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc448

if.end438.for.end452_crit_edge:                   ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end452

for.inc448:                                       ; preds = %if.end438.for.inc448_crit_edge, %for.end429.for.inc448_crit_edge, %for.cond404.preheader.for.inc448_crit_edge
  %count.1 = phi i32 [ %count.01389, %for.end429.for.inc448_crit_edge ], [ %inc443, %if.end438.for.inc448_crit_edge ], [ %count.01389, %for.cond404.preheader.for.inc448_crit_edge ]
  %inc449 = add i32 %i.111386, 1
  %add450 = add i32 %k.01387, %11
  %151 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %add450)
  %cmp.not10.i1247 = icmp sgt i32 %152, %add450
  br i1 %cmp.not10.i1247, label %for.inc448.rs_modnn.exit1257_crit_edge, label %while.body.lr.ph.i1248

for.inc448.rs_modnn.exit1257_crit_edge:           ; preds = %for.inc448
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1257

while.body.lr.ph.i1248:                           ; preds = %for.inc448
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %1, align 4
  br label %while.body.i1255

while.body.i1255:                                 ; preds = %while.body.i1255.while.body.i1255_crit_edge, %while.body.lr.ph.i1248
  %x.addr.011.i1249 = phi i32 [ %add450, %while.body.lr.ph.i1248 ], [ %add.i1253, %while.body.i1255.while.body.i1255_crit_edge ]
  %sub.i1250 = sub i32 %x.addr.011.i1249, %152
  %shr.i1251 = ashr i32 %sub.i1250, %154
  %and.i1252 = and i32 %sub.i1250, %152
  %add.i1253 = add i32 %shr.i1251, %and.i1252
  %cmp.not.i1254 = icmp slt i32 %add.i1253, %152
  br i1 %cmp.not.i1254, label %while.body.i1255.rs_modnn.exit1257_crit_edge, label %while.body.i1255.while.body.i1255_crit_edge

while.body.i1255.while.body.i1255_crit_edge:      ; preds = %while.body.i1255
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1255

while.body.i1255.rs_modnn.exit1257_crit_edge:     ; preds = %while.body.i1255
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1257

rs_modnn.exit1257:                                ; preds = %while.body.i1255.rs_modnn.exit1257_crit_edge, %for.inc448.rs_modnn.exit1257_crit_edge
  %x.addr.0.lcssa.i1256 = phi i32 [ %add450, %for.inc448.rs_modnn.exit1257_crit_edge ], [ %add.i1253, %while.body.i1255.rs_modnn.exit1257_crit_edge ]
  %cmp401.not = icmp sgt i32 %inc449, %3
  br i1 %cmp401.not, label %rs_modnn.exit1257.for.end452_crit_edge, label %rs_modnn.exit1257.for.cond404.preheader_crit_edge

rs_modnn.exit1257.for.cond404.preheader_crit_edge: ; preds = %rs_modnn.exit1257
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond404.preheader

rs_modnn.exit1257.for.end452_crit_edge:           ; preds = %rs_modnn.exit1257
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end452

for.end452:                                       ; preds = %rs_modnn.exit1257.for.end452_crit_edge, %if.end438.for.end452_crit_edge, %if.end395.for.end452_crit_edge
  %count.2 = phi i32 [ 0, %if.end395.for.end452_crit_edge ], [ %spec.select1148, %if.end438.for.end452_crit_edge ], [ %count.1, %rs_modnn.exit1257.for.end452_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select1148, i32 %count.2)
  %cmp453.not = icmp eq i32 %spec.select1148, %count.2
  br i1 %cmp453.not, label %if.end456, label %for.end452.cleanup_crit_edge

for.end452.cleanup_crit_edge:                     ; preds = %for.end452
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end456:                                        ; preds = %for.end452
  %sub457 = add i32 %spec.select1148, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub457)
  %cmp459.not1397 = icmp slt i32 %sub457, 0
  br i1 %cmp459.not1397, label %if.end456.for.cond597.preheader_crit_edge, label %if.end456.for.cond462.preheader_crit_edge

if.end456.for.cond462.preheader_crit_edge:        ; preds = %if.end456
  br label %for.cond462.preheader

if.end456.for.cond597.preheader_crit_edge:        ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond597.preheader

for.cond462.preheader:                            ; preds = %for.end492.for.cond462.preheader_crit_edge, %if.end456.for.cond462.preheader_crit_edge
  %i.121398 = phi i32 [ %inc497, %for.end492.for.cond462.preheader_crit_edge ], [ 0, %if.end456.for.cond462.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.121398)
  %cmp4631392 = icmp sgt i32 %i.121398, -1
  br i1 %cmp4631392, label %for.cond462.preheader.for.body465_crit_edge, label %for.cond462.preheader.for.end492_crit_edge

for.cond462.preheader.for.end492_crit_edge:       ; preds = %for.cond462.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end492

for.cond462.preheader.for.body465_crit_edge:      ; preds = %for.cond462.preheader
  br label %for.body465

for.cond500.preheader:                            ; preds = %for.end492
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub457)
  %cmp5011410 = icmp sgt i32 %sub457, -1
  br i1 %cmp5011410, label %for.cond504.preheader.lr.ph, label %for.cond500.preheader.for.cond597.preheader_crit_edge

for.cond500.preheader.for.cond597.preheader_crit_edge: ; preds = %for.cond500.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond597.preheader

for.cond504.preheader.lr.ph:                      ; preds = %for.cond500.preheader
  %sub537 = add i32 %7, -1
  %sub542 = add i32 %5, -1
  %155 = tail call i32 @llvm.smin.i32(i32 %spec.select1148, i32 %sub542)
  %and550 = and i32 %155, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and550)
  %cmp5521405 = icmp sgt i32 %and550, -1
  br label %for.body507.lr.ph

for.body465:                                      ; preds = %for.inc490.for.body465_crit_edge, %for.cond462.preheader.for.body465_crit_edge
  %tmp.01395 = phi i16 [ %tmp.1, %for.inc490.for.body465_crit_edge ], [ 0, %for.cond462.preheader.for.body465_crit_edge ]
  %j.41393 = phi i32 [ %dec491, %for.inc490.for.body465_crit_edge ], [ %i.121398, %for.cond462.preheader.for.body465_crit_edge ]
  %sub466 = sub i32 %i.121398, %j.41393
  %arrayidx467 = getelementptr i16, ptr %s.addr.0, i32 %sub466
  %156 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx467, align 2
  %conv468 = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv468)
  %cmp469.not = icmp eq i32 %3, %conv468
  br i1 %cmp469.not, label %for.body465.for.inc490_crit_edge, label %land.lhs.true471

for.body465.for.inc490_crit_edge:                 ; preds = %for.body465
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc490

land.lhs.true471:                                 ; preds = %for.body465
  %arrayidx472 = getelementptr i16, ptr %buffers, i32 %j.41393
  %158 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx472, align 2
  %conv473 = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv473)
  %cmp474.not = icmp eq i32 %3, %conv473
  br i1 %cmp474.not, label %land.lhs.true471.for.inc490_crit_edge, label %if.then476

land.lhs.true471.for.inc490_crit_edge:            ; preds = %land.lhs.true471
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc490

if.then476:                                       ; preds = %land.lhs.true471
  %add482 = add nuw nsw i32 %conv473, %conv468
  %160 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %add482)
  %cmp.not10.i1259 = icmp sgt i32 %161, %add482
  br i1 %cmp.not10.i1259, label %if.then476.rs_modnn.exit1269_crit_edge, label %while.body.lr.ph.i1260

if.then476.rs_modnn.exit1269_crit_edge:           ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1269

while.body.lr.ph.i1260:                           ; preds = %if.then476
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %1, align 4
  br label %while.body.i1267

while.body.i1267:                                 ; preds = %while.body.i1267.while.body.i1267_crit_edge, %while.body.lr.ph.i1260
  %x.addr.011.i1261 = phi i32 [ %add482, %while.body.lr.ph.i1260 ], [ %add.i1265, %while.body.i1267.while.body.i1267_crit_edge ]
  %sub.i1262 = sub i32 %x.addr.011.i1261, %161
  %shr.i1263 = ashr i32 %sub.i1262, %163
  %and.i1264 = and i32 %sub.i1262, %161
  %add.i1265 = add i32 %shr.i1263, %and.i1264
  %cmp.not.i1266 = icmp slt i32 %add.i1265, %161
  br i1 %cmp.not.i1266, label %while.body.i1267.rs_modnn.exit1269_crit_edge, label %while.body.i1267.while.body.i1267_crit_edge

while.body.i1267.while.body.i1267_crit_edge:      ; preds = %while.body.i1267
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1267

while.body.i1267.rs_modnn.exit1269_crit_edge:     ; preds = %while.body.i1267
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1269

rs_modnn.exit1269:                                ; preds = %while.body.i1267.rs_modnn.exit1269_crit_edge, %if.then476.rs_modnn.exit1269_crit_edge
  %x.addr.0.lcssa.i1268 = phi i32 [ %add482, %if.then476.rs_modnn.exit1269_crit_edge ], [ %add.i1265, %while.body.i1267.rs_modnn.exit1269_crit_edge ]
  %arrayidx484 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1268
  %164 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx484, align 2
  %xor4871138 = xor i16 %165, %tmp.01395
  br label %for.inc490

for.inc490:                                       ; preds = %rs_modnn.exit1269, %land.lhs.true471.for.inc490_crit_edge, %for.body465.for.inc490_crit_edge
  %tmp.1 = phi i16 [ %xor4871138, %rs_modnn.exit1269 ], [ %tmp.01395, %land.lhs.true471.for.inc490_crit_edge ], [ %tmp.01395, %for.body465.for.inc490_crit_edge ]
  %dec491 = add i32 %j.41393, -1
  %cmp463 = icmp sgt i32 %dec491, -1
  br i1 %cmp463, label %for.inc490.for.body465_crit_edge, label %for.inc490.for.end492_crit_edge

for.inc490.for.end492_crit_edge:                  ; preds = %for.inc490
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end492

for.inc490.for.body465_crit_edge:                 ; preds = %for.inc490
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body465

for.end492:                                       ; preds = %for.inc490.for.end492_crit_edge, %for.cond462.preheader.for.end492_crit_edge
  %tmp.0.lcssa = phi i16 [ 0, %for.cond462.preheader.for.end492_crit_edge ], [ %tmp.1, %for.inc490.for.end492_crit_edge ]
  %idxprom493 = zext i16 %tmp.0.lcssa to i32
  %arrayidx494 = getelementptr i16, ptr %15, i32 %idxprom493
  %166 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx494, align 2
  %arrayidx495 = getelementptr i16, ptr %add.ptr28, i32 %i.121398
  %168 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %arrayidx495, align 2
  %inc497 = add i32 %i.121398, 1
  %cmp459.not = icmp sgt i32 %inc497, %sub457
  br i1 %cmp459.not, label %for.cond500.preheader, label %for.end492.for.cond462.preheader_crit_edge

for.end492.for.cond462.preheader_crit_edge:       ; preds = %for.end492
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond462.preheader

for.body507.lr.ph:                                ; preds = %for.inc594.for.body507.lr.ph_crit_edge, %for.cond504.preheader.lr.ph
  %j.51412 = phi i32 [ %sub457, %for.cond504.preheader.lr.ph ], [ %j.5, %for.inc594.for.body507.lr.ph_crit_edge ]
  %num_corrected.01411 = phi i32 [ 0, %for.cond504.preheader.lr.ph ], [ %num_corrected.1, %for.inc594.for.body507.lr.ph_crit_edge ]
  %arrayidx515 = getelementptr i16, ptr %add.ptr33, i32 %j.51412
  br label %for.body507

for.cond597.preheader:                            ; preds = %for.inc594.for.cond597.preheader_crit_edge, %for.cond500.preheader.for.cond597.preheader_crit_edge, %if.end456.for.cond597.preheader_crit_edge
  %num_corrected.0.lcssa = phi i32 [ 0, %for.cond500.preheader.for.cond597.preheader_crit_edge ], [ 0, %if.end456.for.cond597.preheader_crit_edge ], [ %num_corrected.1, %for.inc594.for.cond597.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5981418 = icmp sgt i32 %5, 0
  br i1 %cmp5981418, label %for.cond601.preheader.lr.ph, label %for.cond597.preheader.for.end643_crit_edge

for.cond597.preheader.for.end643_crit_edge:       ; preds = %for.cond597.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end643

for.cond601.preheader.lr.ph:                      ; preds = %for.cond597.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1148)
  %cmp6021414 = icmp sgt i32 %spec.select1148, 0
  br label %for.cond601.preheader

for.body507:                                      ; preds = %for.inc526.for.body507_crit_edge, %for.body507.lr.ph
  %num1.01403 = phi i16 [ 0, %for.body507.lr.ph ], [ %num1.1, %for.inc526.for.body507_crit_edge ]
  %i.131401 = phi i32 [ %sub457, %for.body507.lr.ph ], [ %dec527, %for.inc526.for.body507_crit_edge ]
  %arrayidx508 = getelementptr i16, ptr %add.ptr28, i32 %i.131401
  %169 = ptrtoint ptr %arrayidx508 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx508, align 2
  %conv509 = zext i16 %170 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv509)
  %cmp510.not = icmp eq i32 %3, %conv509
  br i1 %cmp510.not, label %for.body507.for.inc526_crit_edge, label %if.then512

for.body507.for.inc526_crit_edge:                 ; preds = %for.body507
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc526

if.then512:                                       ; preds = %for.body507
  %171 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx515, align 2
  %conv516 = zext i16 %172 to i32
  %mul517 = mul i32 %i.131401, %conv516
  %add518 = add i32 %mul517, %conv509
  %173 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %add518)
  %cmp.not10.i1271 = icmp sgt i32 %174, %add518
  br i1 %cmp.not10.i1271, label %if.then512.rs_modnn.exit1281_crit_edge, label %while.body.lr.ph.i1272

if.then512.rs_modnn.exit1281_crit_edge:           ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1281

while.body.lr.ph.i1272:                           ; preds = %if.then512
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %1, align 4
  br label %while.body.i1279

while.body.i1279:                                 ; preds = %while.body.i1279.while.body.i1279_crit_edge, %while.body.lr.ph.i1272
  %x.addr.011.i1273 = phi i32 [ %add518, %while.body.lr.ph.i1272 ], [ %add.i1277, %while.body.i1279.while.body.i1279_crit_edge ]
  %sub.i1274 = sub i32 %x.addr.011.i1273, %174
  %shr.i1275 = ashr i32 %sub.i1274, %176
  %and.i1276 = and i32 %sub.i1274, %174
  %add.i1277 = add i32 %shr.i1275, %and.i1276
  %cmp.not.i1278 = icmp slt i32 %add.i1277, %174
  br i1 %cmp.not.i1278, label %while.body.i1279.rs_modnn.exit1281_crit_edge, label %while.body.i1279.while.body.i1279_crit_edge

while.body.i1279.while.body.i1279_crit_edge:      ; preds = %while.body.i1279
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1279

while.body.i1279.rs_modnn.exit1281_crit_edge:     ; preds = %while.body.i1279
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1281

rs_modnn.exit1281:                                ; preds = %while.body.i1279.rs_modnn.exit1281_crit_edge, %if.then512.rs_modnn.exit1281_crit_edge
  %x.addr.0.lcssa.i1280 = phi i32 [ %add518, %if.then512.rs_modnn.exit1281_crit_edge ], [ %add.i1277, %while.body.i1279.rs_modnn.exit1281_crit_edge ]
  %arrayidx520 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1280
  %177 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx520, align 2
  %xor5231137 = xor i16 %178, %num1.01403
  br label %for.inc526

for.inc526:                                       ; preds = %rs_modnn.exit1281, %for.body507.for.inc526_crit_edge
  %num1.1 = phi i16 [ %xor5231137, %rs_modnn.exit1281 ], [ %num1.01403, %for.body507.for.inc526_crit_edge ]
  %dec527 = add i32 %i.131401, -1
  %cmp505 = icmp sgt i32 %dec527, -1
  br i1 %cmp505, label %for.inc526.for.body507_crit_edge, label %for.end528

for.inc526.for.body507_crit_edge:                 ; preds = %for.inc526
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body507

for.end528:                                       ; preds = %for.inc526
  %conv529 = zext i16 %num1.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num1.1)
  %cmp530 = icmp eq i16 %num1.1, 0
  br i1 %cmp530, label %if.then532, label %if.end534

if.then532:                                       ; preds = %for.end528
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx533 = getelementptr i16, ptr %add.ptr18, i32 %j.51412
  %179 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %arrayidx533, align 2
  br label %for.inc594

if.end534:                                        ; preds = %for.end528
  %arrayidx535 = getelementptr i16, ptr %add.ptr33, i32 %j.51412
  %180 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx535, align 2
  %conv536 = zext i16 %181 to i32
  %mul538 = mul i32 %sub537, %conv536
  %add539 = add i32 %mul538, %3
  %182 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add539)
  %cmp.not10.i1283 = icmp sgt i32 %183, %add539
  br i1 %cmp.not10.i1283, label %if.end534.rs_modnn.exit1293_crit_edge, label %while.body.lr.ph.i1284

if.end534.rs_modnn.exit1293_crit_edge:            ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1293

while.body.lr.ph.i1284:                           ; preds = %if.end534
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %1, align 4
  br label %while.body.i1291

while.body.i1291:                                 ; preds = %while.body.i1291.while.body.i1291_crit_edge, %while.body.lr.ph.i1284
  %x.addr.011.i1285 = phi i32 [ %add539, %while.body.lr.ph.i1284 ], [ %add.i1289, %while.body.i1291.while.body.i1291_crit_edge ]
  %sub.i1286 = sub i32 %x.addr.011.i1285, %183
  %shr.i1287 = ashr i32 %sub.i1286, %185
  %and.i1288 = and i32 %sub.i1286, %183
  %add.i1289 = add i32 %shr.i1287, %and.i1288
  %cmp.not.i1290 = icmp slt i32 %add.i1289, %183
  br i1 %cmp.not.i1290, label %while.body.i1291.rs_modnn.exit1293_crit_edge, label %while.body.i1291.while.body.i1291_crit_edge

while.body.i1291.while.body.i1291_crit_edge:      ; preds = %while.body.i1291
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1291

while.body.i1291.rs_modnn.exit1293_crit_edge:     ; preds = %while.body.i1291
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1293

rs_modnn.exit1293:                                ; preds = %while.body.i1291.rs_modnn.exit1293_crit_edge, %if.end534.rs_modnn.exit1293_crit_edge
  %x.addr.0.lcssa.i1292 = phi i32 [ %add539, %if.end534.rs_modnn.exit1293_crit_edge ], [ %add.i1289, %while.body.i1291.rs_modnn.exit1293_crit_edge ]
  %arrayidx541 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1292
  %186 = ptrtoint ptr %arrayidx541 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx541, align 2
  br i1 %cmp5521405, label %rs_modnn.exit1293.for.body554_crit_edge, label %rs_modnn.exit1293.for.end577_crit_edge

rs_modnn.exit1293.for.end577_crit_edge:           ; preds = %rs_modnn.exit1293
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end577

rs_modnn.exit1293.for.body554_crit_edge:          ; preds = %rs_modnn.exit1293
  br label %for.body554

for.body554:                                      ; preds = %for.inc575.for.body554_crit_edge, %rs_modnn.exit1293.for.body554_crit_edge
  %den.01407 = phi i16 [ %den.1, %for.inc575.for.body554_crit_edge ], [ 0, %rs_modnn.exit1293.for.body554_crit_edge ]
  %i.141406 = phi i32 [ %sub576, %for.inc575.for.body554_crit_edge ], [ %and550, %rs_modnn.exit1293.for.body554_crit_edge ]
  %add555 = or i32 %i.141406, 1
  %arrayidx556 = getelementptr i16, ptr %buffers, i32 %add555
  %188 = ptrtoint ptr %arrayidx556 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx556, align 2
  %conv557 = zext i16 %189 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv557)
  %cmp558.not = icmp eq i32 %3, %conv557
  br i1 %cmp558.not, label %for.body554.for.inc575_crit_edge, label %if.then560

for.body554.for.inc575_crit_edge:                 ; preds = %for.body554
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc575

if.then560:                                       ; preds = %for.body554
  %mul566 = mul i32 %i.141406, %conv536
  %add567 = add i32 %mul566, %conv557
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add567)
  %cmp.not10.i1295 = icmp sgt i32 %183, %add567
  br i1 %cmp.not10.i1295, label %if.then560.rs_modnn.exit1305_crit_edge, label %while.body.lr.ph.i1296

if.then560.rs_modnn.exit1305_crit_edge:           ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1305

while.body.lr.ph.i1296:                           ; preds = %if.then560
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %1, align 4
  br label %while.body.i1303

while.body.i1303:                                 ; preds = %while.body.i1303.while.body.i1303_crit_edge, %while.body.lr.ph.i1296
  %x.addr.011.i1297 = phi i32 [ %add567, %while.body.lr.ph.i1296 ], [ %add.i1301, %while.body.i1303.while.body.i1303_crit_edge ]
  %sub.i1298 = sub i32 %x.addr.011.i1297, %183
  %shr.i1299 = ashr i32 %sub.i1298, %191
  %and.i1300 = and i32 %sub.i1298, %183
  %add.i1301 = add i32 %shr.i1299, %and.i1300
  %cmp.not.i1302 = icmp slt i32 %add.i1301, %183
  br i1 %cmp.not.i1302, label %while.body.i1303.rs_modnn.exit1305_crit_edge, label %while.body.i1303.while.body.i1303_crit_edge

while.body.i1303.while.body.i1303_crit_edge:      ; preds = %while.body.i1303
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1303

while.body.i1303.rs_modnn.exit1305_crit_edge:     ; preds = %while.body.i1303
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1305

rs_modnn.exit1305:                                ; preds = %while.body.i1303.rs_modnn.exit1305_crit_edge, %if.then560.rs_modnn.exit1305_crit_edge
  %x.addr.0.lcssa.i1304 = phi i32 [ %add567, %if.then560.rs_modnn.exit1305_crit_edge ], [ %add.i1301, %while.body.i1303.rs_modnn.exit1305_crit_edge ]
  %arrayidx569 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1304
  %192 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx569, align 2
  %xor5721136 = xor i16 %193, %den.01407
  br label %for.inc575

for.inc575:                                       ; preds = %rs_modnn.exit1305, %for.body554.for.inc575_crit_edge
  %den.1 = phi i16 [ %xor5721136, %rs_modnn.exit1305 ], [ %den.01407, %for.body554.for.inc575_crit_edge ]
  %sub576 = add nsw i32 %i.141406, -2
  %cmp552 = icmp sgt i32 %i.141406, 1
  br i1 %cmp552, label %for.inc575.for.body554_crit_edge, label %for.inc575.for.end577_crit_edge

for.inc575.for.end577_crit_edge:                  ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end577

for.inc575.for.body554_crit_edge:                 ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body554

for.end577:                                       ; preds = %for.inc575.for.end577_crit_edge, %rs_modnn.exit1293.for.end577_crit_edge
  %den.0.lcssa = phi i16 [ 0, %rs_modnn.exit1293.for.end577_crit_edge ], [ %den.1, %for.inc575.for.end577_crit_edge ]
  %arrayidx579 = getelementptr i16, ptr %15, i32 %conv529
  %194 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx579, align 2
  %conv580 = zext i16 %195 to i32
  %idxprom581 = zext i16 %187 to i32
  %arrayidx582 = getelementptr i16, ptr %15, i32 %idxprom581
  %196 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx582, align 2
  %conv583 = zext i16 %197 to i32
  %idxprom586 = zext i16 %den.0.lcssa to i32
  %arrayidx587 = getelementptr i16, ptr %15, i32 %idxprom586
  %198 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx587, align 2
  %conv588 = zext i16 %199 to i32
  %add584 = add i32 %3, %conv580
  %add585 = add i32 %add584, %conv583
  %sub589 = sub i32 %add585, %conv588
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %sub589)
  %cmp.not10.i1307 = icmp sgt i32 %183, %sub589
  br i1 %cmp.not10.i1307, label %for.end577.rs_modnn.exit1317_crit_edge, label %while.body.lr.ph.i1308

for.end577.rs_modnn.exit1317_crit_edge:           ; preds = %for.end577
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1317

while.body.lr.ph.i1308:                           ; preds = %for.end577
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %1, align 4
  br label %while.body.i1315

while.body.i1315:                                 ; preds = %while.body.i1315.while.body.i1315_crit_edge, %while.body.lr.ph.i1308
  %x.addr.011.i1309 = phi i32 [ %sub589, %while.body.lr.ph.i1308 ], [ %add.i1313, %while.body.i1315.while.body.i1315_crit_edge ]
  %sub.i1310 = sub i32 %x.addr.011.i1309, %183
  %shr.i1311 = ashr i32 %sub.i1310, %201
  %and.i1312 = and i32 %sub.i1310, %183
  %add.i1313 = add i32 %shr.i1311, %and.i1312
  %cmp.not.i1314 = icmp slt i32 %add.i1313, %183
  br i1 %cmp.not.i1314, label %while.body.i1315.rs_modnn.exit1317_crit_edge, label %while.body.i1315.while.body.i1315_crit_edge

while.body.i1315.while.body.i1315_crit_edge:      ; preds = %while.body.i1315
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1315

while.body.i1315.rs_modnn.exit1317_crit_edge:     ; preds = %while.body.i1315
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1317

rs_modnn.exit1317:                                ; preds = %while.body.i1315.rs_modnn.exit1317_crit_edge, %for.end577.rs_modnn.exit1317_crit_edge
  %x.addr.0.lcssa.i1316 = phi i32 [ %sub589, %for.end577.rs_modnn.exit1317_crit_edge ], [ %add.i1313, %while.body.i1315.rs_modnn.exit1317_crit_edge ]
  %arrayidx591 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1316
  %202 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx591, align 2
  %arrayidx592 = getelementptr i16, ptr %add.ptr18, i32 %j.51412
  %204 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %arrayidx592, align 2
  %inc593 = add i32 %num_corrected.01411, 1
  br label %for.inc594

for.inc594:                                       ; preds = %rs_modnn.exit1317, %if.then532
  %num_corrected.1 = phi i32 [ %num_corrected.01411, %if.then532 ], [ %inc593, %rs_modnn.exit1317 ]
  %j.5 = add i32 %j.51412, -1
  %cmp501 = icmp sgt i32 %j.5, -1
  br i1 %cmp501, label %for.inc594.for.body507.lr.ph_crit_edge, label %for.inc594.for.cond597.preheader_crit_edge

for.inc594.for.cond597.preheader_crit_edge:       ; preds = %for.inc594
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond597.preheader

for.inc594.for.body507.lr.ph_crit_edge:           ; preds = %for.inc594
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body507.lr.ph

for.cond597:                                      ; preds = %for.end631
  %inc642 = add nuw nsw i32 %i.151419, 1
  %exitcond1446.not = icmp eq i32 %inc642, %5
  br i1 %exitcond1446.not, label %for.cond597.for.end643_crit_edge, label %for.cond597.for.cond601.preheader_crit_edge

for.cond597.for.cond601.preheader_crit_edge:      ; preds = %for.cond597
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond601.preheader

for.cond597.for.end643_crit_edge:                 ; preds = %for.cond597
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end643

for.cond601.preheader:                            ; preds = %for.cond597.for.cond601.preheader_crit_edge, %for.cond601.preheader.lr.ph
  %i.151419 = phi i32 [ 0, %for.cond601.preheader.lr.ph ], [ %inc642, %for.cond597.for.cond601.preheader_crit_edge ]
  br i1 %cmp6021414, label %for.body604.lr.ph, label %for.cond601.preheader.for.end631_crit_edge

for.cond601.preheader.for.end631_crit_edge:       ; preds = %for.cond601.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end631

for.body604.lr.ph:                                ; preds = %for.cond601.preheader
  %add611 = add i32 %i.151419, %7
  %mul612 = mul i32 %add611, %9
  br label %for.body604

for.body604:                                      ; preds = %for.inc629.for.body604_crit_edge, %for.body604.lr.ph
  %tmp.21416 = phi i16 [ 0, %for.body604.lr.ph ], [ %tmp.3, %for.inc629.for.body604_crit_edge ]
  %j.61415 = phi i32 [ 0, %for.body604.lr.ph ], [ %inc630, %for.inc629.for.body604_crit_edge ]
  %arrayidx605 = getelementptr i16, ptr %add.ptr18, i32 %j.61415
  %205 = ptrtoint ptr %arrayidx605 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx605, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp607 = icmp eq i16 %206, 0
  br i1 %cmp607, label %for.body604.for.inc629_crit_edge, label %if.end610

for.body604.for.inc629_crit_edge:                 ; preds = %for.body604
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc629

if.end610:                                        ; preds = %for.body604
  %conv606 = zext i16 %206 to i32
  %arrayidx613 = getelementptr i16, ptr %add.ptr43, i32 %j.61415
  %207 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx613, align 2
  %conv614 = zext i16 %208 to i32
  %209 = xor i32 %conv614, -1
  %sub616 = add i32 %3, %209
  %mul617 = mul i32 %mul612, %sub616
  %arrayidx620 = getelementptr i16, ptr %15, i32 %conv606
  %210 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx620, align 2
  %conv621 = zext i16 %211 to i32
  %add622 = add i32 %mul617, %conv621
  %212 = ptrtoint ptr %nn1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nn1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %add622)
  %cmp.not10.i1319 = icmp sgt i32 %213, %add622
  br i1 %cmp.not10.i1319, label %if.end610.rs_modnn.exit1329_crit_edge, label %while.body.lr.ph.i1320

if.end610.rs_modnn.exit1329_crit_edge:            ; preds = %if.end610
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1329

while.body.lr.ph.i1320:                           ; preds = %if.end610
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %1, align 4
  br label %while.body.i1327

while.body.i1327:                                 ; preds = %while.body.i1327.while.body.i1327_crit_edge, %while.body.lr.ph.i1320
  %x.addr.011.i1321 = phi i32 [ %add622, %while.body.lr.ph.i1320 ], [ %add.i1325, %while.body.i1327.while.body.i1327_crit_edge ]
  %sub.i1322 = sub i32 %x.addr.011.i1321, %213
  %shr.i1323 = ashr i32 %sub.i1322, %215
  %and.i1324 = and i32 %sub.i1322, %213
  %add.i1325 = add i32 %shr.i1323, %and.i1324
  %cmp.not.i1326 = icmp slt i32 %add.i1325, %213
  br i1 %cmp.not.i1326, label %while.body.i1327.rs_modnn.exit1329_crit_edge, label %while.body.i1327.while.body.i1327_crit_edge

while.body.i1327.while.body.i1327_crit_edge:      ; preds = %while.body.i1327
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i1327

while.body.i1327.rs_modnn.exit1329_crit_edge:     ; preds = %while.body.i1327
  call void @__sanitizer_cov_trace_pc() #8
  br label %rs_modnn.exit1329

rs_modnn.exit1329:                                ; preds = %while.body.i1327.rs_modnn.exit1329_crit_edge, %if.end610.rs_modnn.exit1329_crit_edge
  %x.addr.0.lcssa.i1328 = phi i32 [ %add622, %if.end610.rs_modnn.exit1329_crit_edge ], [ %add.i1325, %while.body.i1327.rs_modnn.exit1329_crit_edge ]
  %arrayidx624 = getelementptr i16, ptr %13, i32 %x.addr.0.lcssa.i1328
  %216 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx624, align 2
  %xor6271135 = xor i16 %217, %tmp.21416
  br label %for.inc629

for.inc629:                                       ; preds = %rs_modnn.exit1329, %for.body604.for.inc629_crit_edge
  %tmp.3 = phi i16 [ %tmp.21416, %for.body604.for.inc629_crit_edge ], [ %xor6271135, %rs_modnn.exit1329 ]
  %inc630 = add nuw nsw i32 %j.61415, 1
  %exitcond1445.not = icmp eq i32 %inc630, %spec.select1148
  br i1 %exitcond1445.not, label %for.inc629.for.end631_crit_edge, label %for.inc629.for.body604_crit_edge

for.inc629.for.body604_crit_edge:                 ; preds = %for.inc629
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body604

for.inc629.for.end631_crit_edge:                  ; preds = %for.inc629
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end631

for.end631:                                       ; preds = %for.inc629.for.end631_crit_edge, %for.cond601.preheader.for.end631_crit_edge
  %tmp.2.lcssa = phi i16 [ 0, %for.cond601.preheader.for.end631_crit_edge ], [ %tmp.3, %for.inc629.for.end631_crit_edge ]
  %arrayidx633 = getelementptr i16, ptr %s.addr.0, i32 %i.151419
  %218 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %arrayidx633, align 2
  %idxprom634 = zext i16 %219 to i32
  %arrayidx635 = getelementptr i16, ptr %13, i32 %idxprom634
  %220 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx635, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %tmp.2.lcssa, i16 %221)
  %cmp637.not = icmp eq i16 %tmp.2.lcssa, %221
  br i1 %cmp637.not, label %for.cond597, label %for.end631.cleanup_crit_edge

for.end631.cleanup_crit_edge:                     ; preds = %for.end631
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end643:                                       ; preds = %for.cond597.for.end643_crit_edge, %for.cond597.preheader.for.end643_crit_edge
  %tobool644.not = icmp eq ptr %corr, null
  %tobool646.not = icmp eq ptr %eras_pos, null
  %or.cond = or i1 %tobool646.not, %tobool644.not
  br i1 %or.cond, label %if.else666, label %for.cond648.preheader

for.cond648.preheader:                            ; preds = %for.end643
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1148)
  %cmp6491421 = icmp sgt i32 %spec.select1148, 0
  br i1 %cmp6491421, label %for.cond648.preheader.for.body651_crit_edge, label %for.cond648.preheader.cleanup_crit_edge

for.cond648.preheader.cleanup_crit_edge:          ; preds = %for.cond648.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond648.preheader.for.body651_crit_edge:      ; preds = %for.cond648.preheader
  br label %for.body651

for.body651:                                      ; preds = %for.inc663.for.body651_crit_edge, %for.cond648.preheader.for.body651_crit_edge
  %j.71424 = phi i32 [ %j.8, %for.inc663.for.body651_crit_edge ], [ 0, %for.cond648.preheader.for.body651_crit_edge ]
  %i.161422 = phi i32 [ %inc664, %for.inc663.for.body651_crit_edge ], [ 0, %for.cond648.preheader.for.body651_crit_edge ]
  %arrayidx652 = getelementptr i16, ptr %add.ptr18, i32 %i.161422
  %222 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx652, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool653.not = icmp eq i16 %223, 0
  br i1 %tobool653.not, label %for.body651.for.inc663_crit_edge, label %if.then654

for.body651.for.inc663_crit_edge:                 ; preds = %for.body651
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc663

if.then654:                                       ; preds = %for.body651
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx656 = getelementptr i16, ptr %corr, i32 %j.71424
  %224 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %arrayidx656, align 2
  %arrayidx657 = getelementptr i16, ptr %add.ptr43, i32 %i.161422
  %225 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx657, align 2
  %conv658 = zext i16 %226 to i32
  %sub659 = sub i32 %conv658, %sub44
  %inc660 = add i32 %j.71424, 1
  %arrayidx661 = getelementptr i32, ptr %eras_pos, i32 %j.71424
  %227 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub659, ptr %arrayidx661, align 4
  br label %for.inc663

for.inc663:                                       ; preds = %if.then654, %for.body651.for.inc663_crit_edge
  %j.8 = phi i32 [ %inc660, %if.then654 ], [ %j.71424, %for.body651.for.inc663_crit_edge ]
  %inc664 = add nuw nsw i32 %i.161422, 1
  %exitcond1447.not = icmp eq i32 %inc664, %spec.select1148
  br i1 %exitcond1447.not, label %for.inc663.cleanup_crit_edge, label %for.inc663.for.body651_crit_edge

for.inc663.for.body651_crit_edge:                 ; preds = %for.inc663
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body651

for.inc663.cleanup_crit_edge:                     ; preds = %for.inc663
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else666:                                       ; preds = %for.end643
  %tobool667.not = icmp ne ptr %data, null
  %tobool669.not = icmp ne ptr %par, null
  %or.cond1149.not = and i1 %tobool667.not, %tobool669.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1148)
  %cmp6721425 = icmp sgt i32 %spec.select1148, 0
  %or.cond1428 = select i1 %or.cond1149.not, i1 %cmp6721425, i1 false
  br i1 %or.cond1428, label %if.else666.for.body674_crit_edge, label %if.else666.cleanup_crit_edge

if.else666.cleanup_crit_edge:                     ; preds = %if.else666
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else666.for.body674_crit_edge:                 ; preds = %if.else666
  br label %for.body674

for.body674:                                      ; preds = %for.body674.for.body674_crit_edge, %if.else666.for.body674_crit_edge
  %i.171426 = phi i32 [ %inc703, %for.body674.for.body674_crit_edge ], [ 0, %if.else666.for.body674_crit_edge ]
  %arrayidx675 = getelementptr i16, ptr %add.ptr43, i32 %i.171426
  %228 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx675, align 2
  %conv676 = zext i16 %229 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv676)
  %cmp678 = icmp sgt i32 %sub, %conv676
  %arrayidx681 = getelementptr i16, ptr %add.ptr18, i32 %i.171426
  %230 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx681, align 2
  %sub44.sub = select i1 %cmp678, i32 %sub44, i32 %sub
  %data.par = select i1 %cmp678, ptr %data, ptr %par
  %sub685 = sub i32 %conv676, %sub44.sub
  %arrayidx686 = getelementptr i16, ptr %data.par, i32 %sub685
  %232 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx686, align 2
  %xor6881134 = xor i16 %233, %231
  store i16 %xor6881134, ptr %arrayidx686, align 2
  %inc703 = add nuw nsw i32 %i.171426, 1
  %exitcond1448.not = icmp eq i32 %inc703, %spec.select1148
  br i1 %exitcond1448.not, label %for.body674.cleanup_crit_edge, label %for.body674.for.body674_crit_edge

for.body674.for.body674_crit_edge:                ; preds = %for.body674
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body674

for.body674.cleanup_crit_edge:                    ; preds = %for.body674
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body674.cleanup_crit_edge, %if.else666.cleanup_crit_edge, %for.inc663.cleanup_crit_edge, %for.cond648.preheader.cleanup_crit_edge, %for.end631.cleanup_crit_edge, %for.end452.cleanup_crit_edge, %if.end434.cleanup_crit_edge, %for.end391.cleanup_crit_edge, %for.cond374.preheader.cleanup_crit_edge, %for.end183.cleanup_crit_edge, %for.cond169.preheader.cleanup_crit_edge, %for.cond125.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end183.cleanup_crit_edge ], [ -74, %for.end391.cleanup_crit_edge ], [ -74, %for.end452.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %if.else666.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.cond648.preheader.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond169.preheader.cleanup_crit_edge ], [ 0, %for.cond125.preheader.cleanup_crit_edge ], [ -74, %for.cond374.preheader.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.body674.cleanup_crit_edge ], [ %num_corrected.0.lcssa, %for.inc663.cleanup_crit_edge ], [ -74, %for.end631.cleanup_crit_edge ], [ -74, %if.end434.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_free_rs, !1, !"__ksymtab_free_rs", i1 false, i1 false}
!1 = !{!"../lib/reed_solomon/reed_solomon.c", i32 196, i32 1}
!2 = !{ptr @__ksymtab_init_rs_gfp, !3, !"__ksymtab_init_rs_gfp", i1 false, i1 false}
!3 = !{!"../lib/reed_solomon/reed_solomon.c", i32 293, i32 1}
!4 = !{ptr @__ksymtab_init_rs_non_canonical, !5, !"__ksymtab_init_rs_non_canonical", i1 false, i1 false}
!5 = !{!"../lib/reed_solomon/reed_solomon.c", i32 313, i32 1}
!6 = !{ptr @__ksymtab_encode_rs8, !7, !"__ksymtab_encode_rs8", i1 false, i1 false}
!7 = !{!"../lib/reed_solomon/reed_solomon.c", i32 333, i32 1}
!8 = !{ptr @__ksymtab_decode_rs8, !9, !"__ksymtab_decode_rs8", i1 false, i1 false}
!9 = !{!"../lib/reed_solomon/reed_solomon.c", i32 367, i32 1}
!10 = !{ptr @__ksymtab_encode_rs16, !11, !"__ksymtab_encode_rs16", i1 false, i1 false}
!11 = !{!"../lib/reed_solomon/reed_solomon.c", i32 386, i32 1}
!12 = !{ptr @__ksymtab_decode_rs16, !13, !"__ksymtab_decode_rs16", i1 false, i1 false}
!13 = !{!"../lib/reed_solomon/reed_solomon.c", i32 418, i32 1}
!14 = !{ptr @__UNIQUE_ID_file177, !15, !"__UNIQUE_ID_file177", i1 false, i1 false}
!15 = !{!"../lib/reed_solomon/reed_solomon.c", i32 421, i32 1}
!16 = !{ptr @__UNIQUE_ID_license178, !15, !"__UNIQUE_ID_license178", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description179, !18, !"__UNIQUE_ID_description179", i1 false, i1 false}
!18 = !{!"../lib/reed_solomon/reed_solomon.c", i32 422, i32 1}
!19 = !{ptr @__UNIQUE_ID_author180, !20, !"__UNIQUE_ID_author180", i1 false, i1 false}
!20 = !{!"../lib/reed_solomon/reed_solomon.c", i32 423, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/reed_solomon/reed_solomon.c", i32 55, i32 8}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rslistlock, !22, !"rslistlock", i1 false, i1 false}
!25 = !{ptr @codec_list, !26, !"codec_list", i1 false, i1 false}
!26 = !{!"../lib/reed_solomon/reed_solomon.c", i32 53, i32 8}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2152441318, i64 2152441810, i64 2152441355, i64 2152441411, i64 2152441445, i64 2152441469, i64 2152441510, i64 2152441531, i64 2152441559, i64 2152441593}
!39 = !{i64 2152456504, i64 2152456996, i64 2152456541, i64 2152456597, i64 2152456631, i64 2152456655, i64 2152456696, i64 2152456717, i64 2152456745, i64 2152456779}
