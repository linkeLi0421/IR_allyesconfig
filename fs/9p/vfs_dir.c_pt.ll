; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_dir.c_pt.bc'
source_filename = "../fs/9p/vfs_dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.101, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.102, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.103, ptr, %struct.address_space, %struct.list_head, %union.anon.104, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.102 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.103 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.104 = type { ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.109, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.p9_rdir = type { i32, i32, [0 x i8] }
%struct.dir_context = type { ptr, i64 }
%struct.p9_dirent = type { %struct.p9_qid, i64, i8, [256 x i8] }

@__func__.v9fs_dir_release = private unnamed_addr constant [17 x i8] c"v9fs_dir_release\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inode: %p filp: %p fid: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@v9fs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_dir_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_dir_operations_dotl = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_dir_readdir_dotl, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__func__.v9fs_dir_readdir = private unnamed_addr constant [17 x i8] c"v9fs_dir_readdir\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name %pD\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"returned %d\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.v9fs_dir_readdir_dotl = private unnamed_addr constant [22 x i8] c"v9fs_dir_readdir_dotl\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 215, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"v9fs_dir_operations\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 235, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"v9fs_dir_operations_dotl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 243, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 96, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [19 x i8] c"../fs/9p/vfs_dir.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 127, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @v9fs_dir_operations, ptr @v9fs_dir_operations_dotl, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_dir_operations_dotl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_dir_release(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %version = alloca i32, align 4
  %i_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size) #7
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.critedge, label %cond.true

cond.true:                                        ; preds = %entry
  %fid1 = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fid1, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_release, ptr noundef nonnull @.str, ptr noundef %inode, ptr noundef %filp, i32 noundef %3) #7
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #7
  %ilist = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ilist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ilist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %cond.true.hlist_del.exit_crit_edge, label %do.body13.i.i

cond.true.hlist_del.exit_crit_edge:               ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %cond.true.hlist_del.exit_crit_edge
  %10 = ptrtoint ptr %ilist to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %ilist, align 4
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #7
  %call4 = tail call i32 @p9_client_clunk(ptr noundef nonnull %1) #7
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_release, ptr noundef nonnull @.str, ptr noundef %inode, ptr noundef %filp, i32 noundef -1) #7
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %hlist_del.exit
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode, align 8
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %version7 = getelementptr i8, ptr %inode, i32 -116
  %14 = ptrtoint ptr %version7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version7, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %version, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then6
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !23
  %and.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i24 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i24, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %19 = tail call ptr @llvm.returnaddress(i32 0) #7
  %20 = ptrtoint ptr %19 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %20) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %20) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call ptr @llvm.returnaddress(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %22) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %22) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !25

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #7, !srcloc !26
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !28
  %26 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %27, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %25, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %27, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  %28 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  %30 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %31, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %32 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %29, ptr %i_size, align 8
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i25 = icmp eq ptr %34, null
  br i1 %tobool.not.i25, label %i_size_read.exit.if.end11_crit_edge, label %if.then.i

i_size_read.exit.if.end11_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then.i:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__fscache_unuse_cookie(ptr noundef nonnull %34, ptr noundef nonnull %version, ptr noundef nonnull %i_size) #7
  br label %if.end11

if.else:                                          ; preds = %if.end
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i26 = icmp eq ptr %36, null
  br i1 %tobool.not.i26, label %if.else.if.end11_crit_edge, label %if.then.i27

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %36, ptr noundef null, ptr noundef null) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then.i27, %if.else.if.end11_crit_edge, %if.then.i, %i_size_read.exit.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_dir_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %st = alloca %struct.p9_wstat, align 8
  %err = alloca i32, align 4
  %kvec = alloca %struct.kvec, align 4
  %to = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %st) #7
  %0 = call ptr @memset(ptr %st, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kvec) #7
  %2 = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_readdir, ptr noundef nonnull @.str.1, ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %msize = getelementptr inbounds %struct.p9_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msize, align 4
  %sub = add i32 %8, -24
  %rdir.i = getelementptr inbounds %struct.p9_fid, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %rdir.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdir.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end8.i.i.i:                                    ; preds = %entry
  %add.i = add i32 %8, -16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #10
  %11 = ptrtoint ptr %rdir.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %rdir.i, align 8
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.i.cleanup42_crit_edge, label %if.end8.i.i.i.if.end_crit_edge

if.end8.i.i.i.if.end_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end8.i.i.i.cleanup42_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end:                                           ; preds = %if.end8.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.if.end_crit_edge ], [ %10, %entry.if.end_crit_edge ]
  %buf = getelementptr inbounds %struct.p9_rdir, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %kvec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %kvec, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %2, align 4
  %tail = getelementptr inbounds %struct.p9_rdir, ptr %12, i32 0, i32 1
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %name = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 8
  %qid = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.then1, label %while.cond.if.end13_crit_edge

