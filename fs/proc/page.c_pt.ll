; ModuleID = '/llk/IR_all_yes/fs/proc/page.c_pt.bc'
source_filename = "../fs/proc/page.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_proc__297_338_proc_page_init5 = internal global ptr @proc_page_init, section ".initcall5.init", align 4
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kpagecount\00", [21 x i8] zeroinitializer }, align 32
@kpagecount_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @kpagecount_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kpageflags\00", [21 x i8] zeroinitializer }, align 32
@kpageflags_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @kpageflags_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kpagecgroup\00", [20 x i8] zeroinitializer }, align 32
@kpagecgroup_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @kpagecgroup_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/proc/page.c\00", [17 x i8] zeroinitializer }, align 32
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 428, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 698, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 260, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 331, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"kpagecount_proc_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 92, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 332, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"kpageflags_proc_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 269, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 334, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"kpagecgroup_proc_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 323, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [18 x i8] c"../fs/proc/page.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 74, i32 7 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_proc__297_338_proc_page_init5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @kpagecount_proc_ops, ptr @.str.5, ptr @kpageflags_proc_ops, ptr @.str.6, ptr @kpagecgroup_proc_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpagecount_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpageflags_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpagecgroup_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @stable_page_flags(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %conv = zext i32 %1 to i64
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !34

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %page to i32
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
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !35

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !34

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !34

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25.i = add i32 %10, -1
  br label %PageSlab.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %page to i32
  br label %PageSlab.exit

PageSlab.exit:                                    ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not = icmp eq i32 %17, 0
  br i1 %tobool1.not, label %land.lhs.true, label %PageSlab.exit.if.end5_crit_edge

PageSlab.exit.if.end5_crit_edge:                  ; preds = %PageSlab.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %PageSlab.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %page) #5
  %spec.select = select i1 %call2, i64 2048, i64 0
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %PageSlab.exit.if.end5_crit_edge
  %u.0 = phi i64 [ 0, %PageSlab.exit.if.end5_crit_edge ], [ %spec.select, %land.lhs.true ]
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %2, align 4
  %and.i2.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i214 = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i214, label %if.end.i.i217, label %if.then.i.i216, !prof !34

if.then.i.i216:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i215 = add i32 %19, -1
  br label %PageAnon.exit

if.end.i.i217:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i217, %if.then.i.i216
  %retval.0.i.i218 = phi i32 [ %sub.i.i215, %if.then.i.i216 ], [ %20, %if.end.i.i217 ]
  %21 = inttoptr i32 %retval.0.i.i218 to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.81, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i219 = shl i32 %24, 12
  %25 = and i32 %and.i.i219, 4096
  %26 = zext i32 %25 to i64
  %27 = or i64 %u.0, %26
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %2, align 4
  %and.i2.i221 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i221)
  %tobool.not.i.i222 = icmp eq i32 %and.i2.i221, 0
  br i1 %tobool.not.i.i222, label %if.end.i.i225, label %if.then.i.i224, !prof !34

if.then.i.i224:                                   ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223 = add i32 %29, -1
  br label %PageKsm.exit

if.end.i.i225:                                    ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i225, %if.then.i.i224
  %retval.0.i.i226 = phi i32 [ %sub.i.i223, %if.then.i.i224 ], [ %30, %if.end.i.i225 ]
  %31 = inttoptr i32 %retval.0.i.i226 to ptr
  %mapping.i.i227 = getelementptr inbounds %struct.anon.81, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i.i227 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i.i227, align 4
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i231 = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i231, label %if.then.i232, label %PageHead.exit, !prof !35

if.then.i232:                                     ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.1) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

