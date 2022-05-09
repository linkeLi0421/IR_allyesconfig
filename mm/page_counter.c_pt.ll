; ModuleID = '/llk/IR_all_yes/mm/page_counter.c_pt.bc'
source_filename = "../mm/page_counter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.atomic_t = type { i32 }

@page_counter_cancel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mm/page_counter.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"page_counter underflow: %ld nr_pages=%lu\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [21 x i8] c"../mm/page_counter.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 56, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_counter_cancel(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %counter, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counter, ptr %counter, i32 %nr_pages, ptr elementtype(i32) %counter) #6, !srcloc !14
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @page_counter_cancel.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.then36_crit_edge, label %if.then, !prof !16

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @page_counter_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i, i32 noundef %nr_pages) #6
  br label %if.then36

if.then36:                                        ; preds = %if.then, %land.rhs.if.then36_crit_edge
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #6
  %1 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %counter, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %entry.if.end38_crit_edge
  %new.0 = phi i32 [ 0, %if.then36 ], [ %asmresult.i.i.i.i, %entry.if.end38_crit_edge ]
  tail call fastcc void @propagate_protected_usage(ptr noundef %counter, i32 noundef %new.0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @propagate_protected_usage(ptr noundef %c, i32 noundef %usage) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 13
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %min1 = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %min1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %min1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.end.if.then4_crit_edge

do.end.if.then4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.end
  %min_usage = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %min_usage, i32 noundef 4) #6
  %4 = ptrtoint ptr %min_usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %min_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.end15_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %do.end.if.then4_crit_edge
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %usage)
  %min_usage6 = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 6
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %min_usage6, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr %min_usage6, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %6, ptr %min_usage6) #6, !srcloc !18
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %asmresult.i.i.i)
  %tobool8.not = icmp eq i32 %6, %asmresult.i.i.i
  br i1 %tobool8.not, label %if.then4.do.end15_crit_edge, label %if.then9

if.then4.do.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %6, %asmresult.i.i.i
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %children_min_usage = getelementptr inbounds %struct.page_counter, ptr %9, i32 0, i32 7
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %children_min_usage, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %children_min_usage, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %children_min_usage, ptr %children_min_usage, i32 %sub, ptr elementtype(i32) %children_min_usage) #6, !srcloc !20
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %if.then4.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge
  %low17 = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 2
  %11 = ptrtoint ptr %low17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %low17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %do.end15.if.then22_crit_edge

do.end15.if.then22_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false19:                                  ; preds = %do.end15
  %low_usage = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 9
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %low_usage, i32 noundef 4) #6
  %13 = ptrtoint ptr %low_usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %low_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %lor.lhs.false19.cleanup_crit_edge, label %lor.lhs.false19.if.then22_crit_edge

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %do.end15.if.then22_crit_edge
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %usage)
  %low_usage29 = getelementptr inbounds %struct.page_counter, ptr %c, i32 0, i32 9
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %low_usage29, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr %low_usage29, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %15, ptr %low_usage29) #6, !srcloc !18
  %asmresult.i.i.i69 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %asmresult.i.i.i69)
  %tobool32.not = icmp eq i32 %15, %asmresult.i.i.i69
  br i1 %tobool32.not, label %if.then22.cleanup_crit_edge, label %if.then33

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %sub31 = sub i32 %15, %asmresult.i.i.i69
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 4
  %children_low_usage = getelementptr inbounds %struct.page_counter, ptr %18, i32 0, i32 10
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %children_low_usage, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %children_low_usage, i32 1, i32 3, i32 1) #6
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %children_low_usage, ptr %children_low_usage, i32 %sub31, ptr elementtype(i32) %children_low_usage) #6, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then22.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_counter_charge(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not18 = icmp eq ptr %counter, null
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %c.019 = phi ptr [ %5, %if.end.for.body_crit_edge ], [ %counter, %entry.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.019, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %c.019, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %c.019, ptr nonnull %c.019, i32 %nr_pages, ptr nonnull elementtype(i32) %c.019) #6, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call fastcc void @propagate_protected_usage(ptr noundef nonnull %c.019, i32 noundef %asmresult.i.i.i.i)
  %watermark = getelementptr inbounds %struct.page_counter, ptr %c.019, i32 0, i32 11
  %1 = ptrtoint ptr %watermark to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %2)
  %cmp = icmp ugt i32 %asmresult.i.i.i.i, %2
  br i1 %cmp, label %do.body5, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %asmresult.i.i.i.i, ptr %watermark, align 4
  br label %if.end

