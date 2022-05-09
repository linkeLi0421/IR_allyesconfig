; ModuleID = '/llk/IR_all_yes/block/partitions/mac.c_pt.bc'
source_filename = "../block/partitions/mac.c"
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
%struct.mac_driver_desc = type { i16, i16, i32 }
%struct.mac_partition = type { i16, i16, i32, i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [mac]\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Linux_RAID\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 75, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 89, i32 32 }
@___asan_gen_.12 = private constant [26 x i8] c"../block/partitions/mac.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 141, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 717, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 45, i32 30 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #8
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !19
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17746, i16 %2)
  %cmp.not = icmp eq i16 %2, 17746
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
  br i1 %tobool.not.i.i.i, label %if.then2._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !20

if.then2._compound_head.exit.i.i_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %7, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then2._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %4, %if.then2._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !21

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mac_partition, %if.then.i.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup65_crit_edge

folio_put_testzero.exit.i.i.i.cleanup65_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi.i) #8
  br label %cleanup65

if.end3:                                          ; preds = %if.end
  %block_size = getelementptr inbounds %struct.mac_driver_desc, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %block_size, align 2
  %conv4 = zext i16 %12 to i32
  %13 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load99 = load i32, ptr %sect, align 4
  %14 = inttoptr i32 %.fca.0.load99 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i124 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i124)
  %tobool.not.i.i.i125 = icmp eq i32 %and.i.i.i124, 0
  br i1 %tobool.not.i.i.i125, label %if.end3._compound_head.exit.i.i133_crit_edge, label %if.then.i.i.i128, !prof !20

if.end3._compound_head.exit.i.i133_crit_edge:     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i133

if.then.i.i.i128:                                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i126 = add i32 %17, -1
  %.pre.i127 = inttoptr i32 %sub.i.i.i126 to ptr
  br label %_compound_head.exit.i.i133

_compound_head.exit.i.i133:                       ; preds = %if.then.i.i.i128, %if.end3._compound_head.exit.i.i133_crit_edge
  %.pre-phi.i129 = phi ptr [ %14, %if.end3._compound_head.exit.i.i133_crit_edge ], [ %.pre.i127, %if.then.i.i.i128 ]
  %_refcount.i.i.i.i.i.i130 = getelementptr inbounds %struct.page, ptr %.pre-phi.i129, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i131 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i130, i32 noundef 4) #8
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i.i132 = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i.i132, label %if.then.i.i.i.i.i134, label %do.end5.i.i.i.i.i138, !prof !21

if.then.i.i.i.i.i134:                             ; preds = %_compound_head.exit.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi.i129, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i.i138:                             ; preds = %_compound_head.exit.i.i133
  %call.i.i.i10.i.i.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i130, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i130, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i130, ptr %_refcount.i.i.i.i.i.i130, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i130) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i136 = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i136)
  %cmp.i.i.i.i.i.i.i.i137 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i136, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mac_partition, %if.then.i.i.i.i.i.i140)) #8
          to label %folio_put_testzero.exit.i.i.i141 [label %if.then.i.i.i.i.i.i140], !srcloc !26

if.then.i.i.i.i.i.i140:                           ; preds = %do.end5.i.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i.i139 = zext i1 %cmp.i.i.i.i.i.i.i.i137 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i129, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i139) #8
  br label %folio_put_testzero.exit.i.i.i141

folio_put_testzero.exit.i.i.i141:                 ; preds = %if.then.i.i.i.i.i.i140, %do.end5.i.i.i.i.i138
  br i1 %cmp.i.i.i.i.i.i.i.i137, label %if.then.i4.i.i142, label %folio_put_testzero.exit.i.i.i141.put_dev_sector.exit143_crit_edge

folio_put_testzero.exit.i.i.i141.put_dev_sector.exit143_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_dev_sector.exit143

if.then.i4.i.i142:                                ; preds = %folio_put_testzero.exit.i.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi.i129) #8
  br label %put_dev_sector.exit143

