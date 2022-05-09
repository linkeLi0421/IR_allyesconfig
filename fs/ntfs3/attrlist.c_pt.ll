; ModuleID = '/llk/IR_all_yes/fs/ntfs3/attrlist.c_pt.bc'
source_filename = "../fs/ntfs3/attrlist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.84, %struct.anon.86, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%union.anon.84 = type { %struct.ntfs_index }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.86 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.ATTR_LIST_ENTRY = type { i32, i16, i8, i8, i64, %struct.MFT_REF, i16, [3 x i16] }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.78 = type { %struct.wnd_bitmap, i32 }
%struct.anon.79 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.80 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.anon.81 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.82 = type { %struct.ntfs_index, ptr }
%struct.anon.83 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @al_destroy(ptr nocapture noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_list = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %0 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr_list, align 4
  tail call void @kvfree(ptr noundef %1) #8
  %2 = call ptr @memset(ptr %attr_list, i32 0, i32 12)
  %le = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %le, align 4
  tail call void @kfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %le, align 4
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %size, align 4
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dirty, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_load_attr_list(ptr noundef %ni, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_list = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %4 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %add.i = add i32 %7, 1023
  %and.i = and i32 %add.i, -1024
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3136) #11
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.then2.out_crit_edge, label %if.end6

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_off.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %11 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr.i, i32 %7)
  br label %if.end39

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool8.not = icmp eq i64 %13, 0
  br i1 %tobool8.not, label %if.else10, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else10:                                        ; preds = %if.else
  %run_off11 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 2
  %14 = ptrtoint ptr %run_off11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %run_off11, align 8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %data_size12 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 6
  %17 = ptrtoint ptr %data_size12 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data_size12, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %conv = trunc i64 %19 to i32
  %20 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %attr_list, align 4
  %count.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 0, i32 1
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %count.i, align 4
  %allocated.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 0, i32 2
  %22 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %allocated.i, align 4
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %23 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sbi, align 4
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %25 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rno, align 8
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %evcn, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %conv17 = trunc i64 %29 to i32
  %conv18 = zext i16 %16 to i32
  %add.ptr = getelementptr i8, ptr %attr, i32 %conv18
  %size19 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %30 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size19, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %sub = sub i32 %32, %conv18
  %call21 = tail call i32 @run_unpack_ex(ptr noundef %attr_list, ptr noundef %24, i32 noundef %26, i32 noundef 0, i32 noundef %conv17, i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.else10.out_crit_edge, label %if.end8.i106

if.else10.out_crit_edge:                          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.i106:                                     ; preds = %if.else10
  %add.i109 = add i32 %conv, 1023
  %and.i110 = and i32 %add.i109, -1024
  %call9.i105 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i110, i32 noundef 3136) #11
  %tobool27.not = icmp eq ptr %call9.i105, null
  br i1 %tobool27.not, label %if.end8.i106.out_crit_edge, label %if.end29

