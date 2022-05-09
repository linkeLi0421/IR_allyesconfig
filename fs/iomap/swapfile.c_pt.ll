; ModuleID = '/llk/IR_all_yes/fs/iomap/swapfile.c_pt.bc'
source_filename = "../fs/iomap/swapfile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iomap_swapfile_activate\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_swapfile_activate\09\09\09\09"
module asm "\09.long\09__crc_iomap_swapfile_activate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_swapfile_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_swapfile_activate\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_swapfile_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }

@iomap_swapfile_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014swapon: Cannot find a single usable page in file.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iomap_swapfile_activate\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/iomap/swapfile.c\00", [44 x i8] zeroinitializer }, align 32
@iomap_swapfile_activate._entry_ptr = internal global ptr @iomap_swapfile_activate._entry, section ".printk_index", align 4
@__kstrtab_iomap_swapfile_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_swapfile_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_swapfile_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_swapfile_activate to i32), ptr @__kstrtab_iomap_swapfile_activate, ptr @__kstrtabns_iomap_swapfile_activate }, section "___ksymtab_gpl+iomap_swapfile_activate", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"is inline\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"has unallocated extents\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"is not committed\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"has shared extents\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"outside the main device\00", [40 x i8] zeroinitializer }, align 32
@iomap_swapfile_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013swapon: file %s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iomap_swapfile_fail\00", [44 x i8] zeroinitializer }, align 32
@iomap_swapfile_fail._entry_ptr = internal global ptr @iomap_swapfile_fail._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 3, i64 4]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 185, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 107, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 109, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 114, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 116, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 120, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [23 x i8] c"../fs/iomap/swapfile.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 87, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_iomap_swapfile_activate, ptr @iomap_swapfile_activate._entry, ptr @iomap_swapfile_activate._entry_ptr, ptr @iomap_swapfile_fail._entry, ptr @iomap_swapfile_fail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_swapfile_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_swapfile_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_swapfile_activate(ptr noundef %sis, ptr noundef %swap_file, ptr nocapture noundef writeonly %pagespan, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %swap_file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #7
  %4 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %iter, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %7 = tail call ptr @llvm.returnaddress(i32 0) #7
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call ptr @llvm.returnaddress(i32 0) #7
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !34
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !35

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !36
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !38
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %and = and i64 %17, -4096
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and, ptr %len, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %flags, align 8
  %call3 = tail call i32 @vfs_fsync(ptr noundef %swap_file, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %while.cond.preheader, label %i_size_read.exit.cleanup_crit_edge

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %i_size_read.exit
  %call4169 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4169)
  %cmp170 = icmp sgt i32 %call4169, 0
  br i1 %cmp170, label %while.body.lr.ph, label %while.end.thread

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %flags.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %bdev.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 5
  %bdev16.i = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 18
  %max.i58 = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 5
  %isi.sroa.9.0.iomap.sroa_idx = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %isi.sroa.11.0.iomap.sroa_idx = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %pos.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_swapfile_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %isi.sroa.39.0177 = phi i32 [ 0, %while.body.lr.ph ], [ %isi.sroa.39.3, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.31.0176 = phi i32 [ 0, %while.body.lr.ph ], [ %isi.sroa.31.3, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.26.0175 = phi i64 [ 0, %while.body.lr.ph ], [ %isi.sroa.26.4, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.20108.0174 = phi i64 [ -1, %while.body.lr.ph ], [ %isi.sroa.20108.4, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.0.0173 = phi i64 [ 0, %while.body.lr.ph ], [ %isi.sroa.0.2, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.11.0172 = phi i64 [ 0, %while.body.lr.ph ], [ %isi.sroa.11.2, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %isi.sroa.9.0171 = phi i64 [ 0, %while.body.lr.ph ], [ %isi.sroa.9.2, %iomap_swapfile_iter.exit.while.body_crit_edge ]
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type.i, align 8
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %sw.default.i [
    i16 2, label %while.body.sw.epilog.i_crit_edge
    i16 3, label %while.body.sw.epilog.i_crit_edge220
    i16 4, label %sw.bb1.i
  ]

while.body.sw.epilog.i_crit_edge220:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

while.body.sw.epilog.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 4096) #10
  %tobool.not.i.i43 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i43, label %sw.bb1.i.iomap_swapfile_fail.exit.i_crit_edge, label %if.then.i.i44

sw.bb1.i.iomap_swapfile_fail.exit.i_crit_edge:    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_swapfile_fail.exit.i

if.then.i.i44:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = call ptr @file_path(ptr noundef %swap_file, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #7
  br label %iomap_swapfile_fail.exit.i

iomap_swapfile_fail.exit.i:                       ; preds = %if.then.i.i44, %sw.bb1.i.iomap_swapfile_fail.exit.i_crit_edge
  %p.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i44 ], [ inttoptr (i32 -12 to ptr), %sw.bb1.i.iomap_swapfile_fail.exit.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %p.0.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr @.str.10, ptr %p.0.i.i
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i.i, ptr noundef nonnull @.str.3) #11
  call void @kfree(ptr noundef %call7.i.i.i) #7
  br label %iomap_swapfile_iter.exit

sw.default.i:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i68.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4096) #10
  %tobool.not.i69.i = icmp eq ptr %call7.i.i68.i, null
  br i1 %tobool.not.i69.i, label %sw.default.i.iomap_swapfile_fail.exit77.i_crit_edge, label %if.then.i72.i

sw.default.i.iomap_swapfile_fail.exit77.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_swapfile_fail.exit77.i

if.then.i72.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i71.i = call ptr @file_path(ptr noundef %swap_file, ptr noundef nonnull %call7.i.i68.i, i32 noundef 4096) #7
  br label %iomap_swapfile_fail.exit77.i

iomap_swapfile_fail.exit77.i:                     ; preds = %if.then.i72.i, %sw.default.i.iomap_swapfile_fail.exit77.i_crit_edge
  %p.0.i73.i = phi ptr [ %call2.i71.i, %if.then.i72.i ], [ inttoptr (i32 -12 to ptr), %sw.default.i.iomap_swapfile_fail.exit77.i_crit_edge ]
  %cmp.i.i74.i = icmp ugt ptr %p.0.i73.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i75.i = select i1 %cmp.i.i74.i, ptr @.str.10, ptr %p.0.i73.i
  %call4.i76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i75.i, ptr noundef nonnull @.str.4) #11
  call void @kfree(ptr noundef %call7.i.i68.i) #7
  br label %iomap_swapfile_iter.exit

sw.epilog.i:                                      ; preds = %while.body.sw.epilog.i_crit_edge, %while.body.sw.epilog.i_crit_edge220
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 2
  %conv5.i = zext i16 %28 to i32
  %and.i45 = and i32 %conv5.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i78.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 4096) #10
  %tobool.not.i79.i = icmp eq ptr %call7.i.i78.i, null
  br i1 %tobool.not.i79.i, label %if.then.i.iomap_swapfile_fail.exit87.i_crit_edge, label %if.then.i82.i

if.then.i.iomap_swapfile_fail.exit87.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_swapfile_fail.exit87.i

if.then.i82.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i81.i = call ptr @file_path(ptr noundef %swap_file, ptr noundef nonnull %call7.i.i78.i, i32 noundef 4096) #7
  br label %iomap_swapfile_fail.exit87.i

iomap_swapfile_fail.exit87.i:                     ; preds = %if.then.i82.i, %if.then.i.iomap_swapfile_fail.exit87.i_crit_edge
  %p.0.i83.i = phi ptr [ %call2.i81.i, %if.then.i82.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.iomap_swapfile_fail.exit87.i_crit_edge ]
  %cmp.i.i84.i = icmp ugt ptr %p.0.i83.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i85.i = select i1 %cmp.i.i84.i, ptr @.str.10, ptr %p.0.i83.i
  %call4.i86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i85.i, ptr noundef nonnull @.str.5) #11
  call void @kfree(ptr noundef %call7.i.i78.i) #7
  br label %iomap_swapfile_iter.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %and10.i = and i32 %conv5.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i88.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 4096) #10
  %tobool.not.i89.i = icmp eq ptr %call7.i.i88.i, null
  br i1 %tobool.not.i89.i, label %if.then12.i.iomap_swapfile_fail.exit97.i_crit_edge, label %if.then.i92.i

