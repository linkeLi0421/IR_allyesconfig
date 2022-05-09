; ModuleID = '/llk/IR_all_yes/lib/bug.c_pt.bc'
source_filename = "../lib/bug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.bug_entry = type { i32, ptr, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__bug_table\00", [20 x i8] zeroinitializer }, align 32
@module_bug_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @module_bug_list, ptr @module_bug_list }, [24 x i8] zeroinitializer }, align 32
@__start___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@__stop___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@report_bug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"------------[ cut here ]------------\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"report_bug\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lib/bug.c\00", [22 x i8] zeroinitializer }, align 32
@report_bug._entry_ptr = internal global ptr @report_bug._entry, section ".printk_index", align 4
@report_bug._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\012kernel BUG at %s:%u!\0A\00", [40 x i8] zeroinitializer }, align 32
@report_bug._entry_ptr.6 = internal global ptr @report_bug._entry.4, section ".printk_index", align 4
@report_bug._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012Kernel BUG at %pB [verbose debug info unavailable]\0A\00", [42 x i8] zeroinitializer }, align 32
@report_bug._entry_ptr.9 = internal global ptr @report_bug._entry.7, section ".printk_index", align 4
@generic_bug_clear_once.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@module_find_bug.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 100, i32 45 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"module_bug_list\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 65, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 195, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 205, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 207, i32 3 }
@___asan_gen_.45 = private constant [13 x i8] c"../lib/bug.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 227, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 787, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 805, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @report_bug._entry, ptr @report_bug._entry.4, ptr @report_bug._entry.7, ptr @report_bug._entry_ptr, ptr @report_bug._entry_ptr.6, ptr @report_bug._entry_ptr.9, ptr @.str, ptr @module_bug_list, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_bug_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_bug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_bug._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_bug._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @module_bug_finalize(ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %sechdrs, ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %bug_table = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 31
  %0 = ptrtoint ptr %bug_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bug_table, align 4
  %num_bugs = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 29
  %1 = ptrtoint ptr %num_bugs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_bugs, align 8
  %e_shstrndx = getelementptr inbounds %struct.elf32_hdr, ptr %hdr, i32 0, i32 13
  %2 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_shstrndx, align 2
  %idxprom = zext i16 %3 to i32
  %sh_offset = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %sh_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sh_offset, align 4
  %add.ptr = getelementptr i8, ptr %hdr, i32 %5
  %e_shnum = getelementptr inbounds %struct.elf32_hdr, ptr %hdr, i32 0, i32 12
  %6 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %e_shnum, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp22 = icmp ugt i16 %7, 1
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %i.023
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %9
  %call = tail call i32 @strcmp(ptr noundef %add.ptr3, ptr noundef nonnull dereferenceable(12) @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sh_addr = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %i.023, i32 3
  %10 = ptrtoint ptr %sh_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_addr, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = ptrtoint ptr %bug_table to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %bug_table, align 4
  %sh_size = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %i.023, i32 5
  %14 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sh_size, align 4
  %div = udiv i32 %15, 12
  %16 = ptrtoint ptr %num_bugs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %num_bugs, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  %bug_list = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 30
  %17 = load ptr, ptr @module_bug_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bug_list, ptr noundef nonnull @module_bug_list, ptr noundef %17) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %bug_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bug_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 30, i32 1
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @module_bug_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  store volatile ptr %bug_list, ptr @module_bug_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bug_list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %for.end.list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @module_bug_cleanup(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %bug_list = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bug_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 30, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %bug_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bug_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 30, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bug_get_file_line(ptr nocapture noundef readonly %bug, ptr nocapture noundef writeonly %file, ptr nocapture noundef writeonly %line) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %file1 = getelementptr inbounds %struct.bug_entry, ptr %bug, i32 0, i32 1
  %0 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file1, align 4
  %2 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %file, align 4
  %line2 = getelementptr inbounds %struct.bug_entry, ptr %bug, i32 0, i32 2
  %3 = ptrtoint ptr %line2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %line2, align 4
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %line, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_bug(i32 noundef %bugaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br i1 icmp ult (ptr @__start___bug_table, ptr @__stop___bug_table), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %bug.010 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__start___bug_table, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %bug.010 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bug.010, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bugaddr)
  %cmp1 = icmp eq i32 %1, %bugaddr
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bug_entry, ptr %bug.010, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__stop___bug_table
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !30) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %for.end.rcu_read_lock_sched.exit.i_crit_edge, label %land.lhs.true.i.i

