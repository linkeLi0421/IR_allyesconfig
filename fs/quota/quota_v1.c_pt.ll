; ModuleID = '/llk/IR_all_yes/fs/quota/quota_v1.c_pt.bc'
source_filename = "../fs/quota/quota_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.quota_format_type = type { i32, ptr, ptr, ptr }
%struct.quota_format_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.dqstats = type { [8 x i32], [8 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v2_disk_dqheader = type { i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v1_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.67, i32 }
%union.anon.67 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_author200 = internal constant [25 x i8] c"quota_v1.author=Jan Kara\00", section ".modinfo", align 1
@__UNIQUE_ID_description201 = internal constant [46 x i8] c"quota_v1.description=Old quota format support\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [32 x i8] c"quota_v1.file=fs/quota/quota_v1\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [21 x i8] c"quota_v1.license=GPL\00", section ".modinfo", align 1
@v1_quota_format = internal global { %struct.quota_format_type, [16 x i8] } { %struct.quota_format_type { i32 1, ptr @v1_format_ops, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_quota_v1__204_240_init_v1_quota_format6 = internal global ptr @init_v1_quota_format, section ".initcall6.init", align 4
@__exitcall_exit_v1_quota_format = internal global ptr @exit_v1_quota_format, section ".exitcall.exit", align 4
@v1_format_ops = internal constant { %struct.quota_format_ops, [32 x i8] } { %struct.quota_format_ops { ptr @v1_check_quota_file, ptr @v1_read_file_info, ptr @v1_write_file_info, ptr null, ptr @v1_read_dqblk, ptr @v1_commit_dqblk, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v1_check_quota_file.quota_magics = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 -641720559, i32 -641722073], [24 x i8] zeroinitializer }, align 32
@v1_check_quota_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\016VFS: %s: Refusing to turn on old quota format on given file. It probably contains newer quota format.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v1_check_quota_file\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/quota/quota_v1.c\00", [44 x i8] zeroinitializer }, align 32
@v1_check_quota_file._entry_ptr = internal global ptr @v1_check_quota_file._entry, section ".printk_index", align 4
@dq_data_lock = external dso_local global %struct.spinlock, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@dqstats = external dso_local global %struct.dqstats, align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.v1_commit_dqblk = private unnamed_addr constant [16 x i8] c"v1_commit_dqblk\00", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dquota write failed\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"v1_quota_format\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 224, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"v1_format_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 216, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"quota_magics\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 135, i32 20 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 153, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [23 x i8] c"../fs/quota/quota_v1.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 102, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_exit_v1_quota_format, ptr @__initcall__kmod_quota_v1__204_240_init_v1_quota_format6, ptr @exit_v1_quota_format, ptr @v1_check_quota_file._entry, ptr @v1_check_quota_file._entry_ptr, ptr @v1_quota_format, ptr @v1_format_ops, ptr @v1_check_quota_file.quota_magics, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v1_quota_format to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v1_format_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v1_check_quota_file.quota_magics to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v1_check_quota_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_v1_quota_format() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_quota_format(ptr noundef nonnull @v1_quota_format) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_quota_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_v1_quota_format() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_quota_format(ptr noundef nonnull @v1_quota_format) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v1_check_quota_file(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dqhead = alloca %struct.v2_disk_dqheader, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dqhead) #7
  %2 = ptrtoint ptr %dqhead to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dqhead, align 4, !annotation !35
  %3 = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !35
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !36
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %6 = tail call ptr @llvm.returnaddress(i32 0) #7
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %7) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call ptr @llvm.returnaddress(i32 0) #7
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %9) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !37
  %and.i.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !38

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #7, !srcloc !39
  %11 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !41
  %13 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %14, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %12, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %14, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  %15 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %17 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %18, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp ne i64 %16, 0
  %rem329 = and i64 %16, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem329)
  %tobool4.not = icmp eq i64 %rem329, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.end6, label %i_size_read.exit.cleanup_crit_edge

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %i_size_read.exit
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %19 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %quota_read, align 4
  %call7 = call i32 %22(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqhead, i32 noundef 8, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 8
  br i1 %cmp.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %23 = ptrtoint ptr %dqhead to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dqhead, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx11 = getelementptr [2 x i32], ptr @v1_check_quota_file.quota_magics, i32 0, i32 %type
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp12.not = icmp eq i32 %25, %27
  br i1 %cmp12.not, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %i_size_read.exit.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dqhead) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v1_read_file_info(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dqblk = alloca %struct.v1_disk_dqblk, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dqblk) #7
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  %0 = call ptr @memset(ptr %dqblk, i32 255, i32 32)
  tail call void @down_read(ptr noundef %dqio_sem) #7
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %1 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %quota_read, align 4
  %call1 = call i32 %4(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqblk, i32 noundef 32, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 32
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  %spec.store.select = select i1 %cmp2, i32 -5, i32 %call1
  br label %out

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 7
  %6 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 6
  %dqi_max_spc_limit = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 6
  %7 = ptrtoint ptr %dqi_max_spc_limit to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4398046510080, ptr %dqi_max_spc_limit, align 8
  %dqi_max_ino_limit = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 7
  %8 = ptrtoint ptr %dqi_max_ino_limit to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4294967295, ptr %dqi_max_ino_limit, align 8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %spec.select = select i1 %tobool.not, i32 604800, i32 %10
  %dqi_igrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 5
  %11 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %dqi_igrace, align 8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  %cond15 = select i1 %tobool10.not, i32 604800, i32 %13
  %dqi_bgrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 4
  %14 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond15, ptr %dqi_bgrace, align 4
  br label %out

out:                                              ; preds = %if.end4, %if.then
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ 0, %if.end4 ]
  call void @up_read(ptr noundef %dqio_sem) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dqblk) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v1_write_file_info(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dqblk = alloca %struct.v1_disk_dqblk, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dqblk) #7
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  %0 = call ptr @memset(ptr %dqblk, i32 255, i32 32)
  tail call void @down_write(ptr noundef %dqio_sem) #7
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %1 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %quota_read, align 4
  %call1 = call i32 %4(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqblk, i32 noundef 32, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 32
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  %spec.store.select = select i1 %cmp2, i32 -5, i32 %call1
  br label %out

if.end4:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 7
  %6 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #7
  %dqi_flags = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %7 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqi_flags, align 8
  %and = and i32 %8, -131073
  store i32 %and, ptr %dqi_flags, align 8
  %dqi_igrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 5
  %9 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_igrace, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  %dqi_bgrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 4
  %12 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dqi_bgrace, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %6, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #7
  %15 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %quota_write, align 4
  %call10 = call i32 %18(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqblk, i32 noundef 32, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 32
  br i1 %cmp11, label %if.end4.out_crit_edge, label %if.else

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp13 = icmp sgt i32 %call10, 0
  %spec.store.select18 = select i1 %cmp13, i32 -5, i32 %call10
  br label %out

out:                                              ; preds = %if.else, %if.end4.out_crit_edge, %if.then
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ %spec.store.select18, %if.else ], [ 0, %if.end4.out_crit_edge ]
  call void @up_write(ptr noundef %dqio_sem) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dqblk) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v1_read_dqblk(ptr noundef %dquot) #2 align 64 {
