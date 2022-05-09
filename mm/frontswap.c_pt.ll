; ModuleID = '/llk/IR_all_yes/mm/frontswap.c_pt.bc'
source_filename = "../mm/frontswap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.page = type { i32, %union.anon.0, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.frontswap_ops = type { ptr, ptr, ptr, ptr, ptr }

@frontswap_enabled_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@frontswap_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@swap_info = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/frontswap.c\00", [17 x i8] zeroinitializer }, align 32
@__initcall__kmod_frontswap__290_274_init_frontswap6 = internal global ptr @init_frontswap, section ".initcall6.init", align 4
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@frontswap_succ_stores = internal global { i64, [24 x i8] } zeroinitializer, align 32
@frontswap_failed_stores = internal global { i64, [24 x i8] } zeroinitializer, align 32
@frontswap_loads = internal global { i64, [24 x i8] } zeroinitializer, align 32
@frontswap_invalidates = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frontswap\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"loads\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"succ_stores\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failed_stores\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalidates\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"frontswap_enabled_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 22, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 120, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 414, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"frontswap_succ_stores\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 39, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"frontswap_failed_stores\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 40, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"frontswap_loads\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 38, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"frontswap_invalidates\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 41, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 262, i32 43 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 265, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 266, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 267, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [18 x i8] c"../mm/frontswap.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 269, i32 21 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_frontswap__290_274_init_frontswap6, ptr @frontswap_enabled_key, ptr @.str, ptr @.str.1, ptr @frontswap_succ_stores, ptr @frontswap_failed_stores, ptr @frontswap_loads, ptr @frontswap_invalidates, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontswap_enabled_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontswap_succ_stores to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontswap_failed_stores to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontswap_loads to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontswap_invalidates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @frontswap_register_ops(ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @frontswap_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %ops, ptr @frontswap_ops, align 4
  tail call void @static_key_slow_inc(ptr noundef nonnull @frontswap_enabled_key) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frontswap_init(i32 noundef %type, ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !37

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !38
  unreachable

do.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %map, null
  br i1 %tobool8.not, label %do.end26, label %if.end41, !prof !37

do.end26:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end41:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %frontswap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %map, ptr %frontswap_map.i, align 4
  %3 = load ptr, ptr @frontswap_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(i32 noundef %type) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__frontswap_store(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %shr.i = lshr i32 %1, 26
  %arrayidx = getelementptr [0 x ptr], ptr @swap_info, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %1, 67108863
  %4 = load ptr, ptr @frontswap_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body7, label %do.body13, !prof !37

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #4, !srcloc !39
  unreachable

do.body13:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !40

if.then.i.i:                                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %5, align 4
  %and.i16.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !37

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !40

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i18.i = add i32 %13, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %14, %if.end.i20.i ]
  %15 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #4, !srcloc !41
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !40

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i25.i = add i32 %13, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %16, %if.end.i27.i ]
  %17 = inttoptr i32 %retval.0.i28.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool15.not, label %do.body25, label %do.body34, !prof !37

do.body25:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

do.body34:                                        ; preds = %PageLocked.exit
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body42, label %do.end50, !prof !37

do.body42:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

do.end50:                                         ; preds = %do.body34
  %frontswap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 22
  %20 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frontswap_map.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.end50.if.end53_crit_edge, label %__frontswap_test.exit

do.end50.if.end53_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

__frontswap_test.exit:                            ; preds = %do.end50
  %div3.i.i = lshr i32 %and.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 %div3.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i74 = and i32 %1, 31
  %24 = shl nuw i32 1, %and.i.i74
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.i.not = icmp eq i32 %25, 0
  br i1 %tobool2.i.not, label %__frontswap_test.exit.if.end53_crit_edge, label %if.then52

__frontswap_test.exit.if.end53_crit_edge:         ; preds = %__frontswap_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then52:                                        ; preds = %__frontswap_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef %and.i, ptr noundef nonnull %21) #4
  %frontswap_pages.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frontswap_pages.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %frontswap_pages.i, i32 1, i32 3, i32 1) #4
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frontswap_pages.i, ptr %frontswap_pages.i, i32 1, ptr elementtype(i32) %frontswap_pages.i) #4, !srcloc !44
  %27 = load ptr, ptr @frontswap_ops, align 4
  %invalidate_page = getelementptr inbounds %struct.frontswap_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %invalidate_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %invalidate_page, align 4
  tail call void %29(i32 noundef %shr.i, i32 noundef %and.i) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %__frontswap_test.exit.if.end53_crit_edge, %do.end50.if.end53_crit_edge
  %30 = load ptr, ptr @frontswap_ops, align 4
  %store = getelementptr inbounds %struct.frontswap_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %store, align 4
  %call54 = tail call i32 %32(i32 noundef %shr.i, i32 noundef %and.i, ptr noundef %page) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %frontswap_map.i, align 4
  tail call void @_set_bit(i32 noundef %and.i, ptr noundef %34) #4
  %frontswap_pages.i78 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 23
  %call.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %frontswap_pages.i78, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %frontswap_pages.i78, i32 1, i32 3, i32 1) #4
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frontswap_pages.i78, ptr %frontswap_pages.i78, i32 1, ptr elementtype(i32) %frontswap_pages.i78) #4, !srcloc !45
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53.if.end57_crit_edge
  %frontswap_failed_stores.sink82 = phi ptr [ @frontswap_succ_stores, %if.then56 ], [ @frontswap_failed_stores, %if.end53.if.end57_crit_edge ]
  %36 = ptrtoint ptr %frontswap_failed_stores.sink82 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %frontswap_failed_stores.sink82, align 8
  %inc.i80 = add i64 %37, 1
  store i64 %inc.i80, ptr %frontswap_failed_stores.sink82, align 8
  ret i32 %call54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__frontswap_load(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %shr.i = lshr i32 %1, 26
  %arrayidx = getelementptr [0 x ptr], ptr @swap_info, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %1, 67108863
  %4 = load ptr, ptr @frontswap_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body7, label %do.body13, !prof !37

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #4, !srcloc !46
  unreachable

do.body13:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !40

if.then.i.i:                                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %5, align 4
  %and.i16.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !37

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !40

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i18.i = add i32 %13, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %14, %if.end.i20.i ]
  %15 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #4, !srcloc !41
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !40

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i25.i = add i32 %13, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %16, %if.end.i27.i ]
  %17 = inttoptr i32 %retval.0.i28.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool15.not, label %do.body25, label %do.body34, !prof !37

