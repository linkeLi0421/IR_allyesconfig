; ModuleID = '/llk/IR_all_yes/block/partitions/karma.c_pt.bc'
source_filename = "../block/partitions/karma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.disklabel = type <{ [270 x i8], [2 x %struct.d_partition], [208 x i8], i16 }>
%struct.d_partition = type { i32, i8, [3 x i8], i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private constant [28 x i8] c"../block/partitions/karma.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 56, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 717, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 45, i32 30 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @karma_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #7
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !15
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_magic = getelementptr inbounds %struct.disklabel, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %d_magic to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %d_magic, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 22187, i16 %2)
  %cmp.not = icmp eq i16 %2, 22187
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %sect, align 4
  %4 = inttoptr i32 %.fca.0.load to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then2._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !16

if.then2._compound_head.exit.i.i_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %7, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then2._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %4, %if.then2._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !17

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@karma_partition, %if.then.i.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !22

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %11 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.end3.for.end_crit_edge, label %if.end9

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9:                                          ; preds = %if.end3
  %p_fstype = getelementptr inbounds %struct.disklabel, ptr %call, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %p_fstype to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %p_fstype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %14)
  %cmp11 = icmp eq i8 %14, 77
  br i1 %cmp11, label %land.lhs.true, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %p_size = getelementptr inbounds %struct.disklabel, ptr %call, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %p_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  %or.cond = select i1 %tobool13.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then.i, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %conv17 = zext i32 %17 to i64
  %p_offset = getelementptr inbounds %struct.disklabel, ptr %call, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p_offset, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %conv15 = zext i32 %20 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %21 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %22 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv15, ptr %arrayidx.i, align 8
  %25 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %25, i32 1, i32 1
  %26 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv17, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef 1) #7
  %27 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %28, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %land.lhs.true.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %29 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp6.1 = icmp eq i32 %30, 2
  br i1 %cmp6.1, label %if.end18.for.end_crit_edge, label %if.end9.1

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9.1:                                        ; preds = %if.end18
  %p_fstype.1 = getelementptr %struct.disklabel, ptr %call, i32 0, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %p_fstype.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %p_fstype.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %32)
  %cmp11.1 = icmp eq i8 %32, 77
  br i1 %cmp11.1, label %land.lhs.true.1, label %if.end9.1.for.end_crit_edge

if.end9.1.for.end_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.1:                                  ; preds = %if.end9.1
  %p_size.1 = getelementptr %struct.disklabel, ptr %call, i32 0, i32 1, i32 1, i32 4
  %33 = ptrtoint ptr %p_size.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p_size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not.1 = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i.1 = icmp sgt i32 %30, 2
  %or.cond.1 = select i1 %tobool13.not.1, i1 %cmp.i.1, i1 false
  br i1 %or.cond.1, label %if.then.i.1, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %conv17.1 = zext i32 %35 to i64
  %p_offset.1 = getelementptr %struct.disklabel, ptr %call, i32 0, i32 1, i32 1, i32 3
  %36 = ptrtoint ptr %p_offset.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_offset.1, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %conv15.1 = zext i32 %38 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %39 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %40 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parts.i, align 4
  %arrayidx.i.1 = getelementptr %struct.anon.83, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv15.1, ptr %arrayidx.i.1, align 8
  %43 = load ptr, ptr %parts.i, align 4
  %size4.i.1 = getelementptr %struct.anon.83, ptr %43, i32 2, i32 1
  %44 = ptrtoint ptr %size4.i.1 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv17.1, ptr %size4.i.1, align 8
  %call.i.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef 2) #7
  %45 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pp_buf.i, align 4
  %call7.i.1 = call i32 @strlcat(ptr noundef %46, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %for.end

for.end:                                          ; preds = %if.then.i.1, %land.lhs.true.1.for.end_crit_edge, %if.end9.1.for.end_crit_edge, %if.end18.for.end_crit_edge, %if.end3.for.end_crit_edge
  %47 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pp_buf.i, align 4
  %call20 = call i32 @strlcat(ptr noundef %48, ptr noundef nonnull @.str, i32 noundef 4096) #7
  %49 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.0.load34 = load i32, ptr %sect, align 4
  %50 = inttoptr i32 %.fca.0.load34 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i42 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i42)
  %tobool.not.i.i.i43 = icmp eq i32 %and.i.i.i42, 0
  br i1 %tobool.not.i.i.i43, label %for.end._compound_head.exit.i.i51_crit_edge, label %if.then.i.i.i46, !prof !16

for.end._compound_head.exit.i.i51_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i51

if.then.i.i.i46:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i44 = add i32 %53, -1
  %.pre.i45 = inttoptr i32 %sub.i.i.i44 to ptr
  br label %_compound_head.exit.i.i51

_compound_head.exit.i.i51:                        ; preds = %if.then.i.i.i46, %for.end._compound_head.exit.i.i51_crit_edge
  %.pre-phi.i47 = phi ptr [ %50, %for.end._compound_head.exit.i.i51_crit_edge ], [ %.pre.i45, %if.then.i.i.i46 ]
  %_refcount.i.i.i.i.i.i48 = getelementptr inbounds %struct.page, ptr %.pre-phi.i47, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i49 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i48, i32 noundef 4) #7
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i.i50 = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i.i50, label %if.then.i.i.i.i.i52, label %do.end5.i.i.i.i.i56, !prof !17

if.then.i.i.i.i.i52:                              ; preds = %_compound_head.exit.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i47, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end5.i.i.i.i.i56:                              ; preds = %_compound_head.exit.i.i51
  %call.i.i.i10.i.i.i.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i48, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i48, i32 1, i32 3, i32 1) #7
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i48, ptr %_refcount.i.i.i.i.i.i48, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i48) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i54 = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i54, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@karma_partition, %if.then.i.i.i.i.i.i58)) #7
          to label %folio_put_testzero.exit.i.i.i59 [label %if.then.i.i.i.i.i.i58], !srcloc !22

if.then.i.i.i.i.i.i58:                            ; preds = %do.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i57 = zext i1 %cmp.i.i.i.i.i.i.i.i55 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i47, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i57) #7
  br label %folio_put_testzero.exit.i.i.i59

folio_put_testzero.exit.i.i.i59:                  ; preds = %if.then.i.i.i.i.i.i58, %do.end5.i.i.i.i.i56
  br i1 %cmp.i.i.i.i.i.i.i.i55, label %folio_put_testzero.exit.i.i.i59.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i59.cleanup_crit_edge

folio_put_testzero.exit.i.i.i59.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i59.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i.i59.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge
  %.pre-phi.i47.sink = phi ptr [ %.pre-phi.i, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ %.pre-phi.i47, %folio_put_testzero.exit.i.i.i59.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i59.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.pre-phi.i47.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i.i59.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i59.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/karma.c", i32 56, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mm.h", i32 717, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/check.h", i32 45, i32 30}
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
!18 = !{i64 2153151358, i64 2153151841, i64 2153151395, i64 2153151451, i64 2153151485, i64 2153151509, i64 2153151550, i64 2153151571, i64 2153151599, i64 2153151633}
!19 = !{i64 2148793838}
!20 = !{i64 2148708547, i64 2148708579, i64 2148708608, i64 2148708642, i64 2148708673, i64 2148708696}
!21 = !{i64 2148794067}
!22 = !{i64 2148306039, i64 2148306044, i64 2148306057, i64 2148306101, i64 2148306135, i64 2148306156}
