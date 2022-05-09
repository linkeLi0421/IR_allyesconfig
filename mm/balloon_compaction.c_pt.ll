; ModuleID = '/llk/IR_all_yes/mm/balloon_compaction.c_pt.bc'
source_filename = "../mm/balloon_compaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+balloon_page_list_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_page_list_enqueue\09\09\09\09"
module asm "\09.long\09__crc_balloon_page_list_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_page_list_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_page_list_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_page_list_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+balloon_page_list_dequeue\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_page_list_dequeue\09\09\09\09"
module asm "\09.long\09__crc_balloon_page_list_dequeue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_page_list_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_page_list_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_page_list_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+balloon_page_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_page_alloc\09\09\09\09"
module asm "\09.long\09__crc_balloon_page_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_page_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_page_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_page_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+balloon_page_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_page_enqueue\09\09\09\09"
module asm "\09.long\09__crc_balloon_page_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_page_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_page_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_page_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+balloon_page_dequeue\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_page_dequeue\09\09\09\09"
module asm "\09.long\09__crc_balloon_page_dequeue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_page_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_page_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_page_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+balloon_aops\22, \22a\22\09"
module asm "\09.weak\09__crc_balloon_aops\09\09\09\09"
module asm "\09.long\09__crc_balloon_aops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balloon_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22balloon_aops\22\09\09\09\09\09"
module asm "__kstrtabns_balloon_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_event_state = type { [76 x i32] }
%struct.balloon_dev_info = type { i32, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_balloon_page_list_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_page_list_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_page_list_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_page_list_enqueue to i32), ptr @__kstrtab_balloon_page_list_enqueue, ptr @__kstrtabns_balloon_page_list_enqueue }, section "___ksymtab_gpl+balloon_page_list_enqueue", align 4
@__kstrtab_balloon_page_list_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_page_list_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_page_list_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_page_list_dequeue to i32), ptr @__kstrtab_balloon_page_list_dequeue, ptr @__kstrtabns_balloon_page_list_dequeue }, section "___ksymtab_gpl+balloon_page_list_dequeue", align 4
@__kstrtab_balloon_page_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_page_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_page_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_page_alloc to i32), ptr @__kstrtab_balloon_page_alloc, ptr @__kstrtabns_balloon_page_alloc }, section "___ksymtab_gpl+balloon_page_alloc", align 4
@__kstrtab_balloon_page_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_page_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_page_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_page_enqueue to i32), ptr @__kstrtab_balloon_page_enqueue, ptr @__kstrtabns_balloon_page_enqueue }, section "___ksymtab_gpl+balloon_page_enqueue", align 4
@__kstrtab_balloon_page_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_page_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_page_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_page_dequeue to i32), ptr @__kstrtab_balloon_page_dequeue, ptr @__kstrtabns_balloon_page_dequeue }, section "___ksymtab_gpl+balloon_page_dequeue", align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageLocked(newpage))\00", [59 x i8] zeroinitializer }, align 32
@balloon_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @balloon_page_migrate, ptr @balloon_page_isolate, ptr @balloon_page_putback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_balloon_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_balloon_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_balloon_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balloon_aops to i32), ptr @__kstrtab_balloon_aops, ptr @__kstrtabns_balloon_aops }, section "___ksymtab_gpl+balloon_aops", align 4
@.str.2 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"VM_BUG_ON_PAGE(!((page->page_type & (0xf0000000 | 0)) == 0xf0000000))\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(!PageOffline(page))\00", [61 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 247, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 248, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"balloon_aops\00", align 1
@___asan_gen_.16 = private constant [27 x i8] c"../mm/balloon_compaction.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 253, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 260, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 921, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 902, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 414, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_balloon_aops, ptr @__ksymtab_balloon_page_alloc, ptr @__ksymtab_balloon_page_dequeue, ptr @__ksymtab_balloon_page_enqueue, ptr @__ksymtab_balloon_page_list_dequeue, ptr @__ksymtab_balloon_page_list_enqueue, ptr @.str, ptr @.str.1, ptr @balloon_aops, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balloon_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @balloon_page_list_enqueue(ptr noundef %b_dev_info, ptr noundef readonly %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %cmp12.not30 = icmp eq ptr %1, %pages
  br i1 %cmp12.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %n_pages.031 = phi i32 [ %inc, %list_del.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %page.0 = getelementptr i8, ptr %.pn.in32, i32 -4
  %2 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in32, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @balloon_page_enqueue_one(ptr noundef %b_dev_info, ptr noundef %page.0)
  %inc = add i32 %n_pages.031, 1
  %cmp12.not = icmp eq ptr %.pn, %pages
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %n_pages.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call3) #5
  ret i32 %n_pages.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @balloon_page_enqueue_one(ptr noundef %b_dev_info, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !41

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !41

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !42
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #5
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.do.body4_crit_edge

folio_flags.exit.i.i.do.body4_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #5, !srcloc !43
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %do.end7, label %trylock_page.exit.do.body4_crit_edge, !prof !41

trylock_page.exit.do.body4_crit_edge:             ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.body4:                                         ; preds = %trylock_page.exit.do.body4_crit_edge, %folio_flags.exit.i.i.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/balloon_compaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 23, 0\0A.popsection", ""() #5, !srcloc !45
  unreachable

do.end7:                                          ; preds = %trylock_page.exit
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %13)
  %cmp.i.i = icmp ult i32 %13, -268435456
  br i1 %cmp.i.i, label %if.then.i.i10, label %__SetPageOffline.exit.i, !prof !46

if.then.i.i10:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #5, !srcloc !47
  unreachable

__SetPageOffline.exit.i:                          ; preds = %do.end7
  %and7.i.i = and i32 %13, -257
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and7.i.i, ptr %11, align 4
  %inode.i = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 4
  %15 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping.i, align 8
  tail call void @__SetPageMovable(ptr noundef %page, ptr noundef %18) #5
  %19 = ptrtoint ptr %b_dev_info to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %private1.i.i, align 4
  %pages.i = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 2
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %pages.i, ptr noundef %22) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge

