; ModuleID = '/llk/IR_all_yes/fs/iomap/seek.c_pt.bc'
source_filename = "../fs/iomap/seek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iomap_seek_hole\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_seek_hole\09\09\09\09"
module asm "\09.long\09__crc_iomap_seek_hole\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_seek_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_seek_hole\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_seek_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_seek_data\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_seek_data\09\09\09\09"
module asm "\09.long\09__crc_iomap_seek_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_seek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_seek_data\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_seek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }

@__kstrtab_iomap_seek_hole = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_seek_hole = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_seek_hole = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_seek_hole to i32), ptr @__kstrtab_iomap_seek_hole, ptr @__kstrtabns_iomap_seek_hole }, section "___ksymtab_gpl+iomap_seek_hole", align 4
@__kstrtab_iomap_seek_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_seek_data = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_seek_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_seek_data to i32), ptr @__kstrtab_iomap_seek_data, ptr @__kstrtabns_iomap_seek_data }, section "___ksymtab_gpl+iomap_seek_data", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_iomap_seek_data, ptr @__ksymtab_iomap_seek_hole], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @iomap_seek_hole(ptr noundef %inode, i64 noundef %pos, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #6
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %iter, align 8
  %pos2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pos, ptr %pos2, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %pos)
  %cmp = icmp sgt i64 %pos, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %pos)
  %cmp3.not = icmp sgt i64 %call, %pos
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i64 %call, %pos
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %len, align 8
  %call420 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %cmp521 = icmp sgt i32 %call420, 0
  br i1 %cmp521, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_seek_hole_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.022 = phi i64 [ %pos, %while.body.lr.ph ], [ %pos.addr.1, %iomap_seek_hole_iter.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset.i.i, align 8
  %7 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %8, %6
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.i = icmp eq i16 %10, 0
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset4.i.i, align 8
  %13 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %14, %12
  %15 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #6
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %15, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len, align 8
  %18 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos2, align 8
  %sub.i.i = sub i64 %end.0.i.i, %19
  %20 = call i64 @llvm.umin.i64(i64 %17, i64 %sub.i.i) #6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type.i, align 8
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %iomap_length.exit.i.iomap_seek_hole_iter.exit_crit_edge [
    i16 3, label %sw.bb.i
    i16 0, label %sw.bb6.i
  ]

iomap_length.exit.i.iomap_seek_hole_iter.exit_crit_edge: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_seek_hole_iter.exit

sw.bb.i:                                          ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iter, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping.i, align 8
  %add.i = add i64 %20, %19
  %call2.i = call i64 @mapping_seek_hole_data(ptr noundef %27, i64 noundef %19, i64 noundef %add.i, i32 noundef 4) #6
  %28 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pos2, align 8
  %add4.i = add i64 %29, %20
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i, i64 %add4.i)
  %cmp.i = icmp eq i64 %call2.i, %add4.i
  %call..i = select i1 %cmp.i, i64 %20, i64 0
  br label %iomap_seek_hole_iter.exit

sw.bb6.i:                                         ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_seek_hole_iter.exit

iomap_seek_hole_iter.exit:                        ; preds = %sw.bb6.i, %sw.bb.i, %iomap_length.exit.i.iomap_seek_hole_iter.exit_crit_edge
  %pos.addr.1 = phi i64 [ %pos.addr.022, %iomap_length.exit.i.iomap_seek_hole_iter.exit_crit_edge ], [ %19, %sw.bb6.i ], [ %call2.i, %sw.bb.i ]
  %retval.0.i = phi i64 [ %20, %iomap_length.exit.i.iomap_seek_hole_iter.exit_crit_edge ], [ 0, %sw.bb6.i ], [ %call..i, %sw.bb.i ]
  %30 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %retval.0.i, ptr %processed, align 8
  %call4 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #6
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %iomap_seek_hole_iter.exit.while.body_crit_edge, label %iomap_seek_hole_iter.exit.while.end_crit_edge

iomap_seek_hole_iter.exit.while.end_crit_edge:    ; preds = %iomap_seek_hole_iter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

iomap_seek_hole_iter.exit.while.body_crit_edge:   ; preds = %iomap_seek_hole_iter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %iomap_seek_hole_iter.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %pos.addr.0.lcssa = phi i64 [ %pos, %if.end.while.end_crit_edge ], [ %pos.addr.1, %iomap_seek_hole_iter.exit.while.end_crit_edge ]
  %call4.lcssa = phi i32 [ %call420, %if.end.while.end_crit_edge ], [ %call4, %iomap_seek_hole_iter.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.lcssa)
  %cmp7 = icmp slt i32 %call4.lcssa, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i32 %call4.lcssa to i64
  br label %cleanup

