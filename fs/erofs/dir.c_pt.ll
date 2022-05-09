; ModuleID = '/llk/IR_all_yes/fs/erofs/dir.c_pt.bc'
source_filename = "../fs/erofs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.erofs_dirent = type <{ i64, i16, i8, i8 }>
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }

@erofs_dir_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__func__.erofs_readdir = private unnamed_addr constant [14 x i8] c"erofs_readdir\00", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fail to readdir of logical block %u of nid %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid de[0].nameoff %u @ nid %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__func__.erofs_fill_dentries = private unnamed_addr constant [20 x i8] c"erofs_fill_dentries\00", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bogus dirent @ nid %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@debug_one_dentry.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_one_dentry\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/erofs/dir.c\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"found dirent %s de_len %u d_type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"erofs: found dirent %s de_len %u d_type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"erofs_dir_fops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 136, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 87, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 100, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 49, i32 4 }
@___asan_gen_.39 = private constant [18 x i8] c"../fs/erofs/dir.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 18, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 717, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @erofs_dir_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_dir_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_readdir(ptr nocapture noundef readonly %f, ptr noundef %ctx) #1 align 64 {
entry:
  %ofs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %5 = tail call ptr @llvm.returnaddress(i32 0) #7
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call ptr @llvm.returnaddress(i32 0) #7
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !31
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !32

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !33
  %10 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !35
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %11, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %13, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %14 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %17, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofs) #7
  %.frozen = freeze i64 %19
  %div = sdiv i64 %.frozen, 4096
  %20 = mul i64 %div, 4096
  %rem.decomposed = sub i64 %.frozen, %20
  %conv4 = trunc i64 %rem.decomposed to i32
  %conv6 = and i64 %15, 4294967295
  %21 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv4, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv6)
  %cmp132 = icmp slt i64 %19, %conv6
  br i1 %cmp132, label %while.body.lr.ph, label %i_size_read.exit.while.end.thread121_crit_edge

i_size_read.exit.while.end.thread121_crit_edge:   ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread121

while.body.lr.ph:                                 ; preds = %i_size_read.exit
  %conv2 = trunc i64 %div to i32
  %i_sb23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %add.ptr26 = getelementptr i8, ptr %1, i32 -56
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %i.0134 = phi i32 [ %conv2, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %initial.0.off0133 = phi i1 [ true, %while.body.lr.ph ], [ %initial.2.off0, %cleanup.while.body_crit_edge ]
  %call.i = tail call ptr @read_cache_page(ptr noundef %3, i32 noundef %i.0134, ptr noundef null, ptr noundef null) #7
  %cmp10 = icmp eq ptr %call.i, inttoptr (i32 -12 to ptr)
  br i1 %cmp10, label %while.body.while.end.thread_crit_edge, label %if.else

while.body.while.end.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

if.else:                                          ; preds = %while.body
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %i_sb23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb23, align 4
  %24 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr26, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %23, ptr noundef nonnull @__func__.erofs_readdir, ptr noundef nonnull @.str, i32 noundef %i.0134, i64 noundef %25) #7
  br label %while.end.thread

if.end14:                                         ; preds = %if.else
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #7
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end14.if.then.i_crit_edge [
    i32 2, label %if.end14.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end14.if.else.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end14.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end14.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %nameoff16 = getelementptr inbounds %struct.erofs_dirent, ptr %addr.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %nameoff16 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %nameoff16, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv17 = zext i16 %32 to i32
  %33 = add i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4084, i16 %33)
  %34 = icmp ult i16 %33, -4084
  br i1 %34, label %if.then22, label %if.end28

if.then22:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %i_sb23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb23, align 4
  %37 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr26, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %36, ptr noundef nonnull @__func__.erofs_readdir, ptr noundef nonnull @.str.1, i32 noundef %conv17, i64 noundef %38) #7
  br label %skip_this

if.end28:                                         ; preds = %kmap.exit
  %39 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pos, align 8
  %sub = sub i64 %15, %40
  %41 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ofs, align 4
  %43 = trunc i64 %sub to i32
  %conv32 = add i32 %42, %43
  %44 = tail call i32 @llvm.umin.i32(i32 %conv32, i32 4096)
  br i1 %initial.0.off0133, label %if.then36, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then36:                                        ; preds = %if.end28
  %add39 = add i32 %42, 11
  %45 = urem i32 %add39, 12
  %mul = sub i32 %add39, %45
  %46 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv17)
  %cmp41.not = icmp ult i32 %mul, %conv17
  br i1 %cmp41.not, label %if.then36.if.end45_crit_edge, label %if.then36.skip_this_crit_edge

