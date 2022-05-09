; ModuleID = '/llk/IR_all_yes/kernel/iomem.c_pt.bc'
source_filename = "../kernel/iomem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+memremap\22, \22a\22\09"
module asm "\09.weak\09__crc_memremap\09\09\09\09"
module asm "\09.long\09__crc_memremap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22memremap\22\09\09\09\09\09"
module asm "__kstrtabns_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memunmap\22, \22a\22\09"
module asm "\09.weak\09__crc_memunmap\09\09\09\09"
module asm "\09.long\09__crc_memunmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22memunmap\22\09\09\09\09\09"
module asm "__kstrtabns_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_memremap\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_memremap\09\09\09\09"
module asm "\09.long\09__crc_devm_memremap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_memremap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_memunmap\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_memunmap\09\09\09\09"
module asm "\09.long\09__crc_devm_memunmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_memunmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@memremap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/iomem.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"memremap attempted on mixed range %pa size: %#lx\0A\00", [46 x i8] zeroinitializer }, align 32
@memremap.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"memremap attempted on ram %pa size: %#lx\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_memremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_memremap = external dso_local constant [0 x i8], align 1
@__ksymtab_memremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memremap to i32), ptr @__kstrtab_memremap, ptr @__kstrtabns_memremap }, section "___ksymtab+memremap", align 4
@__kstrtab_memunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_memunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_memunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memunmap to i32), ptr @__kstrtab_memunmap, ptr @__kstrtabns_memunmap }, section "___ksymtab+memunmap", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devm_memremap_release\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_devm_memremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_memremap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_memremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_memremap to i32), ptr @__kstrtab_devm_memremap, ptr @__kstrtabns_devm_memremap }, section "___ksymtab+devm_memremap", align 4
@__kstrtab_devm_memunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_memunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_memunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_memunmap to i32), ptr @__kstrtab_devm_memunmap, ptr @__kstrtabns_devm_memunmap }, section "___ksymtab+devm_memunmap", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 81, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 107, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [18 x i8] c"../kernel/iomem.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 144, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_devm_memremap, ptr @__ksymtab_devm_memunmap, ptr @__ksymtab_memremap, ptr @__ksymtab_memunmap, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memremap(i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %offset.addr, align 4
  %call = tail call i32 @region_intersects(i32 noundef %offset, i32 noundef %size, i32 noundef 16777728, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.end, label %if.end37

land.end:                                         ; preds = %if.end
  %.b141 = load i1, ptr @memremap.__already_done, align 1
  br i1 %.b141, label %land.end.cleanup_crit_edge, label %if.then7, !prof !26

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @memremap.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %offset.addr, i32 noundef %size) #3
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end37.if.end48_crit_edge, label %if.then39

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp40 = icmp eq i32 %call, 0
  br i1 %cmp40, label %if.then41, label %if.then39.if.then45_crit_edge

if.then39.if.then45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.then41:                                        ; preds = %if.then39
  %1 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset.addr, align 4
  %shr.i = lshr i32 %2, 12
  %call.i = tail call i32 @pfn_valid(i32 noundef %shr.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then41.if.then45_crit_edge, label %land.lhs.true.i

if.then41.if.then45_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

land.lhs.true.i:                                  ; preds = %if.then41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %4
  %add.ptr.i = getelementptr %struct.page, ptr %3, i32 %sub.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %land.lhs.true.i.if.end43_crit_edge [
    i32 2, label %land.lhs.true.i.if.then45_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

land.lhs.true.i.if.then45_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

land.lhs.true.i.if.end43_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

is_highmem_idx.exit.i:                            ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.then45_crit_edge, label %is_highmem_idx.exit.i.if.end43_crit_edge

is_highmem_idx.exit.i.if.end43_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

is_highmem_idx.exit.i.if.then45_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.end43:                                         ; preds = %is_highmem_idx.exit.i.if.end43_crit_edge, %land.lhs.true.i.if.end43_crit_edge
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #6, !srcloc !27
  %10 = inttoptr i32 %9 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool44.not = icmp eq i32 %9, 0
  br i1 %tobool44.not, label %if.end43.if.then45_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %is_highmem_idx.exit.i.if.then45_crit_edge, %land.lhs.true.i.if.then45_crit_edge, %if.then41.if.then45_crit_edge, %if.then39.if.then45_crit_edge
  %11 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.addr, align 4
  %call46 = tail call ptr @arch_memremap_wb(i32 noundef %12, i32 noundef %size) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end37.if.end48_crit_edge
  %addr.1 = phi ptr [ %call46, %if.then45 ], [ null, %if.end37.if.end48_crit_edge ]
  %tobool49.not = icmp eq ptr %addr.1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp50 = icmp ne i32 %call, 0
  %not.tobool49.not = xor i1 %tobool49.not, true
  %or.cond = select i1 %not.tobool49.not, i1 true, i1 %cmp50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flags)
  %cmp52.not = icmp eq i32 %flags, 1
  %or.cond142 = or i1 %cmp52.not, %or.cond
  br i1 %or.cond142, label %if.end102, label %land.end60

land.end60:                                       ; preds = %if.end48
  %.b139140 = load i1, ptr @memremap.__already_done.2, align 1
  br i1 %.b139140, label %land.end60.cleanup_crit_edge, label %if.then67, !prof !26

land.end60.cleanup_crit_edge:                     ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then67:                                        ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @memremap.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull %offset.addr, i32 noundef %size) #3
  br label %cleanup