if.end8.i106.out_crit_edge:                       ; preds = %if.end8.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end8.i106
  %33 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sbi, align 4
  %call34 = tail call i32 @ntfs_read_run_nb(ptr noundef %34, ptr noundef %attr_list, i64 noundef 0, ptr noundef nonnull %call9.i105, i32 noundef %conv, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end29.if.end39_crit_edge, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39:                                         ; preds = %if.end29.if.end39_crit_edge, %if.end6
  %lsize.0 = phi i32 [ %7, %if.end6 ], [ %conv, %if.end29.if.end39_crit_edge ]
  %le.1 = phi ptr [ %call9.i, %if.end6 ], [ %call9.i105, %if.end29.if.end39_crit_edge ]
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %lsize.0, ptr %size, align 4
  %le43 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %le43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %le.1, ptr %le43, align 4
  br label %cleanup46

out:                                              ; preds = %if.end29.out_crit_edge, %if.end8.i106.out_crit_edge, %if.else10.out_crit_edge, %if.else.out_crit_edge, %if.then2.out_crit_edge
  %err.1 = phi i32 [ -12, %if.then2.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ %call34, %if.end29.out_crit_edge ], [ -12, %if.end8.i106.out_crit_edge ], [ %call21, %if.else10.out_crit_edge ]
  %le.2 = phi ptr [ null, %if.then2.out_crit_edge ], [ null, %if.else.out_crit_edge ], [ %call9.i105, %if.end29.out_crit_edge ], [ null, %if.end8.i106.out_crit_edge ], [ null, %if.else10.out_crit_edge ]
  %le45 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %le45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %le.2, ptr %le45, align 4
  %38 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %attr_list, align 4
  tail call void @kvfree(ptr noundef %39) #8
  %40 = call ptr @memset(ptr %attr_list, i32 0, i32 12)
  %41 = ptrtoint ptr %le45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %le45, align 4
  tail call void @kfree(ptr noundef %42) #8
  %43 = ptrtoint ptr %le45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %le45, align 4
  %44 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %size, align 4
  %dirty.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %dirty.i, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %out, %if.end39, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %if.end39 ], [ 0, %entry.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_run_nb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @al_enumerate(ptr nocapture noundef readonly %ni, ptr noundef %le) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %le, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %le1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %le1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %le1, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %4)
  %cmp = icmp ult i16 %4, 32
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %le, i32 %conv
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %le.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %1, %if.then ]
  %5 = ptrtoint ptr %le.addr.0 to i32
  %le7 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %le7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %le7, align 4
  %8 = ptrtoint ptr %7 to i32
  %sub = sub i32 %5, %8
  %add = add i32 %sub, 32
  %size9 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp10 = icmp ugt i32 %add, %10
  br i1 %cmp10, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %size14 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0, i32 0, i32 1
  %11 = ptrtoint ptr %size14 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size14, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv15 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %13)
  %cmp16 = icmp ult i16 %13, 32
  %add19 = add i32 %sub, %conv15
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %10)
  %cmp22 = icmp ugt i32 %add19, %10
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %lor.lhs.false24

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %name_off = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0, i32 0, i32 3
  %14 = ptrtoint ptr %name_off to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_off, align 1
  %conv26 = zext i8 %15 to i32
  %name_len = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0, i32 0, i32 2
  %16 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %name_len, align 2
  %conv27 = zext i8 %17 to i32
  %mul = shl nuw nsw i32 %conv27, 1
  %add28 = add nuw nsw i32 %mul, %conv26
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %conv15)
  %cmp29 = icmp ugt i32 %add28, %conv15
  %spec.select = select i1 %cmp29, ptr null, ptr %le.addr.0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false24, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %if.end13.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false24 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @al_find_le(ptr nocapture noundef readonly %ni, ptr noundef %le, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  %svcn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %svcn) #8
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.attr_svcn.exit_crit_edge, label %cond.true.i

entry.attr_svcn.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_svcn.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #8
  %extract.t = trunc i64 %5 to i32
  br label %attr_svcn.exit

attr_svcn.exit:                                   ; preds = %cond.true.i, %entry.attr_svcn.exit_crit_edge
  %cond.i.off0 = phi i32 [ %extract.t, %cond.true.i ], [ 0, %entry.attr_svcn.exit_crit_edge ]
  %6 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i.off0, ptr %svcn, align 4
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 8
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %name_off.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 3
  %12 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name_len, align 1
  %call2 = call ptr @al_find_ex(ptr noundef %ni, ptr noundef %le, i32 noundef %8, ptr noundef %add.ptr.i, i8 noundef zeroext %13, ptr noundef nonnull %svcn)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %svcn) #8
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @al_find_ex(ptr nocapture noundef readonly %ni, ptr noundef %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef readonly %vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %type)
  %le1.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %size9.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %conv6 = zext i8 %name_len to i32
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %tobool27.not = icmp eq ptr %vcn, null
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end34.while.cond.outer_crit_edge, %entry
  %le.addr.0.ph = phi ptr [ %le.addr.0.i, %if.end34.while.cond.outer_crit_edge ], [ %le, %entry ]
  %ret.0.ph = phi ptr [ %le.addr.0.i, %if.end34.while.cond.outer_crit_edge ], [ null, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %le.addr.0 = phi ptr [ %le.addr.0.ph, %while.cond.outer ], [ %le.addr.0.i, %while.cond.backedge ]
  %tobool.not.i = icmp eq ptr %le.addr.0, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %le1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %le1.i, align 4
  br label %if.end5.i

if.else.i:                                        ; preds = %while.cond
  %size.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0, i32 0, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp.i = icmp ult i16 %5, 32
  br i1 %cmp.i, label %if.else.i.cleanup41_crit_edge, label %if.end.i

if.else.i.cleanup41_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %le.addr.0, i32 %conv.i
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.then.i
  %le.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %2, %if.then.i ]
  %6 = ptrtoint ptr %le.addr.0.i to i32
  %7 = ptrtoint ptr %le1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %le1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub.i = sub i32 %6, %9
  %add.i = add i32 %sub.i, 32
  %10 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp10.i = icmp ugt i32 %add.i, %11
  br i1 %cmp10.i, label %if.end5.i.cleanup41_crit_edge, label %if.end13.i

