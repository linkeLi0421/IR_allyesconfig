; ModuleID = '/llk/IR_all_yes/mm/page_idle.c_pt.bc'
source_filename = "../mm/page_idle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
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

@__initcall__kmod_page_idle__291_221_page_idle_init4 = internal global ptr @page_idle_init, section ".initcall4.init", align 4
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@page_idle_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr null, ptr @page_idle_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@page_idle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013page_idle: register sysfs failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"page_idle_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/page_idle.c\00", [17 x i8] zeroinitializer }, align 32
@page_idle_init._entry_ptr = internal global ptr @page_idle_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"page_idle\00", [22 x i8] zeroinitializer }, align 32
@page_idle_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @page_idle_bitmap_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@page_idle_bitmap_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.4, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @page_idle_bitmap_read, ptr @page_idle_bitmap_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bitmap\00", [25 x i8] zeroinitializer }, align 32
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@page_idle_clear_pte_refs.rwc = internal constant { %struct.rmap_walk_control, [44 x i8] } { %struct.rmap_walk_control { ptr null, ptr @page_idle_clear_pte_refs_one, ptr null, ptr @page_lock_anon_vma_read, ptr null }, [44 x i8] zeroinitializer }, align 32
@page_idle_clear_pte_refs_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"page_idle_attr_group\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 205, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 216, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 207, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"page_idle_bin_attrs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 200, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"page_idle_bitmap_attr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 196, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 197, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 422, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [4 x i8] c"rwc\00", align 1
@___asan_gen_.40 = private constant [18 x i8] c"../mm/page_idle.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 94, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 260, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 717, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_page_idle__291_221_page_idle_init4, ptr @page_idle_init._entry, ptr @page_idle_init._entry_ptr, ptr @page_idle_attr_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @page_idle_bin_attrs, ptr @page_idle_bitmap_attr, ptr @.str.4, ptr @.str.5, ptr @page_idle_clear_pte_refs.rwc, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_idle_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_idle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_idle_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_idle_bitmap_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_idle_clear_pte_refs.rwc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @page_idle_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_kobj to i32))
  %0 = load ptr, ptr @mm_kobj, align 4
  %call = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @page_idle_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page_idle_bitmap_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %pos, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  %rem1 = and i32 %count, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2.not = icmp eq i32 %rem1, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos.tr = trunc i64 %pos to i32
  %conv = shl i32 %pos.tr, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %1 = load i32, ptr @max_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %1)
  %cmp.not = icmp ult i32 %conv, %1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = add i32 %pos.tr, %count
  %add = shl i32 %2, 3
  %3 = tail call i32 @llvm.umin.i32(i32 %add, i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %3)
  %cmp1177 = icmp ult i32 %conv, %3
  br i1 %cmp1177, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %if.end5.for.body_crit_edge
  %pfn.079 = phi i32 [ %inc, %if.end25.for.body_crit_edge ], [ %conv, %if.end5.for.body_crit_edge ]
  %out.078 = phi ptr [ %spec.select53, %if.end25.for.body_crit_edge ], [ %buf, %if.end5.for.body_crit_edge ]
  %rem13 = and i32 %pfn.079, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13)
  %tobool14.not = icmp eq i32 %rem13, 0
  br i1 %tobool14.not, label %if.then15, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %out.078 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %out.078, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body.if.end16_crit_edge
  %call = tail call fastcc ptr @page_idle_get_page(i32 noundef %pfn.079)
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %if.then18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %if.end16
  %5 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = tail call ptr @lookup_page_ext(ptr noundef %9) #8
  %tobool.not.i2.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i.if.end24_crit_edge, label %page_is_idle.exit, !prof !40

_compound_head.exit.i.if.end24_crit_edge:         ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

page_is_idle.exit:                                ; preds = %_compound_head.exit.i
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.i.i.not = icmp eq i32 %12, 0
  br i1 %tobool5.i.i.not, label %page_is_idle.exit.if.end24_crit_edge, label %if.then20

