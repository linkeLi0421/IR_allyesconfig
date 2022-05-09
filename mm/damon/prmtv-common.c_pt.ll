; ModuleID = '/llk/IR_all_yes/mm/damon/prmtv-common.c_pt.bc'
source_filename = "../mm/damon/prmtv-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.damos = type { i32, i32, i32, i32, i32, i32, i32, %struct.damos_quota, %struct.damos_watermarks, %struct.damos_stat, %struct.list_head }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damos_stat = type { i32, i32, i32, i32, i32 }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
%struct.damon_region = type { %struct.damon_addr_range, i32, i32, %struct.list_head, i32, i32 }
%struct.damon_addr_range = type { i32, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_ = private constant [27 x i8] c"../mm/damon/prmtv-common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 422, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 717, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @damon_get_page(i32 noundef %pfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %tobool1.not = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr %struct.page, ptr %0, i32 %sub, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !13

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !14

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !13

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !13

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i22.i = add i32 %10, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %add.ptr to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %PageLRU.exit.cleanup_crit_edge, label %lor.lhs.false4

PageLRU.exit.cleanup_crit_edge:                   ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %PageLRU.exit
  %_refcount.i.i = getelementptr %struct.page, ptr %0, i32 %sub, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i) #6, !srcloc !17
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i

lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge: ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %atomic_add_unless.exit.i.i

do.end11.i.i.i.i.i:                               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  br label %atomic_add_unless.exit.i.i

atomic_add_unless.exit.i.i:                       ; preds = %do.end11.i.i.i.i.i, %lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@damon_get_page, %if.then.i.i45)) #6
          to label %get_page_unless_zero.exit [label %if.then.i.i45], !srcloc !19

if.then.i.i45:                                    ; preds = %atomic_add_unless.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef nonnull %add.ptr, i32 noundef 1, i32 noundef %conv.i.i) #6
  br label %get_page_unless_zero.exit

get_page_unless_zero.exit:                        ; preds = %if.then.i.i45, %atomic_add_unless.exit.i.i
  br i1 %cmp.i.i.i.i, label %if.end7, label %get_page_unless_zero.exit.cleanup_crit_edge

get_page_unless_zero.exit.cleanup_crit_edge:      ; preds = %get_page_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %get_page_unless_zero.exit
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %2, align 4
  %and.i.i21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !13

if.then.i.i24:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i23 = add i32 %20, -1
  br label %_compound_head.exit.i30

if.end.i.i25:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i30

_compound_head.exit.i30:                          ; preds = %if.end.i.i25, %if.then.i.i24
  %retval.0.i.i26 = phi i32 [ %sub.i.i23, %if.then.i.i24 ], [ %21, %if.end.i.i25 ]
  %22 = inttoptr i32 %retval.0.i.i26 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i27 = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %2, align 4
  %and.i13.i28 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i28)
  %tobool.not.i14.i29 = icmp eq i32 %and.i13.i28, 0
  br i1 %cmp.i.not.i27, label %if.then.i31, label %do.end8.i37, !prof !14

if.then.i31:                                      ; preds = %_compound_head.exit.i30
  br i1 %tobool.not.i14.i29, label %if.end.i17.i34, label %if.then.i16.i33, !prof !13

if.then.i16.i33:                                  ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i15.i32 = add i32 %26, -1
  br label %_compound_head.exit19.i36

if.end.i17.i34:                                   ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit19.i36

_compound_head.exit19.i36:                        ; preds = %if.end.i17.i34, %if.then.i16.i33
  %retval.0.i18.i35 = phi i32 [ %sub.i15.i32, %if.then.i16.i33 ], [ %27, %if.end.i17.i34 ]
  %28 = inttoptr i32 %retval.0.i18.i35 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

do.end8.i37:                                      ; preds = %_compound_head.exit.i30
  br i1 %tobool.not.i14.i29, label %if.end.i24.i40, label %if.then.i23.i39, !prof !13

if.then.i23.i39:                                  ; preds = %do.end8.i37
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i22.i38 = add i32 %26, -1
  br label %PageLRU.exit44

if.end.i24.i40:                                   ; preds = %do.end8.i37
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %add.ptr to i32
  br label %PageLRU.exit44

PageLRU.exit44:                                   ; preds = %if.end.i24.i40, %if.then.i23.i39
  %retval.0.i25.i41 = phi i32 [ %sub.i22.i38, %if.then.i23.i39 ], [ %29, %if.end.i24.i40 ]
  %30 = inttoptr i32 %retval.0.i25.i41 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not = icmp eq i32 %33, 0
  br i1 %tobool9.not, label %if.then13, label %PageLRU.exit44.cleanup_crit_edge, !prof !14