if.end:                                           ; preds = %do.body5, %for.body.if.end_crit_edge
  %parent = getelementptr inbounds %struct.page_counter, ptr %c.019, i32 0, i32 13
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @page_counter_try_charge(ptr noundef %counter, i32 noundef %nr_pages, ptr nocapture noundef %fail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not49 = icmp eq ptr %counter, null
  br i1 %tobool.not49, label %entry.cleanup23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %c.050 = phi ptr [ %11, %for.inc.for.body_crit_edge ], [ %counter, %entry.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.050, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %c.050, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %c.050, ptr nonnull %c.050, i32 %nr_pages, ptr nonnull elementtype(i32) %c.050) #6, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  %max = getelementptr inbounds %struct.page_counter, ptr %c.050, i32 0, i32 4
  %1 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %2)
  %cmp = icmp ugt i32 %asmresult.i.i.i.i, %2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  tail call fastcc void @propagate_protected_usage(ptr noundef nonnull %c.050, i32 noundef %asmresult.i.i.i.i)
  %watermark = getelementptr inbounds %struct.page_counter, ptr %c.050, i32 0, i32 11
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %4)
  %cmp4 = icmp ugt i32 %asmresult.i.i.i.i, %4
  br i1 %cmp4, label %do.body10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %watermark to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %asmresult.i.i.i.i, ptr %watermark, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.050, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %c.050, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %c.050, ptr nonnull %c.050, i32 %nr_pages, ptr nonnull elementtype(i32) %c.050) #6, !srcloc !24
  %failcnt = getelementptr inbounds %struct.page_counter, ptr %c.050, i32 0, i32 12
  %7 = ptrtoint ptr %failcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %failcnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %failcnt, align 4
  %9 = ptrtoint ptr %fail to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %c.050, ptr %fail, align 4
  %cmp18.not52 = icmp eq ptr %c.050, %counter
  br i1 %cmp18.not52, label %cleanup.cleanup23_crit_edge, label %cleanup.for.body19_crit_edge

cleanup.for.body19_crit_edge:                     ; preds = %cleanup
  br label %for.body19

cleanup.cleanup23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.inc:                                          ; preds = %do.body10, %if.end.for.inc_crit_edge
  %parent = getelementptr inbounds %struct.page_counter, ptr %c.050, i32 0, i32 13
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.inc.cleanup23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.body19:                                       ; preds = %page_counter_cancel.exit.for.body19_crit_edge, %cleanup.for.body19_crit_edge
  %c.153 = phi ptr [ %15, %page_counter_cancel.exit.for.body19_crit_edge ], [ %counter, %cleanup.for.body19_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %c.153, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %c.153, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %c.153, ptr %c.153, i32 %nr_pages, ptr elementtype(i32) %c.153) #6, !srcloc !14
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %for.body19.page_counter_cancel.exit_crit_edge

for.body19.page_counter_cancel.exit_crit_edge:    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_counter_cancel.exit

land.rhs.i:                                       ; preds = %for.body19
  %.b47.i = load i1, ptr @page_counter_cancel.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.then36.i_crit_edge, label %if.then.i, !prof !16

land.rhs.i.if.then36.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @page_counter_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %nr_pages) #6
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then36.i_crit_edge
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %c.153, i32 noundef 4) #6
  %13 = ptrtoint ptr %c.153 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %c.153, align 4
  br label %page_counter_cancel.exit

page_counter_cancel.exit:                         ; preds = %if.then36.i, %for.body19.page_counter_cancel.exit_crit_edge
  %new.0.i = phi i32 [ 0, %if.then36.i ], [ %asmresult.i.i.i.i.i, %for.body19.page_counter_cancel.exit_crit_edge ]
  tail call fastcc void @propagate_protected_usage(ptr noundef %c.153, i32 noundef %new.0.i) #6
  %parent21 = getelementptr inbounds %struct.page_counter, ptr %c.153, i32 0, i32 13
  %14 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent21, align 4
  %16 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fail, align 4
  %cmp18.not = icmp eq ptr %15, %17
  br i1 %cmp18.not, label %page_counter_cancel.exit.cleanup23_crit_edge, label %page_counter_cancel.exit.for.body19_crit_edge

page_counter_cancel.exit.for.body19_crit_edge:    ; preds = %page_counter_cancel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

page_counter_cancel.exit.cleanup23_crit_edge:     ; preds = %page_counter_cancel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

cleanup23:                                        ; preds = %page_counter_cancel.exit.cleanup23_crit_edge, %for.inc.cleanup23_crit_edge, %cleanup.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %tobool.not47 = phi i1 [ false, %cleanup.cleanup23_crit_edge ], [ true, %entry.cleanup23_crit_edge ], [ false, %page_counter_cancel.exit.cleanup23_crit_edge ], [ true, %for.inc.cleanup23_crit_edge ]
  ret i1 %tobool.not47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_counter_uncharge(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not3 = icmp eq ptr %counter, null
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %page_counter_cancel.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %c.04 = phi ptr [ %3, %page_counter_cancel.exit.for.body_crit_edge ], [ %counter, %entry.for.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.04, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr nonnull %c.04, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %c.04, ptr nonnull %c.04, i32 %nr_pages, ptr nonnull elementtype(i32) %c.04) #6, !srcloc !14
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %for.body.page_counter_cancel.exit_crit_edge

for.body.page_counter_cancel.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_counter_cancel.exit

land.rhs.i:                                       ; preds = %for.body
  %.b47.i = load i1, ptr @page_counter_cancel.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.then36.i_crit_edge, label %if.then.i, !prof !16

land.rhs.i.if.then36.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @page_counter_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %nr_pages) #6
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then36.i_crit_edge
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.04, i32 noundef 4) #6
  %1 = ptrtoint ptr %c.04 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %c.04, align 4
  br label %page_counter_cancel.exit