page_is_idle.exit.if.end24_crit_edge:             ; preds = %page_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %page_is_idle.exit
  tail call fastcc void @page_idle_clear_pte_refs(ptr noundef nonnull %call)
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %5, align 4
  %and.i.i54 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i58, label %if.then.i.i57, !prof !39

if.then.i.i57:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i56 = add i32 %14, -1
  br label %_compound_head.exit.i62

if.end.i.i58:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i62

_compound_head.exit.i62:                          ; preds = %if.end.i.i58, %if.then.i.i57
  %retval.0.i.i59 = phi i32 [ %sub.i.i56, %if.then.i.i57 ], [ %15, %if.end.i.i58 ]
  %16 = inttoptr i32 %retval.0.i.i59 to ptr
  %call.i.i60 = tail call ptr @lookup_page_ext(ptr noundef %16) #8
  %tobool.not.i2.i61 = icmp eq ptr %call.i.i60, null
  br i1 %tobool.not.i2.i61, label %_compound_head.exit.i62.if.end24_crit_edge, label %page_is_idle.exit66, !prof !40

_compound_head.exit.i62.if.end24_crit_edge:       ; preds = %_compound_head.exit.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

page_is_idle.exit66:                              ; preds = %_compound_head.exit.i62
  %17 = ptrtoint ptr %call.i.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i.i60, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.i.i63.not = icmp eq i32 %19, 0
  br i1 %tobool5.i.i63.not, label %page_is_idle.exit66.if.end24_crit_edge, label %if.then22

page_is_idle.exit66.if.end24_crit_edge:           ; preds = %page_is_idle.exit66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %page_is_idle.exit66
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i32 %rem13 to i64
  %shl = shl nuw i64 1, %sh_prom
  %20 = ptrtoint ptr %out.078 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %out.078, align 8
  %or = or i64 %21, %shl
  store i64 %or, ptr %out.078, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %page_is_idle.exit66.if.end24_crit_edge, %_compound_head.exit.i62.if.end24_crit_edge, %page_is_idle.exit.if.end24_crit_edge, %_compound_head.exit.i.if.end24_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %5, align 4
  %and.i.i67 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.not.i.i68, label %if.end.i.i71, label %if.then.i.i70, !prof !39

if.then.i.i70:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i69 = add i32 %23, -1
  br label %_compound_head.exit.i73

if.end.i.i71:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i73

_compound_head.exit.i73:                          ; preds = %if.end.i.i71, %if.then.i.i70
  %retval.0.i.i72 = phi i32 [ %sub.i.i69, %if.then.i.i70 ], [ %24, %if.end.i.i71 ]
  %25 = inttoptr i32 %retval.0.i.i72 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i73
  call void @__sanitizer_cov_trace_pc() #10
  %28 = inttoptr i32 %retval.0.i.i72 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i73
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@page_idle_bitmap_read, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end25_crit_edge

folio_put_testzero.exit.i.i.if.end25_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %25) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem13)
  %cmp26 = icmp eq i32 %rem13, 63
  %spec.select53.idx = zext i1 %cmp26 to i32
  %spec.select53 = getelementptr i64, ptr %out.078, i32 %spec.select53.idx
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 154, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %inc = add i32 %pfn.079, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end5.for.end_crit_edge
  %out.0.lcssa = phi ptr [ %buf, %if.end5.for.end_crit_edge ], [ %spec.select53, %if.end25.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page_idle_bitmap_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %pos, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  %rem1 = and i32 %count, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2.not = icmp eq i32 %rem1, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos.tr = trunc i64 %pos to i32
  %conv = shl i32 %pos.tr, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %1 = load i32, ptr @max_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %1)
  %cmp.not = icmp ult i32 %conv, %1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = add i32 %pos.tr, %count
  %add = shl i32 %2, 3
  %3 = tail call i32 @llvm.umin.i32(i32 %add, i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %3)
  %cmp1153 = icmp ult i32 %conv, %3
  br i1 %cmp1153, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end5.for.body_crit_edge
  %pfn.055 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ %conv, %if.end5.for.body_crit_edge ]
  %in.054 = phi ptr [ %spec.select44, %if.end19.for.body_crit_edge ], [ %buf, %if.end5.for.body_crit_edge ]
  %rem13 = and i32 %pfn.055, 63
  %4 = ptrtoint ptr %in.054 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %in.054, align 8
  %sh_prom = zext i32 %rem13 to i64
  %6 = shl nuw i64 1, %sh_prom
  %7 = and i64 %5, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool14.not = icmp eq i64 %7, 0
  br i1 %tobool14.not, label %for.body.if.end19_crit_edge, label %if.then15

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %for.body
  %call = tail call fastcc ptr @page_idle_get_page(i32 noundef %pfn.055)
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.then15.if.end19_crit_edge, label %if.then17

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  tail call fastcc void @page_idle_clear_pte_refs(ptr noundef nonnull %call)
  %8 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = tail call ptr @lookup_page_ext(ptr noundef %12) #8
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i.set_page_idle.exit_crit_edge, label %if.end.i2.i, !prof !40