if.then12.i.iomap_swapfile_fail.exit97.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_swapfile_fail.exit97.i

if.then.i92.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i91.i = call ptr @file_path(ptr noundef %swap_file, ptr noundef nonnull %call7.i.i88.i, i32 noundef 4096) #7
  br label %iomap_swapfile_fail.exit97.i

iomap_swapfile_fail.exit97.i:                     ; preds = %if.then.i92.i, %if.then12.i.iomap_swapfile_fail.exit97.i_crit_edge
  %p.0.i93.i = phi ptr [ %call2.i91.i, %if.then.i92.i ], [ inttoptr (i32 -12 to ptr), %if.then12.i.iomap_swapfile_fail.exit97.i_crit_edge ]
  %cmp.i.i94.i = icmp ugt ptr %p.0.i93.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i95.i = select i1 %cmp.i.i94.i, ptr @.str.10, ptr %p.0.i93.i
  %call4.i96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i95.i, ptr noundef nonnull @.str.6) #11
  call void @kfree(ptr noundef %call7.i.i88.i) #7
  br label %iomap_swapfile_iter.exit

if.end15.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i, align 4
  %33 = ptrtoint ptr %bdev16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev16.i, align 4
  %cmp.not.i = icmp eq ptr %32, %34
  br i1 %cmp.not.i, label %if.end21.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i98.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 4096) #10
  %tobool.not.i99.i = icmp eq ptr %call7.i.i98.i, null
  br i1 %tobool.not.i99.i, label %if.then18.i.iomap_swapfile_fail.exit107.i_crit_edge, label %if.then.i102.i

