; ModuleID = '/llk/IR_all_yes/fs/bad_inode.c_pt.bc'
source_filename = "../fs/bad_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+make_bad_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_make_bad_inode\09\09\09\09"
module asm "\09.long\09__crc_make_bad_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22make_bad_inode\22\09\09\09\09\09"
module asm "__kstrtabns_make_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+is_bad_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_is_bad_inode\09\09\09\09"
module asm "\09.long\09__crc_is_bad_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22is_bad_inode\22\09\09\09\09\09"
module asm "__kstrtabns_is_bad_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iget_failed\22, \22a\22\09"
module asm "\09.weak\09__crc_iget_failed\09\09\09\09"
module asm "\09.long\09__crc_iget_failed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget_failed:\09\09\09\09\09"
module asm "\09.asciz \09\22iget_failed\22\09\09\09\09\09"
module asm "__kstrtabns_iget_failed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
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

@bad_inode_ops = internal constant %struct.inode_operations { ptr @bad_inode_lookup, ptr @bad_inode_get_link, ptr @bad_inode_permission, ptr @bad_inode_get_acl, ptr @bad_inode_readlink, ptr @bad_inode_create, ptr @bad_inode_link, ptr @bad_inode_unlink, ptr @bad_inode_symlink, ptr @bad_inode_mkdir, ptr @bad_inode_rmdir, ptr @bad_inode_mknod, ptr @bad_inode_rename2, ptr @bad_inode_setattr, ptr @bad_inode_getattr, ptr @bad_inode_listxattr, ptr @bad_inode_fiemap, ptr @bad_inode_update_time, ptr @bad_inode_atomic_open, ptr @bad_inode_tmpfile, ptr @bad_inode_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@bad_file_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bad_file_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_make_bad_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_bad_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_make_bad_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_bad_inode to i32), ptr @__kstrtab_make_bad_inode, ptr @__kstrtabns_make_bad_inode }, section "___ksymtab+make_bad_inode", align 4
@__kstrtab_is_bad_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_bad_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_is_bad_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_bad_inode to i32), ptr @__kstrtab_is_bad_inode, ptr @__kstrtabns_is_bad_inode }, section "___ksymtab+is_bad_inode", align 4
@__kstrtab_iget_failed = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget_failed = external dso_local constant [0 x i8], align 1
@__ksymtab_iget_failed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget_failed to i32), ptr @__kstrtab_iget_failed, ptr @__kstrtabns_iget_failed }, section "___ksymtab+iget_failed", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"bad_file_ops\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../fs/bad_inode.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 25, i32 37 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_iget_failed, ptr @__ksymtab_is_bad_inode, ptr @__ksymtab_make_bad_inode, ptr @bad_file_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @make_bad_inode(ptr noundef %inode) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %1, null
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %cmp.i.i = icmp eq ptr %1, %i_hash.i
  %or.cond = select i1 %tobool.not.i.i.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond, label %entry.remove_inode_hash.exit_crit_edge, label %if.then.i

entry.remove_inode_hash.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_inode_hash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__remove_inode_hash(ptr noundef %inode) #5
  br label %remove_inode_hash.exit

remove_inode_hash.exit:                           ; preds = %if.then.i, %entry.remove_inode_hash.exit_crit_edge
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -32768, ptr %inode, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #5
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  %4 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bad_inode_ops, ptr %i_op, align 8
  %i_opflags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %7 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_opflags, align 2
  %9 = and i16 %8, -9
  store i16 %9, ptr %i_opflags, align 2
  %10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bad_file_ops, ptr %10, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_bad_inode(ptr nocapture noundef readonly %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_op, align 8
  %cmp = icmp eq ptr %1, @bad_inode_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iget_failed(ptr noundef %inode) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %1, null
  %i_hash.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %cmp.i.i.i = icmp eq ptr %1, %i_hash.i.i
  %or.cond.i = select i1 %tobool.not.i.i.not.i.i, i1 true, i1 %cmp.i.i.i
  br i1 %or.cond.i, label %entry.make_bad_inode.exit_crit_edge, label %if.then.i.i

entry.make_bad_inode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %make_bad_inode.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__remove_inode_hash(ptr noundef %inode) #5
  br label %make_bad_inode.exit

make_bad_inode.exit:                              ; preds = %if.then.i.i, %entry.make_bad_inode.exit_crit_edge
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -32768, ptr %inode, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #5
  %3 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  %4 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %i_op.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %6 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bad_inode_ops, ptr %i_op.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %7 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_opflags.i, align 2
  %9 = and i16 %8, -9
  store i16 %9, ptr %i_opflags.i, align 2
  %10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bad_file_ops, ptr %10, align 8
  call void @unlock_new_inode(ptr noundef %inode) #5
  call void @iput(ptr noundef %inode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_lookup(ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_get_link(ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %done) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_permission(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %inode, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bad_inode_get_acl(ptr nocapture noundef readnone %inode, i32 noundef %type, i1 noundef zeroext %rcu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_readlink(ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %buffer, i32 noundef %buflen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_create(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_link(ptr nocapture noundef readnone %old_dentry, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_unlink(ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_symlink(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %symname) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_rmdir(ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_mknod(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_rename2(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %old_dir, ptr nocapture noundef readnone %old_dentry, ptr nocapture noundef readnone %new_dir, ptr nocapture noundef readnone %new_dentry, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_setattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %direntry, ptr nocapture noundef readnone %attrs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %path, ptr nocapture noundef readnone %stat, i32 noundef %request_mask, i32 noundef %query_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_listxattr(ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %buffer, i32 noundef %buffer_size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_fiemap(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %fieinfo, i64 noundef %start, i64 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_update_time(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %time, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_atomic_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %file, i32 noundef %open_flag, i16 noundef zeroext %create_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_inode_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %acl, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bad_file_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_make_bad_inode, !1, !"__ksymtab_make_bad_inode", i1 false, i1 false}
!1 = !{!"../fs/bad_inode.c", i32 218, i32 1}
!2 = !{ptr @__ksymtab_is_bad_inode, !3, !"__ksymtab_is_bad_inode", i1 false, i1 false}
!3 = !{!"../fs/bad_inode.c", i32 238, i32 1}
!4 = !{ptr @__ksymtab_iget_failed, !5, !"__ksymtab_iget_failed", i1 false, i1 false}
!5 = !{!"../fs/bad_inode.c", i32 252, i32 1}
!6 = !{ptr @bad_inode_ops, !7, !"bad_inode_ops", i1 false, i1 false}
!7 = !{!"../fs/bad_inode.c", i32 163, i32 38}
!8 = !{ptr @bad_file_ops, !9, !"bad_file_ops", i1 false, i1 false}
!9 = !{!"../fs/bad_inode.c", i32 25, i32 37}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