put_dev_sector.exit143:                           ; preds = %if.then.i4.i.i142, %folio_put_testzero.exit.i.i.i141.put_dev_sector.exit143_crit_edge
  %div122 = lshr i32 %conv4, 9
  %conv6 = zext i32 %div122 to i64
  %call7 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv6, ptr noundef nonnull %sect) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %put_dev_sector.exit143.cleanup65_crit_edge, label %if.end10

put_dev_sector.exit143.cleanup65_crit_edge:       ; preds = %put_dev_sector.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end10:                                         ; preds = %put_dev_sector.exit143
  %and = and i32 %conv4, 65024
  %rem = and i32 %conv4, 511
  %add = add nuw nsw i32 %rem, 136
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp11 = icmp ugt i32 %add, %and
  br i1 %cmp11, label %if.end10.cleanup65_crit_edge, label %if.end14

if.end10.cleanup65_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end14:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %call7, i32 %rem
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20557, i16 %22)
  %cmp17.not = icmp eq i16 %22, 20557
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end14
  %23 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load102 = load i32, ptr %sect, align 4
  %24 = inttoptr i32 %.fca.0.load102 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i144 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i144)
  %tobool.not.i.i.i145 = icmp eq i32 %and.i.i.i144, 0
  br i1 %tobool.not.i.i.i145, label %if.then19._compound_head.exit.i.i153_crit_edge, label %if.then.i.i.i148, !prof !20

if.then19._compound_head.exit.i.i153_crit_edge:   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i153

if.then.i.i.i148:                                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i146 = add i32 %27, -1
  %.pre.i147 = inttoptr i32 %sub.i.i.i146 to ptr
  br label %_compound_head.exit.i.i153

_compound_head.exit.i.i153:                       ; preds = %if.then.i.i.i148, %if.then19._compound_head.exit.i.i153_crit_edge
  %.pre-phi.i149 = phi ptr [ %24, %if.then19._compound_head.exit.i.i153_crit_edge ], [ %.pre.i147, %if.then.i.i.i148 ]
  %_refcount.i.i.i.i.i.i150 = getelementptr inbounds %struct.page, ptr %.pre-phi.i149, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i150, i32 noundef 4) #8
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i.i152 = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i.i152, label %if.then.i.i.i.i.i154, label %do.end5.i.i.i.i.i158, !prof !21

if.then.i.i.i.i.i154:                             ; preds = %_compound_head.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi.i149, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i.i158:                             ; preds = %_compound_head.exit.i.i153
  %call.i.i.i10.i.i.i.i.i155 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i150, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i150, i32 1, i32 3, i32 1) #8
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i150, ptr %_refcount.i.i.i.i.i.i150, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i150) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i156 = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i156)
  %cmp.i.i.i.i.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i156, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mac_partition, %if.then.i.i.i.i.i.i160)) #8
          to label %folio_put_testzero.exit.i.i.i161 [label %if.then.i.i.i.i.i.i160], !srcloc !26

if.then.i.i.i.i.i.i160:                           ; preds = %do.end5.i.i.i.i.i158
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i.i159 = zext i1 %cmp.i.i.i.i.i.i.i.i157 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i149, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i159) #8
  br label %folio_put_testzero.exit.i.i.i161

folio_put_testzero.exit.i.i.i161:                 ; preds = %if.then.i.i.i.i.i.i160, %do.end5.i.i.i.i.i158
  br i1 %cmp.i.i.i.i.i.i.i.i157, label %if.then.i4.i.i162, label %folio_put_testzero.exit.i.i.i161.cleanup65_crit_edge

folio_put_testzero.exit.i.i.i161.cleanup65_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.then.i4.i.i162:                                ; preds = %folio_put_testzero.exit.i.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi.i149) #8
  br label %cleanup65

