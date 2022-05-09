; ModuleID = '/llk/IR_all_yes/block/partitions/sun.c_pt.bc'
source_filename = "../block/partitions/sun.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.sun_disklabel = type { [128 x i8], %struct.sun_vtoc, i32, i32, [148 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.sun_partition], i16, i16 }
%struct.sun_vtoc = type { i32, [8 x i8], i16, [8 x %struct.sun_info], i16, [3 x i32], i32, [10 x i32], [8 x i32] }
%struct.sun_info = type { i16, i16 }
%struct.sun_partition = type { i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
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
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@sun_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Dev %s Sun disklabel: Csum bad, label corrupted\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun_partition\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/partitions/sun.c\00", [41 x i8] zeroinitializer }, align 32
@sun_partition._entry_ptr = internal global ptr @sun_partition._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1611521774]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 253]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 87, i32 3 }
@___asan_gen_.20 = private constant [26 x i8] c"../block/partitions/sun.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 126, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 45, i32 30 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sun_partition._entry, ptr @sun_partition._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
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
  %partitions = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 17
  %magic = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 18
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9538, i16 %2)
  %cmp.not = icmp eq i16 %2, -9538
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
  br i1 %tobool.not.i.i.i, label %if.then2._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !22

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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sun_partition, %if.then.i.i.i.i.i.i)) #7
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

if.end3:                                          ; preds = %if.end
  %add.ptr4 = getelementptr %struct.sun_disklabel, ptr %call, i32 0, i32 19
  %cmp5.not184 = icmp ult ptr %add.ptr4, %call
  br i1 %cmp5.not184, label %if.end3.if.end15_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %ush.0186 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr4, %if.end3.for.body_crit_edge ]
  %csum.0185 = phi i16 [ %xor137, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %ush.0186, i32 -1
  %11 = ptrtoint ptr %ush.0186 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ush.0186, align 2
  %xor137 = xor i16 %12, %csum.0185
  %cmp5.not = icmp ult ptr %incdec.ptr, %call
  br i1 %cmp5.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor137)
  %phi.cmp = icmp eq i16 %xor137, 0
  br i1 %phi.cmp, label %for.end.if.end15_crit_edge, label %do.end

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %for.end
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 3
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %disk_name) #10
  %15 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.0.load117 = load i32, ptr %sect, align 4
  %16 = inttoptr i32 %.fca.0.load117 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i138 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i138)
  %tobool.not.i.i.i139 = icmp eq i32 %and.i.i.i138, 0
  br i1 %tobool.not.i.i.i139, label %do.end._compound_head.exit.i.i147_crit_edge, label %if.then.i.i.i142, !prof !22

do.end._compound_head.exit.i.i147_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i147

if.then.i.i.i142:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i140 = add i32 %19, -1
  %.pre.i141 = inttoptr i32 %sub.i.i.i140 to ptr
  br label %_compound_head.exit.i.i147

_compound_head.exit.i.i147:                       ; preds = %if.then.i.i.i142, %do.end._compound_head.exit.i.i147_crit_edge
  %.pre-phi.i143 = phi ptr [ %16, %do.end._compound_head.exit.i.i147_crit_edge ], [ %.pre.i141, %if.then.i.i.i142 ]
  %_refcount.i.i.i.i.i.i144 = getelementptr inbounds %struct.page, ptr %.pre-phi.i143, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i144, i32 noundef 4) #7
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i.i146 = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i.i146, label %if.then.i.i.i.i.i148, label %do.end5.i.i.i.i.i152, !prof !23

if.then.i.i.i.i.i148:                             ; preds = %_compound_head.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i143, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i152:                             ; preds = %_compound_head.exit.i.i147
  %call.i.i.i10.i.i.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i144, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i144, i32 1, i32 3, i32 1) #7
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i144, ptr %_refcount.i.i.i.i.i.i144, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i144) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i150 = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i150)
  %cmp.i.i.i.i.i.i.i.i151 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i150, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sun_partition, %if.then.i.i.i.i.i.i154)) #7
          to label %folio_put_testzero.exit.i.i.i155 [label %if.then.i.i.i.i.i.i154], !srcloc !28

