; ModuleID = '/llk/IR_all_yes/fs/ntfs3/namei.c_pt.bc'
source_filename = "../fs/ntfs3/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.NTFS_DE = type { %union.anon.87, i16, i16, i16, i16 }
%union.anon.87 = type { %struct.MFT_REF }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.cpu_str = type { i8, i8, [10 x i16] }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.74 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@ntfs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ntfs_lookup, ptr null, ptr @ntfs_permission, ptr @ntfs_get_acl, ptr null, ptr @ntfs_create, ptr @ntfs_link, ptr @ntfs_unlink, ptr @ntfs_symlink, ptr @ntfs_mkdir, ptr @ntfs_rmdir, ptr @ntfs_mknod, ptr @ntfs_rename, ptr @ntfs3_setattr, ptr @ntfs_getattr, ptr @ntfs_listxattr, ptr @ntfs_fiemap, ptr null, ptr null, ptr null, ptr @ntfs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ntfs_special_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @ntfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs3_setattr, ptr @ntfs_getattr, ptr @ntfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013failed to undo rename\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [20 x i8] c"../fs/ntfs3/namei.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 312, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fill_name_de(ptr noundef %sbi, ptr noundef %buf, ptr nocapture noundef readonly %name, ptr noundef readonly %uni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %buf, i32 1
  %high = getelementptr %struct.NTFS_DE, ptr %buf, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %high to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %high, align 4
  %high1 = getelementptr inbounds %struct.MFT_REF, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %high1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %high1, align 4
  %tobool.not = icmp eq ptr %uni, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %uni to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uni, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not37 = icmp eq i8 %3, 0
  br i1 %tobool5.not37, label %if.then.while.end_crit_edge, label %while.body.preheader

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %if.then
  %name3 = getelementptr inbounds %struct.cpu_str, ptr %uni, i32 0, i32 2
  %name2 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr, i32 0, i32 4
  %conv = zext i8 %3 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %name_cpu.040 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %name3, %while.body.preheader ]
  %uname.039 = phi ptr [ %incdec.ptr6, %while.body.while.body_crit_edge ], [ %name2, %while.body.preheader ]
  %ulen.038 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %dec = add nsw i32 %ulen.038, -1
  %incdec.ptr = getelementptr i16, ptr %name_cpu.040, i32 1
  %4 = ptrtoint ptr %name_cpu.040 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %name_cpu.040, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %incdec.ptr6 = getelementptr i16, ptr %uname.039, i32 1
  %7 = ptrtoint ptr %uname.039 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %uname.039, align 2
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %8 = ptrtoint ptr %uni to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uni, align 2
  %name_len = getelementptr %struct.NTFS_DE, ptr %buf, i32 5
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %name_len, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %name8 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %11 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name8, align 8
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name, align 8
  %name_len10 = getelementptr %struct.NTFS_DE, ptr %buf, i32 5
  %call = tail call i32 @ntfs_nls_to_utf16(ptr noundef %sbi, ptr noundef %12, i32 noundef %14, ptr noundef %name_len10, i32 noundef 255, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %while.end
  %type = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %type, align 1
  %name_len.i = getelementptr %struct.NTFS_DE, ptr %buf, i32 5
  %16 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %name_len.i, align 8
  %conv.i = zext i8 %17 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 1
  %add.i = add nuw nsw i16 %mul.i, 66
  %18 = add nuw nsw i16 %mul.i, 89
  %add16 = and i16 %18, 1016
  %19 = tail call i16 @llvm.bswap.i16(i16 %add16)
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %size, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %add.i)
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %key_size to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %key_size, align 2
  %flags = getelementptr inbounds %struct.NTFS_DE, ptr %buf, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags, align 4
  %res = getelementptr inbounds %struct.NTFS_DE, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %res, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_nls_to_utf16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs3_get_parent(ptr nocapture noundef readonly %child) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #6
  %2 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %le, align 4
  br label %while.cond

while.cond:                                       ; preds = %resident_data_ex.exit.while.cond_crit_edge, %entry
  %attr.0 = phi ptr [ null, %entry ], [ %call2, %resident_data_ex.exit.while.cond_crit_edge ]
  %call2 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef %attr.0, ptr noundef nonnull %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.resident_data_ex.exit_crit_edge

while.body.resident_data_ex.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %resident_data_ex.exit

if.end.i:                                         ; preds = %while.body
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_off.i, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %10) #6
  %conv.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp.i = icmp ult i32 %7, %add.i
  br i1 %cmp.i, label %if.end.i.resident_data_ex.exit_crit_edge, label %if.end3.i