PageHead.exit:                                    ; preds = %PageKsm.exit
  %36 = ptrtoint ptr %33 to i32
  %and.i.i228 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i228)
  %cmp.i.i229 = icmp eq i32 %and.i.i228, 3
  %or12 = or i64 %27, 2097152
  %u.2 = select i1 %cmp.i.i229, i64 %or12, i64 %27
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  %39 = lshr i32 %38, 1
  %40 = and i32 %39, 32768
  %41 = zext i32 %40 to i64
  %42 = or i64 %u.2, %41
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %2, align 4
  %and.i = shl i32 %44, 16
  %45 = and i32 %and.i, 65536
  %46 = zext i32 %45 to i64
  %47 = or i64 %42, %46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %48 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %50 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add)
  %cmp.i274.not = icmp eq i32 %50, %add
  %or49 = or i64 %47, 16777216
  %u.6 = select i1 %cmp.i274.not, i64 %or49, i64 %47
  %51 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and.i235 = and i32 %53, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i235)
  %cmp.i.not = icmp eq i32 %and.i235, -268435456
  br i1 %cmp.i.not, label %if.then55, label %if.else57

if.then55:                                        ; preds = %PageHead.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or56 = or i64 %u.6, 1024
  br label %if.end66

if.else57:                                        ; preds = %PageHead.exit
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %2, align 4
  %and.i.i276 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i276)
  %tobool.not.i.i277 = icmp eq i32 %and.i.i276, 0
  br i1 %tobool.not.i.i277, label %if.else57.page_count.exit_crit_edge, label %if.then.i.i279, !prof !34

if.else57.page_count.exit_crit_edge:              ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  br label %page_count.exit

if.then.i.i279:                                   ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i278 = add i32 %55, -1
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.then.i.i279, %if.else57.page_count.exit_crit_edge
  %retval.0.i.i281 = phi i32 [ %sub.i.i278, %if.then.i.i279 ], [ %sub.ptr.lhs.cast, %if.else57.page_count.exit_crit_edge ]
  %56 = inttoptr i32 %retval.0.i.i281 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #5
  %57 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp = icmp eq i32 %58, 0
  br i1 %cmp, label %land.lhs.true60, label %page_count.exit.if.end66_crit_edge

page_count.exit.if.end66_crit_edge:               ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true60:                                  ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call zeroext i1 @is_free_buddy_page(ptr noundef nonnull %page) #5
  %or64 = or i64 %u.6, 1024
  %spec.select210 = select i1 %call61, i64 %or64, i64 %u.6
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true60, %page_count.exit.if.end66_crit_edge, %if.then55
  %u.7 = phi i64 [ %or56, %if.then55 ], [ %u.6, %page_count.exit.if.end66_crit_edge ], [ %spec.select210, %land.lhs.true60 ]
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %51, align 4
  %and.i236 = and i32 %60, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i236)
  %cmp.i237.not = icmp eq i32 %and.i236, -268435456
  %or70 = or i64 %u.7, 8388608
  %spec.select211 = select i1 %cmp.i237.not, i64 %or70, i64 %u.7
  %and.i239 = and i32 %60, -268434944
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i239)
  %cmp.i240.not = icmp eq i32 %and.i239, -268435456
  %or75 = or i64 %spec.select211, 67108864
  %u.9 = select i1 %cmp.i240.not, i64 %or75, i64 %spec.select211
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %2, align 4
  %and.i.i283 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i283)
  %tobool.not.i.i284 = icmp eq i32 %and.i.i283, 0
  br i1 %tobool.not.i.i284, label %if.end66._compound_head.exit.i289_crit_edge, label %if.then.i.i286, !prof !34

if.end66._compound_head.exit.i289_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit.i289

if.then.i.i286:                                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i285 = add i32 %62, -1
  br label %_compound_head.exit.i289

_compound_head.exit.i289:                         ; preds = %if.then.i.i286, %if.end66._compound_head.exit.i289_crit_edge
  %retval.0.i.i288 = phi i32 [ %sub.i.i285, %if.then.i.i286 ], [ %sub.ptr.lhs.cast, %if.end66._compound_head.exit.i289_crit_edge ]
  %63 = inttoptr i32 %retval.0.i.i288 to ptr
  %call.i.i = tail call ptr @lookup_page_ext(ptr noundef %63) #5
  %tobool.not.i2.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i289.page_is_idle.exit.thread_crit_edge, label %page_is_idle.exit, !prof !35