entry:
  %dqblk = alloca %struct.v1_disk_dqblk, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dqblk) #7
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %3, i32 0, i32 31, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 7
  %7 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 6
  %8 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 5
  %9 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 4
  %10 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 3
  %11 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 2
  %12 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 1
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %13 = call ptr @memset(ptr %dqblk, i32 0, i32 32)
  %s_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %quota_read, align 4
  %18 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %dq_id, align 8
  %19 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %20 = insertvalue [2 x i32] %19, i32 %1, 1
  %call5 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %20) #7
  %mul = shl i32 %call5, 5
  %conv = zext i32 %mul to i64
  %call6 = call i32 %17(ptr noundef %3, i32 noundef %1, ptr noundef nonnull %dqblk, i32 noundef 32, i64 noundef %conv) #7
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  %conv.i = zext i32 %22 to i64
  %dqb_ihardlimit1.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %23 = ptrtoint ptr %dqb_ihardlimit1.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.i, ptr %dqb_ihardlimit1.i, align 8
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  %conv2.i = zext i32 %25 to i64
  %dqb_isoftlimit3.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %26 = ptrtoint ptr %dqb_isoftlimit3.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv2.i, ptr %dqb_isoftlimit3.i, align 8
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %8, align 4
  %conv4.i = zext i32 %28 to i64
  %dqb_curinodes5.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %29 = ptrtoint ptr %dqb_curinodes5.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv4.i, ptr %dqb_curinodes5.i, align 8
  %30 = ptrtoint ptr %dqblk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dqblk, align 4
  %conv6.i = zext i32 %31 to i64
  %shl.i.i = shl nuw nsw i64 %conv6.i, 10
  %32 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shl.i.i, ptr %dq_dqb, align 8
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %12, align 4
  %conv8.i = zext i32 %34 to i64
  %shl.i31.i = shl nuw nsw i64 %conv8.i, 10
  %dqb_bsoftlimit10.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %dqb_bsoftlimit10.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shl.i31.i, ptr %dqb_bsoftlimit10.i, align 8
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %11, align 4
  %conv11.i = zext i32 %37 to i64
  %shl.i32.i = shl nuw nsw i64 %conv11.i, 10
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shl.i32.i, ptr %dqb_curspace.i, align 8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %6, align 4
  %conv13.i = zext i32 %40 to i64
  %dqb_itime14.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %41 = ptrtoint ptr %dqb_itime14.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv13.i, ptr %dqb_itime14.i, align 8
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %conv15.i = zext i32 %43 to i64
  %dqb_btime16.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %44 = ptrtoint ptr %dqb_btime16.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv15.i, ptr %dqb_btime16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %45 = ptrtoint ptr %dqb_bsoftlimit10.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dqb_bsoftlimit10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %cmp10 = icmp eq i64 %46, 0
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true12:                                  ; preds = %land.lhs.true
  %47 = ptrtoint ptr %dqb_ihardlimit1.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dqb_ihardlimit1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp14 = icmp eq i64 %48, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true12.if.end21_crit_edge

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %49 = ptrtoint ptr %dqb_isoftlimit3.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dqb_isoftlimit3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp18 = icmp eq i64 %50, 0
  br i1 %cmp18, label %if.then20, label %land.lhs.true16.if.end21_crit_edge

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %dq_flags) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true16.if.end21_crit_edge, %land.lhs.true12.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %51 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 2), i64 noundef 1, i32 noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dqblk) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v1_commit_dqblk(ptr nocapture noundef readonly %dquot) #2 align 64 {
entry:
  %dqblk = alloca %struct.v1_disk_dqblk, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dqblk) #7
  %2 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 3
  %5 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 4
  %6 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 5
  %7 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 6
  %8 = getelementptr inbounds %struct.v1_disk_dqblk, ptr %dqblk, i32 0, i32 7
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %9 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dqb_ihardlimit.i, align 8
  %conv.i = trunc i64 %10 to i32
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %4, align 4
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dqb_isoftlimit.i, align 8
  %conv2.i = trunc i64 %13 to i32
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv2.i, ptr %5, align 4
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %15 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dqb_curinodes.i, align 8
  %conv4.i = trunc i64 %16 to i32
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4.i, ptr %6, align 4
  %18 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dq_dqb, align 8
  %sub.i.i = add i64 %19, 1023
  %20 = lshr i64 %sub.i.i, 10
  %conv6.i = trunc i64 %20 to i32
  %21 = ptrtoint ptr %dqblk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6.i, ptr %dqblk, align 4
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_bsoftlimit.i, align 8
  %sub.i31.i = add i64 %23, 1023
  %24 = lshr i64 %sub.i31.i, 10
  %conv9.i = trunc i64 %24 to i32
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv9.i, ptr %2, align 4
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_curspace.i, align 8
  %sub.i33.i = add i64 %27, 1023
  %28 = lshr i64 %sub.i33.i, 10
  %conv12.i = trunc i64 %28 to i32
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv12.i, ptr %3, align 4
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %30 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_itime.i, align 8
  %conv13.i = trunc i64 %31 to i32
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv13.i, ptr %8, align 4
  %dqb_btime.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %33 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_btime.i, align 8
  %conv15.i = trunc i64 %34 to i32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv15.i, ptr %7, align 4
  %sext = shl i32 %1, 16
  %conv2 = ashr exact i32 %sext, 16
  %36 = zext i32 %sext to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sext, label %entry.if.end_crit_edge [
    i32 0, label %land.lhs.true
    i32 65536, label %land.lhs.true10
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %37 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack67 = load i32, ptr %dq_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack67)
  %cmp.i = icmp eq i32 %.unpack67, 0
  br i1 %cmp.i, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true10:                                  ; preds = %entry
  %38 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack66 = load i32, ptr %dq_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack66)
  %cmp.i68 = icmp eq i32 %.unpack66, 0
  br i1 %cmp.i68, label %land.lhs.true10.if.then_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.if.then_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true10.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %39 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dq_sb, align 4
  %dqi_bgrace = getelementptr %struct.super_block, ptr %40, i32 0, i32 31, i32 3, i32 %conv2, i32 4
  %41 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dqi_bgrace, align 4
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %7, align 4
  %dqi_igrace = getelementptr %struct.super_block, ptr %40, i32 0, i32 31, i32 3, i32 %conv2, i32 5
  %44 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dqi_igrace, align 8
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dq_sb24 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %47 = ptrtoint ptr %dq_sb24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dq_sb24, align 4
  %arrayidx27 = getelementptr %struct.super_block, ptr %48, i32 0, i32 31, i32 2, i32 %conv2
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx27, align 4
  %tobool.not = icmp eq ptr %50, null
  br i1 %tobool.not, label %if.then39.thread, label %if.end36

