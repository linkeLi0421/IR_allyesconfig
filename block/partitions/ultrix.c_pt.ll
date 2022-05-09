; ModuleID = '/llk/IR_all_yes/block/partitions/ultrix.c_pt.bc'
source_filename = "../block/partitions/ultrix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.pt_info = type { i32, i32 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.4 = private constant [29 x i8] c"../block/partitions/ultrix.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 42, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 45, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 717, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ultrix_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #6
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !15
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 31, ptr noundef nonnull %sect) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %call, i32 440
  %1 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 207191, i32 %2)
  %cmp = icmp eq i32 %2, 207191
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %pt_valid = getelementptr i8, ptr %call, i32 444
  %3 = ptrtoint ptr %pt_valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pt_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %for.cond.preheader, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %pt_part = getelementptr i8, ptr %call, i32 448
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.054 = phi i32 [ 0, %for.cond.preheader ], [ %.pre, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.pt_info], ptr %pt_part, i32 0, i32 %i.054
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  %.pre = add nuw nsw i32 %i.054, 1
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %7 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.pre)
  %cmp.i = icmp sgt i32 %8, %.pre
  br i1 %cmp.i, label %if.then.i, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = sext i32 %6 to i64
  %pi_blkoff = getelementptr inbounds %struct.pt_info, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %pi_blkoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pi_blkoff, align 4
  %conv = zext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #6
  %11 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %12 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %13, i32 %.pre
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %arrayidx.i, align 8
  %15 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %15, i32 %.pre, i32 1
  %16 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv12, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.1, ptr noundef %name.i, i32 noundef %.pre) #6
  %17 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %18, ptr noundef nonnull %tmp.i, i32 noundef 4096) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %.pre, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %19 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.0.load = load i32, ptr %sect, align 4
  %20 = inttoptr i32 %.fca.0.load to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !16

for.end._compound_head.exit.i.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %23, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %for.end._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %20, %for.end._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !17

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.2) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ultrix_partition, %if.then.i.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !22

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %.pre-phi.i) #6
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %27 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pp_buf.i, align 4
  %call14 = call i32 @strlcat(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef 4096) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %29 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.0.load25 = load i32, ptr %sect, align 4
  %30 = inttoptr i32 %.fca.0.load25 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i34)
  %tobool.not.i.i.i35 = icmp eq i32 %and.i.i.i34, 0
  br i1 %tobool.not.i.i.i35, label %if.else._compound_head.exit.i.i43_crit_edge, label %if.then.i.i.i38, !prof !16

if.else._compound_head.exit.i.i43_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %_compound_head.exit.i.i43

if.then.i.i.i38:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i36 = add i32 %33, -1
  %.pre.i37 = inttoptr i32 %sub.i.i.i36 to ptr
  br label %_compound_head.exit.i.i43

_compound_head.exit.i.i43:                        ; preds = %if.then.i.i.i38, %if.else._compound_head.exit.i.i43_crit_edge
  %.pre-phi.i39 = phi ptr [ %30, %if.else._compound_head.exit.i.i43_crit_edge ], [ %.pre.i37, %if.then.i.i.i38 ]
  %_refcount.i.i.i.i.i.i40 = getelementptr inbounds %struct.page, ptr %.pre-phi.i39, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i40, i32 noundef 4) #6
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i.i42 = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i.i42, label %if.then.i.i.i.i.i44, label %do.end5.i.i.i.i.i48, !prof !17

if.then.i.i.i.i.i44:                              ; preds = %_compound_head.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %.pre-phi.i39, ptr noundef nonnull @.str.2) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

do.end5.i.i.i.i.i48:                              ; preds = %_compound_head.exit.i.i43
  %call.i.i.i10.i.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i40, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i40, i32 1, i32 3, i32 1) #6
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i40, ptr %_refcount.i.i.i.i.i.i40, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i40) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i46 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i46)
  %cmp.i.i.i.i.i.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i46, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ultrix_partition, %if.then.i.i.i.i.i.i50)) #6
          to label %folio_put_testzero.exit.i.i.i51 [label %if.then.i.i.i.i.i.i50], !srcloc !22

if.then.i.i.i.i.i.i50:                            ; preds = %do.end5.i.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i.i49 = zext i1 %cmp.i.i.i.i.i.i.i.i47 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i39, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i49) #6
  br label %folio_put_testzero.exit.i.i.i51

folio_put_testzero.exit.i.i.i51:                  ; preds = %if.then.i.i.i.i.i.i50, %do.end5.i.i.i.i.i48
  br i1 %cmp.i.i.i.i.i.i.i.i47, label %if.then.i4.i.i52, label %folio_put_testzero.exit.i.i.i51.cleanup_crit_edge

folio_put_testzero.exit.i.i.i51.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i4.i.i52:                                 ; preds = %folio_put_testzero.exit.i.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %.pre-phi.i39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i52, %folio_put_testzero.exit.i.i.i51.cleanup_crit_edge, %put_dev_sector.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %put_dev_sector.exit ], [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i51.cleanup_crit_edge ], [ 0, %if.then.i4.i.i52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/ultrix.c", i32 42, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/check.h", i32 45, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/mm.h", i32 717, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153151400, i64 2153151883, i64 2153151437, i64 2153151493, i64 2153151527, i64 2153151551, i64 2153151592, i64 2153151613, i64 2153151641, i64 2153151675}
!19 = !{i64 2148793880}
!20 = !{i64 2148708589, i64 2148708621, i64 2148708650, i64 2148708684, i64 2148708715, i64 2148708738}
!21 = !{i64 2148794109}
!22 = !{i64 2148306081, i64 2148306086, i64 2148306099, i64 2148306143, i64 2148306177, i64 2148306198}