if.end21:                                         ; preds = %if.end14
  %map_count = getelementptr inbounds %struct.mac_partition, ptr %add.ptr, i32 0, i32 2
  %31 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %map_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %32)
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %34 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.0.load105 = load i32, ptr %sect, align 4
  %35 = inttoptr i32 %.fca.0.load105 to ptr
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i164 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i164)
  %tobool.not.i.i.i165 = icmp eq i32 %and.i.i.i164, 0
  br i1 %tobool.not.i.i.i165, label %if.then26._compound_head.exit.i.i173_crit_edge, label %if.then.i.i.i168, !prof !20

if.then26._compound_head.exit.i.i173_crit_edge:   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i173

if.then.i.i.i168:                                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i166 = add i32 %38, -1
  %.pre.i167 = inttoptr i32 %sub.i.i.i166 to ptr
  br label %_compound_head.exit.i.i173

_compound_head.exit.i.i173:                       ; preds = %if.then.i.i.i168, %if.then26._compound_head.exit.i.i173_crit_edge
  %.pre-phi.i169 = phi ptr [ %35, %if.then26._compound_head.exit.i.i173_crit_edge ], [ %.pre.i167, %if.then.i.i.i168 ]
  %_refcount.i.i.i.i.i.i170 = getelementptr inbounds %struct.page, ptr %.pre-phi.i169, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i171 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i170, i32 noundef 4) #8
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i.i172 = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i.i172, label %if.then.i.i.i.i.i174, label %do.end5.i.i.i.i.i178, !prof !21

if.then.i.i.i.i.i174:                             ; preds = %_compound_head.exit.i.i173
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi.i169, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i.i178:                             ; preds = %_compound_head.exit.i.i173
  %call.i.i.i10.i.i.i.i.i175 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i170, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i170, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i170, ptr %_refcount.i.i.i.i.i.i170, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i170) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i176 = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i176)
  %cmp.i.i.i.i.i.i.i.i177 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i176, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mac_partition, %if.then.i.i.i.i.i.i180)) #8
          to label %folio_put_testzero.exit.i.i.i181 [label %if.then.i.i.i.i.i.i180], !srcloc !26

if.then.i.i.i.i.i.i180:                           ; preds = %do.end5.i.i.i.i.i178
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i.i179 = zext i1 %cmp.i.i.i.i.i.i.i.i177 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i169, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i179) #8
  br label %folio_put_testzero.exit.i.i.i181

folio_put_testzero.exit.i.i.i181:                 ; preds = %if.then.i.i.i.i.i.i180, %do.end5.i.i.i.i.i178
  br i1 %cmp.i.i.i.i.i.i.i.i177, label %if.then.i4.i.i182, label %folio_put_testzero.exit.i.i.i181.cleanup65_crit_edge

folio_put_testzero.exit.i.i.i181.cleanup65_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.then.i4.i.i182:                                ; preds = %folio_put_testzero.exit.i.i.i181
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi.i169) #8
  br label %cleanup65

if.end28:                                         ; preds = %if.end21
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %42 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %43)
  %cmp29.not = icmp slt i32 %32, %43
  %sub = add i32 %43, -1
  %spec.select = select i1 %cmp29.not, i32 %32, i32 %sub
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %44 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pp_buf, align 4
  %call34 = call i32 @strlcat(ptr noundef %45, ptr noundef nonnull @.str, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp35.not208 = icmp slt i32 %spec.select, 1
  br i1 %cmp35.not208, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slot.0209 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %slot.0209, %conv4
  %46 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.0.load108 = load i32, ptr %sect, align 4
  %47 = inttoptr i32 %.fca.0.load108 to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i184 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i184)
  %tobool.not.i.i.i185 = icmp eq i32 %and.i.i.i184, 0
  br i1 %tobool.not.i.i.i185, label %for.body._compound_head.exit.i.i193_crit_edge, label %if.then.i.i.i188, !prof !20

for.body._compound_head.exit.i.i193_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i193