if.then18.i.iomap_swapfile_fail.exit107.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_swapfile_fail.exit107.i

if.then.i102.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i101.i = call ptr @file_path(ptr noundef %swap_file, ptr noundef nonnull %call7.i.i98.i, i32 noundef 4096) #7
  br label %iomap_swapfile_fail.exit107.i

iomap_swapfile_fail.exit107.i:                    ; preds = %if.then.i102.i, %if.then18.i.iomap_swapfile_fail.exit107.i_crit_edge
  %p.0.i103.i = phi ptr [ %call2.i101.i, %if.then.i102.i ], [ inttoptr (i32 -12 to ptr), %if.then18.i.iomap_swapfile_fail.exit107.i_crit_edge ]
  %cmp.i.i104.i = icmp ugt ptr %p.0.i103.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i105.i = select i1 %cmp.i.i104.i, ptr @.str.10, ptr %p.0.i103.i
  %call4.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i105.i, ptr noundef nonnull @.str.7) #11
  call void @kfree(ptr noundef %call7.i.i98.i) #7
  br label %iomap_swapfile_iter.exit

if.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %isi.sroa.11.0172)
  %cmp23.i = icmp eq i64 %isi.sroa.11.0172, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %36)
  %isi.sroa.0.0.copyload95 = load i64, ptr %iomap, align 8
  %37 = ptrtoint ptr %isi.sroa.9.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %37)
  %isi.sroa.9.0.copyload97 = load i64, ptr %isi.sroa.9.0.iomap.sroa_idx, align 8
  %38 = ptrtoint ptr %isi.sroa.11.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %38)
  %isi.sroa.11.0.copyload100 = load i64, ptr %isi.sroa.11.0.iomap.sroa_idx, align 8
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end21.i
  %add.i = add i64 %isi.sroa.0.0173, %isi.sroa.11.0172
  %39 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %iomap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %40)
  %cmp31.i = icmp eq i64 %add.i, %40
  br i1 %cmp31.i, label %if.then33.i, label %if.else38.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %isi.sroa.11.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %isi.sroa.11.0.iomap.sroa_idx, align 8
  %add37.i = add i64 %42, %isi.sroa.11.0172
  br label %if.end46.i

if.else38.i:                                      ; preds = %if.else.i
  %43 = ptrtoint ptr %max.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max.i58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %isi.sroa.31.0176)
  %cmp.not.i59 = icmp ugt i32 %44, %isi.sroa.31.0176
  br i1 %cmp.not.i59, label %if.end.i66, label %if.else38.i.cleanup.thread.i_crit_edge, !prof !41