if.then.i.i.i.i.i.i154:                           ; preds = %do.end5.i.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i153 = zext i1 %cmp.i.i.i.i.i.i.i.i151 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i143, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i153) #7
  br label %folio_put_testzero.exit.i.i.i155

folio_put_testzero.exit.i.i.i155:                 ; preds = %if.then.i.i.i.i.i.i154, %do.end5.i.i.i.i.i152
  br i1 %cmp.i.i.i.i.i.i.i.i151, label %folio_put_testzero.exit.i.i.i155.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i155.cleanup_crit_edge

folio_put_testzero.exit.i.i.i155.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i155.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end15:                                         ; preds = %for.end.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %vtoc = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 1
  %sanity = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %sanity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sanity, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end15.lor.end42.thread_crit_edge [
    i32 1611521774, label %land.lhs.true
    i32 0, label %lor.lhs.false
  ]

if.end15.lor.end42.thread_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end42.thread

land.lhs.true:                                    ; preds = %if.end15
  %26 = ptrtoint ptr %vtoc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vtoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp19 = icmp eq i32 %27, 1
  br i1 %cmp19, label %land.end, label %land.lhs.true.lor.end42.thread_crit_edge

land.lhs.true.lor.end42.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end42.thread

land.end:                                         ; preds = %land.lhs.true
  %nparts22 = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %nparts22 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nparts22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %29)
  %cmp24 = icmp ult i16 %29, 9
  br i1 %cmp24, label %lor.end42, label %land.end.lor.end42.thread_crit_edge

land.end.lor.end42.thread_crit_edge:              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end42.thread

lor.lhs.false:                                    ; preds = %if.end15
  %30 = ptrtoint ptr %vtoc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vtoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool36.not = icmp eq i32 %31, 0
  br i1 %tobool36.not, label %lor.rhs37, label %lor.lhs.false.lor.end42.thread_crit_edge

lor.lhs.false.lor.end42.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end42.thread

lor.rhs37:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %nparts39 = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %nparts39 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nparts39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool41 = icmp eq i16 %33, 0
  br label %lor.end42.thread

lor.end42.thread:                                 ; preds = %lor.rhs37, %lor.lhs.false.lor.end42.thread_crit_edge, %land.end.lor.end42.thread_crit_edge, %land.lhs.true.lor.end42.thread_crit_edge, %if.end15.lor.end42.thread_crit_edge
  %.ph = phi i1 [ false, %if.end15.lor.end42.thread_crit_edge ], [ false, %land.end.lor.end42.thread_crit_edge ], [ false, %land.lhs.true.lor.end42.thread_crit_edge ], [ %tobool41, %lor.rhs37 ], [ false, %lor.lhs.false.lor.end42.thread_crit_edge ]
  %ntrks198 = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %ntrks198 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ntrks198, align 4
  %conv43199 = zext i16 %35 to i32
  %nsect200 = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 14
  %36 = ptrtoint ptr %nsect200 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nsect200, align 2
  %conv44201 = zext i16 %37 to i32
  %mul202 = mul nuw i32 %conv44201, %conv43199
  br label %for.body48.lr.ph

lor.end42:                                        ; preds = %land.end
  %38 = ptrtoint ptr %nparts22 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nparts22, align 4
  %conv29 = zext i16 %39 to i32
  %ntrks = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 13
  %40 = ptrtoint ptr %ntrks to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ntrks, align 4
  %conv43 = zext i16 %41 to i32
  %nsect = getelementptr inbounds %struct.sun_disklabel, ptr %call, i32 0, i32 14
  %42 = ptrtoint ptr %nsect to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nsect, align 2
  %conv44 = zext i16 %43 to i32
  %mul = mul nuw i32 %conv44, %conv43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp46187.not = icmp eq i16 %39, 0
  br i1 %cmp46187.not, label %lor.end42.for.end84_crit_edge, label %lor.end42.for.body48.lr.ph_crit_edge

lor.end42.for.body48.lr.ph_crit_edge:             ; preds = %lor.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48.lr.ph

lor.end42.for.end84_crit_edge:                    ; preds = %lor.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84