__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge: ; preds = %__SetPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %balloon_page_insert.exit

if.end.i.i.i:                                     ; preds = %__SetPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %0, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pages.i, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %0, ptr %pages.i, align 4
  br label %balloon_page_insert.exit

balloon_page_insert.exit:                         ; preds = %if.end.i.i.i, %__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge
  tail call void @unlock_page(ptr noundef %page) #5
  %27 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i11 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i11 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %32, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 69) to i32)
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add8.i = add i32 %35, 1
  store i32 %add8.i, ptr %33, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @balloon_page_list_dequeue(ptr noundef %b_dev_info, ptr noundef %pages, i32 noundef %n_req_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  %pages6 = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 2
  %0 = ptrtoint ptr %pages6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages6, align 4
  %cmp14.not65 = icmp eq ptr %1, %pages6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_req_pages)
  %cmp1666 = icmp eq i32 %n_req_pages, 0
  %or.cond67 = or i1 %cmp14.not65, %cmp1666
  br i1 %or.cond67, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %entry.if.end_crit_edge
  %.pn.in69 = phi ptr [ %.pn73, %for.inc.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %n_pages.068 = phi i32 [ %n_pages.1, %for.inc.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %page.072 = getelementptr i8, ptr %.pn.in69, i32 -4
  %2 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn73 = load ptr, ptr %.pn.in69, align 4
  %3 = load volatile i32, ptr %.pn.in69, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !41

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %page.072 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !41

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !42
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #5
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.for.inc_crit_edge

folio_flags.exit.i.i.for.inc_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #5, !srcloc !43
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %if.end20, label %trylock_page.exit.for.inc_crit_edge

trylock_page.exit.for.inc_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end20:                                         ; preds = %trylock_page.exit
  %13 = ptrtoint ptr %page.072 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page.072, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !46

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %page.072, ptr noundef nonnull @.str.5) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #5, !srcloc !48
  unreachable

PageIsolated.exit:                                ; preds = %if.end20
  %15 = ptrtoint ptr %page.072 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page.072, align 4
  %17 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unlock_page(ptr noundef %page.072) #5
  br label %for.inc

if.end24:                                         ; preds = %PageIsolated.exit
  %18 = getelementptr i8, ptr %.pn.in69, i32 20
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i.i = and i32 %20, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, -268435456
  br i1 %cmp.i.not.i.i, label %__ClearPageOffline.exit.i, label %if.then.i.i46, !prof !41

if.then.i.i46:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %page.072, ptr noundef nonnull @.str.6) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #5, !srcloc !49
  unreachable