_compound_head.exit.i.set_page_idle.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_page_idle.exit

if.end.i2.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %call.i.i) #8
  br label %set_page_idle.exit

set_page_idle.exit:                               ; preds = %if.end.i2.i, %_compound_head.exit.i.set_page_idle.exit_crit_edge
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %8, align 4
  %and.i.i45 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i.i49, label %if.then.i.i48, !prof !39

if.then.i.i48:                                    ; preds = %set_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i47 = add i32 %14, -1
  br label %_compound_head.exit.i51

if.end.i.i49:                                     ; preds = %set_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i51

_compound_head.exit.i51:                          ; preds = %if.end.i.i49, %if.then.i.i48
  %retval.0.i.i50 = phi i32 [ %sub.i.i47, %if.then.i.i48 ], [ %15, %if.end.i.i49 ]
  %16 = inttoptr i32 %retval.0.i.i50 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i51
  call void @__sanitizer_cov_trace_pc() #10
  %19 = inttoptr i32 %retval.0.i.i50 to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i51
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@page_idle_bitmap_write, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end19_crit_edge

folio_put_testzero.exit.i.i.if.end19_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %16) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end19_crit_edge, %if.then15.if.end19_crit_edge, %for.body.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem13)
  %cmp20 = icmp eq i32 %rem13, 63
  %spec.select44.idx = zext i1 %cmp20 to i32
  %spec.select44 = getelementptr i64, ptr %in.054, i32 %spec.select44.idx
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 191, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %inc = add i32 %pfn.055, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %if.end5.for.end_crit_edge
  %in.0.lcssa = phi ptr [ %buf, %if.end5.for.end_crit_edge ], [ %spec.select44, %if.end19.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %in.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @page_idle_get_page(i32 noundef %pfn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr %struct.page, ptr %0, i32 %sub, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !40

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !39

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.5) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #8, !srcloc !46
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !39

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %10, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %PageLRU.exit
  %_refcount.i.i = getelementptr %struct.page, ptr %0, i32 %sub, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i) #8, !srcloc !48
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i

lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge: ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit.i.i

do.end11.i.i.i.i.i:                               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  br label %atomic_add_unless.exit.i.i

atomic_add_unless.exit.i.i:                       ; preds = %do.end11.i.i.i.i.i, %lor.lhs.false4.atomic_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@page_idle_get_page, %if.then.i.i45)) #8
          to label %get_page_unless_zero.exit [label %if.then.i.i45], !srcloc !45

if.then.i.i45:                                    ; preds = %atomic_add_unless.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef nonnull %add.ptr, i32 noundef 1, i32 noundef %conv.i.i) #8
  br label %get_page_unless_zero.exit

get_page_unless_zero.exit:                        ; preds = %if.then.i.i45, %atomic_add_unless.exit.i.i
  br i1 %cmp.i.i.i.i, label %if.end7, label %get_page_unless_zero.exit.cleanup_crit_edge