while.cond.if.end13_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then1:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #7
  %19 = call ptr @memset(ptr %to, i32 255, i32 24)
  call void @iov_iter_kvec(ptr noundef nonnull %to, i32 noundef 0, ptr noundef nonnull %kvec, i32 noundef 1, i32 noundef %sub) #7
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data, align 4
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pos, align 8
  %call3 = call i32 @p9_client_read(ptr noundef %21, i64 noundef %23, ptr noundef nonnull %to, ptr noundef nonnull %err) #7
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #7
  br label %cleanup42

cleanup:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %12, align 4
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3, ptr %tail, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #7
  br label %if.end13

if.end13:                                         ; preds = %cleanup, %while.cond.if.end13_crit_edge
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %12, align 4
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp1780 = icmp sgt i32 %31, %29
  br i1 %cmp1780, label %if.end13.while.body18_crit_edge, label %if.end13.while.cond.backedge_crit_edge

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end13.while.body18_crit_edge:                  ; preds = %if.end13
  br label %while.body18

while.cond.backedge:                              ; preds = %if.end37.while.cond.backedge_crit_edge, %if.end13.while.cond.backedge_crit_edge
  br label %while.cond

while.body18:                                     ; preds = %if.end37.while.body18_crit_edge, %if.end13.while.body18_crit_edge
  %32 = phi i32 [ %54, %if.end37.while.body18_crit_edge ], [ %31, %if.end13.while.body18_crit_edge ]
  %33 = phi i32 [ %52, %if.end37.while.body18_crit_edge ], [ %29, %if.end13.while.body18_crit_edge ]
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %4, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %33
  %sub25 = sub i32 %32, %33
  %call26 = call i32 @p9stat_read(ptr noundef %35, ptr noundef %add.ptr, i32 noundef %sub25, ptr noundef nonnull %st) #7
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call26, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_readdir, ptr noundef nonnull @.str.2, i32 noundef %call26) #7
  br label %cleanup42

if.end29:                                         ; preds = %while.body18
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 8
  %call31 = call i32 @strlen(ptr noundef %38) #11
  %call32 = call i32 @v9fs_qid2ino(ptr noundef %qid) #7
  %conv = zext i32 %call32 to i64
  %39 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool.not.i72 = icmp sgt i32 %40, -1
  %spec.store.select.i = select i1 %tobool.not.i72, i32 8, i32 4
  %and1.i = and i32 %40, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %spec.store.select5.i = select i1 %tobool2.not.i, i32 %spec.store.select.i, i32 10
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 8
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pos, align 8
  %call.i = call i32 %42(ptr noundef %ctx, ptr noundef %38, i32 noundef %call31, i64 noundef %44, i64 noundef %conv, i32 noundef %spec.store.select5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @p9stat_free(ptr noundef nonnull %st) #7
  br i1 %cmp.i, label %if.end37, label %if.end29.cleanup42_crit_edge

if.end29.cleanup42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end37:                                         ; preds = %if.end29
  %45 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err, align 4
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %12, align 4
  %add = add i32 %48, %46
  store i32 %add, ptr %12, align 4
  %49 = load i32, ptr %err, align 4
  %conv39 = sext i32 %49 to i64
  %50 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pos, align 8
  %add41 = add i64 %51, %conv39
  store i64 %add41, ptr %pos, align 8
  %52 = load i32, ptr %12, align 4
  %53 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tail, align 4
  %cmp17 = icmp sgt i32 %54, %52
  br i1 %cmp17, label %if.end37.while.body18_crit_edge, label %if.end37.while.cond.backedge_crit_edge

if.end37.while.cond.backedge_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end37.while.body18_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body18

cleanup42:                                        ; preds = %if.end29.cleanup42_crit_edge, %if.then28, %cleanup.thread, %if.end8.i.i.i.cleanup42_crit_edge
  %retval.3 = phi i32 [ -5, %if.then28 ], [ -12, %if.end8.i.i.i.cleanup42_crit_edge ], [ %25, %cleanup.thread ], [ 0, %if.end29.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kvec) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %st) #7
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_dir_readdir_dotl(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %curdirent = alloca %struct.p9_dirent, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %curdirent) #7
  %0 = call ptr @memset(ptr %curdirent, i32 255, i32 288)
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_readdir_dotl, ptr noundef nonnull @.str.1, ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %msize = getelementptr inbounds %struct.p9_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msize, align 4
  %sub = add i32 %6, -24
  %rdir.i = getelementptr inbounds %struct.p9_fid, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %rdir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdir.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %add.i = add i32 %6, -16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #10
  %9 = ptrtoint ptr %rdir.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i.i, ptr %rdir.i, align 8
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.while.cond.preheader_crit_edge