__ClearPageOffline.exit.i:                        ; preds = %if.end24
  %or.i.i = or i32 %20, 256
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %18, align 4
  tail call void @__ClearPageMovable(ptr noundef %page.072) #5
  %private1.i.i = getelementptr i8, ptr %.pn.in69, i32 16
  %22 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %private1.i.i, align 4
  %23 = ptrtoint ptr %page.072 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page.072, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i5.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i5.i, label %if.then.i6.i, label %PageIsolated.exit.i, !prof !46

if.then.i6.i:                                     ; preds = %__ClearPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %page.072, ptr noundef nonnull @.str.5) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #5, !srcloc !48
  unreachable

PageIsolated.exit.i:                              ; preds = %__ClearPageOffline.exit.i
  %25 = ptrtoint ptr %page.072 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page.072, align 4
  %27 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i47, label %PageIsolated.exit.i.balloon_page_delete.exit_crit_edge

PageIsolated.exit.i.balloon_page_delete.exit_crit_edge: ; preds = %PageIsolated.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %balloon_page_delete.exit

if.then.i47:                                      ; preds = %PageIsolated.exit.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i47.list_del.exit.i_crit_edge

if.then.i47.list_del.exit.i_crit_edge:            ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %.pn.in69, i32 4
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i47.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in69, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in69, i32 4
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %balloon_page_delete.exit

balloon_page_delete.exit:                         ; preds = %list_del.exit.i, %PageIsolated.exit.i.balloon_page_delete.exit_crit_edge
  %36 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i48 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i48 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %41, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 70) to i32)
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add8.i = add i32 %44, 1
  store i32 %add8.i, ptr %42, align 4
  %45 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in69, ptr noundef %pages, ptr noundef %46) #5
  br i1 %call.i.i, label %if.end.i.i49, label %balloon_page_delete.exit.list_add.exit_crit_edge

balloon_page_delete.exit.list_add.exit_crit_edge: ; preds = %balloon_page_delete.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i49:                                     ; preds = %balloon_page_delete.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %.pn.in69, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %.pn.in69, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pages, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %.pn.in69, ptr %pages, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i49, %balloon_page_delete.exit.list_add.exit_crit_edge
  tail call void @unlock_page(ptr noundef %page.072) #5
  %inc = add i32 %n_pages.068, 1
  br label %for.inc