if.then36.skip_this_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_this

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45:                                         ; preds = %if.then36.if.end45_crit_edge, %if.end28.if.end45_crit_edge
  %call46 = call fastcc i32 @erofs_fill_dentries(ptr noundef %1, ptr noundef %ctx, ptr noundef %addr.0.i, ptr noundef nonnull %ofs, i32 noundef %conv17, i32 noundef %44)
  br label %skip_this

skip_this:                                        ; preds = %if.end45, %if.then36.skip_this_crit_edge, %if.then22
  %initial.2.off0 = phi i1 [ %initial.0.off0133, %if.then22 ], [ false, %if.then36.skip_this_crit_edge ], [ false, %if.end45 ]
  %err.1 = phi i32 [ -117, %if.then22 ], [ 0, %if.then36.skip_this_crit_edge ], [ %call46, %if.end45 ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 55) #7
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i, align 4
  %shr.i.i108 = lshr i32 %48, 30
  %49 = zext i32 %shr.i.i108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i108, label %skip_this.kunmap.exit_crit_edge [
    i32 2, label %skip_this.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i110
  ]

skip_this.if.end.i_crit_edge:                     ; preds = %skip_this
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

skip_this.kunmap.exit_crit_edge:                  ; preds = %skip_this
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i110:                         ; preds = %skip_this
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %50 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp2.i.not.i109 = icmp eq i32 %50, 2
  br i1 %cmp2.i.not.i109, label %is_highmem_idx.exit.i110.if.end.i_crit_edge, label %is_highmem_idx.exit.i110.kunmap.exit_crit_edge

is_highmem_idx.exit.i110.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i110.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i110.if.end.i_crit_edge, %skip_this.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %call.i) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i110.kunmap.exit_crit_edge, %skip_this.kunmap.exit_crit_edge
  %51 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i111 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i111, label %if.end.i.i, label %if.then.i.i112, !prof !38

if.then.i.i112:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %53, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i112
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i112 ], [ %54, %if.end.i.i ]
  %55 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !32

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_readdir, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !43

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %55, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %55) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %conv47 = zext i32 %i.0134 to i64
  %mul48 = shl nuw nsw i64 %conv47, 12
  %60 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ofs, align 4
  %conv49 = zext i32 %61 to i64
  %add50 = add nuw nsw i64 %mul48, %conv49
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add50, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool52.not = icmp eq i32 %err.1, 0
  br i1 %tobool52.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %put_page.exit
  %inc = add i32 %i.0134, 1
  %63 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %ofs, align 4
  %64 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pos, align 8
  %cmp = icmp slt i64 %65, %conv6
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end.thread121_crit_edge

cleanup.while.end.thread121_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread121

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp58 = icmp slt i32 %err.1, 0
  br i1 %cmp58, label %while.end.while.end.thread_crit_edge, label %while.end.while.end.thread121_crit_edge

while.end.while.end.thread121_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread121

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.then13, %while.body.while.end.thread_crit_edge
  %err.3120 = phi i32 [ %err.1, %while.end.while.end.thread_crit_edge ], [ -117, %if.then13 ], [ -12, %while.body.while.end.thread_crit_edge ]
  br label %while.end.thread121

while.end.thread121:                              ; preds = %while.end.thread, %while.end.while.end.thread121_crit_edge, %cleanup.while.end.thread121_crit_edge, %i_size_read.exit.while.end.thread121_crit_edge
  %66 = phi i32 [ %err.3120, %while.end.thread ], [ 0, %while.end.while.end.thread121_crit_edge ], [ 0, %i_size_read.exit.while.end.thread121_crit_edge ], [ 0, %cleanup.while.end.thread121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofs) #7
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erofs_fill_dentries(ptr nocapture noundef readonly %dir, ptr noundef %ctx, ptr noundef %dentry_blk, ptr nocapture noundef %ofs, i32 noundef %nameoff, i32 noundef %maxsize) unnamed_addr #1 align 64 {
entry:
  %dbg_namebuf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ofs, align 4
  %add.ptr = getelementptr i8, ptr %dentry_blk, i32 %1
  %add.ptr1 = getelementptr i8, ptr %dentry_blk, i32 %nameoff
  %cmp60 = icmp ult ptr %add.ptr, %add.ptr1
  br i1 %cmp60, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %de.061 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr5, %cleanup.while.body_crit_edge ]
  %file_type = getelementptr inbounds %struct.erofs_dirent, ptr %de.061, i32 0, i32 2
  %2 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %file_type, align 1
  %conv = zext i8 %3 to i32
  %call = call zeroext i8 @fs_ftype_to_dtype(i32 noundef %conv) #7
  %nameoff2 = getelementptr inbounds %struct.erofs_dirent, ptr %de.061, i32 0, i32 1
  %4 = ptrtoint ptr %nameoff2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %nameoff2, align 1
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %6 to i32
  %add.ptr4 = getelementptr i8, ptr %dentry_blk, i32 %conv3
  %add.ptr5 = getelementptr %struct.erofs_dirent, ptr %de.061, i32 1
  %cmp6.not = icmp ult ptr %add.ptr5, %add.ptr1
  br i1 %cmp6.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %maxsize, %conv3
  %call8 = call i32 @strnlen(ptr noundef %add.ptr4, i32 noundef %sub) #10
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %nameoff9 = getelementptr %struct.erofs_dirent, ptr %de.061, i32 1, i32 1
  %7 = ptrtoint ptr %nameoff9 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %nameoff9, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv10 = zext i16 %9 to i32
  %sub11 = sub nsw i32 %conv10, %conv3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %de_namelen.0 = phi i32 [ %call8, %if.then ], [ %sub11, %if.else ]
  %add = add i32 %de_namelen.0, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %maxsize)
  %cmp12 = icmp ugt i32 %add, %maxsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %de_namelen.0)
  %cmp14 = icmp ugt i32 %de_namelen.0, 255
  %or.cond = or i1 %cmp14, %cmp12
  br i1 %or.cond, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %add.ptr17 = getelementptr i8, ptr %dir, i32 -56
  %12 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr17, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %11, ptr noundef nonnull @__func__.erofs_fill_dentries, ptr noundef nonnull @.str.3, i64 noundef %13) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