PageLRU.exit44.cleanup_crit_edge:                 ; preds = %PageLRU.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %PageLRU.exit44
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @put_page(ptr noundef nonnull %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %PageLRU.exit44.cleanup_crit_edge, %get_page_unless_zero.exit.cleanup_crit_edge, %PageLRU.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %get_page_unless_zero.exit.cleanup_crit_edge ], [ null, %PageLRU.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then13 ], [ %add.ptr, %PageLRU.exit44.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !13

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !14

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !19

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #6
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %4) #6
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_ptep_mkold(ptr nocapture noundef %pte, ptr noundef %mm, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pte, align 4
  %shr = lshr i32 %1, 12
  %call = tail call ptr @damon_get_page(i32 noundef %shr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true:                                        ; preds = %entry
  %2 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pte, align 4
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end8, label %if.end8.thread

if.end8:                                          ; preds = %cond.true
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 49
  %4 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.i.not.i, label %if.end8.if.end15_crit_edge, label %if.end8.mmu_notifier_clear_young.exit_crit_edge

if.end8.mmu_notifier_clear_young.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmu_notifier_clear_young.exit

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end8.thread:                                   ; preds = %cond.true
  %and.i.i = and i32 %3, -3
  %6 = ptrtoint ptr %pte to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.i, ptr %pte, align 4
  %notifier_subscriptions.i.i44 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 49
  %7 = ptrtoint ptr %notifier_subscriptions.i.i44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notifier_subscriptions.i.i44, align 8
  %tobool.i.not.i45 = icmp eq ptr %8, null
  br i1 %tobool.i.not.i45, label %if.end8.thread.if.then14_crit_edge, label %if.end8.thread.mmu_notifier_clear_young.exit_crit_edge

if.end8.thread.mmu_notifier_clear_young.exit_crit_edge: ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmu_notifier_clear_young.exit

if.end8.thread.if.then14_crit_edge:               ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

mmu_notifier_clear_young.exit:                    ; preds = %if.end8.thread.mmu_notifier_clear_young.exit_crit_edge, %if.end8.mmu_notifier_clear_young.exit_crit_edge
  %9 = xor i1 %tobool2.not, true
  %add = add i32 %addr, 4096
  %call1.i = tail call i32 @__mmu_notifier_clear_young(ptr noundef %mm, i32 noundef %addr, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp ne i32 %call1.i, 0
  %brmerge = select i1 %tobool10.not, i1 true, i1 %9
  br i1 %brmerge, label %mmu_notifier_clear_young.exit.if.then14_crit_edge, label %mmu_notifier_clear_young.exit.if.end15_crit_edge

mmu_notifier_clear_young.exit.if.end15_crit_edge: ; preds = %mmu_notifier_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

mmu_notifier_clear_young.exit.if.then14_crit_edge: ; preds = %mmu_notifier_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %mmu_notifier_clear_young.exit.if.then14_crit_edge, %if.end8.thread.if.then14_crit_edge
  %10 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i24 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24)
  %tobool.not.i.i = icmp eq i32 %and.i.i24, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !13

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = tail call ptr @lookup_page_ext(ptr noundef %14) #6
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i.if.end15_crit_edge, label %if.end.i2.i, !prof !14

_compound_head.exit.i.if.end15_crit_edge:         ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end.i2.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i.i) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end.i2.i, %_compound_head.exit.i.if.end15_crit_edge, %mmu_notifier_clear_young.exit.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i25 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %if.then.i.i28, !prof !13

if.then.i.i28:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i27 = add i32 %17, -1
  br label %_compound_head.exit.i33

if.end.i.i29:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i33

_compound_head.exit.i33:                          ; preds = %if.end.i.i29, %if.then.i.i28
  %retval.0.i.i30 = phi i32 [ %sub.i.i27, %if.then.i.i28 ], [ %18, %if.end.i.i29 ]
  %19 = inttoptr i32 %retval.0.i.i30 to ptr
  %call.i.i31 = tail call ptr @lookup_page_ext(ptr noundef %19) #6
  %tobool.not.i1.i32 = icmp eq ptr %call.i.i31, null
  br i1 %tobool.not.i1.i32, label %_compound_head.exit.i33.set_page_idle.exit_crit_edge, label %if.end.i2.i34, !prof !14

_compound_head.exit.i33.set_page_idle.exit_crit_edge: ; preds = %_compound_head.exit.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_page_idle.exit

if.end.i2.i34:                                    ; preds = %_compound_head.exit.i33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %call.i.i31) #6
  br label %set_page_idle.exit