if.then.i.i.i188:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i186 = add i32 %50, -1
  %.pre.i187 = inttoptr i32 %sub.i.i.i186 to ptr
  br label %_compound_head.exit.i.i193

_compound_head.exit.i.i193:                       ; preds = %if.then.i.i.i188, %for.body._compound_head.exit.i.i193_crit_edge
  %.pre-phi.i189 = phi ptr [ %47, %for.body._compound_head.exit.i.i193_crit_edge ], [ %.pre.i187, %if.then.i.i.i188 ]
  %_refcount.i.i.i.i.i.i190 = getelementptr inbounds %struct.page, ptr %.pre-phi.i189, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i191 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i190, i32 noundef 4) #8
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i.i192 = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i.i192, label %if.then.i.i.i.i.i194, label %do.end5.i.i.i.i.i198, !prof !21

if.then.i.i.i.i.i194:                             ; preds = %_compound_head.exit.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi.i189, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i.i198:                             ; preds = %_compound_head.exit.i.i193
  %call.i.i.i10.i.i.i.i.i195 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i190, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i190, i32 1, i32 3, i32 1) #8
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i190, ptr %_refcount.i.i.i.i.i.i190, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i190) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i196 = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i196)
  %cmp.i.i.i.i.i.i.i.i197 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i196, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mac_partition, %if.then.i.i.i.i.i.i200)) #8
          to label %folio_put_testzero.exit.i.i.i201 [label %if.then.i.i.i.i.i.i200], !srcloc !26

if.then.i.i.i.i.i.i200:                           ; preds = %do.end5.i.i.i.i.i198
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i.i199 = zext i1 %cmp.i.i.i.i.i.i.i.i197 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i189, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i199) #8
  br label %folio_put_testzero.exit.i.i.i201

folio_put_testzero.exit.i.i.i201:                 ; preds = %if.then.i.i.i.i.i.i200, %do.end5.i.i.i.i.i198
  br i1 %cmp.i.i.i.i.i.i.i.i197, label %if.then.i4.i.i202, label %folio_put_testzero.exit.i.i.i201.put_dev_sector.exit203_crit_edge

folio_put_testzero.exit.i.i.i201.put_dev_sector.exit203_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_dev_sector.exit203

if.then.i4.i.i202:                                ; preds = %folio_put_testzero.exit.i.i.i201
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi.i189) #8
  br label %put_dev_sector.exit203

put_dev_sector.exit203:                           ; preds = %if.then.i4.i.i202, %folio_put_testzero.exit.i.i.i201.put_dev_sector.exit203_crit_edge
  %mul.frozen = freeze i32 %mul
  %div38 = sdiv i32 %mul.frozen, 512
  %conv39 = sext i32 %div38 to i64
  %call40 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv39, ptr noundef nonnull %sect) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %put_dev_sector.exit203.cleanup65_crit_edge, label %if.end43

put_dev_sector.exit203.cleanup65_crit_edge:       ; preds = %put_dev_sector.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end43:                                         ; preds = %put_dev_sector.exit203
  %54 = mul i32 %div38, 512
  %rem44.decomposed = sub i32 %mul.frozen, %54
  %add.ptr45 = getelementptr i8, ptr %call40, i32 %rem44.decomposed
  %55 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20557, i16 %56)
  %cmp48.not = icmp eq i16 %56, 20557
  br i1 %cmp48.not, label %if.end51, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end51:                                         ; preds = %if.end43
  %57 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %slot.0209)
  %cmp.i = icmp sgt i32 %58, %slot.0209
  br i1 %cmp.i, label %if.then.i, label %if.end51.put_partition.exit_crit_edge

