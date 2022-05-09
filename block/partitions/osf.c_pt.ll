; ModuleID = '/llk/IR_all_yes/block/partitions/osf.c_pt.bc'
source_filename = "../block/partitions/osf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.d_partition = type { i32, i32, i32, i8, i8, i16 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private constant [26 x i8] c"../block/partitions/osf.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 84, i32 25 }
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
define dso_local i32 @osf_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %call, i32 64
  %d_partitions = getelementptr i8, ptr %call, i32 212
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1464161922, i32 %2)
  %cmp.not = icmp eq i32 %2, 1464161922
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
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
  br i1 %tobool.not.i.i.i, label %if.then1._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !16

if.then1._compound_head.exit.i.i_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %7, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then1._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %4, %if.then1._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@osf_partition, %if.then.i.i.i.i.i.i)) #7
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

if.end2:                                          ; preds = %if.end
  %d_magic2 = getelementptr i8, ptr %call, i32 196
  %11 = ptrtoint ptr %d_magic2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_magic2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1464161922, i32 %12)
  %cmp3.not = icmp eq i32 %12, 1464161922
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end2
  %13 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load41 = load i32, ptr %sect, align 4
  %14 = inttoptr i32 %.fca.0.load41 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i56 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i56)
  %tobool.not.i.i.i57 = icmp eq i32 %and.i.i.i56, 0
  br i1 %tobool.not.i.i.i57, label %if.then4._compound_head.exit.i.i65_crit_edge, label %if.then.i.i.i60, !prof !16

if.then4._compound_head.exit.i.i65_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i65

if.then.i.i.i60:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i58 = add i32 %17, -1
  %.pre.i59 = inttoptr i32 %sub.i.i.i58 to ptr
  br label %_compound_head.exit.i.i65

_compound_head.exit.i.i65:                        ; preds = %if.then.i.i.i60, %if.then4._compound_head.exit.i.i65_crit_edge
  %.pre-phi.i61 = phi ptr [ %14, %if.then4._compound_head.exit.i.i65_crit_edge ], [ %.pre.i59, %if.then.i.i.i60 ]
  %_refcount.i.i.i.i.i.i62 = getelementptr inbounds %struct.page, ptr %.pre-phi.i61, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i62, i32 noundef 4) #7
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i.i64 = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i.i.i.i66, label %do.end5.i.i.i.i.i70, !prof !17

if.then.i.i.i.i.i66:                              ; preds = %_compound_head.exit.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i61, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end5.i.i.i.i.i70:                              ; preds = %_compound_head.exit.i.i65
  %call.i.i.i10.i.i.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i62, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i62, i32 1, i32 3, i32 1) #7
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i62, ptr %_refcount.i.i.i.i.i.i62, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i62) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i68 = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i68, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@osf_partition, %if.then.i.i.i.i.i.i72)) #7
          to label %folio_put_testzero.exit.i.i.i73 [label %if.then.i.i.i.i.i.i72], !srcloc !22

if.then.i.i.i.i.i.i72:                            ; preds = %do.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i71 = zext i1 %cmp.i.i.i.i.i.i.i.i69 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i71) #7
  br label %folio_put_testzero.exit.i.i.i73

folio_put_testzero.exit.i.i.i73:                  ; preds = %if.then.i.i.i.i.i.i72, %do.end5.i.i.i.i.i70
  br i1 %cmp.i.i.i.i.i.i.i.i69, label %folio_put_testzero.exit.i.i.i73.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i73.cleanup_crit_edge

folio_put_testzero.exit.i.i.i73.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i73.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end2
  %d_npartitions = getelementptr i8, ptr %call, i32 202
  %21 = ptrtoint ptr %d_npartitions to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %d_npartitions, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %23)
  %cmp7 = icmp ugt i16 %23, 18
  br i1 %cmp7, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp12116.not = icmp eq i16 %22, 0
  br i1 %cmp12116.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %24 = call i16 @llvm.umax.i16(i16 %23, i16 1)
  %umax = zext i16 %24 to i32
  br label %for.body