if.end24:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dbg_namebuf.i) #7
  %14 = sub nuw nsw i32 256, %de_namelen.0
  %15 = getelementptr i8, ptr %dbg_namebuf.i, i32 %de_namelen.0
  %16 = call ptr @memset(ptr %15, i32 255, i32 %14)
  %17 = call ptr @memcpy(ptr %dbg_namebuf.i, ptr %add.ptr4, i32 %de_namelen.0)
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_one_dentry.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erofs_fill_dentries, %if.then.i)) #7
          to label %debug_one_dentry.exit [label %if.then.i], !srcloc !43

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %call to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @debug_one_dentry.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.8, ptr noundef nonnull %dbg_namebuf.i, i32 noundef %de_namelen.0, i32 noundef %conv.i) #7
  br label %debug_one_dentry.exit

debug_one_dentry.exit:                            ; preds = %if.then.i, %if.end24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dbg_namebuf.i) #7
  %19 = ptrtoint ptr %de.061 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %de.061, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20)
  %conv26 = zext i8 %call to i32
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %24 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos.i, align 8
  %call.i = call i32 %23(ptr noundef %ctx, ptr noundef %add.ptr4, i32 noundef %de_namelen.0, i64 noundef %25, i64 noundef %21, i32 noundef %conv26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cleanup, label %debug_one_dentry.exit.cleanup33_crit_edge

debug_one_dentry.exit.cleanup33_crit_edge:        ; preds = %debug_one_dentry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

cleanup:                                          ; preds = %debug_one_dentry.exit
  %26 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ofs, align 4
  %add30 = add i32 %27, 12
  store i32 %add30, ptr %ofs, align 4
  br i1 %cmp6.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %28 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %maxsize, ptr %ofs, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %while.end, %debug_one_dentry.exit.cleanup33_crit_edge
  %retval.2 = phi i32 [ 0, %while.end ], [ 1, %debug_one_dentry.exit.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @fs_ftype_to_dtype(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @erofs_dir_fops, !1, !"erofs_dir_fops", i1 false, i1 false}
!1 = !{!"../fs/erofs/dir.c", i32 136, i32 30}
!2 = !{ptr @__func__.erofs_readdir, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/erofs/dir.c", i32 87, i32 4}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/erofs/dir.c", i32 100, i32 4}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!9 = !{ptr @__func__.erofs_fill_dentries, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/erofs/dir.c", i32 49, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/erofs/dir.c", i32 18, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @debug_one_dentry.__UNIQUE_ID_ddebug287, !13, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!18 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/mm.h", i32 717, i32 2}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 1076005, i64 1076066}
!31 = !{i64 1078737}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 1079022}
!34 = !{i64 2152514156}
!35 = !{i64 2152513998}
!36 = !{i64 2152514326}
!37 = !{i64 2150100140}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2153130361, i64 2153130844, i64 2153130398, i64 2153130454, i64 2153130488, i64 2153130512, i64 2153130553, i64 2153130574, i64 2153130602, i64 2153130636}
!40 = !{i64 2148759801}
!41 = !{i64 2148674510, i64 2148674542, i64 2148674571, i64 2148674605, i64 2148674636, i64 2148674659}
!42 = !{i64 2148760030}
!43 = !{i64 2148495923, i64 2148495928, i64 2148495941, i64 2148495985, i64 2148496019, i64 2148496040}
!44 = !{i64 2154465210, i64 2154465688, i64 2154465247, i64 2154465303, i64 2154465337, i64 2154465361, i64 2154465402, i64 2154465423, i64 2154465451, i64 2154465485}