if.then39.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dq_sb24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dq_sb24, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %52, ptr noundef nonnull @__func__.v1_commit_dqblk, ptr noundef nonnull @.str.3) #7
  br label %62

if.end36:                                         ; preds = %if.end
  %s_op = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 6
  %53 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %quota_write, align 4
  %57 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack = load i32, ptr %dq_id, align 8
  %58 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %59 = insertvalue [2 x i32] %58, i32 %1, 1
  %call33 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %59) #7
  %mul = shl i32 %call33, 5
  %conv34 = zext i32 %mul to i64
  %call35 = call i32 %56(ptr noundef %48, i32 noundef %conv2, ptr noundef nonnull %dqblk, i32 noundef 32, i64 noundef %conv34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call35)
  %cmp37.not = icmp eq i32 %call35, 32
  br i1 %cmp37.not, label %if.end36.out_crit_edge, label %if.then39

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then39:                                        ; preds = %if.end36
  %60 = ptrtoint ptr %dq_sb24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dq_sb24, align 4
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %61, ptr noundef nonnull @__func__.v1_commit_dqblk, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp41 = icmp sgt i32 %call35, -1
  br i1 %cmp41, label %if.then39._crit_edge, label %if.then39.out_crit_edge

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then39._crit_edge:                             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %62