for.inc:                                          ; preds = %list_add.exit, %if.then23, %trylock_page.exit.for.inc_crit_edge, %folio_flags.exit.i.i.for.inc_crit_edge
  %n_pages.1 = phi i32 [ %n_pages.068, %if.then23 ], [ %inc, %list_add.exit ], [ %n_pages.068, %trylock_page.exit.for.inc_crit_edge ], [ %n_pages.068, %folio_flags.exit.i.i.for.inc_crit_edge ]
  %cmp14.not = icmp eq ptr %.pn73, %pages6
  call void @__sanitizer_cov_trace_cmp4(i32 %n_pages.1, i32 %n_req_pages)
  %cmp16 = icmp eq i32 %n_pages.1, %n_req_pages
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %n_pages.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n_pages.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call3) #5
  ret i32 %n_pages.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @balloon_page_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 18427082, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  ret ptr %call38.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @balloon_page_enqueue(ptr noundef %b_dev_info, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  tail call fastcc void @balloon_page_enqueue_one(ptr noundef %b_dev_info, ptr noundef %page)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @balloon_page_dequeue(ptr noundef %b_dev_info) #0 align 64 {
entry:
  %pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pages, ptr %pages, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pages, ptr %0, align 4
  %call = call i32 @balloon_page_list_dequeue(ptr noundef %b_dev_info, ptr noundef nonnull %pages, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end21, label %do.body1

do.body1:                                         ; preds = %entry
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 1
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  %pages7 = getelementptr inbounds %struct.balloon_dev_info, ptr %b_dev_info, i32 0, i32 2
  %3 = ptrtoint ptr %pages7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pages7, align 4
  %cmp.i.not = icmp eq ptr %4, %pages7
  br i1 %cmp.i.not, label %land.rhs, label %do.body1.if.end_crit_edge

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %do.body1
  %5 = ptrtoint ptr %b_dev_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_dev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %do.body14, label %land.rhs.if.end_crit_edge, !prof !46

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/balloon_compaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #5, !srcloc !50
  unreachable

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %do.body1.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call4) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %add.ptr, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @balloon_page_isolate(ptr noundef %page, i32 %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %2, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call3) #5
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @balloon_page_putback(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %2, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #5
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %pages = getelementptr inbounds %struct.balloon_dev_info, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %pages, ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pages, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %pages, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @balloon_page_migrate(ptr nocapture readnone %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp = icmp eq i32 %mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !41

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %3, align 4
  %and.i16.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !46

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !41

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i18.i = add i32 %11, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %12, %if.end.i20.i ]
  %13 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.8) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !41

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25.i = add i32 %11, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %14, %if.end.i27.i ]
  %15 = inttoptr i32 %retval.0.i28.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then5, label %do.body13, !prof !46

if.then5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/balloon_compaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #5, !srcloc !52
  unreachable

do.body13:                                        ; preds = %PageLocked.exit
  %18 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i42 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.not.i.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool.not.i.i43, label %if.end.i.i46, label %if.then.i.i45, !prof !41

if.then.i.i45:                                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i44 = add i32 %20, -1
  br label %_compound_head.exit.i51

if.end.i.i46:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i51

_compound_head.exit.i51:                          ; preds = %if.end.i.i46, %if.then.i.i45
  %retval.0.i.i47 = phi i32 [ %sub.i.i44, %if.then.i.i45 ], [ %21, %if.end.i.i46 ]
  %22 = inttoptr i32 %retval.0.i.i47 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i48 = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %18, align 4
  %and.i16.i49 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i49)
  %tobool.not.i17.i50 = icmp eq i32 %and.i16.i49, 0
  br i1 %cmp.i.not.i48, label %if.then.i52, label %do.end10.i58, !prof !46

if.then.i52:                                      ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i17.i50, label %if.end.i20.i55, label %if.then.i19.i54, !prof !41

if.then.i19.i54:                                  ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i18.i53 = add i32 %26, -1
  br label %_compound_head.exit22.i57

if.end.i20.i55:                                   ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit22.i57

_compound_head.exit22.i57:                        ; preds = %if.end.i20.i55, %if.then.i19.i54
  %retval.0.i21.i56 = phi i32 [ %sub.i18.i53, %if.then.i19.i54 ], [ %27, %if.end.i20.i55 ]
  %28 = inttoptr i32 %retval.0.i21.i56 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.8) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

do.end10.i58:                                     ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i17.i50, label %if.end.i27.i61, label %if.then.i26.i60, !prof !41

if.then.i26.i60:                                  ; preds = %do.end10.i58
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25.i59 = add i32 %26, -1
  br label %PageLocked.exit64

if.end.i27.i61:                                   ; preds = %do.end10.i58
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %newpage to i32
  br label %PageLocked.exit64

PageLocked.exit64:                                ; preds = %if.end.i27.i61, %if.then.i26.i60
  %retval.0.i28.i62 = phi i32 [ %sub.i25.i59, %if.then.i26.i60 ], [ %29, %if.end.i27.i61 ]
  %30 = inttoptr i32 %retval.0.i28.i62 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and1.i.i63 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i63)
  %tobool15.not = icmp eq i32 %and1.i.i63, 0
  br i1 %tobool15.not, label %if.then24, label %do.end33, !prof !46

