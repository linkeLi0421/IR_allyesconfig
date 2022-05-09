; ModuleID = '/llk/IR_all_yes/block/partitions/sysv68.c_pt.bc'
source_filename = "../block/partitions/sysv68.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.volumeid = type { [248 x i8], [8 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.dkblk0 = type { %struct.volumeid, %struct.dkconfig }
%struct.dkconfig = type { [128 x i8], i32, i16, [122 x i8] }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.slice = type { i32, i32 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOTOROLA\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysV68: %s(s%u)\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(s%u)\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 64, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 77, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 87, i32 31 }
@___asan_gen_.16 = private constant [29 x i8] c"../block/partitions/sysv68.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 92, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 717, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 45, i32 30 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv68_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #7
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #7
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 64)
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vid_mac = getelementptr inbounds %struct.volumeid, ptr %call, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %vid_mac, ptr noundef nonnull dereferenceable(8) @.str, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %sect, align 4
  %3 = inttoptr i32 %.fca.0.load to ptr
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !22

if.then3._compound_head.exit.i.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %6, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then3._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %3, %if.then3._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !23

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %9 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv68_partition, %if.then.i.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !28

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

if.end4:                                          ; preds = %if.end
  %ios_slccnt = getelementptr inbounds %struct.dkblk0, ptr %call, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %ios_slccnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ios_slccnt, align 4
  %ios_slcblk = getelementptr inbounds %struct.dkblk0, ptr %call, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ios_slcblk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ios_slcblk, align 4
  %14 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.0.load53 = load i32, ptr %sect, align 4
  %15 = inttoptr i32 %.fca.0.load53 to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i72 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.not.i.i.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool.not.i.i.i73, label %if.end4._compound_head.exit.i.i81_crit_edge, label %if.then.i.i.i76, !prof !22

if.end4._compound_head.exit.i.i81_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i81

if.then.i.i.i76:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i74 = add i32 %18, -1
  %.pre.i75 = inttoptr i32 %sub.i.i.i74 to ptr
  br label %_compound_head.exit.i.i81

_compound_head.exit.i.i81:                        ; preds = %if.then.i.i.i76, %if.end4._compound_head.exit.i.i81_crit_edge
  %.pre-phi.i77 = phi ptr [ %15, %if.end4._compound_head.exit.i.i81_crit_edge ], [ %.pre.i75, %if.then.i.i.i76 ]
  %_refcount.i.i.i.i.i.i78 = getelementptr inbounds %struct.page, ptr %.pre-phi.i77, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i79 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i78, i32 noundef 4) #7
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i.i80 = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i.i80, label %if.then.i.i.i.i.i82, label %do.end5.i.i.i.i.i86, !prof !23

if.then.i.i.i.i.i82:                              ; preds = %_compound_head.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i77, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i86:                              ; preds = %_compound_head.exit.i.i81
  %call.i.i.i10.i.i.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i78, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i78, i32 1, i32 3, i32 1) #7
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i78, ptr %_refcount.i.i.i.i.i.i78, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i78) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i84 = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i84, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv68_partition, %if.then.i.i.i.i.i.i88)) #7
          to label %folio_put_testzero.exit.i.i.i89 [label %if.then.i.i.i.i.i.i88], !srcloc !28

if.then.i.i.i.i.i.i88:                            ; preds = %do.end5.i.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i87 = zext i1 %cmp.i.i.i.i.i.i.i.i85 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i77, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i87) #7
  br label %folio_put_testzero.exit.i.i.i89

folio_put_testzero.exit.i.i.i89:                  ; preds = %if.then.i.i.i.i.i.i88, %do.end5.i.i.i.i.i86
  br i1 %cmp.i.i.i.i.i.i.i.i85, label %if.then.i4.i.i90, label %folio_put_testzero.exit.i.i.i89.put_dev_sector.exit91_crit_edge

folio_put_testzero.exit.i.i.i89.put_dev_sector.exit91_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev_sector.exit91

if.then.i4.i.i90:                                 ; preds = %folio_put_testzero.exit.i.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %.pre-phi.i77) #7
  br label %put_dev_sector.exit91

put_dev_sector.exit91:                            ; preds = %if.then.i4.i.i90, %folio_put_testzero.exit.i.i.i89.put_dev_sector.exit91_crit_edge
  %conv7 = sext i32 %13 to i64
  %call8 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv7, ptr noundef nonnull %sect) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %put_dev_sector.exit91.cleanup_crit_edge, label %if.end11

put_dev_sector.exit91.cleanup_crit_edge:          ; preds = %put_dev_sector.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %put_dev_sector.exit91
  %conv = zext i16 %11 to i32
  %sub = add nsw i32 %conv, -1
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %sub)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %22 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pp_buf, align 4
  %call16 = call i32 @strlcat(ptr noundef %23, ptr noundef nonnull %tmp, i32 noundef 4096) #7
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp112 = icmp ugt i16 %11, 1
  br i1 %cmp112, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %slice.0118 = phi ptr [ %call8, %for.body.lr.ph ], [ %incdec.ptr, %if.end32.for.body_crit_edge ]
  %slot.0115 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end32.for.body_crit_edge ]
  %24 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0115, i32 %25)
  %cmp18 = icmp eq i32 %slot.0115, %25
  br i1 %cmp18, label %for.body.for.end_crit_edge, label %if.end21

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end21:                                         ; preds = %for.body
  %26 = ptrtoint ptr %slice.0118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slice.0118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not = icmp eq i32 %27, 0
  br i1 %tobool22.not, label %if.end21.if.end32_crit_edge, label %if.then23

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %slot.0115)
  %cmp.i = icmp sgt i32 %25, %slot.0115
  br i1 %cmp.i, label %if.then.i, label %if.then23.put_partition.exit_crit_edge

