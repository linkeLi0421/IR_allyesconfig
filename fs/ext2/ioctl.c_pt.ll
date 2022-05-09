; ModuleID = '/llk/IR_all_yes/fs/ext2/ioctl.c_pt.bc'
source_filename = "../fs/ext2/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.69 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext2/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1074030086, i64 1074034178, i64 2147771909, i64 2147776001]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../fs/ext2/ioctl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 65, i32 10 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr i8, ptr %1, i32 -268
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 253951
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %and) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %2 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %4 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %5, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %6 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %8 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %10 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i.not = icmp eq i32 %11, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.if.end_crit_edge, label %fileattr_has_fsx.exit.cleanup_crit_edge

fileattr_has_fsx.exit.cleanup_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

fileattr_has_fsx.exit.if.end_crit_edge:           ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %fileattr_has_fsx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %i_flags5 = getelementptr i8, ptr %1, i32 -268
  %14 = ptrtoint ptr %i_flags5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags5, align 4
  %and6 = and i32 %15, -229632
  %16 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fa, align 4
  %and7 = and i32 %17, 229631
  %or = or i32 %and7, %and6
  store i32 %or, ptr %i_flags5, align 4
  tail call void @ext2_set_inode_flags(ptr noundef %1) #4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #4
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #4
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %fileattr_has_fsx.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %fileattr_has_fsx.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %tmp22 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup105_crit_edge [
    i32 -2147191295, label %sw.bb
    i32 1074034178, label %sw.bb4
    i32 -2147195387, label %sw.bb24
    i32 1074030086, label %sw.bb51
  ]

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = inttoptr i32 %arg to ptr
  %i_generation = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_generation, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 65) #4
  %6 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !12
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %5, i32 -1226833921) #4, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %cleanup105

sw.bb4:                                           ; preds = %entry
  %call5 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %1) #4
  br i1 %call5, label %if.end, label %sw.bb4.cleanup105_crit_edge

sw.bb4.cleanup105_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end:                                           ; preds = %sw.bb4
  %call6 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup105_crit_edge

if.end.cleanup105_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end8:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 74) #4
  %10 = inttoptr i32 %arg to ptr
  %11 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i144 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i144 to ptr
  %cpu_domain.i.i145 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i145) #3, !srcloc !12
  %and.i146 = and i32 %13, -13
  %or.i147 = or i32 %and.i146, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i147) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %10, i32 -1226833921) #4, !srcloc !16
  %asmresult = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool19.not = icmp eq i32 %asmresult, 0
  br i1 %tobool19.not, label %if.end21, label %if.end8.setversion_out_crit_edge

if.end8.setversion_out_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %setversion_out

if.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult17 = extractvalue { i32, i32 } %14, 1
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp22) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp22, ptr noundef %1) #4
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp22, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp22) #4
  %i_generation23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %16 = ptrtoint ptr %i_generation23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %asmresult17, ptr %i_generation23, align 8
  call void @up_write(ptr noundef %i_rwsem.i) #4
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #4
  br label %setversion_out

setversion_out:                                   ; preds = %if.end21, %if.end8.setversion_out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end21 ], [ -14, %if.end8.setversion_out_crit_edge ]
  call void @mnt_drop_write_file(ptr noundef %filp) #4
  br label %cleanup105

sw.bb24:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %sw.bb24.cleanup105_crit_edge, label %land.lhs.true

sw.bb24.cleanup105_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

land.lhs.true:                                    ; preds = %sw.bb24
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp = icmp eq i16 %25, -32768
  br i1 %cmp, label %land.lhs.true29, label %land.lhs.true.cleanup105_crit_edge

land.lhs.true.cleanup105_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

land.lhs.true29:                                  ; preds = %land.lhs.true
  %i_block_alloc_info = getelementptr i8, ptr %1, i32 -240
  %26 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_block_alloc_info, align 8
  %tobool30.not = icmp eq ptr %27, null
  br i1 %tobool30.not, label %land.lhs.true29.cleanup105_crit_edge, label %if.then31

land.lhs.true29.cleanup105_crit_edge:             ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  %rsv_goal_size = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rsv_goal_size, align 4
  %30 = inttoptr i32 %arg to ptr
  %conv38 = and i32 %29, 65535
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 94) #4
  %31 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i148 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i148 to ptr
  %cpu_domain.i.i149 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i149) #3, !srcloc !12
  %and.i150 = and i32 %33, -13
  %or.i151 = or i32 %and.i150, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i151) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %34 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i32 %conv38, i32 -1226833921) #4, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %cleanup105

sw.bb51:                                          ; preds = %entry
  %i_sb52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb52, align 4
  %s_fs_info.i157 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i157 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i157, align 16
  %s_mount_opt54 = getelementptr inbounds %struct.ext2_sb_info, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %s_mount_opt54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_mount_opt54, align 4
  %and55 = and i32 %40, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %sw.bb51.cleanup105_crit_edge, label %lor.lhs.false

sw.bb51.cleanup105_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

lor.lhs.false:                                    ; preds = %sw.bb51
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %1, align 8
  %43 = and i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %43)
  %cmp60 = icmp eq i16 %43, -32768
  br i1 %cmp60, label %if.end63, label %lor.lhs.false.cleanup105_crit_edge