if.then9:                                         ; preds = %if.end6
  %25 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.0.load44 = load i32, ptr %sect, align 4
  %26 = inttoptr i32 %.fca.0.load44 to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i76 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76)
  %tobool.not.i.i.i77 = icmp eq i32 %and.i.i.i76, 0
  br i1 %tobool.not.i.i.i77, label %if.then9._compound_head.exit.i.i85_crit_edge, label %if.then.i.i.i80, !prof !16

if.then9._compound_head.exit.i.i85_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i85

if.then.i.i.i80:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i78 = add i32 %29, -1
  %.pre.i79 = inttoptr i32 %sub.i.i.i78 to ptr
  br label %_compound_head.exit.i.i85

_compound_head.exit.i.i85:                        ; preds = %if.then.i.i.i80, %if.then9._compound_head.exit.i.i85_crit_edge
  %.pre-phi.i81 = phi ptr [ %26, %if.then9._compound_head.exit.i.i85_crit_edge ], [ %.pre.i79, %if.then.i.i.i80 ]
  %_refcount.i.i.i.i.i.i82 = getelementptr inbounds %struct.page, ptr %.pre-phi.i81, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i82, i32 noundef 4) #7
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i.i84 = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i.i84, label %if.then.i.i.i.i.i86, label %do.end5.i.i.i.i.i90, !prof !17

if.then.i.i.i.i.i86:                              ; preds = %_compound_head.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i81, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end5.i.i.i.i.i90:                              ; preds = %_compound_head.exit.i.i85
  %call.i.i.i10.i.i.i.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i82, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i82, i32 1, i32 3, i32 1) #7
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i82, ptr %_refcount.i.i.i.i.i.i82, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i82) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i88, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@osf_partition, %if.then.i.i.i.i.i.i92)) #7
          to label %folio_put_testzero.exit.i.i.i93 [label %if.then.i.i.i.i.i.i92], !srcloc !22

if.then.i.i.i.i.i.i92:                            ; preds = %do.end5.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i91 = zext i1 %cmp.i.i.i.i.i.i.i.i89 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i81, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i91) #7
  br label %folio_put_testzero.exit.i.i.i93

folio_put_testzero.exit.i.i.i93:                  ; preds = %if.then.i.i.i.i.i.i92, %do.end5.i.i.i.i.i90
  br i1 %cmp.i.i.i.i.i.i.i.i89, label %folio_put_testzero.exit.i.i.i93.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i93.cleanup_crit_edge

folio_put_testzero.exit.i.i.i93.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i93.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %partition.0120 = phi ptr [ %d_partitions, %for.body.lr.ph ], [ %incdec.ptr, %if.end23.for.body_crit_edge ]
  %slot.0118 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %33 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0118, i32 %34)
  %cmp14 = icmp eq i32 %slot.0118, %34
  br i1 %cmp14, label %for.body.for.end_crit_edge, label %if.end17

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end17:                                         ; preds = %for.body
  %35 = ptrtoint ptr %partition.0120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %partition.0120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool18.not = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %slot.0118)
  %cmp.i = icmp sgt i32 %34, %slot.0118
  %or.cond = select i1 %tobool18.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then.i, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %conv22 = zext i32 %37 to i64
  %p_offset = getelementptr inbounds %struct.d_partition, ptr %partition.0120, i32 0, i32 1
  %38 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p_offset, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %conv20 = zext i32 %40 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %41 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %42 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %43, i32 %slot.0118
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv20, ptr %arrayidx.i, align 8
  %45 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %45, i32 %slot.0118, i32 1
  %46 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv22, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef %slot.0118) #7
  %47 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %48, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.end17.if.end23_crit_edge
  %inc = add nuw nsw i32 %slot.0118, 1
  %incdec.ptr = getelementptr %struct.d_partition, ptr %partition.0120, i32 1
  %exitcond.not = icmp eq i32 %slot.0118, %umax
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %49 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pp_buf, align 4
  %call25 = call i32 @strlcat(ptr noundef %50, ptr noundef nonnull @.str, i32 noundef 4096) #7
  %51 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.0.load47 = load i32, ptr %sect, align 4
  %52 = inttoptr i32 %.fca.0.load47 to ptr
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i.i96 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96)
  %tobool.not.i.i.i97 = icmp eq i32 %and.i.i.i96, 0
  br i1 %tobool.not.i.i.i97, label %for.end._compound_head.exit.i.i105_crit_edge, label %if.then.i.i.i100, !prof !16