do.body25:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

do.body34:                                        ; preds = %PageLocked.exit
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body42, label %do.end50, !prof !37

do.body42:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #4, !srcloc !48
  unreachable

do.end50:                                         ; preds = %do.body34
  %frontswap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 22
  %20 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frontswap_map.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.end50.cleanup_crit_edge, label %__frontswap_test.exit

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__frontswap_test.exit:                            ; preds = %do.end50
  %div3.i.i = lshr i32 %and.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 %div3.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i72 = and i32 %1, 31
  %24 = shl nuw i32 1, %and.i.i72
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.i.not = icmp eq i32 %25, 0
  br i1 %tobool2.i.not, label %__frontswap_test.exit.cleanup_crit_edge, label %if.end53

__frontswap_test.exit.cleanup_crit_edge:          ; preds = %__frontswap_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %__frontswap_test.exit
  %load = getelementptr inbounds %struct.frontswap_ops, ptr %4, i32 0, i32 2
  %26 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %load, align 4
  %call54 = tail call i32 %27(i32 noundef %shr.i, i32 noundef %and.i, ptr noundef %page) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %28 = load i64, ptr @frontswap_loads, align 8
  %inc.i = add i64 %28, 1
  store i64 %inc.i, ptr @frontswap_loads, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end53.cleanup_crit_edge, %__frontswap_test.exit.cleanup_crit_edge, %do.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %__frontswap_test.exit.cleanup_crit_edge ], [ 0, %if.then56 ], [ %call54, %if.end53.cleanup_crit_edge ], [ -1, %do.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__frontswap_invalidate_page(i32 noundef %type, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = load ptr, ptr @frontswap_ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !37

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #4, !srcloc !49
  unreachable

do.body10:                                        ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body18, label %do.end26, !prof !37

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #4, !srcloc !50
  unreachable

do.end26:                                         ; preds = %do.body10
  %frontswap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontswap_map.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end26.cleanup_crit_edge, label %__frontswap_test.exit

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__frontswap_test.exit:                            ; preds = %do.end26
  %div3.i.i = lshr i32 %offset, 5
  %arrayidx.i.i = getelementptr i32, ptr %4, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %offset, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.i.not = icmp eq i32 %8, 0
  br i1 %tobool2.i.not, label %__frontswap_test.exit.cleanup_crit_edge, label %if.end28

__frontswap_test.exit.cleanup_crit_edge:          ; preds = %__frontswap_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %__frontswap_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  %invalidate_page = getelementptr inbounds %struct.frontswap_ops, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %invalidate_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %invalidate_page, align 4
  tail call void %10(i32 noundef %type, i32 noundef %offset) #4
  %11 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frontswap_map.i, align 4
  tail call void @_clear_bit(i32 noundef %offset, ptr noundef %12) #4
  %frontswap_pages.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frontswap_pages.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %frontswap_pages.i, i32 1, i32 3, i32 1) #4
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frontswap_pages.i, ptr %frontswap_pages.i, i32 1, ptr elementtype(i32) %frontswap_pages.i) #4, !srcloc !44
  %14 = load i64, ptr @frontswap_invalidates, align 8
  %inc.i = add i64 %14, 1
  store i64 %inc.i, ptr @frontswap_invalidates, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %__frontswap_test.exit.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__frontswap_invalidate_area(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = load ptr, ptr @frontswap_ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !37

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #4, !srcloc !51
  unreachable

do.body10:                                        ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body18, label %do.end26, !prof !37

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/frontswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #4, !srcloc !52
  unreachable

do.end26:                                         ; preds = %do.body10
  %frontswap_map = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %frontswap_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontswap_map, align 4
  %cmp27 = icmp eq ptr %4, null
  br i1 %cmp27, label %do.end26.cleanup_crit_edge, label %if.end29

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  %invalidate_area = getelementptr inbounds %struct.frontswap_ops, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %invalidate_area to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %invalidate_area, align 4
  tail call void %6(i32 noundef %type) #4
  %frontswap_pages = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frontswap_pages, i32 noundef 4) #4
  %7 = ptrtoint ptr %frontswap_pages to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %frontswap_pages, align 4
  %8 = ptrtoint ptr %frontswap_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontswap_map, align 4
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  %sub.i = add i32 %11, 31
  %12 = lshr i32 %sub.i, 3
  %mul.i = and i32 %12, 536870908
  %13 = call ptr @memset(ptr %9, i32 0, i32 %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_frontswap() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef nonnull @frontswap_loads) #4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef nonnull @frontswap_succ_stores) #4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef nonnull @frontswap_failed_stores) #4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef nonnull @frontswap_invalidates) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @frontswap_enabled_key, !1, !"frontswap_enabled_key", i1 false, i1 false}