lor.lhs.false.cleanup105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end63:                                         ; preds = %lor.lhs.false
  %call64 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %1) #4
  br i1 %call64, label %if.end66, label %if.end63.cleanup105_crit_edge

if.end63.cleanup105_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end66:                                         ; preds = %if.end63
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 105) #4
  %44 = inttoptr i32 %arg to ptr
  %45 = tail call i32 @llvm.read_register.i32(metadata !2) #4
  %and.i.i.i152 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i152 to ptr
  %cpu_domain.i.i153 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i153) #3, !srcloc !12
  %and.i154 = and i32 %47, -13
  %or.i155 = or i32 %and.i154, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i155) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %44, i32 -1226833921) #4, !srcloc !18
  %asmresult76 = extractvalue { i32, i32 } %48, 0
  %asmresult77 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult76)
  %tobool80.not = icmp eq i32 %asmresult76, 0
  br i1 %tobool80.not, label %if.end82, label %if.end66.cleanup105_crit_edge

if.end66.cleanup105_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end82:                                         ; preds = %if.end66
  %call83 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.cleanup105_crit_edge

if.end82.cleanup105_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105

if.end86:                                         ; preds = %if.end82
  %conv87 = and i32 %asmresult77, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027, i32 %conv87)
  %cmp88 = icmp ugt i32 %conv87, 1027
  %truncate_mutex = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %truncate_mutex, i32 noundef 0) #4
  %i_block_alloc_info92 = getelementptr i8, ptr %1, i32 -240
  %49 = ptrtoint ptr %i_block_alloc_info92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_block_alloc_info92, align 8
  %tobool93.not = icmp eq ptr %50, null
  br i1 %tobool93.not, label %if.end95, label %if.end86.if.then98_crit_edge

if.end86.if.then98_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

if.end95:                                         ; preds = %if.end86
  tail call void @ext2_init_block_alloc_info(ptr noundef %1) #4
  %51 = ptrtoint ptr %i_block_alloc_info92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load ptr, ptr %i_block_alloc_info92, align 8
  %tobool97.not = icmp eq ptr %.pr, null
  br i1 %tobool97.not, label %if.end95.if.end103_crit_edge, label %if.end95.if.then98_crit_edge

if.end95.if.then98_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then98:                                        ; preds = %if.end95.if.then98_crit_edge, %if.end86.if.then98_crit_edge
  %52 = phi ptr [ %.pr, %if.end95.if.then98_crit_edge ], [ %50, %if.end86.if.then98_crit_edge ]
  %53 = and i32 %asmresult77, 65535
  %conv101 = select i1 %cmp88, i32 1027, i32 %53
  %rsv_goal_size102 = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %rsv_goal_size102 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv101, ptr %rsv_goal_size102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end95.if.end103_crit_edge
  %ret.1 = phi i32 [ 0, %if.then98 ], [ -12, %if.end95.if.end103_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %truncate_mutex) #4
  tail call void @mnt_drop_write_file(ptr noundef %filp) #4
  br label %cleanup105

cleanup105:                                       ; preds = %if.end103, %if.end82.cleanup105_crit_edge, %if.end66.cleanup105_crit_edge, %if.end63.cleanup105_crit_edge, %lor.lhs.false.cleanup105_crit_edge, %sw.bb51.cleanup105_crit_edge, %if.then31, %land.lhs.true29.cleanup105_crit_edge, %land.lhs.true.cleanup105_crit_edge, %sw.bb24.cleanup105_crit_edge, %setversion_out, %if.end.cleanup105_crit_edge, %sw.bb4.cleanup105_crit_edge, %sw.bb, %entry.cleanup105_crit_edge
  %retval.1 = phi i32 [ %ret.1, %if.end103 ], [ %34, %if.then31 ], [ %9, %sw.bb ], [ %ret.0, %setversion_out ], [ -1, %sw.bb4.cleanup105_crit_edge ], [ %call6, %if.end.cleanup105_crit_edge ], [ -25, %land.lhs.true29.cleanup105_crit_edge ], [ -25, %land.lhs.true.cleanup105_crit_edge ], [ -25, %sw.bb24.cleanup105_crit_edge ], [ -25, %lor.lhs.false.cleanup105_crit_edge ], [ -25, %sw.bb51.cleanup105_crit_edge ], [ -13, %if.end63.cleanup105_crit_edge ], [ -14, %if.end66.cleanup105_crit_edge ], [ %call83, %if.end82.cleanup105_crit_edge ], [ -25, %entry.cleanup105_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_init_block_alloc_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/ioctl.c", i32 65, i32 10}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 4690964}
!13 = !{i64 4691161}
!14 = !{i64 2152176394}
!15 = !{i64 2153839636, i64 2153839916, i64 2153840250, i64 2153840584}
!16 = !{i64 2153851937, i64 2153852217, i64 2153852551, i64 2153852885}
!17 = !{i64 2153862350, i64 2153862630, i64 2153862964, i64 2153863298}
!18 = !{i64 2153874846, i64 2153875126, i64 2153875460, i64 2153875794}