_compound_head.exit.i289.page_is_idle.exit.thread_crit_edge: ; preds = %_compound_head.exit.i289
  call void @__sanitizer_cov_trace_pc() #7
  br label %page_is_idle.exit.thread

page_is_idle.exit:                                ; preds = %_compound_head.exit.i289
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %call.i.i, align 4
  %66 = shl i32 %65, 22
  %67 = and i32 %66, 33554432
  %68 = zext i32 %67 to i64
  %69 = or i64 %u.9, %68
  br label %page_is_idle.exit.thread

page_is_idle.exit.thread:                         ; preds = %page_is_idle.exit, %_compound_head.exit.i289.page_is_idle.exit.thread_crit_edge
  %70 = phi i64 [ %u.9, %_compound_head.exit.i289.page_is_idle.exit.thread_crit_edge ], [ %69, %page_is_idle.exit ]
  %and.i290 = and i64 %conv, 1
  %or82 = or i64 %70, %and.i290
  %71 = lshr i64 %conv, 2
  %shl.i = and i64 %71, 128
  %or84 = or i64 %or82, %shl.i
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %2, align 4
  %and.i242 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i242)
  %tobool86.not = icmp eq i32 %and.i242, 0
  br i1 %tobool86.not, label %page_is_idle.exit.thread.if.end93_crit_edge, label %land.lhs.true87

page_is_idle.exit.thread.if.end93_crit_edge:      ; preds = %page_is_idle.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

land.lhs.true87:                                  ; preds = %page_is_idle.exit.thread
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %2, align 4
  %and.i292 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i292)
  %tobool.not.i = icmp eq i32 %and.i292, 0
  br i1 %tobool.not.i, label %land.lhs.true87._compound_head.exit_crit_edge, label %if.then.i293, !prof !34

land.lhs.true87._compound_head.exit_crit_edge:    ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit

if.then.i293:                                     ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %75, -1
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.then.i293, %land.lhs.true87._compound_head.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.then.i293 ], [ %sub.ptr.lhs.cast, %land.lhs.true87._compound_head.exit_crit_edge ]
  %76 = inttoptr i32 %retval.0.i to ptr
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i243 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i243)
  %tobool.not.i.i244 = icmp eq i32 %and.i.i243, 0
  br i1 %tobool.not.i.i244, label %_compound_head.exit._compound_head.exit.i252_crit_edge, label %if.then.i.i246, !prof !34

_compound_head.exit._compound_head.exit.i252_crit_edge: ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit.i252

if.then.i.i246:                                   ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i245 = add i32 %79, -1
  %.pre = inttoptr i32 %sub.i.i245 to ptr
  br label %_compound_head.exit.i252

_compound_head.exit.i252:                         ; preds = %if.then.i.i246, %_compound_head.exit._compound_head.exit.i252_crit_edge
  %.pre-phi = phi ptr [ %76, %_compound_head.exit._compound_head.exit.i252_crit_edge ], [ %.pre, %if.then.i.i246 ]
  %80 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp.i.not.i249 = icmp eq i32 %81, -1
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %77, align 4
  %and.i16.i250 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i250)
  %tobool.not.i17.i251 = icmp eq i32 %and.i16.i250, 0
  br i1 %cmp.i.not.i249, label %if.then.i253, label %do.end10.i259, !prof !35

if.then.i253:                                     ; preds = %_compound_head.exit.i252
  br i1 %tobool.not.i17.i251, label %if.then.i253._compound_head.exit22.i258_crit_edge, label %if.then.i19.i255, !prof !34

if.then.i253._compound_head.exit22.i258_crit_edge: ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit22.i258

if.then.i19.i255:                                 ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i18.i254 = add i32 %83, -1
  %.pre350 = inttoptr i32 %sub.i18.i254 to ptr
  br label %_compound_head.exit22.i258