if.end5.i.cleanup41_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end13.i:                                       ; preds = %if.end5.i
  %size14.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %size14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size14.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %conv15.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %14)
  %cmp16.i = icmp ult i16 %14, 32
  %add19.i = add i32 %sub.i, %conv15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %11)
  %cmp22.i = icmp ugt i32 %add19.i, %11
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %cmp22.i
  br i1 %or.cond.i, label %if.end13.i.cleanup41_crit_edge, label %lor.lhs.false24.i

if.end13.i.cleanup41_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

lor.lhs.false24.i:                                ; preds = %if.end13.i
  %name_off.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_off.i, align 1
  %conv26.i = zext i8 %16 to i32
  %name_len.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_len.i, align 2
  %conv27.i = zext i8 %18 to i32
  %mul.i = shl nuw nsw i32 %conv27.i, 1
  %add28.i = add nuw nsw i32 %mul.i, %conv26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %conv15.i)
  %cmp29.i = icmp ugt i32 %add28.i, %conv15.i
  %tobool.not = icmp eq ptr %le.addr.0.i, null
  %or.cond = select i1 %cmp29.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false24.i.cleanup41_crit_edge, label %while.body

lor.lhs.false24.i.cleanup41_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

while.body:                                       ; preds = %lor.lhs.false24.i
  %19 = ptrtoint ptr %le.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %le.addr.0.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %sub = sub i32 %21, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %type)
  %cmp2.not = icmp eq i32 %20, %type
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup41_crit_edge

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end4:                                          ; preds = %if.end
  %22 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name_len.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %name_len)
  %cmp7.not = icmp eq i8 %23, %name_len
  br i1 %cmp7.not, label %if.end10, label %if.end4.while.cond.backedge_crit_edge

if.end4.while.cond.backedge_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end10:                                         ; preds = %if.end4
  %vcn11 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %vcn11 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vcn11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool12.not = icmp eq i64 %25, 0
  br i1 %tobool12.not, label %if.then13, label %if.end26