for.end.rcu_read_lock_sched.exit.i_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit.i

land.lhs.true.i.i:                                ; preds = %for.end
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_sched.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_read_lock_sched.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 788, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock_sched.exit.i

rcu_read_lock_sched.exit.i:                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_sched.exit.i_crit_edge, %for.end.rcu_read_lock_sched.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock_sched.exit.i.do.end.i_crit_edge

rcu_read_lock_sched.exit.i.do.end.i_crit_edge:    ; preds = %rcu_read_lock_sched.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock_sched.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b34.i = load i1, ptr @module_find_bug.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @module_find_bug.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 73, ptr noundef nonnull @.str.10) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock_sched.exit.i.do.end.i_crit_edge
  %.pn48.i = load volatile ptr, ptr @module_bug_list, align 4
  %cmp.not49.i = icmp eq ptr %.pn48.i, @module_bug_list
  br i1 %cmp.not49.i, label %do.end.i.out.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.out.i_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %6 = ptrtoint ptr %.pn50.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load volatile ptr, ptr %.pn50.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @module_bug_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.out.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.loopexit.i.out.i_crit_edge:              ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn50.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn48.i, %do.end.i.for.body.i_crit_edge ]
  %num_bugs.i = getelementptr i8, ptr %.pn50.i, i32 -4
  %7 = ptrtoint ptr %num_bugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_bugs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1045.not.i = icmp eq i32 %8, 0
  br i1 %cmp1045.not.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body11.preheader.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

for.body11.preheader.i:                           ; preds = %for.body.i
  %bug_table.i = getelementptr i8, ptr %.pn50.i, i32 8
  %9 = ptrtoint ptr %bug_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bug_table.i, align 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body11.preheader.i
  %bug.047.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body11.i_crit_edge ], [ %10, %for.body11.preheader.i ]
  %i.046.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.body11.preheader.i ]
  %11 = ptrtoint ptr %bug.047.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bug.047.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %bugaddr)
  %cmp13.i = icmp eq i32 %12, %bugaddr
  br i1 %cmp13.i, label %for.body11.i.out.i_crit_edge, label %for.inc.i

for.body11.i.out.i_crit_edge:                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.inc.i:                                        ; preds = %for.body11.i
  %inc.i = add nuw i32 %i.046.i, 1
  %incdec.ptr.i = getelementptr %struct.bug_entry, ptr %bug.047.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

out.i:                                            ; preds = %for.body11.i.out.i_crit_edge, %for.cond.loopexit.i.out.i_crit_edge, %do.end.i.out.i_crit_edge
  %bug.1.i = phi ptr [ null, %do.end.i.out.i_crit_edge ], [ %bug.047.i, %for.body11.i.out.i_crit_edge ], [ null, %for.cond.loopexit.i.out.i_crit_edge ]
  %call.i35.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i35.i, label %out.i.module_find_bug.exit_crit_edge, label %land.lhs.true.i37.i

out.i.module_find_bug.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %module_find_bug.exit

land.lhs.true.i37.i:                              ; preds = %out.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i36.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i36.i, label %land.lhs.true.i37.i.module_find_bug.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i37.i.module_find_bug.exit_crit_edge: ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %module_find_bug.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i37.i
  %.b6.i38.i = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i38.i, label %land.lhs.true2.i.i.module_find_bug.exit_crit_edge, label %if.then.i39.i

