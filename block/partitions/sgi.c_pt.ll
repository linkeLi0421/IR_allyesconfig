; ModuleID = '/llk/IR_all_yes/block/partitions/sgi.c_pt.bc'
source_filename = "../block/partitions/sgi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.sgi_disklabel = type { i32, i16, i16, [16 x i8], [48 x i8], [15 x %struct.sgi_volume], [16 x %struct.sgi_partition], i32, i32 }
%struct.sgi_volume = type { [8 x i8], i32, i32 }
%struct.sgi_partition = type { i32, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@sgi_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Dev %s SGI disklabel: csum bad, label corrupted\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgi_partition\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/partitions/sgi.c\00", [41 x i8] zeroinitializer }, align 32
@sgi_partition._entry_ptr = internal global ptr @sgi_partition._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 64, i32 3 }
@___asan_gen_.19 = private constant [26 x i8] c"../block/partitions/sgi.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 84, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 717, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 45, i32 30 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sgi_partition._entry, ptr @sgi_partition._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgi_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sgi_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #7
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !21
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %partitions = getelementptr inbounds %struct.sgi_disklabel, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199600449, i32 %2)
  %cmp.not = icmp eq i32 %2, 199600449
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
  br i1 %tobool.not.i.i.i, label %if.then1._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !22

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
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sgi_partition, %if.then.i.i.i.i.i.i)) #7
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

if.end2:                                          ; preds = %if.end
  %add.ptr3 = getelementptr %struct.sgi_disklabel, ptr %call, i32 0, i32 8
  %cmp4.not100 = icmp ult ptr %add.ptr3, %call
  br i1 %cmp4.not100, label %if.end2.for.cond10.preheader_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.cond10.preheader_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond10.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end2.for.body_crit_edge
  %ui.0102 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr3, %if.end2.for.body_crit_edge ]
  %csum.0101 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %ui.0102, i32 -1
  %11 = ptrtoint ptr %ui.0102 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ui.0102, align 4
  %add = add i32 %12, %csum.0101
  %cmp4.not = icmp ult ptr %incdec.ptr, %call
  br i1 %cmp4.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %for.end.for.cond10.preheader_crit_edge, label %do.end

for.end.for.cond10.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.end.for.cond10.preheader_crit_edge, %if.end2.for.cond10.preheader_crit_edge
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body12

do.end:                                           ; preds = %for.end
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 3
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %disk_name) #10
  %15 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.0.load45 = load i32, ptr %sect, align 4
  %16 = inttoptr i32 %.fca.0.load45 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i60 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i60)
  %tobool.not.i.i.i61 = icmp eq i32 %and.i.i.i60, 0
  br i1 %tobool.not.i.i.i61, label %do.end._compound_head.exit.i.i69_crit_edge, label %if.then.i.i.i64, !prof !22

do.end._compound_head.exit.i.i69_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i69

if.then.i.i.i64:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i62 = add i32 %19, -1
  %.pre.i63 = inttoptr i32 %sub.i.i.i62 to ptr
  br label %_compound_head.exit.i.i69

_compound_head.exit.i.i69:                        ; preds = %if.then.i.i.i64, %do.end._compound_head.exit.i.i69_crit_edge
  %.pre-phi.i65 = phi ptr [ %16, %do.end._compound_head.exit.i.i69_crit_edge ], [ %.pre.i63, %if.then.i.i.i64 ]
  %_refcount.i.i.i.i.i.i66 = getelementptr inbounds %struct.page, ptr %.pre-phi.i65, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i67 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i66, i32 noundef 4) #7
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i.i68 = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i.i68, label %if.then.i.i.i.i.i70, label %do.end5.i.i.i.i.i74, !prof !23

if.then.i.i.i.i.i70:                              ; preds = %_compound_head.exit.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i65, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i74:                              ; preds = %_compound_head.exit.i.i69
  %call.i.i.i10.i.i.i.i.i71 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i66, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i66, i32 1, i32 3, i32 1) #7
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i66, ptr %_refcount.i.i.i.i.i.i66, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i66) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i72 = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i72)
  %cmp.i.i.i.i.i.i.i.i73 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i72, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sgi_partition, %if.then.i.i.i.i.i.i76)) #7
          to label %folio_put_testzero.exit.i.i.i77 [label %if.then.i.i.i.i.i.i76], !srcloc !28

if.then.i.i.i.i.i.i76:                            ; preds = %do.end5.i.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i75 = zext i1 %cmp.i.i.i.i.i.i.i.i73 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i65, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i75) #7
  br label %folio_put_testzero.exit.i.i.i77

folio_put_testzero.exit.i.i.i77:                  ; preds = %if.then.i.i.i.i.i.i76, %do.end5.i.i.i.i.i74
  br i1 %cmp.i.i.i.i.i.i.i.i73, label %folio_put_testzero.exit.i.i.i77.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i77.cleanup_crit_edge

folio_put_testzero.exit.i.i.i77.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i77.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body12:                                       ; preds = %if.end21.for.body12_crit_edge, %for.cond10.preheader
  %p.0107 = phi ptr [ %partitions, %for.cond10.preheader ], [ %incdec.ptr23, %if.end21.for.body12_crit_edge ]
  %slot.0104 = phi i32 [ 1, %for.cond10.preheader ], [ %inc, %if.end21.for.body12_crit_edge ]
  %23 = ptrtoint ptr %p.0107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p.0107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %for.body12.if.end21_crit_edge, label %if.then14

