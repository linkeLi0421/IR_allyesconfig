; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_cache.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_clflush_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_clflush_pages\09\09\09\09"
module asm "\09.long\09__crc_drm_clflush_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_pages\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_clflush_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_clflush_sg\09\09\09\09"
module asm "\09.long\09__crc_drm_clflush_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_sg\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_clflush_virt_range\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_clflush_virt_range\09\09\09\09"
module asm "\09.long\09__crc_drm_clflush_virt_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_virt_range:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_virt_range\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_virt_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_need_swiotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_need_swiotlb\09\09\09\09"
module asm "\09.long\09__crc_drm_need_swiotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_need_swiotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_need_swiotlb\22\09\09\09\09\09"
module asm "__kstrtabns_drm_need_swiotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_memcpy_from_wc\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_memcpy_from_wc\09\09\09\09"
module asm "\09.long\09__crc_drm_memcpy_from_wc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_memcpy_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_memcpy_from_wc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_memcpy_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_buf_map = type { %union.anon.68, i8 }
%union.anon.68 = type { ptr }

@drm_clflush_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Architecture has no drm_cache.c support\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drm_clflush_pages\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/drm_cache.c\00", [36 x i8] zeroinitializer }, align 32
@drm_clflush_pages._entry_ptr = internal global ptr @drm_clflush_pages._entry, section ".printk_index", align 4
@drm_clflush_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_clflush_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_pages to i32), ptr @__kstrtab_drm_clflush_pages, ptr @__kstrtabns_drm_clflush_pages }, section "___ksymtab+drm_clflush_pages", align 4
@drm_clflush_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drm_clflush_sg\00", [17 x i8] zeroinitializer }, align 32
@drm_clflush_sg._entry_ptr = internal global ptr @drm_clflush_sg._entry, section ".printk_index", align 4
@drm_clflush_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_clflush_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_sg to i32), ptr @__kstrtab_drm_clflush_sg, ptr @__kstrtabns_drm_clflush_sg }, section "___ksymtab+drm_clflush_sg", align 4
@drm_clflush_virt_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drm_clflush_virt_range\00", [41 x i8] zeroinitializer }, align 32
@drm_clflush_virt_range._entry_ptr = internal global ptr @drm_clflush_virt_range._entry, section ".printk_index", align 4
@drm_clflush_virt_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_clflush_virt_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_virt_range = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_virt_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_virt_range to i32), ptr @__kstrtab_drm_clflush_virt_range, ptr @__kstrtabns_drm_clflush_virt_range }, section "___ksymtab+drm_clflush_virt_range", align 4
@iomem_resource = external dso_local local_unnamed_addr global %struct.resource, align 4
@__kstrtab_drm_need_swiotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_need_swiotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_need_swiotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_need_swiotlb to i32), ptr @__kstrtab_drm_need_swiotlb, ptr @__kstrtabns_drm_need_swiotlb }, section "___ksymtab+drm_need_swiotlb", align 4
@__kstrtab_drm_memcpy_from_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_memcpy_from_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_memcpy_from_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_memcpy_from_wc to i32), ptr @__kstrtab_drm_memcpy_from_wc, ptr @__kstrtabns_drm_memcpy_from_wc }, section "___ksymtab+drm_memcpy_from_wc", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 115, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 146, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [31 x i8] c"../drivers/gpu/drm/drm_cache.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 180, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_drm_clflush_pages, ptr @__ksymtab_drm_clflush_sg, ptr @__ksymtab_drm_clflush_virt_range, ptr @__ksymtab_drm_memcpy_from_wc, ptr @__ksymtab_drm_need_swiotlb, ptr @drm_clflush_pages._entry, ptr @drm_clflush_pages._entry_ptr, ptr @drm_clflush_sg._entry, ptr @drm_clflush_sg._entry_ptr, ptr @drm_clflush_virt_range._entry, ptr @drm_clflush_virt_range._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_clflush_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_clflush_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_clflush_virt_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_clflush_pages(ptr nocapture readnone %pages, i32 %num_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %.b38 = load i1, ptr @drm_clflush_pages.__already_done, align 1
  br i1 %.b38, label %entry.if.end28_crit_edge, label %if.then, !prof !40

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drm_clflush_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 9, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_clflush_sg(ptr nocapture readnone %st) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %.b38 = load i1, ptr @drm_clflush_sg.__already_done, align 1
  br i1 %.b38, label %entry.if.end28_crit_edge, label %if.then, !prof !40

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drm_clflush_sg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_clflush_virt_range(ptr nocapture readnone %addr, i32 %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %.b38 = load i1, ptr @drm_clflush_virt_range.__already_done, align 1
  br i1 %.b38, label %entry.if.end28_crit_edge, label %if.then, !prof !40

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drm_clflush_virt_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 181, i32 noundef 9, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_need_swiotlb(i32 noundef %dma_bits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7) to i32))
  %tmp.010 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %tobool.not11 = icmp eq ptr %tmp.010, null
  br i1 %tobool.not11, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.013 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %tmp.010, %entry.for.body_crit_edge ]
  %max_iomem.012 = phi i32 [ %2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %end = getelementptr inbounds %struct.resource, ptr %tmp.013, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %max_iomem.012, i32 %1)
  %sibling = getelementptr inbounds %struct.resource, ptr %tmp.013, i32 0, i32 6
  %3 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0 = load ptr, ptr %sibling, align 4
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %max_iomem.0.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %2, %for.body.cleanup_crit_edge ]
  %conv = zext i32 %max_iomem.0.lcssa to i64
  %sh_prom = zext i32 %dma_bits to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv)
  %cmp2 = icmp ult i64 %shl, %conv
  ret i1 %cmp2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_memcpy_from_wc(ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src, i32 noundef %len) #0 align 64 {