if.then13:                                        ; preds = %if.end10
  %26 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name_off.i, align 1
  %conv.i64 = zext i8 %27 to i32
  %add.ptr.i65 = getelementptr i8, ptr %le.addr.0.i, i32 %conv.i64
  %28 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sbi, align 4
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %upcase, align 4
  %call17 = tail call i32 @ntfs_cmp_names(ptr noundef %add.ptr.i65, i32 noundef %conv6, ptr noundef %name, i32 noundef %conv6, ptr noundef %31, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then13.while.cond.backedge_crit_edge, label %if.end21

if.then13.while.cond.backedge_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then13.while.cond.backedge_crit_edge, %if.end4.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

if.end21:                                         ; preds = %if.then13
  %32 = tail call i64 @llvm.bswap.i64(i64 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp22.not = icmp ne i32 %call17, 0
  %brmerge = or i1 %cmp22.not, %tobool27.not
  br i1 %brmerge, label %cleanup41.split.loop.exit, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end26:                                         ; preds = %if.end10
  %33 = tail call i64 @llvm.bswap.i64(i64 %25)
  br i1 %tobool27.not, label %if.end26.cleanup41_crit_edge, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end26.cleanup41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end29:                                         ; preds = %if.end26.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %34 = phi i64 [ %32, %if.end21.if.end29_crit_edge ], [ %33, %if.end26.if.end29_crit_edge ]
  %35 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vcn, align 4
  %conv30 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv30)
  %cmp31 = icmp eq i64 %34, %conv30
  br i1 %cmp31, label %if.end29.cleanup41_crit_edge, label %if.end34

if.end29.cleanup41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end34:                                         ; preds = %if.end29
  %cmp36 = icmp ugt i64 %34, %conv30
  br i1 %cmp36, label %if.end34.cleanup41_crit_edge, label %if.end34.while.cond.outer_crit_edge

if.end34.while.cond.outer_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer

if.end34.cleanup41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

cleanup41.split.loop.exit:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %ret.0.mux.le = select i1 %cmp22.not, ptr %ret.0.ph, ptr %le.addr.0.i
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup41.split.loop.exit, %if.end34.cleanup41_crit_edge, %if.end29.cleanup41_crit_edge, %if.end26.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %lor.lhs.false24.i.cleanup41_crit_edge, %if.end13.i.cleanup41_crit_edge, %if.end5.i.cleanup41_crit_edge, %if.else.i.cleanup41_crit_edge
  %retval.2 = phi ptr [ %ret.0.mux.le, %cleanup41.split.loop.exit ], [ %ret.0.ph, %if.else.i.cleanup41_crit_edge ], [ %ret.0.ph, %if.end5.i.cleanup41_crit_edge ], [ %ret.0.ph, %if.end13.i.cleanup41_crit_edge ], [ %ret.0.ph, %lor.lhs.false24.i.cleanup41_crit_edge ], [ %ret.0.ph, %if.end.cleanup41_crit_edge ], [ %le.addr.0.i, %if.end26.cleanup41_crit_edge ], [ %le.addr.0.i, %if.end29.cleanup41_crit_edge ], [ %ret.0.ph, %if.end34.cleanup41_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @al_add_le(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %svcn, i16 noundef zeroext %id, ptr nocapture noundef readonly %ref, ptr nocapture noundef writeonly %new_le) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  %new_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_size) #8
  %attr_list = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %conv.i = zext i8 %name_len to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add1.i = add nuw nsw i32 %mul.i, 33
  %and.i = and i32 %add1.i, 1016
  %conv = trunc i32 %and.i to i16
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %add = add i32 %2, %and.i
  %conv2 = zext i32 %add to i64
  %3 = ptrtoint ptr %new_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv2, ptr %new_size, align 8
  %add.i = add i32 %2, 1023
  %and.i120 = and i32 %add.i, -1024
  %add.i121 = add i32 %add, 1023
  %and.i122 = and i32 %add.i121, -1024
  %4 = tail call i32 @llvm.bswap.i32(i32 %type) #8
  %le1.i.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %conv22.i = zext i32 %svcn to i64
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %entry
  %le.0.i = phi ptr [ null, %entry ], [ %le.addr.0.i.i, %while.cond.i.backedge ]
  %tobool.not.i.i123 = icmp eq ptr %le.0.i, null
  br i1 %tobool.not.i.i123, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %le1.i.i, align 4
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %while.cond.i
  %size.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %size.i.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %9)
  %cmp.i.i124 = icmp ult i16 %9, 32
  br i1 %cmp.i.i124, label %if.else.i.i.cond.true.i_crit_edge, label %if.end.i.i125

if.else.i.i.cond.true.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true.i

if.end.i.i125:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %le.0.i, i32 %conv.i.i
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i125, %if.then.i.i
  %le.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i125 ], [ %6, %if.then.i.i ]
  %10 = ptrtoint ptr %le.addr.0.i.i to i32
  %11 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %le1.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %sub.i.i = sub i32 %10, %13
  %add.i.i = add i32 %sub.i.i, 32
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %15)
  %cmp10.i.i = icmp ugt i32 %add.i.i, %15
  br i1 %cmp10.i.i, label %if.end5.i.i.while.end.i_crit_edge, label %if.end13.i.i

if.end5.i.i.while.end.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %size14.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %size14.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %size14.i.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv15.i.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %18)
  %cmp16.i.i = icmp ult i16 %18, 32
  %add19.i.i = add i32 %sub.i.i, %conv15.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i, i32 %15)
  %cmp22.i.i = icmp ugt i32 %add19.i.i, %15
  %or.cond.i.i = select i1 %cmp16.i.i, i1 true, i1 %cmp22.i.i
  br i1 %or.cond.i.i, label %if.end13.i.i.while.end.i_crit_edge, label %lor.lhs.false24.i.i

if.end13.i.i.while.end.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