!1 = !{!"../mm/frontswap.c", i32 22, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/frontswap.c", i32 120, i32 6}
!4 = !{ptr @__initcall__kmod_frontswap__290_274_init_frontswap6, !5, !"__initcall__kmod_frontswap__290_274_init_frontswap6", i1 false, i1 false}
!5 = !{!"../mm/frontswap.c", i32 274, i32 1}
!6 = !{ptr @frontswap_ops, !7, !"frontswap_ops", i1 false, i1 false}
!7 = !{!"../mm/frontswap.c", i32 30, i32 36}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!10 = !{ptr @frontswap_succ_stores, !11, !"frontswap_succ_stores", i1 false, i1 false}
!11 = !{!"../mm/frontswap.c", i32 39, i32 12}
!12 = !{ptr @frontswap_failed_stores, !13, !"frontswap_failed_stores", i1 false, i1 false}
!13 = !{!"../mm/frontswap.c", i32 40, i32 12}
!14 = !{ptr @frontswap_loads, !15, !"frontswap_loads", i1 false, i1 false}
!15 = !{!"../mm/frontswap.c", i32 38, i32 12}
!16 = !{ptr @frontswap_invalidates, !17, !"frontswap_invalidates", i1 false, i1 false}
!17 = !{!"../mm/frontswap.c", i32 41, i32 12}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/frontswap.c", i32 262, i32 43}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/frontswap.c", i32 265, i32 21}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/frontswap.c", i32 266, i32 21}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/frontswap.c", i32 267, i32 21}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../mm/frontswap.c", i32 269, i32 21}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2154912477, i64 2154912956, i64 2154912514, i64 2154912570, i64 2154912604, i64 2154912628, i64 2154912669, i64 2154912690, i64 2154912718, i64 2154912752}
!39 = !{i64 2154919274, i64 2154919753, i64 2154919311, i64 2154919367, i64 2154919401, i64 2154919425, i64 2154919466, i64 2154919487, i64 2154919515, i64 2154919549}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2150241822, i64 2150242313, i64 2150241859, i64 2150241915, i64 2150241949, i64 2150241973, i64 2150242014, i64 2150242035, i64 2150242063, i64 2150242097}
!42 = !{i64 2154920880, i64 2154921359, i64 2154920917, i64 2154920973, i64 2154921007, i64 2154921031, i64 2154921072, i64 2154921093, i64 2154921121, i64 2154921155}
!43 = !{i64 2154922501, i64 2154922980, i64 2154922538, i64 2154922594, i64 2154922628, i64 2154922652, i64 2154922693, i64 2154922714, i64 2154922742, i64 2154922776}
!44 = !{i64 2148677795, i64 2148677821, i64 2148677850, i64 2148677884, i64 2148677915, i64 2148677938}
!45 = !{i64 2148675330, i64 2148675356, i64 2148675385, i64 2148675419, i64 2148675450, i64 2148675473}
!46 = !{i64 2154924135, i64 2154924614, i64 2154924172, i64 2154924228, i64 2154924262, i64 2154924286, i64 2154924327, i64 2154924348, i64 2154924376, i64 2154924410}
!47 = !{i64 2154925741, i64 2154926220, i64 2154925778, i64 2154925834, i64 2154925868, i64 2154925892, i64 2154925933, i64 2154925954, i64 2154925982, i64 2154926016}
!48 = !{i64 2154927362, i64 2154927841, i64 2154927399, i64 2154927455, i64 2154927489, i64 2154927513, i64 2154927554, i64 2154927575, i64 2154927603, i64 2154927637}
!49 = !{i64 2154928973, i64 2154929452, i64 2154929010, i64 2154929066, i64 2154929100, i64 2154929124, i64 2154929165, i64 2154929186, i64 2154929214, i64 2154929248}
!50 = !{i64 2154930594, i64 2154931073, i64 2154930631, i64 2154930687, i64 2154930721, i64 2154930745, i64 2154930786, i64 2154930807, i64 2154930835, i64 2154930869}
!51 = !{i64 2154932191, i64 2154932670, i64 2154932228, i64 2154932284, i64 2154932318, i64 2154932342, i64 2154932383, i64 2154932404, i64 2154932432, i64 2154932466}
!52 = !{i64 2154933812, i64 2154934291, i64 2154933849, i64 2154933905, i64 2154933939, i64 2154933963, i64 2154934004, i64 2154934025, i64 2154934053, i64 2154934087}