land.lhs.true2.i.i.module_find_bug.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %module_find_bug.exit

if.then.i39.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 806, ptr noundef nonnull @.str.13) #10
  br label %module_find_bug.exit

module_find_bug.exit:                             ; preds = %if.then.i39.i, %land.lhs.true2.i.i.module_find_bug.exit_crit_edge, %land.lhs.true.i37.i.module_find_bug.exit_crit_edge, %out.i.module_find_bug.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #10
  %and.i.i.i.i40.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i40.i to ptr
  %preempt_count.i.i.i41.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i41.i, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i41.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %module_find_bug.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %bug.1.i, %module_find_bug.exit ], [ %bug.010, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @report_bug(i32 noundef %bugaddr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @is_valid_bugaddr(i32 noundef %bugaddr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @find_bug(i32 noundef %bugaddr)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @disable_trace_on_warning() #10
  %file1.i = getelementptr inbounds %struct.bug_entry, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %file1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file1.i, align 4
  %line2.i = getelementptr inbounds %struct.bug_entry, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %line2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %line2.i, align 4
  %conv.i = zext i16 %3 to i32
  %flags = getelementptr inbounds %struct.bug_entry, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %6 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %.not = icmp eq i32 %6, 3
  br i1 %.not, label %if.then18, label %if.end4.if.end25_crit_edge

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then18:                                        ; preds = %if.end4
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end21, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i16 %5, 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %or, ptr %flags, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.end4.if.end25_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp29 = icmp eq i16 %10, 0
  br i1 %cmp29, label %do.end, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end25.if.end33_crit_edge
  br i1 %cmp.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %11 = inttoptr i32 %bugaddr to ptr
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = lshr i16 %13, 8
  %15 = zext i16 %14 to i32
  tail call void @__warn(ptr noundef %1, i32 noundef %conv.i, ptr noundef %11, i32 noundef %15, ptr noundef %regs, ptr noundef null) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %tobool39.not = icmp eq ptr %1, null
  br i1 %tobool39.not, label %do.end48, label %do.end43

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, i32 noundef %conv.i) #11
  br label %cleanup

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %16 = inttoptr i32 %bugaddr to ptr
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end43, %if.then35, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then35 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then18.cleanup_crit_edge ], [ 2, %do.end48 ], [ 2, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_valid_bugaddr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_bug_clear_once() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock_sched.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_sched.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge, label %if.then.i

land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_sched.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 788, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge, %entry.rcu_read_lock_sched.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_sched.exit.do.end_crit_edge

rcu_read_lock_sched.exit.do.end_crit_edge:        ; preds = %rcu_read_lock_sched.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock_sched.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @generic_bug_clear_once.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @generic_bug_clear_once.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 227, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock_sched.exit.do.end_crit_edge
  %.pn37 = load volatile ptr, ptr @module_bug_list, align 4
  %cmp.not38 = icmp eq ptr %.pn37, @module_bug_list
  br i1 %cmp.not38, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %clear_once_table.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %clear_once_table.exit.for.body_crit_edge ], [ %.pn37, %do.end.for.body_crit_edge ]
  %bug_table = getelementptr i8, ptr %.pn39, i32 8
  %4 = ptrtoint ptr %bug_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bug_table, align 4
  %num_bugs = getelementptr i8, ptr %.pn39, i32 -4
  %6 = ptrtoint ptr %num_bugs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bugs, align 8
  %add.ptr10 = getelementptr %struct.bug_entry, ptr %5, i32 %7
  %cmp4.i = icmp ult ptr %5, %add.ptr10
  br i1 %cmp4.i, label %for.body.for.body.i_crit_edge, label %for.body.clear_once_table.exit_crit_edge

for.body.clear_once_table.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_once_table.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %bug.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %5, %for.body.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.bug_entry, ptr %bug.05.i, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 2
  %10 = and i16 %9, -5
  store i16 %10, ptr %flags.i, align 2
  %incdec.ptr.i = getelementptr %struct.bug_entry, ptr %bug.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.clear_once_table.exit_crit_edge

for.body.i.clear_once_table.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_once_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

clear_once_table.exit:                            ; preds = %for.body.i.clear_once_table.exit_crit_edge, %for.body.clear_once_table.exit_crit_edge
  %11 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, @module_bug_list
  br i1 %cmp.not, label %clear_once_table.exit.for.end_crit_edge, label %clear_once_table.exit.for.body_crit_edge

clear_once_table.exit.for.body_crit_edge:         ; preds = %clear_once_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

clear_once_table.exit.for.end_crit_edge:          ; preds = %clear_once_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %clear_once_table.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i24, label %for.end.rcu_read_unlock_sched.exit_crit_edge, label %land.lhs.true.i26

for.end.rcu_read_unlock_sched.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_sched.exit

land.lhs.true.i26:                                ; preds = %for.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i25 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock_sched.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i26.rcu_read_unlock_sched.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_sched.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i26
  %.b6.i27 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i27, label %land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge, label %if.then.i28

land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_sched.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 806, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i28, %land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock_sched.exit_crit_edge, %for.end.rcu_read_unlock_sched.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %12 = tail call i32 @llvm.read_register.i32(metadata !30) #10
  %and.i.i.i.i29 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i29 to ptr
  %preempt_count.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i30, align 4
  %sub.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i30, align 4
  br i1 icmp ult (ptr @__start___bug_table, ptr @__stop___bug_table), label %rcu_read_unlock_sched.exit.for.body.i35_crit_edge, label %rcu_read_unlock_sched.exit.clear_once_table.exit36_crit_edge

rcu_read_unlock_sched.exit.clear_once_table.exit36_crit_edge: ; preds = %rcu_read_unlock_sched.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_once_table.exit36

rcu_read_unlock_sched.exit.for.body.i35_crit_edge: ; preds = %rcu_read_unlock_sched.exit
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %rcu_read_unlock_sched.exit.for.body.i35_crit_edge
  %bug.05.i31 = phi ptr [ %incdec.ptr.i33, %for.body.i35.for.body.i35_crit_edge ], [ @__start___bug_table, %rcu_read_unlock_sched.exit.for.body.i35_crit_edge ]
  %flags.i32 = getelementptr inbounds %struct.bug_entry, ptr %bug.05.i31, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i32, align 2
  %18 = and i16 %17, -5
  store i16 %18, ptr %flags.i32, align 2
  %incdec.ptr.i33 = getelementptr %struct.bug_entry, ptr %bug.05.i31, i32 1
  %cmp.i34 = icmp ult ptr %incdec.ptr.i33, @__stop___bug_table
  br i1 %cmp.i34, label %for.body.i35.for.body.i35_crit_edge, label %for.body.i35.clear_once_table.exit36_crit_edge

for.body.i35.clear_once_table.exit36_crit_edge:   ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_once_table.exit36

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i35

clear_once_table.exit36:                          ; preds = %for.body.i35.clear_once_table.exit36_crit_edge, %rcu_read_unlock_sched.exit.clear_once_table.exit36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !27, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/bug.c", i32 100, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/bug.c", i32 195, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @report_bug._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @report_bug._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/bug.c", i32 205, i32 3}
!10 = !{ptr @report_bug._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @report_bug._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/bug.c", i32 207, i32 3}
!14 = !{ptr @report_bug._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @report_bug._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../lib/bug.c", i32 227, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @module_bug_list, !20, !"module_bug_list", i1 false, i1 false}
!20 = !{!"../lib/bug.c", i32 65, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../lib/bug.c", i32 73, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2151635836}
!40 = !{i64 2149368073}
!41 = !{i64 2149369468}