lor.lhs.false24.i.i:                              ; preds = %if.end13.i.i
  %name_off.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name_off.i.i, align 1
  %conv26.i.i = zext i8 %20 to i32
  %name_len.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %name_len.i.i, align 2
  %conv27.i.i = zext i8 %22 to i32
  %mul.i.i = shl nuw nsw i32 %conv27.i.i, 1
  %add28.i.i = add nuw nsw i32 %mul.i.i, %conv26.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i.i, i32 %conv15.i.i)
  %cmp29.i.i = icmp ugt i32 %add28.i.i, %conv15.i.i
  %tobool.not.i = icmp eq ptr %le.addr.0.i.i, null
  %or.cond.i = select i1 %cmp29.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %lor.lhs.false24.i.i.while.end.i_crit_edge, label %while.body.i

lor.lhs.false24.i.i.while.end.i_crit_edge:        ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %lor.lhs.false24.i.i
  %23 = ptrtoint ptr %le.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %le.addr.0.i.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %sub.i = sub i32 %25, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i126 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i126, label %while.body.i.while.cond.i.backedge_crit_edge, label %if.end.i127

while.body.i.while.cond.i.backedge_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

if.end.i127:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %type)
  %cmp2.not.i = icmp eq i32 %24, %type
  br i1 %cmp2.not.i, label %if.end4.i128, label %if.end.i127.al_find_le_to_insert.exit_crit_edge

if.end.i127.al_find_le_to_insert.exit_crit_edge:  ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %al_find_le_to_insert.exit

if.end4.i128:                                     ; preds = %if.end.i127
  %vcn5.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.addr.0.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %vcn5.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vcn5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool6.not.i = icmp eq i64 %27, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i128.if.end20.i_crit_edge

if.end4.i128.if.end20.i_crit_edge:                ; preds = %if.end4.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then7.i:                                       ; preds = %if.end4.i128
  %add.ptr.i50.i = getelementptr i8, ptr %le.addr.0.i.i, i32 %conv26.i.i
  %28 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sbi.i, align 4
  %upcase.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %upcase.i, align 4
  %call11.i = tail call i32 @ntfs_cmp_names(ptr noundef %add.ptr.i50.i, i32 noundef %conv27.i.i, ptr noundef %name, i32 noundef %conv.i, ptr noundef %31, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then7.i.while.cond.i.backedge_crit_edge, label %if.end15.i

if.then7.i.while.cond.i.backedge_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

if.end15.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp16.not.i = icmp eq i32 %call11.i, 0
  br i1 %cmp16.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.end15.i.al_find_le_to_insert.exit_crit_edge

if.end15.i.al_find_le_to_insert.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %al_find_le_to_insert.exit

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end15.i.if.end20.i_crit_edge, %if.end4.i128.if.end20.i_crit_edge
  %32 = ptrtoint ptr %vcn5.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vcn5.i, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv22.i)
  %cmp23.not.i = icmp ult i64 %34, %conv22.i
  br i1 %cmp23.not.i, label %if.end20.i.while.cond.i.backedge_crit_edge, label %if.end20.i.al_find_le_to_insert.exit_crit_edge

if.end20.i.al_find_le_to_insert.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %al_find_le_to_insert.exit

if.end20.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end20.i.while.cond.i.backedge_crit_edge, %if.then7.i.while.cond.i.backedge_crit_edge, %while.body.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.lhs.false24.i.i.while.end.i_crit_edge, %if.end13.i.i.while.end.i_crit_edge, %if.end5.i.i.while.end.i_crit_edge
  br i1 %tobool.not.i.i123, label %while.end.i.al_find_le_to_insert.exit_crit_edge, label %while.end.i.cond.true.i_crit_edge

while.end.i.cond.true.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true.i

while.end.i.al_find_le_to_insert.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %al_find_le_to_insert.exit

cond.true.i:                                      ; preds = %while.end.i.cond.true.i_crit_edge, %if.else.i.i.cond.true.i_crit_edge
  %size.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0.i, i32 0, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size.i, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  %conv28.i = zext i16 %37 to i32
  %add.ptr.i = getelementptr i8, ptr %le.0.i, i32 %conv28.i
  br label %al_find_le_to_insert.exit