62:                                               ; preds = %if.then39._crit_edge, %if.then39.thread
  br label %out

out:                                              ; preds = %62, %if.then39.out_crit_edge, %if.end36.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end36.out_crit_edge ], [ -5, %62 ], [ %call35, %if.then39.out_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %63 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 3), i64 noundef 1, i32 noundef %63) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dqblk) #7
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__quota_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_quota_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_author200, !1, !"__UNIQUE_ID_author200", i1 false, i1 false}
!1 = !{!"../fs/quota/quota_v1.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description201, !3, !"__UNIQUE_ID_description201", i1 false, i1 false}
!3 = !{!"../fs/quota/quota_v1.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file202, !5, !"__UNIQUE_ID_file202", i1 false, i1 false}
!5 = !{!"../fs/quota/quota_v1.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license203, !5, !"__UNIQUE_ID_license203", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_quota_v1__204_240_init_v1_quota_format6, !8, !"__initcall__kmod_quota_v1__204_240_init_v1_quota_format6", i1 false, i1 false}
!8 = !{!"../fs/quota/quota_v1.c", i32 240, i32 1}
!9 = !{ptr @__exitcall_exit_v1_quota_format, !10, !"__exitcall_exit_v1_quota_format", i1 false, i1 false}
!10 = !{!"../fs/quota/quota_v1.c", i32 241, i32 1}
!11 = !{ptr @v1_quota_format, !12, !"v1_quota_format", i1 false, i1 false}
!12 = !{!"../fs/quota/quota_v1.c", i32 224, i32 33}
!13 = !{ptr @v1_format_ops, !14, !"v1_format_ops", i1 false, i1 false}
!14 = !{!"../fs/quota/quota_v1.c", i32 216, i32 38}
!15 = !{ptr @v1_check_quota_file.quota_magics, !16, !"quota_magics", i1 false, i1 false}
!16 = !{!"../fs/quota/quota_v1.c", i32 135, i32 20}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/quota/quota_v1.c", i32 153, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @v1_check_quota_file._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @v1_check_quota_file._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__func__.v1_commit_dqblk, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/quota/quota_v1.c", i32 102, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{i64 1063317, i64 1063378}
!37 = !{i64 1066049}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 1066334}
!40 = !{i64 2152499930}
!41 = !{i64 2152499772}
!42 = !{i64 2152500100}
!43 = !{i64 2150085914}