_compound_head.exit22.i258:                       ; preds = %if.then.i19.i255, %if.then.i253._compound_head.exit22.i258_crit_edge
  %.pre-phi351 = phi ptr [ %76, %if.then.i253._compound_head.exit22.i258_crit_edge ], [ %.pre350, %if.then.i19.i255 ]
  tail call void @dump_page(ptr noundef %.pre-phi351, ptr noundef nonnull @.str) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

do.end10.i259:                                    ; preds = %_compound_head.exit.i252
  br i1 %tobool.not.i17.i251, label %do.end10.i259.PageSlab.exit266_crit_edge, label %if.then.i26.i261, !prof !34

do.end10.i259.PageSlab.exit266_crit_edge:         ; preds = %do.end10.i259
  call void @__sanitizer_cov_trace_pc() #7
  br label %PageSlab.exit266

if.then.i26.i261:                                 ; preds = %do.end10.i259
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25.i260 = add i32 %83, -1
  %.pre352 = inttoptr i32 %sub.i25.i260 to ptr
  br label %PageSlab.exit266

PageSlab.exit266:                                 ; preds = %if.then.i26.i261, %do.end10.i259.PageSlab.exit266_crit_edge
  %.pre-phi353 = phi ptr [ %76, %do.end10.i259.PageSlab.exit266_crit_edge ], [ %.pre352, %if.then.i26.i261 ]
  %84 = ptrtoint ptr %.pre-phi353 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %.pre-phi353, align 4
  %86 = and i32 %85, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool90.not = icmp eq i32 %86, 0
  %or92 = or i64 %or82, 128
  %spec.select212 = select i1 %tobool90.not, i64 %or84, i64 %or92
  br label %if.end93

if.end93:                                         ; preds = %PageSlab.exit266, %page_is_idle.exit.thread.if.end93_crit_edge
  %u.11 = phi i64 [ %or84, %page_is_idle.exit.thread.if.end93_crit_edge ], [ %spec.select212, %PageSlab.exit266 ]
  %87 = lshr i64 %conv, 7
  %shl.i296 = and i64 %87, 2
  %88 = shl nuw nsw i64 %conv, 1
  %shl.i299 = and i64 %88, 16
  %shl.i302 = and i64 %88, 8
  %shl.i305 = and i64 %87, 256
  %shl.i308 = and i64 %88, 32
  %shl.i311 = and i64 %88, 4
  %shl.i314 = and i64 %88, 64
  %89 = lshr i64 %conv, 9
  %shl.i317 = and i64 %89, 512
  %or95 = or i64 %shl.i299, %shl.i296
  %or97 = or i64 %or95, %shl.i302
  %or99 = or i64 %or97, %shl.i305
  %or101 = or i64 %or99, %shl.i308
  %or103 = or i64 %or101, %shl.i311
  %or105 = or i64 %or103, %shl.i314
  %or107 = or i64 %or105, %shl.i317
  %or109 = or i64 %or107, %u.11
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %2, align 4
  %and.i.i267 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i267)
  %tobool.not.i.i268 = icmp eq i32 %and.i.i267, 0
  br i1 %tobool.not.i.i268, label %if.end93._compound_head.exit.i273_crit_edge, label %if.then.i.i270, !prof !34

if.end93._compound_head.exit.i273_crit_edge:      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit.i273

if.then.i.i270:                                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i269 = add i32 %91, -1
  br label %_compound_head.exit.i273

_compound_head.exit.i273:                         ; preds = %if.then.i.i270, %if.end93._compound_head.exit.i273_crit_edge
  %retval.0.i.i272 = phi i32 [ %sub.i.i269, %if.then.i.i270 ], [ %sub.ptr.lhs.cast, %if.end93._compound_head.exit.i273_crit_edge ]
  %92 = inttoptr i32 %retval.0.i.i272 to ptr
  %93 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  %and.i.i.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !34

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i273
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %92, ptr noundef nonnull @.str.2) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i273
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %92, align 4
  %98 = and i32 %97, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i.not.i.i = icmp eq i32 %98, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.PageSwapCache.exit.thread_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.PageSwapCache.exit.thread_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PageSwapCache.exit.thread

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %93, align 4
  %and.i.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !34

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %92, ptr noundef nonnull @.str.2) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %92, align 4
  %103 = shl i32 %102, 3
  %104 = and i32 %103, 8192
  %105 = zext i32 %104 to i64
  %106 = or i64 %or109, %105
  br label %PageSwapCache.exit.thread