al_find_le_to_insert.exit:                        ; preds = %cond.true.i, %while.end.i.al_find_le_to_insert.exit_crit_edge, %if.end20.i.al_find_le_to_insert.exit_crit_edge, %if.end15.i.al_find_le_to_insert.exit_crit_edge, %if.end.i127.al_find_le_to_insert.exit_crit_edge
  %retval.2.i = phi ptr [ %12, %while.end.i.al_find_le_to_insert.exit_crit_edge ], [ %add.ptr.i, %cond.true.i ], [ %le.addr.0.i.i, %if.end20.i.al_find_le_to_insert.exit_crit_edge ], [ %le.addr.0.i.i, %if.end15.i.al_find_le_to_insert.exit_crit_edge ], [ %le.addr.0.i.i, %if.end.i127.al_find_le_to_insert.exit_crit_edge ]
  %.pre-phi = ptrtoint ptr %retval.2.i to i32
  %38 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %le1.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %sub = sub i32 %.pre-phi, %40
  %41 = ptrtoint ptr %new_size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %new_size, align 8
  %conv8 = zext i32 %and.i120 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv8)
  %cmp = icmp ugt i64 %42, %conv8
  br i1 %cmp, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %al_find_le_to_insert.exit
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i122, i32 noundef 3136) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup54_crit_edge, label %cleanup

if.end8.i.cleanup54_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

cleanup:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %le1.i.i, align 4
  %45 = call ptr @memcpy(ptr %call9.i, ptr %44, i32 %sub)
  %add14 = add i32 %sub, %and.i
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %add14
  %sub15 = sub i32 %2, %sub
  %46 = call ptr @memcpy(ptr %add.ptr, ptr %retval.2.i, i32 %sub15)
  %add.ptr16 = getelementptr i8, ptr %call9.i, i32 %sub
  %47 = load ptr, ptr %le1.i.i, align 4
  tail call void @kfree(ptr noundef %47) #8
  %48 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i, ptr %le1.i.i, align 4
  br label %if.end22

if.else:                                          ; preds = %al_find_le_to_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr20 = getelementptr i8, ptr %retval.2.i, i32 %and.i
  %sub21 = sub i32 %2, %sub
  %49 = call ptr @memmove(ptr %add.ptr20, ptr %retval.2.i, i32 %sub21)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %cleanup
  %le.1 = phi ptr [ %add.ptr16, %cleanup ], [ %retval.2.i, %if.else ]
  %50 = ptrtoint ptr %new_le to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %le.1, ptr %new_le, align 4
  %51 = ptrtoint ptr %new_size to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %new_size, align 8
  %conv23 = trunc i64 %52 to i32
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv23, ptr %size, align 4
  %54 = ptrtoint ptr %le.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %type, ptr %le.1, align 8
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size26 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 1
  %56 = ptrtoint ptr %size26 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %size26, align 4
  %name_len27 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 2
  %57 = ptrtoint ptr %name_len27 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %name_len, ptr %name_len27, align 2
  %name_off = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 3
  %58 = ptrtoint ptr %name_off to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 26, ptr %name_off, align 1
  %59 = tail call i64 @llvm.bswap.i64(i64 %conv22.i)
  %vcn = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 4
  %60 = ptrtoint ptr %vcn to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %vcn, align 8
  %ref29 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 5
  %61 = ptrtoint ptr %ref to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %ref, align 4
  %63 = ptrtoint ptr %ref29 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %ref29, align 8
  %id30 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 6
  %64 = ptrtoint ptr %id30 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %id, ptr %id30, align 8
  %name31 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 7
  %65 = call ptr @memcpy(ptr %name31, ptr %name, i32 %mul.i)
  %66 = ptrtoint ptr %new_size to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %new_size, align 8
  %call33 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef 536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef %attr_list, i64 noundef %67, ptr noundef nonnull %new_size, i1 noundef zeroext true, ptr noundef nonnull %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr37 = getelementptr i8, ptr %le.1, i32 %and.i
  %sub38 = sub i32 %2, %sub
  %68 = call ptr @memmove(ptr %le.1, ptr %add.ptr37, i32 %sub38)
  %69 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %2, ptr %size, align 4
  br label %cleanup54