get_page_unless_zero.exit.cleanup_crit_edge:      ; preds = %get_page_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %get_page_unless_zero.exit
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %2, align 4
  %and.i.i21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !39

if.then.i.i24:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i23 = add i32 %20, -1
  br label %_compound_head.exit.i30

if.end.i.i25:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i.not.i27, label %if.then.i31, label %do.end8.i37, !prof !40

if.then.i31:                                      ; preds = %_compound_head.exit.i30
  br i1 %tobool.not.i14.i29, label %if.end.i17.i34, label %if.then.i16.i33, !prof !39

if.then.i16.i33:                                  ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i32 = add i32 %26, -1
  br label %_compound_head.exit19.i36

if.end.i17.i34:                                   ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit19.i36

_compound_head.exit19.i36:                        ; preds = %if.end.i17.i34, %if.then.i16.i33
  %retval.0.i18.i35 = phi i32 [ %sub.i15.i32, %if.then.i16.i33 ], [ %27, %if.end.i17.i34 ]
  %28 = inttoptr i32 %retval.0.i18.i35 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.5) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #8, !srcloc !46
  unreachable

do.end8.i37:                                      ; preds = %_compound_head.exit.i30
  br i1 %tobool.not.i14.i29, label %if.end.i24.i40, label %if.then.i23.i39, !prof !39

if.then.i23.i39:                                  ; preds = %do.end8.i37
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i38 = add i32 %26, -1
  br label %PageLRU.exit44

if.end.i24.i40:                                   ; preds = %do.end8.i37
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool9.not, label %if.then13, label %PageLRU.exit44.cleanup_crit_edge, !prof !40

PageLRU.exit44.cleanup_crit_edge:                 ; preds = %PageLRU.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %PageLRU.exit44
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @put_page(ptr noundef nonnull %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %PageLRU.exit44.cleanup_crit_edge, %get_page_unless_zero.exit.cleanup_crit_edge, %PageLRU.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %get_page_unless_zero.exit.cleanup_crit_edge ], [ null, %PageLRU.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then13 ], [ %add.ptr, %PageLRU.exit44.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_idle_clear_pte_refs(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @page_mapped(ptr noundef %page) #8
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call ptr @page_rmapping(ptr noundef %page) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %2, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.land.lhs.true_crit_edge, label %lor.rhs

PageAnon.exit.land.lhs.true_crit_edge:            ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.rhs:                                          ; preds = %PageAnon.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i2.i19 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i19)
  %tobool.not.i.i20 = icmp eq i32 %and.i2.i19, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i23, label %if.then.i.i22, !prof !39

if.then.i.i22:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i21 = add i32 %9, -1
  br label %PageKsm.exit

if.end.i.i23:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i23, %if.then.i.i22
  %retval.0.i.i24 = phi i32 [ %sub.i.i21, %if.then.i.i22 ], [ %10, %if.end.i.i23 ]
  %11 = inttoptr i32 %retval.0.i.i24 to ptr
  %mapping.i.i25 = getelementptr inbounds %struct.anon.81, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mapping.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping.i.i25, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i26 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i26)
  %cmp.i.i27 = icmp eq i32 %and.i.i26, 3
  br i1 %cmp.i.i27, label %PageKsm.exit.land.lhs.true_crit_edge, label %if.end11.critedge

PageKsm.exit.land.lhs.true_crit_edge:             ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %PageKsm.exit.land.lhs.true_crit_edge, %PageAnon.exit.land.lhs.true_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i28 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i32, label %if.then.i.i31, !prof !39

if.then.i.i31:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i30 = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i32:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i32, %if.then.i.i31
  %retval.0.i.i33 = phi i32 [ %sub.i.i30, %if.then.i.i31 ], [ %17, %if.end.i.i32 ]
  %18 = inttoptr i32 %retval.0.i.i33 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !39

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and.i.i4.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.cleanup_crit_edge

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool6.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool6.not.not, label %if.then10.critedge, label %trylock_page.exit.cleanup_crit_edge