for.end._compound_head.exit.i.i105_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i105

if.then.i.i.i100:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i98 = add i32 %55, -1
  %.pre.i99 = inttoptr i32 %sub.i.i.i98 to ptr
  br label %_compound_head.exit.i.i105

_compound_head.exit.i.i105:                       ; preds = %if.then.i.i.i100, %for.end._compound_head.exit.i.i105_crit_edge
  %.pre-phi.i101 = phi ptr [ %52, %for.end._compound_head.exit.i.i105_crit_edge ], [ %.pre.i99, %if.then.i.i.i100 ]
  %_refcount.i.i.i.i.i.i102 = getelementptr inbounds %struct.page, ptr %.pre-phi.i101, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i102, i32 noundef 4) #7
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i.i104 = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i.i104, label %if.then.i.i.i.i.i106, label %do.end5.i.i.i.i.i110, !prof !17

if.then.i.i.i.i.i106:                             ; preds = %_compound_head.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i101, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end5.i.i.i.i.i110:                             ; preds = %_compound_head.exit.i.i105
  %call.i.i.i10.i.i.i.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i102, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i102, i32 1, i32 3, i32 1) #7
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i102, ptr %_refcount.i.i.i.i.i.i102, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i102) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i.i108 = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i108)
  %cmp.i.i.i.i.i.i.i.i109 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i108, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@osf_partition, %if.then.i.i.i.i.i.i112)) #7
          to label %folio_put_testzero.exit.i.i.i113 [label %if.then.i.i.i.i.i.i112], !srcloc !22

if.then.i.i.i.i.i.i112:                           ; preds = %do.end5.i.i.i.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i111 = zext i1 %cmp.i.i.i.i.i.i.i.i109 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i101, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i111) #7
  br label %folio_put_testzero.exit.i.i.i113

folio_put_testzero.exit.i.i.i113:                 ; preds = %if.then.i.i.i.i.i.i112, %do.end5.i.i.i.i.i110
  br i1 %cmp.i.i.i.i.i.i.i.i109, label %folio_put_testzero.exit.i.i.i113.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i113.cleanup_crit_edge

folio_put_testzero.exit.i.i.i113.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i113.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i.i113.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i93.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i73.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge
  %.pre-phi.i101.sink = phi ptr [ %.pre-phi.i, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ %.pre-phi.i61, %folio_put_testzero.exit.i.i.i73.cleanup.sink.split_crit_edge ], [ %.pre-phi.i81, %folio_put_testzero.exit.i.i.i93.cleanup.sink.split_crit_edge ], [ %.pre-phi.i101, %folio_put_testzero.exit.i.i.i113.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i73.cleanup.sink.split_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i93.cleanup.sink.split_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i113.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.pre-phi.i101.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i.i113.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i93.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i73.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i73.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i93.cleanup_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i113.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

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
!1 = !{!"../block/partitions/osf.c", i32 84, i32 25}
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
!18 = !{i64 2153152165, i64 2153152648, i64 2153152202, i64 2153152258, i64 2153152292, i64 2153152316, i64 2153152357, i64 2153152378, i64 2153152406, i64 2153152440}
!19 = !{i64 2148794645}
!20 = !{i64 2148709354, i64 2148709386, i64 2148709415, i64 2148709449, i64 2148709480, i64 2148709503}
!21 = !{i64 2148794874}
!22 = !{i64 2148306846, i64 2148306851, i64 2148306864, i64 2148306908, i64 2148306942, i64 2148306963}