PageSwapCache.exit.thread:                        ; preds = %PageSwapCache.exit, %folio_test_swapbacked.exit.i.i.PageSwapCache.exit.thread_crit_edge
  %107 = phi i64 [ %or109, %folio_test_swapbacked.exit.i.i.PageSwapCache.exit.thread_crit_edge ], [ %106, %PageSwapCache.exit ]
  %108 = lshr i64 %conv, 5
  %shl.i320 = and i64 %108, 16384
  %shl.i323 = and i64 %71, 262144
  %109 = shl nuw nsw i64 %conv, 12
  %shl.i326 = and i64 %109, 8589934592
  %110 = shl nuw nsw i64 %conv, 20
  %shl.i329 = and i64 %110, 4294967296
  %111 = shl nuw nsw i64 %conv, 17
  %shl.i332 = and i64 %111, 17179869184
  %112 = shl nuw nsw i64 %conv, 22
  %shl.i335 = and i64 %112, 34359738368
  %shl.i338 = and i64 %112, 68719476736
  %113 = shl nuw nsw i64 %conv, 27
  %shl.i341 = and i64 %113, 137438953472
  %shl.i344 = and i64 %113, 274877906944
  %or115 = or i64 %shl.i323, %shl.i320
  %or117 = or i64 %or115, %shl.i326
  %or119 = or i64 %or117, %shl.i329
  %or121 = or i64 %or119, %shl.i332
  %or123 = or i64 %or121, %shl.i335
  %or125 = or i64 %or123, %shl.i338
  %or127 = or i64 %or125, %shl.i341
  %or129 = or i64 %or127, %shl.i344
  %or131 = or i64 %or129, %107
  br label %cleanup

cleanup:                                          ; preds = %PageSwapCache.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %or131, %PageSwapCache.exit.thread ], [ 1048576, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_free_buddy_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_page_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpagecount_proc_ops) #5
  %call1 = tail call ptr @proc_create(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpageflags_proc_ops) #5
  %call2 = tail call ptr @proc_create(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpagecgroup_proc_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kpagecount_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %div71 = lshr i32 %conv, 3
  %2 = or i32 %conv, %count
  %3 = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %5 = load i32, ptr @max_pfn, align 4
  %mul = shl i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp.not = icmp ugt i32 %mul, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub = sub i32 %mul, %conv
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not80 = icmp eq i32 %6, 0
  br i1 %cmp9.not80, label %if.end5..loopexit_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5..loopexit_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %if.end5.while.body_crit_edge
  %count.addr.083 = phi i32 [ %sub34, %if.end33.while.body_crit_edge ], [ %6, %if.end5.while.body_crit_edge ]
  %out.082 = phi ptr [ %incdec.ptr, %if.end33.while.body_crit_edge ], [ %buf, %if.end5.while.body_crit_edge ]
  %pfn.081 = phi i32 [ %inc, %if.end33.while.body_crit_edge ], [ %div71, %if.end5.while.body_crit_edge ]
  %call11 = tail call i32 @pfn_valid(i32 noundef %pfn.081) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body.if.end27_crit_edge, label %if.end15

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end15:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub14 = sub i32 %pfn.081, %8
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %sub14
  %tobool17.not = icmp eq ptr %add.ptr, null
  br i1 %tobool17.not, label %if.end15.if.end27_crit_edge, label %lor.lhs.false18

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

lor.lhs.false18:                                  ; preds = %if.end15
  %9 = getelementptr %struct.page, ptr %7, i32 %sub14, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !34

if.then.i.i:                                      ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !35

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !34

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !34

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25.i = add i32 %17, -1
  br label %PageSlab.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %add.ptr to i32
  br label %PageSlab.exit

PageSlab.exit:                                    ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not = icmp eq i32 %24, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %PageSlab.exit.if.end27_crit_edge

PageSlab.exit.if.end27_crit_edge:                 ; preds = %PageSlab.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

lor.lhs.false21:                                  ; preds = %PageSlab.exit
  %25 = getelementptr %struct.page, ptr %7, i32 %sub14, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %27)
  %cmp.i = icmp sgt i32 %27, -129
  br i1 %cmp.i, label %if.else, label %lor.lhs.false21.if.end27_crit_edge