if.then23.put_partition.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = zext i32 %27 to i64
  %blkoff = getelementptr inbounds %struct.slice, ptr %slice.0118, i32 0, i32 1
  %28 = ptrtoint ptr %blkoff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blkoff, align 4
  %conv24 = zext i32 %29 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %30 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %31 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %32, i32 %slot.0115
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv24, ptr %arrayidx.i, align 8
  %34 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %34, i32 %slot.0115, i32 1
  %35 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv26, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %slot.0115) #7
  %36 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %37, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then23.put_partition.exit_crit_edge
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %i.0113)
  %38 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pp_buf, align 4
  %call31 = call i32 @strlcat(ptr noundef %39, ptr noundef nonnull %tmp, i32 noundef 4096) #7
  br label %if.end32

if.end32:                                         ; preds = %put_partition.exit, %if.end21.if.end32_crit_edge
  %inc = add nuw nsw i32 %slot.0115, 1
  %inc33 = add nuw nsw i32 %i.0113, 1
  %incdec.ptr = getelementptr %struct.slice, ptr %slice.0118, i32 1
  %exitcond.not = icmp eq i32 %inc33, %sub
  br i1 %exitcond.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %40 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_buf, align 4
  %call35 = call i32 @strlcat(ptr noundef %41, ptr noundef nonnull @.str.3, i32 noundef 4096) #7
  %42 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.0.load56 = load i32, ptr %sect, align 4
  %43 = inttoptr i32 %.fca.0.load56 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i92 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i92)
  %tobool.not.i.i.i93 = icmp eq i32 %and.i.i.i92, 0
  br i1 %tobool.not.i.i.i93, label %for.end._compound_head.exit.i.i101_crit_edge, label %if.then.i.i.i96, !prof !22

for.end._compound_head.exit.i.i101_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i101

if.then.i.i.i96:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i94 = add i32 %46, -1
  %.pre.i95 = inttoptr i32 %sub.i.i.i94 to ptr
  br label %_compound_head.exit.i.i101

_compound_head.exit.i.i101:                       ; preds = %if.then.i.i.i96, %for.end._compound_head.exit.i.i101_crit_edge
  %.pre-phi.i97 = phi ptr [ %43, %for.end._compound_head.exit.i.i101_crit_edge ], [ %.pre.i95, %if.then.i.i.i96 ]
  %_refcount.i.i.i.i.i.i98 = getelementptr inbounds %struct.page, ptr %.pre-phi.i97, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i98, i32 noundef 4) #7
  %47 = ptrtoint ptr %_refcount.i.i.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i.i.i.i100 = icmp eq i32 %48, 0
  br i1 %cmp.i.i.i.i.i100, label %if.then.i.i.i.i.i102, label %do.end5.i.i.i.i.i106, !prof !23

if.then.i.i.i.i.i102:                             ; preds = %_compound_head.exit.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i97, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i106:                             ; preds = %_compound_head.exit.i.i101
  %call.i.i.i10.i.i.i.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i98, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i98, i32 1, i32 3, i32 1) #7
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i98, ptr %_refcount.i.i.i.i.i.i98, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i98) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i104 = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i104, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv68_partition, %if.then.i.i.i.i.i.i108)) #7
          to label %folio_put_testzero.exit.i.i.i109 [label %if.then.i.i.i.i.i.i108], !srcloc !28

if.then.i.i.i.i.i.i108:                           ; preds = %do.end5.i.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i107 = zext i1 %cmp.i.i.i.i.i.i.i.i105 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i97, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i107) #7
  br label %folio_put_testzero.exit.i.i.i109

folio_put_testzero.exit.i.i.i109:                 ; preds = %if.then.i.i.i.i.i.i108, %do.end5.i.i.i.i.i106
  br i1 %cmp.i.i.i.i.i.i.i.i105, label %folio_put_testzero.exit.i.i.i109.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i109.cleanup_crit_edge

folio_put_testzero.exit.i.i.i109.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i109.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i.i109.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge
  %.pre-phi.i97.sink = phi ptr [ %.pre-phi.i, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ %.pre-phi.i97, %folio_put_testzero.exit.i.i.i109.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i109.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.pre-phi.i97.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i.i109.cleanup_crit_edge, %put_dev_sector.exit91.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %put_dev_sector.exit91.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i109.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/sysv68.c", i32 64, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/sysv68.c", i32 77, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/sysv68.c", i32 87, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/sysv68.c", i32 92, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 717, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/partitions/check.h", i32 45, i32 30}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2153152150, i64 2153152633, i64 2153152187, i64 2153152243, i64 2153152277, i64 2153152301, i64 2153152342, i64 2153152363, i64 2153152391, i64 2153152425}
!25 = !{i64 2148794630}
!26 = !{i64 2148709339, i64 2148709371, i64 2148709400, i64 2148709434, i64 2148709465, i64 2148709488}
!27 = !{i64 2148794859}
!28 = !{i64 2148306831, i64 2148306836, i64 2148306849, i64 2148306893, i64 2148306927, i64 2148306948}