if.end.i.resident_data_ex.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %resident_data_ex.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 8
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %14)
  %cmp4.i = icmp ult i32 %14, 68
  %add.ptr.i15 = getelementptr i8, ptr %call2, i32 %conv.i
  %spec.select = select i1 %cmp4.i, ptr null, ptr %add.ptr.i15
  br label %resident_data_ex.exit

resident_data_ex.exit:                            ; preds = %if.end3.i, %if.end.i.resident_data_ex.exit_crit_edge, %while.body.resident_data_ex.exit_crit_edge
  %retval.0.i = phi ptr [ null, %while.body.resident_data_ex.exit_crit_edge ], [ null, %if.end.i.resident_data_ex.exit_crit_edge ], [ %spec.select, %if.end3.i ]
  %tobool4.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool4.not, label %resident_data_ex.exit.while.cond_crit_edge, label %if.end

resident_data_ex.exit.while.cond_crit_edge:       ; preds = %resident_data_ex.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end:                                           ; preds = %resident_data_ex.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %call5 = call ptr @ntfs_iget5(ptr noundef %16, ptr noundef nonnull %retval.0.i, ptr noundef null) #6
  %call6 = call ptr @d_obtain_alias(ptr noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.end ], [ inttoptr (i32 -2 to ptr), %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %0 = load ptr, ptr @names_cachep, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %entry
  %sbi = getelementptr i8, ptr %dir, i32 -348
  %1 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbi, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %5 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name, align 8
  %call4 = tail call i32 @ntfs_nls_to_utf16(ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef nonnull %call1, i32 noundef 255, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %7 = inttoptr i32 %call4 to ptr
  br label %if.end

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ni_lock.i = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #6
  %call8 = tail call ptr @dir_search_u(ptr noundef %dir, ptr noundef nonnull %call1, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #6
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  %inode.0 = phi ptr [ %7, %if.then5 ], [ %call8, %if.else7 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %8 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %call1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %inode.1 = phi ptr [ %inode.0, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.if.end9_crit_edge ]
  %call10 = tail call ptr @d_splice_alias(ptr noundef %inode.1, ptr noundef %dentry) #6
  ret ptr %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_permission(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, -32768
  %call = tail call ptr @ntfs_create_inode(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %1, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_link(ptr nocapture noundef readonly %ode, ptr noundef %dir, ptr noundef %de) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %ode, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3999, i32 %7)
  %cmp3 = icmp ugt i32 %7, 3999
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ni_lock.i = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #6
  %cmp8.not = icmp eq ptr %1, %dir
  br i1 %cmp8.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %ni_lock.i46 = getelementptr i8, ptr %1, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i46, i32 noundef 4) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  tail call void @inc_nlink(ptr noundef %1) #6
  tail call void @ihold(ptr noundef %1) #6
  %call12 = tail call i32 @ntfs_link_inode(ptr noundef %1, ptr noundef %de) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #6
  %8 = call ptr @memcpy(ptr %i_ctime14, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime14, i32 16)
  %10 = call ptr @memmove(ptr %i_ctime, ptr %i_ctime14, i32 16)
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #6
  call void @d_instantiate(ptr noundef %de, ptr noundef %1) #6
  br label %if.end15

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drop_nlink(ptr noundef %1) #6
  tail call void @iput(ptr noundef %1) #6
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  br i1 %cmp8.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %ni_lock.i47 = getelementptr i8, ptr %1, i32 -264
  call void @mutex_unlock(ptr noundef %ni_lock.i47) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef %ni_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -31, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ni_lock.i = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #6
  %call1 = tail call i32 @ntfs_unlink_inode(ptr noundef %dir, ptr noundef %dentry) #6
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_symlink(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %symname) #9
  %call1 = tail call ptr @ntfs_create_inode(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext -24065, i32 noundef 0, ptr noundef %symname, i32 noundef %call, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call1 to i32
  %spec.select = select i1 %cmp.i, i32 %0, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_mkdir(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call ptr @ntfs_create_inode(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %1, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ni_lock.i = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #6
  %call1 = tail call i32 @ntfs_unlink_inode(ptr noundef %dir, ptr noundef %dentry) #6
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_mknod(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ntfs_create_inode(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %mode, i32 noundef %rdev, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %0, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr nocapture noundef readonly %dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %is_bad = alloca i8, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -360
  %add.ptr.i148 = getelementptr i8, ptr %new_dir, i32 -360
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i149 = getelementptr i8, ptr %5, i32 -360
  %d_inode.i150 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i150 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i150, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_bad) #6
  %8 = ptrtoint ptr %is_bad to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %is_bad, align 1, !annotation !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %d_name5 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %11 = ptrtoint ptr %d_name5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp eq i32 %10, %12
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmp15158 = icmp eq ptr %dir, %new_dir
  br label %if.end17

land.end:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %name9 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name9, align 8
  %bcmp = tail call i32 @bcmp(ptr %14, ptr %16, i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  %cmp15 = icmp eq ptr %dir, %new_dir
  %or.cond = and i1 %cmp15, %tobool13.not
  br i1 %or.cond, label %land.end.cleanup_crit_edge, label %land.end.if.end17_crit_edge

land.end.if.end17_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %land.end.if.end17_crit_edge, %land.end.thread
  %cmp15160 = phi i1 [ %cmp15158, %land.end.thread ], [ %cmp15, %land.end.if.end17_crit_edge ]
  %17 = phi i1 [ false, %land.end.thread ], [ %tobool13.not, %land.end.if.end17_crit_edge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp.i = icmp ult i32 %19, 16
  br i1 %cmp.i, label %if.end17.cleanup_crit_edge, label %lor.lhs.false.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end17
  %objid_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 18
  %20 = ptrtoint ptr %objid_no.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %objid_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp1.i = icmp eq i32 %21, %19
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %quota_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %quota_no.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quota_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp3.i = icmp eq i32 %23, %19
  br i1 %cmp3.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %reparse_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 20
  %24 = ptrtoint ptr %reparse_no.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reparse_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp5.i = icmp eq i32 %25, %19
  br i1 %cmp5.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %ntfs_is_meta_file.exit

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ntfs_is_meta_file.exit:                           ; preds = %lor.lhs.false4.i
  %usn_jrnl_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 21
  %26 = ptrtoint ptr %usn_jrnl_no.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usn_jrnl_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp6.i = icmp eq i32 %27, %19
  br i1 %cmp6.i, label %ntfs_is_meta_file.exit.cleanup_crit_edge, label %if.end20

ntfs_is_meta_file.exit.cleanup_crit_edge:         ; preds = %ntfs_is_meta_file.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %ntfs_is_meta_file.exit
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  %tobool.not.i = icmp eq ptr %new_dentry, null
  br i1 %tobool.not.i, label %if.then22.dget.exit_crit_edge, label %if.then.i

if.then22.dget.exit_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dget.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #6
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then22.dget.exit_crit_edge
  %ni_lock.i = getelementptr i8, ptr %new_dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #6
  %call24 = tail call i32 @ntfs_unlink_inode(ptr noundef %new_dir, ptr noundef %new_dentry) #6
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #6
  tail call void @dput(ptr noundef %new_dentry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %dget.exit.if.end28_crit_edge, label %dget.exit.cleanup_crit_edge

dget.exit.cleanup_crit_edge:                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dget.exit.if.end28_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %dget.exit.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %28 = load ptr, ptr @names_cachep, align 4
  %call29 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3264) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %high.i = getelementptr %struct.NTFS_DE, ptr %call29, i32 1, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %high.i, align 4
  %high1.i = getelementptr inbounds %struct.MFT_REF, ptr %call29, i32 0, i32 1
  %30 = ptrtoint ptr %high1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %high1.i, align 4
  %name8.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name8.i, align 8
  %33 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_name, align 8
  %name_len10.i = getelementptr %struct.NTFS_DE, ptr %call29, i32 5
  %call.i = tail call i32 @ntfs_nls_to_utf16(ptr noundef %3, ptr noundef %32, i32 noundef %34, ptr noundef %name_len10.i, i32 noundef 255, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i153 = icmp slt i32 %call.i, 0
  br i1 %cmp.i153, label %if.end32.out_crit_edge, label %if.end37

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end37:                                         ; preds = %if.end32
  %add.ptr.i152 = getelementptr %struct.NTFS_DE, ptr %call29, i32 1
  %type.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr.i152, i32 0, i32 3
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %type.i, align 1
  %36 = ptrtoint ptr %name_len10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %name_len10.i, align 8
  %conv.i.i = zext i8 %37 to i16
  %mul.i.i = shl nuw nsw i16 %conv.i.i, 1
  %add.i.i = add nuw nsw i16 %mul.i.i, 66
  %38 = add nuw nsw i16 %mul.i.i, 89
  %add16.i = and i16 %38, 1016
  %39 = tail call i16 @llvm.bswap.i16(i16 %add16.i) #6
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %call29, i32 0, i32 1
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %size.i, align 8
  %41 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #6
  %key_size.i = getelementptr inbounds %struct.NTFS_DE, ptr %call29, i32 0, i32 2
  %42 = ptrtoint ptr %key_size.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %key_size.i, align 2
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %call29, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i, align 4
  %res.i = getelementptr inbounds %struct.NTFS_DE, ptr %call29, i32 0, i32 4
  %44 = ptrtoint ptr %res.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %res.i, align 2
  br i1 %17, label %if.end37.if.end45_crit_edge, label %if.else

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else:                                          ; preds = %if.end37
  %add.ptr = getelementptr i8, ptr %call29, i32 2048
  %call41 = tail call i32 @fill_name_de(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %d_name5, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.else.out_crit_edge, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %new_de.0 = phi ptr [ %add.ptr, %if.else.if.end45_crit_edge ], [ %call29, %if.end37.if.end45_crit_edge ]
  %ni_lock.i154 = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i154, i32 noundef 5) #6
  %ni_lock.i155 = getelementptr i8, ptr %5, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i155, i32 noundef 4) #6
  %45 = ptrtoint ptr %is_bad to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %is_bad, align 1
  %call46 = call i32 @ni_rename(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i148, ptr noundef %add.ptr.i149, ptr noundef nonnull %call29, ptr noundef %new_de.0, ptr noundef nonnull %is_bad) #6
  %46 = ptrtoint ptr %is_bad to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_bad, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool47.not = icmp eq i8 %47, 0
  br i1 %tobool47.not, label %if.else50, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @make_bad_inode(ptr noundef %5) #6
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str) #6
  %call49 = call i32 @ntfs_set_state(ptr noundef %3, i32 noundef 2) #6
  br label %if.end80

if.else50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool51.not = icmp eq i32 %call46, 0
  br i1 %tobool51.not, label %if.then52, label %if.else50.if.end80_crit_edge

if.else50.if.end80_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then52:                                        ; preds = %if.else50
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %i_ctime53 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #6
  %48 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %49 = call ptr @memcpy(ptr %i_ctime53, ptr %i_mtime, i32 16)
  %50 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #6
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #6
  br i1 %cmp15160, label %if.then52.if.end59_crit_edge, label %if.then55

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %i_mtime56 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_ctime57 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %51 = call ptr @memcpy(ptr %i_ctime57, ptr %i_ctime53, i32 16)
  %52 = call ptr @memmove(ptr %i_mtime56, ptr %i_ctime53, i32 16)
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then52.if.end59_crit_edge
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_flags, align 4
  %and61 = and i32 %56, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false, label %if.end59.if.then65_crit_edge

if.end59.if.then65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end59
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %57 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_flags, align 4
  %and63 = and i32 %58, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %if.end59.if.then65_crit_edge
  %call66 = call i32 @ntfs_sync_inode(ptr noundef %dir) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %lor.lhs.false.if.end67_crit_edge
  %i_sb68 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb68, align 4
  %s_flags69 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags69, align 4
  %and70 = and i32 %62, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.end67.if.then76_crit_edge

if.end67.if.then76_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

lor.lhs.false72:                                  ; preds = %if.end67
  %i_flags73 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %63 = ptrtoint ptr %i_flags73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_flags73, align 4
  %and74 = and i32 %64, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %lor.lhs.false72.if.end80_crit_edge, label %lor.lhs.false72.if.then76_crit_edge

lor.lhs.false72.if.then76_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

lor.lhs.false72.if.end80_crit_edge:               ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then76:                                        ; preds = %lor.lhs.false72.if.then76_crit_edge, %if.end67.if.then76_crit_edge
  %call77 = call i32 @ntfs_sync_inode(ptr noundef %5) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %lor.lhs.false72.if.end80_crit_edge, %if.else50.if.end80_crit_edge, %if.then48
  call void @mutex_unlock(ptr noundef %ni_lock.i155) #6
  call void @mutex_unlock(ptr noundef %ni_lock.i154) #6
  br label %out

out:                                              ; preds = %if.end80, %if.else.out_crit_edge, %if.end32.out_crit_edge
  %err.0 = phi i32 [ %call46, %if.end80 ], [ %call41, %if.else.out_crit_edge ], [ %call.i, %if.end32.out_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %65 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %65, ptr noundef nonnull %call29) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end28.cleanup_crit_edge, %dget.exit.cleanup_crit_edge, %ntfs_is_meta_file.exit.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.end.cleanup_crit_edge ], [ -22, %ntfs_is_meta_file.exit.cleanup_crit_edge ], [ %call24, %dget.exit.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_bad) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs3_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dir_search_u(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_create_inode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_link_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_unlink_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sync_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ntfs_dir_inode_operations, !1, !"ntfs_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/namei.c", i32 361, i32 31}
!2 = !{ptr @ntfs_special_inode_operations, !3, !"ntfs_special_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/namei.c", i32 380, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/namei.c", i32 312, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