trylock_page.exit.cleanup_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.critedge:                               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rmap_walk(ptr noundef %page, ptr noundef nonnull @page_idle_clear_pte_refs.rwc) #8
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

if.end11.critedge:                                ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rmap_walk(ptr noundef %page, ptr noundef nonnull @page_idle_clear_pte_refs.rwc) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11.critedge, %if.then10.critedge, %trylock_page.exit.cleanup_crit_edge, %folio_flags.exit.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !39

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !40

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !45

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @page_idle_clear_pte_refs_one(ptr noundef %page, ptr noundef %vma, i32 noundef %addr, ptr nocapture noundef readnone %arg) #4 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #8
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %page, ptr %pvmw, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vma, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %addr, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call73 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #8
  br i1 %call73, label %while.body.lr.ph, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

while.body.lr.ph:                                 ; preds = %entry
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %referenced.0.off074 = phi i1 [ false, %while.body.lr.ph ], [ %referenced.1.off0, %if.end46.while.body_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.end, label %if.then

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.ptep_test_and_clear_young.exit_crit_edge, label %if.else.i

if.then.ptep_test_and_clear_young.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptep_test_and_clear_young.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_mm.i, align 4
  %and.i.i.i = and i32 %13, -3
  call void @set_pte_at(ptr noundef %15, i32 noundef %11, ptr noundef nonnull %9, i32 noundef %and.i.i.i) #8
  br label %ptep_test_and_clear_young.exit

ptep_test_and_clear_young.exit:                   ; preds = %if.else.i, %if.then.ptep_test_and_clear_young.exit_crit_edge
  %r.0.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then.ptep_test_and_clear_young.exit_crit_edge ]
  %16 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_mm.i, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %19, null
  br i1 %tobool.i.not.i, label %ptep_test_and_clear_young.exit.mmu_notifier_clear_young.exit_crit_edge, label %if.then.i

ptep_test_and_clear_young.exit.mmu_notifier_clear_young.exit_crit_edge: ; preds = %ptep_test_and_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmu_notifier_clear_young.exit

if.then.i:                                        ; preds = %ptep_test_and_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %11, 4096
  %call1.i = call i32 @__mmu_notifier_clear_young(ptr noundef %17, i32 noundef %11, i32 noundef %add) #8
  br label %mmu_notifier_clear_young.exit

mmu_notifier_clear_young.exit:                    ; preds = %if.then.i, %ptep_test_and_clear_young.exit.mmu_notifier_clear_young.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ 0, %ptep_test_and_clear_young.exit.mmu_notifier_clear_young.exit_crit_edge ]
  %or = or i32 %retval.0.i, %r.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool8.not = icmp ne i32 %or, 0
  %spec.select = select i1 %tobool8.not, i1 true, i1 %referenced.0.off074
  br label %if.end46

land.end:                                         ; preds = %while.body
  %.b62 = load i1, ptr @page_idle_clear_pte_refs_one.__already_done, align 1
  br i1 %.b62, label %land.end.if.end46_crit_edge, label %if.then15, !prof !39

land.end.if.end46_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @page_idle_clear_pte_refs_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef 9, ptr noundef null) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then15, %land.end.if.end46_crit_edge, %mmu_notifier_clear_young.exit
  %referenced.1.off0 = phi i1 [ %spec.select, %mmu_notifier_clear_young.exit ], [ %referenced.0.off074, %if.then15 ], [ %referenced.0.off074, %land.end.if.end46_crit_edge ]
  %call = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #8
  br i1 %call, label %if.end46.while.body_crit_edge, label %while.end

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end46
  br i1 %referenced.1.off0, label %if.then48, label %while.end.if.end49_crit_edge

while.end.if.end49_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %while.end
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = call ptr @lookup_page_ext(ptr noundef %24) #8
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i.clear_page_idle.exit_crit_edge, label %if.end.i2.i, !prof !40

_compound_head.exit.i.clear_page_idle.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_page_idle.exit

if.end.i2.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 3, ptr noundef nonnull %call.i.i) #8
  br label %clear_page_idle.exit