lor.lhs.false21.if.end27_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false21
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %add.ptr, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i72 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i72, label %PageCompound.exit.i, label %if.else.if.then.i74_crit_edge

if.else.if.then.i74_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i74

PageCompound.exit.i:                              ; preds = %if.else
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %9, align 4
  %and.i.i.i73 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.not.i = icmp eq i32 %and.i.i.i73, 0
  br i1 %tobool.not.i, label %if.end.i, label %PageCompound.exit.i.if.then.i74_crit_edge, !prof !34

PageCompound.exit.i.if.then.i74_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i74

if.then.i74:                                      ; preds = %PageCompound.exit.i.if.then.i74_crit_edge, %if.else.if.then.i74_crit_edge
  %call3.i = tail call i32 @__page_mapcount(ptr noundef nonnull %add.ptr) #5
  br label %page_mapcount.exit

if.end.i:                                         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %25, i32 noundef 4) #5
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %25, align 4
  %add.i = add i32 %34, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i, %if.then.i74
  %retval.0.i = phi i32 [ %call3.i, %if.then.i74 ], [ %add.i, %if.end.i ]
  %conv26 = sext i32 %retval.0.i to i64
  br label %if.end27

if.end27:                                         ; preds = %page_mapcount.exit, %lor.lhs.false21.if.end27_crit_edge, %PageSlab.exit.if.end27_crit_edge, %if.end15.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %pcount.0 = phi i64 [ %conv26, %page_mapcount.exit ], [ 0, %lor.lhs.false21.if.end27_crit_edge ], [ 0, %PageSlab.exit.if.end27_crit_edge ], [ 0, %if.end15.if.end27_crit_edge ], [ 0, %while.body.if.end27_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 74) #5
  %35 = tail call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !39
  %and.i = and i32 %37, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %out.082, i64 %pcount.0, i32 -1226833921) #5, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  br i1 %tobool31.not, label %if.end33, label %while.end

if.end33:                                         ; preds = %if.end27
  %inc = add i32 %pfn.081, 1
  %incdec.ptr = getelementptr i64, ptr %out.082, i32 1
  %sub34 = add i32 %count.addr.083, -8
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 83, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %cmp9.not = icmp eq i32 %sub34, 0
  br i1 %cmp9.not, label %if.end33..loopexit_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end33..loopexit_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.end:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast = ptrtoint ptr %out.082 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup.sink.split