if.end8.i.i.i.while.cond.preheader_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end8.i.i.i.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %10 = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.while.cond.preheader_crit_edge ], [ %8, %entry.while.cond.preheader_crit_edge ]
  %tail = getelementptr inbounds %struct.p9_rdir, ptr %10, i32 0, i32 1
  %buf = getelementptr inbounds %struct.p9_rdir, ptr %10, i32 0, i32 2
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %d_name = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 3
  %d_type = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 2
  %d_off = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %if.then1, label %while.cond.if.end8_crit_edge

while.cond.if.end8_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then1:                                         ; preds = %while.cond
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %call2 = call i32 @p9_client_readdir(ptr noundef %2, ptr noundef %buf, i32 noundef %sub, i64 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %10, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2, ptr %tail, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %while.cond.if.end8_crit_edge
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %10, align 4
  %21 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp1267 = icmp sgt i32 %22, %20
  br i1 %cmp1267, label %if.end8.while.body13_crit_edge, label %if.end8.while.cond.backedge_crit_edge

if.end8.while.cond.backedge_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end8.while.body13_crit_edge:                   ; preds = %if.end8
  br label %while.body13

while.cond.backedge:                              ; preds = %if.end33.while.cond.backedge_crit_edge, %if.end8.while.cond.backedge_crit_edge
  br label %while.cond

while.body13:                                     ; preds = %if.end33.while.body13_crit_edge, %if.end8.while.body13_crit_edge
  %23 = phi i32 [ %39, %if.end33.while.body13_crit_edge ], [ %22, %if.end8.while.body13_crit_edge ]
  %24 = phi i32 [ %add, %if.end33.while.body13_crit_edge ], [ %20, %if.end8.while.body13_crit_edge ]
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %24
  %sub20 = sub i32 %23, %24
  %call21 = call i32 @p9dirent_read(ptr noundef %26, ptr noundef %add.ptr, i32 noundef %sub20, ptr noundef nonnull %curdirent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_dir_readdir_dotl, ptr noundef nonnull @.str.2, i32 noundef %call21) #7
  br label %cleanup

if.end24:                                         ; preds = %while.body13
  %call28 = call i32 @strlen(ptr noundef %d_name) #11
  %call29 = call i32 @v9fs_qid2ino(ptr noundef nonnull %curdirent) #7
  %conv = zext i32 %call29 to i64
  %27 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %d_type, align 8
  %conv30 = zext i8 %28 to i32
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos, align 8
  %call.i = call i32 %30(ptr noundef %ctx, ptr noundef %d_name, i32 noundef %call28, i64 noundef %32, i64 noundef %conv, i32 noundef %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end33, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %33 = ptrtoint ptr %d_off to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %d_off, align 8
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %pos, align 8
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %10, align 4
  %add = add i32 %37, %call21
  store i32 %add, ptr %10, align 4
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %cmp12 = icmp sgt i32 %39, %add
  br i1 %cmp12, label %if.end33.while.body13_crit_edge, label %if.end33.while.cond.backedge_crit_edge

if.end33.while.cond.backedge_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end33.while.body13_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %if.then23, %if.then1.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then23 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %curdirent) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_file_fsync_dotl(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9stat_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_qid2ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9stat_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_readdir(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9dirent_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__func__.v9fs_dir_release, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_dir.c", i32 215, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @v9fs_dir_operations, !4, !"v9fs_dir_operations", i1 false, i1 false}
!4 = !{!"../fs/9p/vfs_dir.c", i32 235, i32 30}
!5 = !{ptr @v9fs_dir_operations_dotl, !6, !"v9fs_dir_operations_dotl", i1 false, i1 false}
!6 = !{!"../fs/9p/vfs_dir.c", i32 243, i32 30}
!7 = !{ptr @__func__.v9fs_dir_readdir, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/9p/vfs_dir.c", i32 96, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/9p/vfs_dir.c", i32 127, i32 5}
!12 = !{ptr @__func__.v9fs_dir_readdir_dotl, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/9p/vfs_dir.c", i32 157, i32 2}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 747119, i64 747180}
!24 = !{i64 749851}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 750136}
!27 = !{i64 2152706543}
!28 = !{i64 2152706385}
!29 = !{i64 2152706713}
!30 = !{i64 2149975245}