if.end102:                                        ; preds = %if.end48
  br i1 %tobool49.not, label %land.lhs.true104, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true104:                                 ; preds = %if.end102
  %and105 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %land.lhs.true104.land.lhs.true111_crit_edge, label %if.end109

land.lhs.true104.land.lhs.true111_crit_edge:      ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true111

if.end109:                                        ; preds = %land.lhs.true104
  %13 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.addr, align 4
  %call108 = tail call ptr @ioremap_wc(i32 noundef %14, i32 noundef %size) #3
  %tobool110.not = icmp eq ptr %call108, null
  br i1 %tobool110.not, label %if.end109.land.lhs.true111_crit_edge, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end109.land.lhs.true111_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.end109.land.lhs.true111_crit_edge, %land.lhs.true104.land.lhs.true111_crit_edge
  %and112 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %land.lhs.true111.cleanup_crit_edge, label %if.then114

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then114:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.addr, align 4
  %call115 = tail call ptr @ioremap_wc(i32 noundef %16, i32 noundef %size) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %land.lhs.true111.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.then67, %land.end60.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then7 ], [ null, %land.end.cleanup_crit_edge ], [ null, %if.then67 ], [ null, %land.end60.cleanup_crit_edge ], [ %call108, %if.end109.cleanup_crit_edge ], [ %call115, %if.then114 ], [ null, %land.lhs.true111.cleanup_crit_edge ], [ %10, %if.end43.cleanup_crit_edge ], [ %addr.1, %if.end102.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @region_intersects(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_memremap_wb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memunmap(ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %addr) #3
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef %addr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_memremap(ptr noundef %dev, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_memremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @memremap(i32 noundef %offset, i32 noundef %size, i32 noundef %flags)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call1, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call1) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devres_free(ptr noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then5 ], [ inttoptr (i32 -6 to ptr), %if.else ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_memremap_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #3
  br i1 %call.i, label %if.then.i, label %entry.memunmap.exit_crit_edge

entry.memunmap.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %memunmap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef %1) #3
  br label %memunmap.exit

memunmap.exit:                                    ; preds = %if.then.i, %entry.memunmap.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_memunmap(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_memremap_release, ptr noundef nonnull @devm_memremap_match, ptr noundef %addr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !26

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devm_memremap_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr noundef readnone %match_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %match_data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/iomem.c", i32 81, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/iomem.c", i32 107, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_memremap, !8, !"__ksymtab_memremap", i1 false, i1 false}
!8 = !{!"../kernel/iomem.c", i32 120, i32 1}
!9 = !{ptr @__ksymtab_memunmap, !10, !"__ksymtab_memunmap", i1 false, i1 false}
!10 = !{!"../kernel/iomem.c", i32 127, i32 1}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/iomem.c", i32 144, i32 8}
!13 = !{ptr @__ksymtab_devm_memremap, !14, !"__ksymtab_devm_memremap", i1 false, i1 false}
!14 = !{!"../kernel/iomem.c", i32 160, i32 1}
!15 = !{ptr @__ksymtab_devm_memunmap, !16, !"__ksymtab_devm_memunmap", i1 false, i1 false}
!16 = !{!"../kernel/iomem.c", i32 167, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148882723, i64 2148882746, i64 2148882778, i64 2148882810, i64 2148882848, i64 2148882878}