if.else38.i.cleanup.thread.i_crit_edge:           ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end.i66:                                       ; preds = %if.else38.i
  %add.i60 = add i64 %isi.sroa.0.0173, 4095
  %shr.i61 = lshr i64 %add.i60, 12
  %shr12.i64 = lshr i64 %add.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr12.i64, i64 %shr.i61)
  %cmp13.not.i65 = icmp ugt i64 %shr12.i64, %shr.i61
  br i1 %cmp13.not.i65, label %if.end15.i76, label %if.end.i66.cleanup.thread.i_crit_edge

if.end.i66.cleanup.thread.i_crit_edge:            ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end15.i76:                                     ; preds = %if.end.i66
  %sub.i67 = sub i32 %44, %isi.sroa.31.0176
  %sub16.i68 = sub nsw i64 %shr12.i64, %shr.i61
  %conv.i69 = trunc i64 %sub16.i68 to i32
  %45 = call i32 @llvm.umin.i32(i32 %sub.i67, i32 %conv.i69) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %isi.sroa.9.0171)
  %cmp19.i71 = icmp eq i64 %isi.sroa.9.0171, 0
  %inc.i72 = zext i1 %cmp19.i71 to i64
  %first_ppage_reported.0.i73 = add nuw nsw i64 %shr.i61, %inc.i72
  %46 = call i64 @llvm.umin.i64(i64 %isi.sroa.20108.0174, i64 %first_ppage_reported.0.i73)
  %sub28.i79 = add nsw i64 %shr12.i64, -1
  %47 = call i64 @llvm.umax.i64(i64 %isi.sroa.26.0175, i64 %sub28.i79)
  %call.i83 = call i32 @add_swap_extent(ptr noundef %sis, i32 noundef %isi.sroa.31.0176, i32 noundef %45, i64 noundef %shr.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp37.i84 = icmp slt i32 %call.i83, 0
  br i1 %cmp37.i84, label %cleanup.i, label %if.end40.i89

if.end40.i89:                                     ; preds = %if.end15.i76
  call void @__sanitizer_cov_trace_pc() #9
  %add41.i87 = add i32 %call.i83, %isi.sroa.39.0177
  %add43.i88 = add i32 %45, %isi.sroa.31.0176
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end40.i89, %if.end.i66.cleanup.thread.i_crit_edge, %if.else38.i.cleanup.thread.i_crit_edge
  %isi.sroa.20108.2.ph = phi i64 [ %isi.sroa.20108.0174, %if.else38.i.cleanup.thread.i_crit_edge ], [ %isi.sroa.20108.0174, %if.end.i66.cleanup.thread.i_crit_edge ], [ %46, %if.end40.i89 ]
  %isi.sroa.26.2.ph = phi i64 [ %isi.sroa.26.0175, %if.else38.i.cleanup.thread.i_crit_edge ], [ %isi.sroa.26.0175, %if.end.i66.cleanup.thread.i_crit_edge ], [ %47, %if.end40.i89 ]
  %isi.sroa.31.1.ph = phi i32 [ %isi.sroa.31.0176, %if.else38.i.cleanup.thread.i_crit_edge ], [ %isi.sroa.31.0176, %if.end.i66.cleanup.thread.i_crit_edge ], [ %add43.i88, %if.end40.i89 ]
  %isi.sroa.39.1.ph = phi i32 [ %isi.sroa.39.0177, %if.else38.i.cleanup.thread.i_crit_edge ], [ %isi.sroa.39.0177, %if.end.i66.cleanup.thread.i_crit_edge ], [ %add41.i87, %if.end40.i89 ]
  %48 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %48)
  %isi.sroa.0.0.copyload = load i64, ptr %iomap, align 8
  %49 = ptrtoint ptr %isi.sroa.9.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %49)
  %isi.sroa.9.0.copyload = load i64, ptr %isi.sroa.9.0.iomap.sroa_idx, align 8
  %50 = ptrtoint ptr %isi.sroa.11.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %50)
  %isi.sroa.11.0.copyload = load i64, ptr %isi.sroa.11.0.iomap.sroa_idx, align 8
  br label %if.end46.i

cleanup.i:                                        ; preds = %if.end15.i76
  call void @__sanitizer_cov_trace_pc() #9
  %conv42.i = sext i32 %call.i83 to i64
  br label %iomap_swapfile_iter.exit