.loopexit:                                        ; preds = %if.end33..loopexit_crit_edge, %if.end5..loopexit_crit_edge
  %out.0.lcssa.ph = phi ptr [ %buf, %if.end5..loopexit_crit_edge ], [ %incdec.ptr, %if.end33..loopexit_crit_edge ]
  %sub.ptr.lhs.cast93 = ptrtoint ptr %out.0.lcssa.ph to i32
  %sub.ptr.rhs.cast94 = ptrtoint ptr %buf to i32
  %sub.ptr.sub95 = sub i32 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %.loopexit, %while.end
  %sub.ptr.sub95.sink = phi i32 [ %sub.ptr.sub95, %.loopexit ], [ %sub.ptr.sub, %while.end ]
  %retval.0.ph = phi i32 [ %sub.ptr.sub95, %.loopexit ], [ -14, %while.end ]
  %conv3796 = sext i32 %sub.ptr.sub95.sink to i64
  %39 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ppos, align 8
  %add97 = add i64 %40, %conv3796
  store i64 %add97, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kpageflags_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %div57 = lshr i32 %conv, 3
  %2 = or i32 %conv, %count
  %3 = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %5 = load i32, ptr @max_pfn, align 4
  %mul = shl i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp.not = icmp ugt i32 %mul, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub = sub i32 %mul, %conv
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not58 = icmp eq i32 %6, 0
  br i1 %cmp9.not58, label %if.end5..loopexit_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5..loopexit_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %if.end5.while.body_crit_edge
  %count.addr.061 = phi i32 [ %sub24, %if.end23.while.body_crit_edge ], [ %6, %if.end5.while.body_crit_edge ]
  %out.060 = phi ptr [ %incdec.ptr, %if.end23.while.body_crit_edge ], [ %buf, %if.end5.while.body_crit_edge ]
  %pfn.059 = phi i32 [ %inc, %if.end23.while.body_crit_edge ], [ %div57, %if.end5.while.body_crit_edge ]
  %call11 = tail call i32 @pfn_valid(i32 noundef %pfn.059) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body.if.end15_crit_edge, label %if.then13

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub14 = sub i32 %pfn.059, %8
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %sub14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %while.body.if.end15_crit_edge
  %___page.0 = phi ptr [ %add.ptr, %if.then13 ], [ null, %while.body.if.end15_crit_edge ]
  %call17 = tail call i64 @stable_page_flags(ptr noundef %___page.0)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 251) #5
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !39
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %out.060, i64 %call17, i32 -1226833921) #5, !srcloc !43
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.end23, label %while.end

if.end23:                                         ; preds = %if.end15
  %inc = add i32 %pfn.059, 1
  %incdec.ptr = getelementptr i64, ptr %out.060, i32 1
  %sub24 = add i32 %count.addr.061, -8
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 260, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %cmp9.not = icmp eq i32 %sub24, 0
  br i1 %cmp9.not, label %if.end23..loopexit_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end23..loopexit_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.end:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast = ptrtoint ptr %out.060 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup.sink.split

.loopexit:                                        ; preds = %if.end23..loopexit_crit_edge, %if.end5..loopexit_crit_edge
  %out.0.lcssa.ph = phi ptr [ %buf, %if.end5..loopexit_crit_edge ], [ %incdec.ptr, %if.end23..loopexit_crit_edge ]
  %sub.ptr.lhs.cast71 = ptrtoint ptr %out.0.lcssa.ph to i32
  %sub.ptr.rhs.cast72 = ptrtoint ptr %buf to i32
  %sub.ptr.sub73 = sub i32 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %.loopexit, %while.end
  %sub.ptr.sub73.sink = phi i32 [ %sub.ptr.sub73, %.loopexit ], [ %sub.ptr.sub, %while.end ]
  %retval.0.ph = phi i32 [ %sub.ptr.sub73, %.loopexit ], [ -14, %while.end ]
  %conv2774 = sext i32 %sub.ptr.sub73.sink to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add75 = add i64 %14, %conv2774
  store i64 %add75, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kpagecgroup_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %div63 = lshr i32 %conv, 3
  %2 = or i32 %conv, %count
  %3 = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %5 = load i32, ptr @max_pfn, align 4
  %mul = shl i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp.not = icmp ugt i32 %mul, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub = sub i32 %mul, %conv
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not66 = icmp eq i32 %6, 0
  br i1 %cmp9.not66, label %if.end5..loopexit_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5..loopexit_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %if.end5.while.body_crit_edge
  %count.addr.069 = phi i32 [ %sub28, %if.end27.while.body_crit_edge ], [ %6, %if.end5.while.body_crit_edge ]
  %out.068 = phi ptr [ %incdec.ptr, %if.end27.while.body_crit_edge ], [ %buf, %if.end5.while.body_crit_edge ]
  %pfn.067 = phi i32 [ %inc, %if.end27.while.body_crit_edge ], [ %div63, %if.end5.while.body_crit_edge ]
  %call11 = tail call i32 @pfn_valid(i32 noundef %pfn.067) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body.if.end21_crit_edge, label %if.end15

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end15:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub14 = sub i32 %pfn.067, %8
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %sub14
  %tobool17.not = icmp eq ptr %add.ptr, null
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @page_cgroup_ino(ptr noundef nonnull %add.ptr) #5
  %conv20 = zext i32 %call19 to i64
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %ino.0 = phi i64 [ %conv20, %if.then18 ], [ 0, %if.end15.if.end21_crit_edge ], [ 0, %while.body.if.end21_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 305) #5
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !39
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %out.068, i64 %ino.0, i32 -1226833921) #5, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.end27, label %while.end