for.body48.lr.ph:                                 ; preds = %lor.end42.for.body48.lr.ph_crit_edge, %lor.end42.thread
  %mul205 = phi i32 [ %mul202, %lor.end42.thread ], [ %mul, %lor.end42.for.body48.lr.ph_crit_edge ]
  %44 = phi i1 [ %.ph, %lor.end42.thread ], [ true, %lor.end42.for.body48.lr.ph_crit_edge ]
  %cond180204 = phi i32 [ 8, %lor.end42.thread ], [ %conv29, %lor.end42.for.body48.lr.ph_crit_edge ]
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body48

for.body48:                                       ; preds = %if.end81.for.body48_crit_edge, %for.body48.lr.ph
  %p.0193 = phi ptr [ %partitions, %for.body48.lr.ph ], [ %incdec.ptr83, %if.end81.for.body48_crit_edge ]
  %slot.0190 = phi i32 [ 1, %for.body48.lr.ph ], [ %inc, %if.end81.for.body48_crit_edge ]
  %i.0188 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc82, %if.end81.for.body48_crit_edge ]
  %num_sectors50 = getelementptr inbounds %struct.sun_partition, ptr %p.0193, i32 0, i32 1
  %45 = ptrtoint ptr %num_sectors50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_sectors50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool51.not = icmp eq i32 %46, 0
  br i1 %tobool51.not, label %for.body48.if.end81_crit_edge, label %if.then52

for.body48.if.end81_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then52:                                        ; preds = %for.body48
  %47 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %slot.0190)
  %cmp.i = icmp sgt i32 %48, %slot.0190
  br i1 %cmp.i, label %if.then.i, label %if.then52.put_partition.exit_crit_edge

if.then52.put_partition.exit_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = zext i32 %46 to i64
  %49 = ptrtoint ptr %p.0193 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p.0193, align 4
  %mul49 = mul i32 %mul205, %50
  %conv53 = zext i32 %mul49 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %51 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %52 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %53, i32 %slot.0190
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv53, ptr %arrayidx.i, align 8
  %55 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %55, i32 %slot.0190, i32 1
  %56 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv54, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef %slot.0190) #7
  %57 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %58, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then52.put_partition.exit_crit_edge
  %59 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parts.i, align 4
  %flags = getelementptr %struct.anon.83, ptr %60, i32 %slot.0190, i32 2
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flags, align 8
  br i1 %44, label %if.then56, label %put_partition.exit.if.end81_crit_edge

put_partition.exit.if.end81_crit_edge:            ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then56:                                        ; preds = %put_partition.exit
  %arrayidx58 = getelementptr %struct.sun_disklabel, ptr %call, i32 0, i32 1, i32 3, i32 %i.0188
  %62 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx58, align 2
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %63, label %if.then56.if.end81_crit_edge [
    i16 253, label %if.then56.if.end81.sink.split_crit_edge
    i16 5, label %if.then73
  ]

if.then56.if.end81.sink.split_crit_edge:          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.sink.split

if.then56.if.end81_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then73:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.then73, %if.then56.if.end81.sink.split_crit_edge
  %.sink206 = phi i32 [ 2, %if.then73 ], [ 1, %if.then56.if.end81.sink.split_crit_edge ]
  %65 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parts.i, align 4
  %flags65 = getelementptr %struct.anon.83, ptr %66, i32 %slot.0190, i32 2
  %67 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags65, align 8
  %or77 = or i32 %68, %.sink206
  store i32 %or77, ptr %flags65, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %if.then56.if.end81_crit_edge, %put_partition.exit.if.end81_crit_edge, %for.body48.if.end81_crit_edge
  %inc = add nuw nsw i32 %slot.0190, 1
  %inc82 = add nuw nsw i32 %i.0188, 1
  %incdec.ptr83 = getelementptr %struct.sun_partition, ptr %p.0193, i32 1
  %exitcond.not = icmp eq i32 %inc82, %cond180204
  br i1 %exitcond.not, label %if.end81.for.end84_crit_edge, label %if.end81.for.body48_crit_edge

if.end81.for.body48_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

if.end81.for.end84_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84