if.end46.i:                                       ; preds = %cleanup.thread.i, %if.then33.i, %if.then25.i
  %isi.sroa.9.1 = phi i64 [ %isi.sroa.9.0.copyload97, %if.then25.i ], [ %isi.sroa.9.0171, %if.then33.i ], [ %isi.sroa.9.0.copyload, %cleanup.thread.i ]
  %isi.sroa.11.1 = phi i64 [ %isi.sroa.11.0.copyload100, %if.then25.i ], [ %add37.i, %if.then33.i ], [ %isi.sroa.11.0.copyload, %cleanup.thread.i ]
  %isi.sroa.0.1 = phi i64 [ %isi.sroa.0.0.copyload95, %if.then25.i ], [ %isi.sroa.0.0173, %if.then33.i ], [ %isi.sroa.0.0.copyload, %cleanup.thread.i ]
  %isi.sroa.20108.3 = phi i64 [ %isi.sroa.20108.0174, %if.then25.i ], [ %isi.sroa.20108.0174, %if.then33.i ], [ %isi.sroa.20108.2.ph, %cleanup.thread.i ]
  %isi.sroa.26.3 = phi i64 [ %isi.sroa.26.0175, %if.then25.i ], [ %isi.sroa.26.0175, %if.then33.i ], [ %isi.sroa.26.2.ph, %cleanup.thread.i ]
  %isi.sroa.31.2 = phi i32 [ %isi.sroa.31.0176, %if.then25.i ], [ %isi.sroa.31.0176, %if.then33.i ], [ %isi.sroa.31.1.ph, %cleanup.thread.i ]
  %isi.sroa.39.2 = phi i32 [ %isi.sroa.39.0177, %if.then25.i ], [ %isi.sroa.39.0177, %if.then33.i ], [ %isi.sroa.39.1.ph, %cleanup.thread.i ]
  %51 = ptrtoint ptr %isi.sroa.9.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %isi.sroa.9.0.iomap.sroa_idx, align 8
  %53 = ptrtoint ptr %isi.sroa.11.0.iomap.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %isi.sroa.11.0.iomap.sroa_idx, align 8
  %add.i.i = add i64 %54, %52
  %55 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.not.i.i = icmp eq i16 %56, 0
  br i1 %cmp.not.i.i, label %if.end46.i.iomap_length.exit.i_crit_edge, label %if.then.i108.i

if.end46.i.iomap_length.exit.i_crit_edge:         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_length.exit.i

if.then.i108.i:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %offset4.i.i, align 8
  %59 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %60, %58
  %61 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #7
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i108.i, %if.end46.i.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %61, %if.then.i108.i ], [ %add.i.i, %if.end46.i.iomap_length.exit.i_crit_edge ]
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %len, align 8
  %64 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pos.i.i, align 8
  %sub.i.i = sub i64 %end.0.i.i, %65
  %66 = call i64 @llvm.umin.i64(i64 %63, i64 %sub.i.i) #7
  br label %iomap_swapfile_iter.exit