clear_page_idle.exit:                             ; preds = %if.end.i2.i, %_compound_head.exit.i.clear_page_idle.exit_crit_edge
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %20, align 4
  %and.i.i63 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !39

if.then.i.i66:                                    ; preds = %clear_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i65 = add i32 %26, -1
  br label %_compound_head.exit.i71

if.end.i.i67:                                     ; preds = %clear_page_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i71

_compound_head.exit.i71:                          ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %27, %if.end.i.i67 ]
  %28 = inttoptr i32 %retval.0.i.i68 to ptr
  %call.i.i69 = call ptr @lookup_page_ext(ptr noundef %28) #8
  %tobool.not.i1.i70 = icmp eq ptr %call.i.i69, null
  br i1 %tobool.not.i1.i70, label %_compound_head.exit.i71.if.end49_crit_edge, label %if.end.i2.i72, !prof !40

_compound_head.exit.i71.if.end49_crit_edge:       ; preds = %_compound_head.exit.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end.i2.i72:                                    ; preds = %_compound_head.exit.i71
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i.i69) #8
  br label %if.end49

if.end49:                                         ; preds = %if.end.i2.i72, %_compound_head.exit.i71.if.end49_crit_edge, %while.end.if.end49_crit_edge, %entry.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_lock_anon_vma_read(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_rmapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_clear_young(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_page_idle__291_221_page_idle_init4, !1, !"__initcall__kmod_page_idle__291_221_page_idle_init4", i1 false, i1 false}
!1 = !{!"../mm/page_idle.c", i32 221, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/page_idle.c", i32 216, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @page_idle_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @page_idle_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/page_idle.c", i32 207, i32 10}
!10 = !{ptr @page_idle_attr_group, !11, !"page_idle_attr_group", i1 false, i1 false}
!11 = !{!"../mm/page_idle.c", i32 205, i32 37}
!12 = !{ptr @page_idle_bin_attrs, !13, !"page_idle_bin_attrs", i1 false, i1 false}
!13 = !{!"../mm/page_idle.c", i32 200, i32 30}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/page_idle.c", i32 197, i32 3}
!16 = !{ptr @page_idle_bitmap_attr, !17, !"page_idle_bitmap_attr", i1 false, i1 false}
!17 = !{!"../mm/page_idle.c", i32 196, i32 29}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 422, i32 1}
!20 = !{ptr @page_idle_clear_pte_refs.rwc, !21, !"rwc", i1 false, i1 false}
!21 = !{!"../mm/page_idle.c", i32 94, i32 40}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../mm/page_idle.c", i32 72, i32 4}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mm.h", i32 717, i32 2}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2153135627, i64 2153136110, i64 2153135664, i64 2153135720, i64 2153135754, i64 2153135778, i64 2153135819, i64 2153135840, i64 2153135868, i64 2153135902}
!42 = !{i64 2148778107}
!43 = !{i64 2148692816, i64 2148692848, i64 2148692877, i64 2148692911, i64 2148692942, i64 2148692965}
!44 = !{i64 2148778336}
!45 = !{i64 2148290308, i64 2148290313, i64 2148290326, i64 2148290370, i64 2148290404, i64 2148290425}
!46 = !{i64 2150386695, i64 2150387186, i64 2150386732, i64 2150386788, i64 2150386822, i64 2150386846, i64 2150386887, i64 2150386908, i64 2150386936, i64 2150386970}
!47 = !{i64 2148689050}
!48 = !{i64 1175650, i64 1175675, i64 1175697, i64 1175713, i64 1175725, i64 1175745, i64 1175769, i64 1175785, i64 1175797}
!49 = !{i64 2148689238}
!50 = !{i64 2150244629, i64 2150245120, i64 2150244666, i64 2150244722, i64 2150244756, i64 2150244780, i64 2150244821, i64 2150244842, i64 2150244870, i64 2150244904}
!51 = !{i64 2148698489, i64 2148698521, i64 2148698550, i64 2148698584, i64 2148698615, i64 2148698638}
!52 = !{i64 2148787594}