for.end84:                                        ; preds = %if.end81.for.end84_crit_edge, %lor.end42.for.end84_crit_edge
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %69 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pp_buf, align 4
  %call85 = call i32 @strlcat(ptr noundef %70, ptr noundef nonnull @.str.3, i32 noundef 4096) #7
  %71 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.0.load120 = load i32, ptr %sect, align 4
  %72 = inttoptr i32 %.fca.0.load120 to ptr
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i.i158 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i158)
  %tobool.not.i.i.i159 = icmp eq i32 %and.i.i.i158, 0
  br i1 %tobool.not.i.i.i159, label %for.end84._compound_head.exit.i.i167_crit_edge, label %if.then.i.i.i162, !prof !22

for.end84._compound_head.exit.i.i167_crit_edge:   ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i167

if.then.i.i.i162:                                 ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i160 = add i32 %75, -1
  %.pre.i161 = inttoptr i32 %sub.i.i.i160 to ptr
  br label %_compound_head.exit.i.i167

_compound_head.exit.i.i167:                       ; preds = %if.then.i.i.i162, %for.end84._compound_head.exit.i.i167_crit_edge
  %.pre-phi.i163 = phi ptr [ %72, %for.end84._compound_head.exit.i.i167_crit_edge ], [ %.pre.i161, %if.then.i.i.i162 ]
  %_refcount.i.i.i.i.i.i164 = getelementptr inbounds %struct.page, ptr %.pre-phi.i163, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i164, i32 noundef 4) #7
  %76 = ptrtoint ptr %_refcount.i.i.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %_refcount.i.i.i.i.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i.i.i.i.i166 = icmp eq i32 %77, 0
  br i1 %cmp.i.i.i.i.i166, label %if.then.i.i.i.i.i168, label %do.end5.i.i.i.i.i172, !prof !23

if.then.i.i.i.i.i168:                             ; preds = %_compound_head.exit.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i163, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

do.end5.i.i.i.i.i172:                             ; preds = %_compound_head.exit.i.i167
  %call.i.i.i10.i.i.i.i.i169 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i164, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i164, i32 1, i32 3, i32 1) #7
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i164, ptr %_refcount.i.i.i.i.i.i164, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i164) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i.i170 = extractvalue { i32, i32 } %78, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i170)
  %cmp.i.i.i.i.i.i.i.i171 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i170, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sun_partition, %if.then.i.i.i.i.i.i174)) #7
          to label %folio_put_testzero.exit.i.i.i175 [label %if.then.i.i.i.i.i.i174], !srcloc !28

if.then.i.i.i.i.i.i174:                           ; preds = %do.end5.i.i.i.i.i172
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i173 = zext i1 %cmp.i.i.i.i.i.i.i.i171 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i163, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i173) #7
  br label %folio_put_testzero.exit.i.i.i175

folio_put_testzero.exit.i.i.i175:                 ; preds = %if.then.i.i.i.i.i.i174, %do.end5.i.i.i.i.i172
  br i1 %cmp.i.i.i.i.i.i.i.i171, label %folio_put_testzero.exit.i.i.i175.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.i175.cleanup_crit_edge

folio_put_testzero.exit.i.i.i175.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.i175.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i.i175.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i155.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge
  %.pre-phi.i163.sink = phi ptr [ %.pre-phi.i, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ %.pre-phi.i143, %folio_put_testzero.exit.i.i.i155.cleanup.sink.split_crit_edge ], [ %.pre-phi.i163, %folio_put_testzero.exit.i.i.i175.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.i.cleanup.sink.split_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i155.cleanup.sink.split_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i175.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.pre-phi.i163.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i.i175.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i155.cleanup_crit_edge, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i155.cleanup_crit_edge ], [ 1, %folio_put_testzero.exit.i.i.i175.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
!1 = !{!"../block/partitions/sun.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sun_partition._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sun_partition._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/sun.c", i32 126, i32 25}
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
!24 = !{i64 2153154187, i64 2153154670, i64 2153154224, i64 2153154280, i64 2153154314, i64 2153154338, i64 2153154379, i64 2153154400, i64 2153154428, i64 2153154462}
!25 = !{i64 2148796667}
!26 = !{i64 2148711376, i64 2148711408, i64 2148711437, i64 2148711471, i64 2148711502, i64 2148711525}
!27 = !{i64 2148796896}
!28 = !{i64 2148308868, i64 2148308873, i64 2148308886, i64 2148308930, i64 2148308964, i64 2148308985}