iomap_swapfile_iter.exit:                         ; preds = %iomap_length.exit.i, %cleanup.i, %iomap_swapfile_fail.exit107.i, %iomap_swapfile_fail.exit97.i, %iomap_swapfile_fail.exit87.i, %iomap_swapfile_fail.exit77.i, %iomap_swapfile_fail.exit.i
  %isi.sroa.9.2 = phi i64 [ %isi.sroa.9.0171, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.9.0171, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.9.1, %iomap_length.exit.i ], [ %isi.sroa.9.0171, %cleanup.i ], [ %isi.sroa.9.0171, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.9.0171, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.9.0171, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.11.2 = phi i64 [ %isi.sroa.11.0172, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.11.0172, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.11.1, %iomap_length.exit.i ], [ %isi.sroa.11.0172, %cleanup.i ], [ %isi.sroa.11.0172, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.11.0172, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.11.0172, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.0.2 = phi i64 [ %isi.sroa.0.0173, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.0.0173, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.0.1, %iomap_length.exit.i ], [ %isi.sroa.0.0173, %cleanup.i ], [ %isi.sroa.0.0173, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.0.0173, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.0.0173, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.20108.4 = phi i64 [ %isi.sroa.20108.0174, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.20108.0174, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.20108.3, %iomap_length.exit.i ], [ %46, %cleanup.i ], [ %isi.sroa.20108.0174, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.20108.0174, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.20108.0174, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.26.4 = phi i64 [ %isi.sroa.26.0175, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.26.0175, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.26.3, %iomap_length.exit.i ], [ %47, %cleanup.i ], [ %isi.sroa.26.0175, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.26.0175, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.26.0175, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.31.3 = phi i32 [ %isi.sroa.31.0176, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.31.0176, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.31.2, %iomap_length.exit.i ], [ %isi.sroa.31.0176, %cleanup.i ], [ %isi.sroa.31.0176, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.31.0176, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.31.0176, %iomap_swapfile_fail.exit87.i ]
  %isi.sroa.39.3 = phi i32 [ %isi.sroa.39.0177, %iomap_swapfile_fail.exit77.i ], [ %isi.sroa.39.0177, %iomap_swapfile_fail.exit.i ], [ %isi.sroa.39.2, %iomap_length.exit.i ], [ %isi.sroa.39.0177, %cleanup.i ], [ %isi.sroa.39.0177, %iomap_swapfile_fail.exit107.i ], [ %isi.sroa.39.0177, %iomap_swapfile_fail.exit97.i ], [ %isi.sroa.39.0177, %iomap_swapfile_fail.exit87.i ]
  %retval.1.i = phi i64 [ -22, %iomap_swapfile_fail.exit77.i ], [ -22, %iomap_swapfile_fail.exit.i ], [ %66, %iomap_length.exit.i ], [ %conv42.i, %cleanup.i ], [ -22, %iomap_swapfile_fail.exit107.i ], [ -22, %iomap_swapfile_fail.exit97.i ], [ -22, %iomap_swapfile_fail.exit87.i ]
  %67 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %retval.1.i, ptr %processed, align 8
  %call4 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #7
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %iomap_swapfile_iter.exit.while.body_crit_edge, label %while.end

iomap_swapfile_iter.exit.while.body_crit_edge:    ; preds = %iomap_swapfile_iter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %iomap_swapfile_iter.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %while.end.cleanup_crit_edge, label %if.end8

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end.thread:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4169)
  %cmp6195 = icmp slt i32 %call4169, 0
  br i1 %cmp6195, label %while.end.thread.cleanup_crit_edge, label %while.end.thread.do.end_crit_edge

while.end.thread.do.end_crit_edge:                ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.end.thread.cleanup_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %isi.sroa.11.2)
  %tobool10.not = icmp eq i64 %isi.sroa.11.2, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %max.i = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 5
  %68 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %isi.sroa.31.3)
  %cmp.not.i48 = icmp ugt i32 %69, %isi.sroa.31.3
  br i1 %cmp.not.i48, label %if.end.i51, label %if.then11.if.end16_crit_edge, !prof !41

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i51:                                       ; preds = %if.then11
  %add.i49 = add i64 %isi.sroa.0.2, 4095
  %shr.i = lshr i64 %add.i49, 12
  %add8.i = add i64 %isi.sroa.0.2, %isi.sroa.11.2
  %shr12.i = lshr i64 %add8.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr12.i, i64 %shr.i)
  %cmp13.not.i = icmp ugt i64 %shr12.i, %shr.i
  br i1 %cmp13.not.i, label %if.end15.i53, label %if.end.i51.if.end16_crit_edge

if.end.i51.if.end16_crit_edge:                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end15.i53:                                     ; preds = %if.end.i51
  %sub.i = sub i32 %69, %isi.sroa.31.3
  %sub16.i = sub nsw i64 %shr12.i, %shr.i
  %conv.i = trunc i64 %sub16.i to i32
  %70 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv.i) #7
  %call.i = call i32 @add_swap_extent(ptr noundef %sis, i32 noundef %isi.sroa.31.3, i32 noundef %70, i64 noundef %shr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37.i = icmp slt i32 %call.i, 0
  br i1 %cmp37.i, label %if.end15.i53.cleanup_crit_edge, label %if.end40.i

if.end15.i53.cleanup_crit_edge:                   ; preds = %if.end15.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.i:                                       ; preds = %if.end15.i53
  call void @__sanitizer_cov_trace_pc() #9
  %sub28.i = add nsw i64 %shr12.i, -1
  %71 = call i64 @llvm.umax.i64(i64 %isi.sroa.26.4, i64 %sub28.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %isi.sroa.9.2)
  %cmp19.i = icmp eq i64 %isi.sroa.9.2, 0
  %inc.i = zext i1 %cmp19.i to i64
  %first_ppage_reported.0.i = add nuw nsw i64 %shr.i, %inc.i
  %72 = call i64 @llvm.umin.i64(i64 %isi.sroa.20108.4, i64 %first_ppage_reported.0.i)
  %add41.i = add i32 %call.i, %isi.sroa.39.3
  %add43.i = add i32 %70, %isi.sroa.31.3
  br label %if.end16

if.end16:                                         ; preds = %if.end40.i, %if.end.i51.if.end16_crit_edge, %if.then11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %isi.sroa.20108.7 = phi i64 [ %isi.sroa.20108.4, %if.end8.if.end16_crit_edge ], [ %isi.sroa.20108.4, %if.then11.if.end16_crit_edge ], [ %isi.sroa.20108.4, %if.end.i51.if.end16_crit_edge ], [ %72, %if.end40.i ]
  %isi.sroa.26.7 = phi i64 [ %isi.sroa.26.4, %if.end8.if.end16_crit_edge ], [ %isi.sroa.26.4, %if.then11.if.end16_crit_edge ], [ %isi.sroa.26.4, %if.end.i51.if.end16_crit_edge ], [ %71, %if.end40.i ]
  %isi.sroa.31.5 = phi i32 [ %isi.sroa.31.3, %if.end8.if.end16_crit_edge ], [ %isi.sroa.31.3, %if.then11.if.end16_crit_edge ], [ %isi.sroa.31.3, %if.end.i51.if.end16_crit_edge ], [ %add43.i, %if.end40.i ]
  %isi.sroa.39.5 = phi i32 [ %isi.sroa.39.3, %if.end8.if.end16_crit_edge ], [ %isi.sroa.39.3, %if.then11.if.end16_crit_edge ], [ %isi.sroa.39.3, %if.end.i51.if.end16_crit_edge ], [ %add41.i, %if.end40.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isi.sroa.31.5)
  %cmp17 = icmp eq i32 %isi.sroa.31.5, 0
  br i1 %cmp17, label %if.end16.do.end_crit_edge, label %if.end20

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end16.do.end_crit_edge, %while.end.thread.do.end_crit_edge
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %add21 = sub i64 1, %isi.sroa.20108.7
  %sub23 = add i64 %add21, %isi.sroa.26.7
  %73 = ptrtoint ptr %pagespan to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %sub23, ptr %pagespan, align 8
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 5
  %74 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %isi.sroa.31.5, ptr %max, align 4
  %sub26 = add i32 %isi.sroa.31.5, -1
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 11
  %75 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub26, ptr %pages, align 4
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 10
  %76 = ptrtoint ptr %highest_bit to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub26, ptr %highest_bit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %if.end15.i53.cleanup_crit_edge, %while.end.thread.cleanup_crit_edge, %while.end.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %isi.sroa.39.5, %if.end20 ], [ %call3, %i_size_read.exit.cleanup_crit_edge ], [ %call4, %while.end.cleanup_crit_edge ], [ %call.i, %if.end15.i53.cleanup_crit_edge ], [ %call4169, %while.end.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_swap_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/iomap/swapfile.c", i32 185, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iomap_swapfile_activate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iomap_swapfile_activate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_iomap_swapfile_activate, !7, !"__ksymtab_iomap_swapfile_activate", i1 false, i1 false}
!7 = !{!"../fs/iomap/swapfile.c", i32 195, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/iomap/swapfile.c", i32 107, i32 35}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/iomap/swapfile.c", i32 109, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/iomap/swapfile.c", i32 114, i32 35}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/iomap/swapfile.c", i32 116, i32 35}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/iomap/swapfile.c", i32 120, i32 35}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/iomap/swapfile.c", i32 87, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iomap_swapfile_fail._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @iomap_swapfile_fail._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 747460, i64 747521}
!34 = !{i64 750192}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 750477}
!37 = !{i64 2152706884}
!38 = !{i64 2152706726}
!39 = !{i64 2152707054}
!40 = !{i64 2149975586}
!41 = !{!"branch_weights", i32 2000, i32 1}