for.body12.if.end21_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then14:                                        ; preds = %for.body12
  %25 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %slot.0104)
  %cmp.i = icmp sgt i32 %26, %slot.0104
  br i1 %cmp.i, label %if.then.i, label %if.then14.put_partition.exit_crit_edge

if.then14.put_partition.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i32 %24 to i64
  %first_block = getelementptr inbounds %struct.sgi_partition, ptr %p.0107, i32 0, i32 1
  %27 = ptrtoint ptr %first_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %first_block, align 4
  %conv = zext i32 %28 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %29 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %30 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %31, i32 %slot.0104
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %arrayidx.i, align 8
  %33 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %33, i32 %slot.0104, i32 1
  %34 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv15, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef %slot.0104) #7
  %35 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %36, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then14.put_partition.exit_crit_edge
  %type = getelementptr inbounds %struct.sgi_partition, ptr %p.0107, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %38)
  %cmp16 = icmp eq i32 %38, 253
  br i1 %cmp16, label %if.then18, label %put_partition.exit.if.end21_crit_edge

put_partition.exit.if.end21_crit_edge:            ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parts.i, align 4
  %flags = getelementptr %struct.anon.83, ptr %40, i32 %slot.0104, i32 2
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %flags, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %put_partition.exit.if.end21_crit_edge, %for.body12.if.end21_crit_edge
  %inc = add nuw nsw i32 %slot.0104, 1
  %incdec.ptr23 = getelementptr %struct.sgi_partition, ptr %p.0107, i32 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end24, label %if.end21.for.body12_crit_edge

if.end21.for.body12_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end24:                                        ; preds = %if.end21
  %42 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pp_buf.i, align 4
  %call25 = call i32 @strlcat(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef 4096) #7
  %44 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.0.load48 = load i32, ptr %sect, align 4
  %45 = inttoptr i32 %.fca.0.load48 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i80 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i80)
  %tobool.not.i.i.i81 = icmp eq i32 %and.i.i.i80, 0
  br i1 %tobool.not.i.i.i81, label %for.end24._compound_head.exit.i.i89_crit_edge, label %if.then.i.i.i84, !prof !22

for.end24._compound_head.exit.i.i89_crit_edge:    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i89

if.then.i.i.i84:                                  ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i82 = add i32 %48, -1
  %.pre.i83 = inttoptr i32 %sub.i.i.i82 to ptr
  br label %_compound_head.exit.i.i89

_compound_head.exit.i.i89:                        ; preds = %if.then.i.i.i84, %for.end24._compound_head.exit.i.i89_crit_edge
  %.pre-phi.i85 = phi ptr [ %45, %for.end24._compound_head.exit.i.i89_crit_edge ], [ %.pre.i83, %if.then.i.i.i84 ]
  %_refcount.i.i.i.i.i.i86 = getelementptr inbounds %struct.page, ptr %.pre-phi.i85, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i87 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i86, i32 noundef 4) #7
  %49 = ptrtoint ptr %_refcount.i.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_refcount.i.i.i.i.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i.i.i.i88 = icmp eq i32 %50, 0
  br i1 %cmp.i.i.i.i.i88, label %if.then.i.i.i.i.i90, label %do.end5.i.i.i.i.i94, !prof !23

if.then.i.i.i.i.i90:                              ; preds = %_compound_head.exit.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i85, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i94:                              ; preds = %_compound_head.exit.i.i89
  %call.i.i.i10.i.i.i.i.i91 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i86, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i86, i32 1, i32 3, i32 1) #7
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i86, ptr %_refcount.i.i.i.i.i.i86, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i86) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i92 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i92)
  %cmp.i.i.i.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i92, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sgi_partition, %if.then.i.i.i.i.i.i96)) #7
          to label %folio_put_testzero.exit.i.i.i97 [label %if.then.i.i.i.i.i.i96], !srcloc !28

if.then.i.i.i.i.i.i96:                            ; preds = %do.end5.i.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i95 = zext i1 %cmp.i.i.i.i.i.i.i.i93 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i85, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i95) #7
  br label %folio_put_testzero.exit.i.i.i97

folio_put_testzero.exit.i.i.i97:                  ; preds = %if.then.i.i.i.i.i.i96, %do.end5.i.i.i.i.i94
  br i1 %cmp.i.i.i.i.i.i.i.i93, label %folio_put_testzero.exit.i.i.i97.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i97.cleanup_crit_edge

folio_put_testzero.exit.i.i.i97.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i97.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i.i97.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i77.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge
  %.pre-phi.i85.sink = phi ptr [ %.pre-phi.i, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ %.pre-phi.i65, %folio_put_testzero.exit.i.i.i77.cleanup.sink.split_crit_edge ], [ %.pre-phi.i85, %folio_put_testzero.exit.i.i.i97.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i77.cleanup.sink.split_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i97.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.pre-phi.i85.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i.i97.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i77.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i77.cleanup_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i97.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/sgi.c", i32 64, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sgi_partition._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sgi_partition._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/sgi.c", i32 84, i32 25}
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
!24 = !{i64 2153152564, i64 2153153047, i64 2153152601, i64 2153152657, i64 2153152691, i64 2153152715, i64 2153152756, i64 2153152777, i64 2153152805, i64 2153152839}
!25 = !{i64 2148795044}
!26 = !{i64 2148709753, i64 2148709785, i64 2148709814, i64 2148709848, i64 2148709879, i64 2148709902}
!27 = !{i64 2148795273}
!28 = !{i64 2148307245, i64 2148307250, i64 2148307263, i64 2148307307, i64 2148307341, i64 2148307362}