if.end40:                                         ; preds = %if.end22
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %70 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %dirty, align 4
  %71 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %attr, align 4
  %tobool41.not = icmp eq ptr %72, null
  br i1 %tobool41.not, label %if.end40.cleanup54_crit_edge, label %land.lhs.true

if.end40.cleanup54_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

land.lhs.true:                                    ; preds = %if.end40
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool43.not = icmp eq i8 %74, 0
  br i1 %tobool43.not, label %land.lhs.true.cleanup54_crit_edge, label %if.then44

land.lhs.true.cleanup54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.then44:                                        ; preds = %land.lhs.true
  %75 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sbi.i, align 4
  %77 = ptrtoint ptr %le1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %le1.i.i, align 4
  %79 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size, align 4
  %call48 = call i32 @ntfs_sb_write_run(ptr noundef %76, ptr noundef %attr_list, i64 noundef 0, ptr noundef %78, i32 noundef %80, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then44.cleanup54_crit_edge

if.then44.cleanup54_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end51:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %dirty, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %if.end51, %if.then44.cleanup54_crit_edge, %land.lhs.true.cleanup54_crit_edge, %if.end40.cleanup54_crit_edge, %if.then35, %if.end8.i.cleanup54_crit_edge
  %retval.1 = phi i32 [ %call33, %if.then35 ], [ %call48, %if.then44.cleanup54_crit_edge ], [ 0, %if.end51 ], [ 0, %land.lhs.true.cleanup54_crit_edge ], [ 0, %if.end40.cleanup54_crit_edge ], [ -12, %if.end8.i.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sb_write_run(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @al_remove_le(ptr nocapture noundef %ni, ptr noundef %le) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %le, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %le1.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %le1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %le1.i, align 4
  %tobool2.not.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not.i = icmp eq i32 %3, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %al_is_valid_le.exit

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

al_is_valid_le.exit:                              ; preds = %lor.lhs.false3.i
  %4 = ptrtoint ptr %le to i32
  %5 = ptrtoint ptr %1 to i32
  %sub.i = sub i32 %4, %5
  %size8.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le, i32 0, i32 1
  %6 = ptrtoint ptr %size8.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size8.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv.i = zext i16 %8 to i32
  %add.i = add i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i.not = icmp ugt i32 %add.i, %3
  br i1 %cmp.i.not, label %al_is_valid_le.exit.cleanup_crit_edge, label %if.end

al_is_valid_le.exit.cleanup_crit_edge:            ; preds = %al_is_valid_le.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %al_is_valid_le.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %size8.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size8.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %le1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %le1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %le, i32 %conv
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %17 = add i32 %4, %conv
  %add.neg = sub i32 %14, %17
  %sub5 = add i32 %add.neg, %16
  %18 = call ptr @memmove(ptr %le, ptr %add.ptr, i32 %sub5)
  %19 = load i32, ptr %size.i, align 4
  %sub8 = sub i32 %19, %conv
  store i32 %sub8, ptr %size.i, align 4
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %al_is_valid_le.exit.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i22 = phi i1 [ false, %al_is_valid_le.exit.cleanup_crit_edge ], [ true, %if.end ], [ false, %lor.lhs.false3.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0.i22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @al_delete_le(ptr nocapture noundef %ni, i32 noundef %type, i32 noundef %vcn, ptr noundef %name, i32 noundef %name_len, ptr noundef readonly %ref) local_unnamed_addr #0 align 64 {
entry:
  %vcn.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vcn, ptr %vcn.addr, align 4
  %conv = trunc i32 %name_len to i8
  %call = call ptr @al_find_ex(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %conv, ptr noundef nonnull %vcn.addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  %le1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %le1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %le1, align 4
  %4 = ptrtoint ptr %3 to i32
  %sub = sub i32 %1, %4
  %size2 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp.not84 = icmp ult i32 %sub, %6
  br i1 %cmp.not84, label %if.end5.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.lr.ph:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %tobool17.not = icmp eq i32 %name_len, 0
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %tobool29.not = icmp eq ptr %ref, null
  br label %if.end5

if.end5:                                          ; preds = %if.then34.if.end5_crit_edge, %if.end5.lr.ph
  %off.086 = phi i32 [ %sub, %if.end5.lr.ph ], [ %add, %if.then34.if.end5_crit_edge ]
  %le.085 = phi ptr [ %call, %if.end5.lr.ph ], [ %add.ptr, %if.then34.if.end5_crit_edge ]
  %7 = ptrtoint ptr %le.085 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %le.085, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp7.not = icmp eq i32 %8, %type
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %name_len11 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085, i32 0, i32 2
  %9 = ptrtoint ptr %name_len11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %name_len11, align 2
  %conv12 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %name_len)
  %cmp13.not = icmp eq i32 %conv12, %name_len
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %land.lhs.true

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %name_off.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085, i32 0, i32 3
  %11 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %name_off.i, align 1
  %conv.i = zext i8 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %le.085, i32 %conv.i
  %13 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sbi, align 4
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %upcase, align 4
  %call19 = call i32 @ntfs_cmp_names(ptr noundef %add.ptr.i, i32 noundef %name_len, ptr noundef %name, i32 noundef %name_len, ptr noundef %16, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %vcn23 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085, i32 0, i32 4
  %17 = ptrtoint ptr %vcn23 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vcn23, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vcn.addr, align 4
  %conv24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv24)
  %cmp25.not = icmp eq i64 %19, %conv24
  br i1 %cmp25.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  br i1 %tobool29.not, label %if.end28.if.end38_crit_edge, label %land.lhs.true30

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true30:                                  ; preds = %if.end28
  %ref31 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %ref, ptr noundef dereferenceable(8) %ref31, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool33.not = icmp eq i32 %bcmp, 0
  br i1 %tobool33.not, label %land.lhs.true30.if.end38_crit_edge, label %if.then34

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true30
  %size35 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085, i32 0, i32 1
  %22 = ptrtoint ptr %size35 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size35, align 4
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv36 = zext i16 %24 to i32
  %add = add i32 %off.086, %conv36
  %25 = ptrtoint ptr %le1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %le1, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %add
  %27 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size2, align 4
  %cmp.not = icmp ult i32 %add, %28
  br i1 %cmp.not, label %if.then34.if.end5_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34.if.end5_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end38:                                         ; preds = %land.lhs.true30.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %off.086.lcssa88 = phi i32 [ %off.086, %land.lhs.true30.if.end38_crit_edge ], [ %sub, %if.end28.if.end38_crit_edge ]
  %le.085.lcssa87 = phi ptr [ %le.085, %land.lhs.true30.if.end38_crit_edge ], [ %call, %if.end28.if.end38_crit_edge ]
  %size39 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.085.lcssa87, i32 0, i32 1
  %29 = ptrtoint ptr %size39 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size39, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %conv40 = zext i16 %31 to i32
  %add.ptr41 = getelementptr i8, ptr %le.085.lcssa87, i32 %conv40
  %32 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size2, align 4
  %34 = add i32 %off.086.lcssa88, %conv40
  %sub45 = sub i32 %33, %34
  %35 = call ptr @memmove(ptr %le.085.lcssa87, ptr %add.ptr41, i32 %sub45)
  %36 = load i32, ptr %size2, align 4
  %sub48 = sub i32 %36, %conv40
  store i32 %sub48, ptr %size2, align 4
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then34.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end38 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end22.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.then34.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @al_update(ptr noundef %ni, i32 noundef %sync) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !9
  %attr_list = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dirty, align 4, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i32 %4 to i64
  %call = call i32 @attr_set_size(ptr noundef %ni, i32 noundef 536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef %attr_list, i64 noundef %conv, ptr noundef null, i1 noundef zeroext false, ptr noundef nonnull %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.ATTRIB, ptr %6, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_off.i, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11) #8
  %conv.i = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %le = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %le, align 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %14, i32 %16)
  br label %if.end17

if.else:                                          ; preds = %if.end5
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %18 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sbi, align 4
  %le11 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %le11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %le11, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %call13 = call i32 @ntfs_sb_write_run(ptr noundef %19, ptr noundef %attr_list, i64 noundef 0, ptr noundef %21, i32 noundef %23, i32 noundef %sync) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %attr, align 4
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %25, i32 0, i32 7, i32 0, i32 6
  %26 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_size, align 8
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %25, i32 0, i32 7, i32 0, i32 7
  %28 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %valid_size, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  %dirty19 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %29 = ptrtoint ptr %dirty19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %dirty19, align 4
  %30 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call13, %if.else.cleanup_crit_edge ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
