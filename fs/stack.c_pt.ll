; ModuleID = '/llk/IR_all_yes/fs/stack.c_pt.bc'
source_filename = "../fs/stack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsstack_copy_inode_size\22, \22a\22\09"
module asm "\09.weak\09__crc_fsstack_copy_inode_size\09\09\09\09"
module asm "\09.long\09__crc_fsstack_copy_inode_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsstack_copy_inode_size:\09\09\09\09\09"
module asm "\09.asciz \09\22fsstack_copy_inode_size\22\09\09\09\09\09"
module asm "__kstrtabns_fsstack_copy_inode_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsstack_copy_attr_all\22, \22a\22\09"
module asm "\09.weak\09__crc_fsstack_copy_attr_all\09\09\09\09"
module asm "\09.long\09__crc_fsstack_copy_attr_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsstack_copy_attr_all:\09\09\09\09\09"
module asm "\09.asciz \09\22fsstack_copy_attr_all\22\09\09\09\09\09"
module asm "__kstrtabns_fsstack_copy_attr_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_fsstack_copy_inode_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsstack_copy_inode_size = external dso_local constant [0 x i8], align 1
@__ksymtab_fsstack_copy_inode_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsstack_copy_inode_size to i32), ptr @__kstrtab_fsstack_copy_inode_size, ptr @__kstrtabns_fsstack_copy_inode_size }, section "___ksymtab_gpl+fsstack_copy_inode_size", align 4
@__kstrtab_fsstack_copy_attr_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsstack_copy_attr_all = external dso_local constant [0 x i8], align 1
@__ksymtab_fsstack_copy_attr_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsstack_copy_attr_all to i32), ptr @__kstrtab_fsstack_copy_attr_all, ptr @__kstrtabns_fsstack_copy_attr_all }, section "___ksymtab_gpl+fsstack_copy_attr_all", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [14 x i8] c"../fs/stack.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 271, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fsstack_copy_attr_all, ptr @__ksymtab_fsstack_copy_inode_size, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsstack_copy_inode_size(ptr noundef %dst, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !17
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  %1 = tail call ptr @llvm.returnaddress(i32 0) #4
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #4
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #4
  tail call void @trace_hardirqs_on() #4
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call ptr @llvm.returnaddress(i32 0) #4
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #4
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #4
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !18
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !19

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !20
  %6 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !22
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %9, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  %10 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %i_lock = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #4
  %i_blocks1 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 22
  %14 = ptrtoint ptr %i_blocks1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_blocks1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #4
  %i_lock3 = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock3) #4
  %16 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i.i12 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i12 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %19, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i13 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i13, label %i_size_read.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

i_size_read.exit.i_size_write.exit_crit_edge:     ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %i_size_read.exit
  %21 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !26
  %25 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i14 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i14 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %30, ptrtoint (ptr @lockdep_recursion to i32)
  %31 = inttoptr i32 %add.i28.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !27
  %34 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i7.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i29.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i9.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %45, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !28
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %49, ptrtoint (ptr @hardirqs_enabled to i32)
  %50 = inttoptr i32 %add47.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !29
  %53 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i12.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %56, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool54.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i15, !prof !30

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %i_size_write.exit

if.then.i.i15:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #4
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i15, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %i_size_read.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i16 = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 23
  %57 = ptrtoint ptr %i_size_seqcount.i16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_size_seqcount.i16, align 4
  %inc.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !31
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 23, i32 1
  %59 = tail call ptr @llvm.returnaddress(i32 0) #4
  %60 = ptrtoint ptr %59 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %60) #4
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 14
  %61 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %11, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %60) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  %62 = ptrtoint ptr %i_size_seqcount.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_size_seqcount.i16, align 4
  %inc.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i16, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !33
  %64 = tail call i32 @llvm.read_register.i32(metadata !7) #4
  %and.i.i.i26.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %i_blocks4 = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 22
  %68 = ptrtoint ptr %i_blocks4 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %15, ptr %i_blocks4, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsstack_copy_attr_all(ptr noundef %dest, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 8
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %dest, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 2
  %i_uid2 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 2
  %3 = ptrtoint ptr %i_uid2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_uid2, align 4
  %5 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 3
  %i_gid3 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 3
  %6 = ptrtoint ptr %i_gid3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_gid3, align 8
  %8 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i_gid, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 13
  %9 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_rdev, align 8
  %i_rdev4 = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 13
  %11 = ptrtoint ptr %i_rdev4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_rdev4, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 15
  %i_atime5 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 15
  %12 = call ptr @memcpy(ptr %i_atime, ptr %i_atime5, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 16
  %i_mtime6 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 16
  %13 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime6, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 17
  %i_ctime7 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 17
  %14 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime7, i32 16)
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 20
  %15 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i_blkbits, align 2
  %i_blkbits8 = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 20
  %17 = ptrtoint ptr %i_blkbits8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %i_blkbits8, align 2
  %i_flags = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 4
  %i_flags9 = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i_flags9, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void @set_nlink(ptr noundef %dest, i32 noundef %23) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_fsstack_copy_inode_size, !1, !"__ksymtab_fsstack_copy_inode_size", i1 false, i1 false}
!1 = !{!"../fs/stack.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_fsstack_copy_attr_all, !3, !"__ksymtab_fsstack_copy_attr_all", i1 false, i1 false}
!3 = !{!"../fs/stack.c", i32 76, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 1057564, i64 1057625}
!18 = !{i64 1060296}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 1060581}
!21 = !{i64 2152495715}
!22 = !{i64 2152495557}
!23 = !{i64 2152495885}
!24 = !{i64 2150081699}
!25 = !{i64 2152497646}
!26 = !{i64 2149973951}
!27 = !{i64 2149978885}
!28 = !{i64 2150000603}
!29 = !{i64 2150005497}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2150082024}
!32 = !{i64 2150082349}
!33 = !{i64 2152509508}