if.then24:                                        ; preds = %PageLocked.exit64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.1) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/balloon_compaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end33:                                         ; preds = %PageLocked.exit64
  call void @__sanitizer_cov_trace_pc() #7
  %migratepage = getelementptr inbounds %struct.balloon_dev_info, ptr %2, i32 0, i32 3
  %33 = ptrtoint ptr %migratepage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %migratepage, align 4
  %call34 = tail call i32 %34(ptr noundef %2, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end33 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__SetPageMovable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ClearPageMovable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_balloon_page_list_enqueue, !1, !"__ksymtab_balloon_page_list_enqueue", i1 false, i1 false}
!1 = !{!"../mm/balloon_compaction.c", i32 56, i32 1}
!2 = !{ptr @__ksymtab_balloon_page_list_dequeue, !3, !"__ksymtab_balloon_page_list_dequeue", i1 false, i1 false}
!3 = !{!"../mm/balloon_compaction.c", i32 112, i32 1}
!4 = !{ptr @__ksymtab_balloon_page_alloc, !5, !"__ksymtab_balloon_page_alloc", i1 false, i1 false}
!5 = !{!"../mm/balloon_compaction.c", i32 131, i32 1}
!6 = !{ptr @__ksymtab_balloon_page_enqueue, !7, !"__ksymtab_balloon_page_enqueue", i1 false, i1 false}
!7 = !{!"../mm/balloon_compaction.c", i32 155, i32 1}
!8 = !{ptr @__ksymtab_balloon_page_dequeue, !9, !"__ksymtab_balloon_page_dequeue", i1 false, i1 false}
!9 = !{!"../mm/balloon_compaction.c", i32 202, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/balloon_compaction.c", i32 247, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/balloon_compaction.c", i32 248, i32 2}
!14 = !{ptr @balloon_aops, !15, !"balloon_aops", i1 false, i1 false}
!15 = !{!"../mm/balloon_compaction.c", i32 253, i32 39}
!16 = !{ptr @__ksymtab_balloon_aops, !17, !"__ksymtab_balloon_aops", i1 false, i1 false}
!17 = !{!"../mm/balloon_compaction.c", i32 258, i32 1}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 902, i32 1}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 921, i32 1}
!26 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2150226734, i64 2150227225, i64 2150226771, i64 2150226827, i64 2150226861, i64 2150226885, i64 2150226926, i64 2150226947, i64 2150226975, i64 2150227009}
!43 = !{i64 2148680594, i64 2148680626, i64 2148680655, i64 2148680689, i64 2148680720, i64 2148680743}
!44 = !{i64 2148769699}
!45 = !{i64 2154227052, i64 2154227539, i64 2154227089, i64 2154227145, i64 2154227179, i64 2154227203, i64 2154227244, i64 2154227265, i64 2154227293, i64 2154227327}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2151027093, i64 2151027584, i64 2151027130, i64 2151027186, i64 2151027220, i64 2151027244, i64 2151027285, i64 2151027306, i64 2151027334, i64 2151027368}
!48 = !{i64 2151046725, i64 2151047216, i64 2151046762, i64 2151046818, i64 2151046852, i64 2151046876, i64 2151046917, i64 2151046938, i64 2151046966, i64 2151047000}
!49 = !{i64 2151029160, i64 2151029651, i64 2151029197, i64 2151029253, i64 2151029287, i64 2151029311, i64 2151029352, i64 2151029373, i64 2151029401, i64 2151029435}
!50 = !{i64 2154250966, i64 2154251454, i64 2154251003, i64 2154251059, i64 2154251093, i64 2154251117, i64 2154251158, i64 2154251179, i64 2154251207, i64 2154251241}
!51 = !{i64 2150238228, i64 2150238719, i64 2150238265, i64 2150238321, i64 2150238355, i64 2150238379, i64 2150238420, i64 2150238441, i64 2150238469, i64 2150238503}
!52 = !{i64 2154256437, i64 2154256925, i64 2154256474, i64 2154256530, i64 2154256564, i64 2154256588, i64 2154256629, i64 2154256650, i64 2154256678, i64 2154256712}
!53 = !{i64 2154258236, i64 2154258724, i64 2154258273, i64 2154258329, i64 2154258363, i64 2154258387, i64 2154258428, i64 2154258449, i64 2154258477, i64 2154258511}