if.end51.put_partition.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %block_count = getelementptr inbounds %struct.mac_partition, ptr %add.ptr45, i32 0, i32 4
  %59 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block_count, align 4
  %mul56 = mul i32 %60, %div122
  %conv57 = zext i32 %mul56 to i64
  %start_block = getelementptr inbounds %struct.mac_partition, ptr %add.ptr45, i32 0, i32 3
  %61 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %start_block, align 4
  %mul53 = mul i32 %62, %div122
  %conv54 = zext i32 %mul53 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #8
  %63 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %64 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %65, i32 %slot.0209
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv54, ptr %arrayidx.i, align 8
  %67 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %67, i32 %slot.0209, i32 1
  %68 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv57, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.4, ptr noundef %name.i, i32 noundef %slot.0209) #8
  %69 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %70, ptr noundef nonnull %tmp.i, i32 noundef 4096) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #8
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.end51.put_partition.exit_crit_edge
  %type = getelementptr inbounds %struct.mac_partition, ptr %add.ptr45, i32 0, i32 6
  %call58 = call i32 @strncasecmp(ptr noundef %type, ptr noundef nonnull @.str.1, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %put_partition.exit.for.inc_crit_edge

put_partition.exit.for.inc_crit_edge:             ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then60:                                        ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parts.i, align 4
  %flags = getelementptr %struct.anon.83, ptr %72, i32 %slot.0209, i32 2
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %put_partition.exit.for.inc_crit_edge
  %inc = add i32 %slot.0209, 1
  %cmp35.not = icmp sgt i32 %inc, %spec.select
  br i1 %cmp35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end43.for.end_crit_edge, %if.end28.for.end_crit_edge
  %74 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %74)
  %.fca.0.load111 = load i32, ptr %sect, align 4
  %.fca.0.insert112 = insertvalue [1 x i32] poison, i32 %.fca.0.load111, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert112)
  %75 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pp_buf, align 4
  %call64 = call i32 @strlcat(ptr noundef %76, ptr noundef nonnull @.str.2, i32 noundef 4096) #8
  br label %cleanup65

cleanup65:                                        ; preds = %for.end, %put_dev_sector.exit203.cleanup65_crit_edge, %if.then.i4.i.i182, %folio_put_testzero.exit.i.i.i181.cleanup65_crit_edge, %if.then.i4.i.i162, %folio_put_testzero.exit.i.i.i161.cleanup65_crit_edge, %if.end10.cleanup65_crit_edge, %put_dev_sector.exit143.cleanup65_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.2 = phi i32 [ 1, %for.end ], [ -1, %entry.cleanup65_crit_edge ], [ -1, %put_dev_sector.exit143.cleanup65_crit_edge ], [ -1, %if.end10.cleanup65_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup65_crit_edge ], [ 0, %if.then.i4.i.i ], [ 0, %folio_put_testzero.exit.i.i.i161.cleanup65_crit_edge ], [ 0, %if.then.i4.i.i162 ], [ 0, %folio_put_testzero.exit.i.i.i181.cleanup65_crit_edge ], [ 0, %if.then.i4.i.i182 ], [ -1, %put_dev_sector.exit203.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #8
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dev_sector([1 x i32] %p.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %p.coerce.fca.0.extract = extractvalue [1 x i32] %p.coerce, 0
  %0 = inttoptr i32 %p.coerce.fca.0.extract to ptr
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !20

entry._compound_head.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %3, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %entry._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %0, %entry._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !21

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_dev_sector, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %.pre-phi) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/mac.c", i32 75, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/mac.c", i32 89, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/mac.c", i32 141, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/partitions/check.h", i32 45, i32 30}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153156728, i64 2153157211, i64 2153156765, i64 2153156821, i64 2153156855, i64 2153156879, i64 2153156920, i64 2153156941, i64 2153156969, i64 2153157003}
!23 = !{i64 2148799208}
!24 = !{i64 2148713917, i64 2148713949, i64 2148713978, i64 2148714012, i64 2148714043, i64 2148714066}
!25 = !{i64 2148799437}
!26 = !{i64 2148311409, i64 2148311414, i64 2148311427, i64 2148311471, i64 2148311505, i64 2148311526}