entry:
  %bounce.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i26 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i26 to ptr
  %preempt_count.i27 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i27, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i28 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i28 to ptr
  %preempt_count.i29 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i29, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %dst, i32 0, i32 1
  %12 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_iomem.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %is_iomem1.i = getelementptr inbounds %struct.dma_buf_map, ptr %src, i32 0, i32 1
  %14 = ptrtoint ptr %is_iomem1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_iomem1.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.thread.i

land.lhs.true.i:                                  ; preds = %if.end
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  br i1 %tobool2.not.i, label %if.then.i, label %if.then9.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = call ptr @memcpy(ptr %17, ptr %19, i32 %len)
  br label %memcpy_fallback.exit

if.else.thread.i:                                 ; preds = %if.end
  br i1 %tobool2.not.i, label %if.then.i.i, label %if.else10.i

if.then.i.i:                                      ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 4
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst, align 4
  tail call void @mmiocpy(ptr noundef %24, ptr noundef %22, i32 noundef %len) #8
  br label %memcpy_fallback.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmiocpy(ptr noundef %17, ptr noundef %19, i32 noundef %len) #8
  br label %memcpy_fallback.exit

if.else10.i:                                      ; preds = %if.else.thread.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bounce.i) #8
  %25 = call ptr @memset(ptr %bounce.i, i32 255, i32 128)
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len)
  %cmp41.i = icmp ugt i32 %len, 127
  br i1 %cmp41.i, label %if.else10.i.while.body.i_crit_edge, label %if.else10.i.while.end.i_crit_edge

if.else10.i.while.end.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.else10.i.while.body.i_crit_edge:               ; preds = %if.else10.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else10.i.while.body.i_crit_edge
  %_dst.044.i = phi ptr [ %add.ptr12.i, %while.body.i.while.body.i_crit_edge ], [ %29, %if.else10.i.while.body.i_crit_edge ]
  %_src.043.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %27, %if.else10.i.while.body.i_crit_edge ]
  %len.addr.042.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %len, %if.else10.i.while.body.i_crit_edge ]
  call void @mmiocpy(ptr noundef nonnull %bounce.i, ptr noundef %_src.043.i, i32 noundef 128) #8
  call void @mmiocpy(ptr noundef %_dst.044.i, ptr noundef nonnull %bounce.i, i32 noundef 128) #8
  %add.ptr.i = getelementptr i8, ptr %_src.043.i, i32 128
  %add.ptr12.i = getelementptr i8, ptr %_dst.044.i, i32 128
  %sub.i = add i32 %len.addr.042.i, -128
  %cmp.i = icmp ugt i32 %sub.i, 127
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.else10.i.while.end.i_crit_edge
  %len.addr.0.lcssa.i = phi i32 [ %len, %if.else10.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %_src.0.lcssa.i = phi ptr [ %27, %if.else10.i.while.end.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %_dst.0.lcssa.i = phi ptr [ %29, %if.else10.i.while.end.i_crit_edge ], [ %add.ptr12.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool13.not.i = icmp eq i32 %len.addr.0.lcssa.i, 0
  br i1 %tobool13.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then14.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mmiocpy(ptr noundef nonnull %bounce.i, ptr noundef %_src.0.lcssa.i, i32 noundef 128) #8
  call void @mmiocpy(ptr noundef %_dst.0.lcssa.i, ptr noundef nonnull %bounce.i, i32 noundef 128) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %while.end.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bounce.i) #8
  br label %memcpy_fallback.exit

memcpy_fallback.exit:                             ; preds = %if.end.i, %if.then9.i, %if.then.i.i, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @drm_memcpy_init_early() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_cache.c", i32 115, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @drm_clflush_pages._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @drm_clflush_pages._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_cache.c", i32 116, i32 2}
!8 = !{ptr @__ksymtab_drm_clflush_pages, !9, !"__ksymtab_drm_clflush_pages", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_cache.c", i32 119, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_cache.c", i32 146, i32 2}
!12 = !{ptr @drm_clflush_sg._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @drm_clflush_sg._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_cache.c", i32 147, i32 2}
!16 = !{ptr @__ksymtab_drm_clflush_sg, !17, !"__ksymtab_drm_clflush_sg", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_cache.c", i32 150, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_cache.c", i32 180, i32 2}
!20 = !{ptr @drm_clflush_virt_range._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @drm_clflush_virt_range._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_cache.c", i32 181, i32 2}
!24 = !{ptr @__ksymtab_drm_clflush_virt_range, !25, !"__ksymtab_drm_clflush_virt_range", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_cache.c", i32 184, i32 1}
!26 = !{ptr @__ksymtab_drm_need_swiotlb, !27, !"__ksymtab_drm_need_swiotlb", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_cache.c", i32 215, i32 1}
!28 = !{ptr @__ksymtab_drm_memcpy_from_wc, !29, !"__ksymtab_drm_memcpy_from_wc", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_cache.c", i32 354, i32 1}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i8 0, i8 2}