if.end27:                                         ; preds = %if.end21
  %inc = add i32 %pfn.067, 1
  %incdec.ptr = getelementptr i64, ptr %out.068, i32 1
  %sub28 = add i32 %count.addr.069, -8
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 314, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %cmp9.not = icmp eq i32 %sub28, 0
  br i1 %cmp9.not, label %if.end27..loopexit_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end27..loopexit_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

while.end:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast = ptrtoint ptr %out.068 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup.sink.split

.loopexit:                                        ; preds = %if.end27..loopexit_crit_edge, %if.end5..loopexit_crit_edge
  %out.0.lcssa.ph = phi ptr [ %buf, %if.end5..loopexit_crit_edge ], [ %incdec.ptr, %if.end27..loopexit_crit_edge ]
  %sub.ptr.lhs.cast79 = ptrtoint ptr %out.0.lcssa.ph to i32
  %sub.ptr.rhs.cast80 = ptrtoint ptr %buf to i32
  %sub.ptr.sub81 = sub i32 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %.loopexit, %while.end
  %sub.ptr.sub81.sink = phi i32 [ %sub.ptr.sub81, %.loopexit ], [ %sub.ptr.sub, %while.end ]
  %retval.0.ph = phi i32 [ %sub.ptr.sub81, %.loopexit ], [ -14, %while.end ]
  %conv3182 = sext i32 %sub.ptr.sub81.sink to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add83 = add i64 %14, %conv3182
  store i64 %add83, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cgroup_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_proc__297_338_proc_page_init5, !1, !"__initcall__kmod_proc__297_338_proc_page_init5", i1 false, i1 false}
!1 = !{!"../fs/proc/page.c", i32 338, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/page-flags.h", i32 428, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/page.c", i32 331, i32 14}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/page.c", i32 332, i32 14}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/proc/page.c", i32 334, i32 14}
!16 = !{ptr @kpagecount_proc_ops, !17, !"kpagecount_proc_ops", i1 false, i1 false}
!17 = !{!"../fs/proc/page.c", i32 92, i32 30}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/proc/page.c", i32 74, i32 7}
!20 = !{ptr @kpageflags_proc_ops, !21, !"kpageflags_proc_ops", i1 false, i1 false}
!21 = !{!"../fs/proc/page.c", i32 269, i32 30}
!22 = !{ptr @kpagecgroup_proc_ops, !23, !"kpagecgroup_proc_ops", i1 false, i1 false}
!23 = !{!"../fs/proc/page.c", i32 323, i32 30}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2150464439, i64 2150464930, i64 2150464476, i64 2150464532, i64 2150464566, i64 2150464590, i64 2150464631, i64 2150464652, i64 2150464680, i64 2150464714}
!37 = !{i64 2151014216, i64 2151014707, i64 2151014253, i64 2151014309, i64 2151014343, i64 2151014367, i64 2151014408, i64 2151014429, i64 2151014457, i64 2151014491}
!38 = !{i64 2150247430, i64 2150247921, i64 2150247467, i64 2150247523, i64 2150247557, i64 2150247581, i64 2150247622, i64 2150247643, i64 2150247671, i64 2150247705}
!39 = !{i64 5248217}
!40 = !{i64 5248414}
!41 = !{i64 2152733647}
!42 = !{i64 2154967209, i64 2154967489, i64 2154967823, i64 2154968157}
!43 = !{i64 2154979176, i64 2154979456, i64 2154979790, i64 2154980124}
!44 = !{i64 2154990620, i64 2154990900, i64 2154991234, i64 2154991568}