if.end9:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool.not = icmp eq i64 %32, 0
  %spec.select = select i1 %tobool.not, i64 %call, i64 %pos.addr.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then8 ], [ -6, %entry.cleanup_crit_edge ], [ %spec.select, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #6
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !13
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %1 = tail call ptr @llvm.returnaddress(i32 0) #6
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call ptr @llvm.returnaddress(i32 0) #6
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #6
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !14
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !15

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !16
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !18
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @iomap_seek_data(ptr noundef %inode, i64 noundef %pos, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #6
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %iter, align 8
  %pos2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pos, ptr %pos2, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %pos)
  %cmp = icmp sgt i64 %pos, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %pos)
  %cmp3.not = icmp sgt i64 %call, %pos
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i64 %call, %pos
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %len, align 8
  %call419 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call419)
  %cmp520 = icmp sgt i32 %call419, 0
  br i1 %cmp520, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_seek_data_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.021 = phi i64 [ %pos, %while.body.lr.ph ], [ %pos.addr.1, %iomap_seek_data_iter.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset.i.i, align 8
  %7 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %8, %6
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.i = icmp eq i16 %10, 0
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset4.i.i, align 8
  %13 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %14, %12
  %15 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #6
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %15, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len, align 8
  %18 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos2, align 8
  %sub.i.i = sub i64 %end.0.i.i, %19
  %20 = call i64 @llvm.umin.i64(i64 %17, i64 %sub.i.i) #6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type.i, align 8
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %22, label %sw.default.i [
    i16 0, label %iomap_length.exit.i.iomap_seek_data_iter.exit_crit_edge
    i16 3, label %sw.bb1.i
  ]

iomap_length.exit.i.iomap_seek_data_iter.exit_crit_edge: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_seek_data_iter.exit

sw.bb1.i:                                         ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iter, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping.i, align 8
  %add.i = add i64 %20, %19
  %call3.i = call i64 @mapping_seek_hole_data(ptr noundef %27, i64 noundef %19, i64 noundef %add.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3.i)
  %cmp.i = icmp slt i64 %call3.i, 0
  %call..i = select i1 %cmp.i, i64 %20, i64 0
  br label %iomap_seek_data_iter.exit

sw.default.i:                                     ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iomap_seek_data_iter.exit

iomap_seek_data_iter.exit:                        ; preds = %sw.default.i, %sw.bb1.i, %iomap_length.exit.i.iomap_seek_data_iter.exit_crit_edge
  %pos.addr.1 = phi i64 [ %19, %sw.default.i ], [ %call3.i, %sw.bb1.i ], [ %pos.addr.021, %iomap_length.exit.i.iomap_seek_data_iter.exit_crit_edge ]
  %retval.0.i = phi i64 [ 0, %sw.default.i ], [ %call..i, %sw.bb1.i ], [ %20, %iomap_length.exit.i.iomap_seek_data_iter.exit_crit_edge ]
  %28 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %retval.0.i, ptr %processed, align 8
  %call4 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #6
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %iomap_seek_data_iter.exit.while.body_crit_edge, label %iomap_seek_data_iter.exit.while.end_crit_edge

iomap_seek_data_iter.exit.while.end_crit_edge:    ; preds = %iomap_seek_data_iter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

iomap_seek_data_iter.exit.while.body_crit_edge:   ; preds = %iomap_seek_data_iter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %iomap_seek_data_iter.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %pos.addr.0.lcssa = phi i64 [ %pos, %if.end.while.end_crit_edge ], [ %pos.addr.1, %iomap_seek_data_iter.exit.while.end_crit_edge ]
  %call4.lcssa = phi i32 [ %call419, %if.end.while.end_crit_edge ], [ %call4, %iomap_seek_data_iter.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.lcssa)
  %cmp7 = icmp slt i32 %call4.lcssa, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i32 %call4.lcssa to i64
  br label %cleanup

if.end9:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool.not = icmp eq i64 %30, 0
  %spec.select = select i1 %tobool.not, i64 -6, i64 %pos.addr.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then8 ], [ -6, %entry.cleanup_crit_edge ], [ %spec.select, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #6
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mapping_seek_hole_data(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_iomap_seek_hole, !1, !"__ksymtab_iomap_seek_hole", i1 false, i1 false}
!1 = !{!"../fs/iomap/seek.c", i32 57, i32 1}
!2 = !{ptr @__ksymtab_iomap_seek_data, !3, !"__ksymtab_iomap_seek_data", i1 false, i1 false}
!3 = !{!"../fs/iomap/seek.c", i32 104, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 744167, i64 744228}
!14 = !{i64 746899}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 747184}
!17 = !{i64 2152703591}
!18 = !{i64 2152703433}
!19 = !{i64 2152703761}
!20 = !{i64 2149972293}