page_counter_cancel.exit:                         ; preds = %if.then36.i, %for.body.page_counter_cancel.exit_crit_edge
  %new.0.i = phi i32 [ 0, %if.then36.i ], [ %asmresult.i.i.i.i.i, %for.body.page_counter_cancel.exit_crit_edge ]
  tail call fastcc void @propagate_protected_usage(ptr noundef nonnull %c.04, i32 noundef %new.0.i) #6
  %parent = getelementptr inbounds %struct.page_counter, ptr %c.04, i32 0, i32 13
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %page_counter_cancel.exit.for.end_crit_edge, label %page_counter_cancel.exit.for.body_crit_edge

page_counter_cancel.exit.for.body_crit_edge:      ; preds = %page_counter_cancel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

page_counter_cancel.exit.for.end_crit_edge:       ; preds = %page_counter_cancel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %page_counter_cancel.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_counter_set_max(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.page_counter, ptr %counter, i32 0, i32 4
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #6
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nr_pages)
  %cmp37 = icmp ugt i32 %1, %nr_pages
  br i1 %cmp37, label %entry.return_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = phi i32 [ %8, %cleanup.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %max, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %max, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %nr_pages, ptr %max) #6, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  %call.i.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #6
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %2)
  %cmp17.not = icmp ugt i32 %5, %2
  br i1 %cmp17.not, label %cleanup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cleanup:                                          ; preds = %if.end
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i, ptr %max, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 0) #6
  %call.i31 = tail call i32 @__cond_resched() #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #6
  %7 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %counter, align 4
  %cmp = icmp ugt i32 %8, %nr_pages
  br i1 %cmp, label %cleanup.return_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1.ph = phi i32 [ -16, %entry.return_crit_edge ], [ -16, %cleanup.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_counter_set_min(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %min = getelementptr inbounds %struct.page_counter, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %nr_pages, ptr %min, align 4
  %tobool.not11 = icmp eq ptr %counter, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %c.012 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %counter, %entry.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %c.012, i32 noundef 4) #6
  %1 = ptrtoint ptr %c.012 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %c.012, align 4
  tail call fastcc void @propagate_protected_usage(ptr noundef nonnull %c.012, i32 noundef %2)
  %parent = getelementptr inbounds %struct.page_counter, ptr %c.012, i32 0, i32 13
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_counter_set_low(ptr noundef %counter, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %low = getelementptr inbounds %struct.page_counter, ptr %counter, i32 0, i32 2
  %0 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %nr_pages, ptr %low, align 4
  %tobool.not11 = icmp eq ptr %counter, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %c.012 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %counter, %entry.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %c.012, i32 noundef 4) #6
  %1 = ptrtoint ptr %c.012 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %c.012, align 4
  tail call fastcc void @propagate_protected_usage(ptr noundef nonnull %c.012, i32 noundef %2)
  %parent = getelementptr inbounds %struct.page_counter, ptr %c.012, i32 0, i32 13
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_counter_memparse(ptr noundef %buf, ptr nocapture noundef readonly %max, ptr nocapture noundef writeonly %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #6
  %0 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !27
  %call = tail call i32 @strcmp(ptr noundef %buf, ptr noundef %max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = call i64 @memparse(ptr noundef %buf, ptr noundef nonnull %end) #6
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8796093018112, i64 %call1)
  %cmp5 = icmp ult i64 %call1, 8796093018112
  %div13 = lshr i64 %call1, 12
  %extract.t = trunc i64 %div13 to i32
  %cond.off0 = select i1 %cmp5, i32 %extract.t, i32 2147483647
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %entry.cleanup.sink.split_crit_edge
  %cond.off0.sink = phi i32 [ %cond.off0, %if.end4 ], [ 2147483647, %entry.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.off0.sink, ptr %nr_pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../mm/page_counter.c", i32 56, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148214152}
!14 = !{i64 2148128885, i64 2148128917, i64 2148128946, i64 2148128980, i64 2148129011, i64 2148129034}
!15 = !{i64 2148214381}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148301363}
!18 = !{i64 632468, i64 632485, i64 632509, i64 632535, i64 632553}
!19 = !{i64 2148301733}
!20 = !{i64 2148125700, i64 2148125726, i64 2148125755, i64 2148125789, i64 2148125820, i64 2148125843}
!21 = !{i64 2148211111}
!22 = !{i64 2148126420, i64 2148126452, i64 2148126481, i64 2148126515, i64 2148126546, i64 2148126569}
!23 = !{i64 2148211340}
!24 = !{i64 2148128165, i64 2148128191, i64 2148128220, i64 2148128254, i64 2148128285, i64 2148128308}
!25 = !{i64 2150478215}
!26 = !{i64 2150478565}
!27 = !{!"auto-init"}