set_page_idle.exit:                               ; preds = %if.end.i2.i34, %_compound_head.exit.i33.set_page_idle.exit_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %15, align 4
  %and.i.i35 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.end.i.i39, label %if.then.i.i38, !prof !13

if.then.i.i38:                                    ; preds = %set_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i37 = add i32 %21, -1
  br label %_compound_head.exit.i41

if.end.i.i39:                                     ; preds = %set_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i41

_compound_head.exit.i41:                          ; preds = %if.end.i.i39, %if.then.i.i38
  %retval.0.i.i40 = phi i32 [ %sub.i.i37, %if.then.i.i38 ], [ %22, %if.end.i.i39 ]
  %23 = inttoptr i32 %retval.0.i.i40 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !14

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i41
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_ptep_mkold, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !19

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %23, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @damon_pmdp_mkold(ptr nocapture noundef %pmd, ptr nocapture noundef %mm, i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_pageout_score(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %weight_nr_accesses = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %weight_nr_accesses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %weight_nr_accesses, align 4
  %weight_age = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %weight_age to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %weight_age, align 4
  %aggr_interval = getelementptr inbounds %struct.damon_ctx, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %aggr_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aggr_interval, align 4
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c, align 8
  %div = udiv i32 %5, %7
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_accesses, align 4
  %mul = mul i32 %9, 100
  %div2 = udiv i32 %mul, %div
  %age = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 4
  %10 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %age, align 4
  %mul4 = mul i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %mul4)
  %12 = icmp ult i32 %mul4, 1000000
  br i1 %12, label %entry.for.end_crit_edge, label %for.inc.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.preheader:                                ; preds = %entry
  %div5 = udiv i32 %mul4, 1000000
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.preheader
  %age_in_log.040 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %for.inc.preheader ]
  %age_in_sec.039 = phi i32 [ %shr, %for.inc.for.inc_crit_edge ], [ %div5, %for.inc.preheader ]
  %inc = add nuw nsw i32 %age_in_log.040, 1
  %shr = lshr i32 %age_in_sec.039, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %age_in_log.040)
  %cmp = icmp ugt i32 %age_in_log.040, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %age_in_sec.039)
  %tobool.not = icmp ult i32 %age_in_sec.039, 2
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %age_in_log.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %mul)
  %cmp6 = icmp ugt i32 %div, %mul
  %mul7 = sub nsw i32 0, %age_in_log.0.lcssa
  %spec.select = select i1 %cmp6, i32 %mul7, i32 %age_in_log.0.lcssa
  %13 = mul i32 %spec.select, 100
  %div1041.lhs.trunc = add i32 %13, 3200
  %div10414243 = lshr i32 %div1041.lhs.trunc, 6
  %div1041.zext = and i32 %div10414243, 1023
  %mul11 = mul i32 %div2, %1
  %mul12 = mul i32 %div1041.zext, %3
  %add13 = add i32 %mul12, %mul11
  %add14 = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add14)
  %tobool15.not = icmp eq i32 %add14, 0
  br i1 %tobool15.not, label %for.end.if.end19_crit_edge, label %if.then16

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div18 = udiv i32 %add13, %add14
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end.if.end19_crit_edge
  %hotness.0 = phi i32 [ %div18, %if.then16 ], [ %add13, %for.end.if.end19_crit_edge ]
  %mul20 = mul i32 %hotness.0, 99
  %div21.neg = sdiv i32 %mul20, -100
  %sub = add nsw i32 %div21.neg, 99
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_clear_young(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/page-flags.h", i32 422, i32 1}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mm.h", i32 717, i32 2}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2150232207, i64 2150232698, i64 2150232244, i64 2150232300, i64 2150232334, i64 2150232358, i64 2150232399, i64 2150232420, i64 2150232448, i64 2150232482}
!16 = !{i64 2148503281}
!17 = !{i64 989881, i64 989906, i64 989928, i64 989944, i64 989956, i64 989976, i64 990000, i64 990016, i64 990028}
!18 = !{i64 2148503469}
!19 = !{i64 2148328460, i64 2148328465, i64 2148328478, i64 2148328522, i64 2148328556, i64 2148328577}
!20 = !{i64 2153194200, i64 2153194683, i64 2153194237, i64 2153194293, i64 2153194327, i64 2153194351, i64 2153194392, i64 2153194413, i64 2153194441, i64 2153194475}
!21 = !{i64 2148592338}
!22 = !{i64 2148507047, i64 2148507079, i64 2148507108, i64 2148507142, i64 2148507173, i64 2148507196}
!23 = !{i64 2148592567}
