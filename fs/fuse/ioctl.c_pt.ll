; ModuleID = '/llk/IR_all_yes/fs/fuse/ioctl.c_pt.bc'
source_filename = "../fs/fuse/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fuse_do_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_fuse_do_ioctl\09\09\09\09"
module asm "\09.long\09__crc_fuse_do_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fuse_do_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22fuse_do_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_fuse_do_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fuse_ioctl_in = type { i64, i32, i32, i64, i32, i32 }
%struct.fuse_ioctl_out = type { i32, i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { ptr }
%union.anon.65 = type { i64 }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.fuse_file = type { ptr, ptr, i64, i64, i64, %struct.refcount_struct, i32, %struct.list_head, %struct.anon.80, %struct.rb_node, %struct.wait_queue_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.80 = type { %struct.mutex, i64, i64, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.kgid_t = type { i32 }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_page_desc = type { i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.fuse_ioctl_iovec = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.75 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.81, i32, %struct.mutex, %struct.spinlock }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.fsxattr = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/fuse/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_fuse_do_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_fuse_do_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_fuse_do_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fuse_do_ioctl to i32), ptr @__kstrtab_fuse_do_ioctl, ptr @__kstrtabns_fuse_do_ioctl }, section "___ksymtab_gpl+fuse_do_ioctl", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private constant [19 x i8] c"../fs/fuse/ioctl.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 248, i32 39 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fuse_do_ioctl, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef %flags) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_ioctl_in, align 8
  %outarg = alloca %struct.fuse_ioctl_out, align 4
  %ii = alloca %struct.iov_iter, align 8
  %ap = alloca %struct.fuse_args_pages, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg) #5
  %4 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg, i32 0, i32 4
  %8 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg, i32 0, i32 5
  %fh2 = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %fh2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fh2, align 8
  %11 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %inarg, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cmd, ptr %5, align 4
  %conv = zext i32 %arg to i64
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %6, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %7, align 8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg) #5
  %16 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg, i32 0, i32 3
  %19 = call ptr @memset(ptr %outarg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ii) #5
  %20 = call ptr @memset(ptr %ii, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ap) #5
  %21 = call ptr @memset(ptr %ap, i32 0, i32 80)
  %or = or i32 %flags, 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %4, align 8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %max_pages9 = getelementptr inbounds %struct.fuse_conn, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %max_pages9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_pages9, align 4
  %descs = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 2
  %mul.i = mul i32 %26, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #8
  %add.ptr.i = getelementptr ptr, ptr %call9.i.i.i, i32 %26
  %27 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %descs, align 4
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 1
  %28 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i.i, ptr %pages, align 8
  %call10 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #5
  %29 = inttoptr i32 %call10 to ptr
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %descs, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %max_pages15 = getelementptr inbounds %struct.fuse_conn, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %max_pages15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_pages15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.not.i = icmp eq i32 %35, 0
  br i1 %cmp1.not.i, label %if.end.fuse_page_descs_length_init.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.fuse_page_descs_length_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_page_descs_length_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fuse_page_desc, ptr %31, i32 %i.02.i
  %offset.i = getelementptr %struct.fuse_page_desc, ptr %31, i32 %i.02.i, i32 1
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 4096, %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %for.body.i.fuse_page_descs_length_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.fuse_page_descs_length_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_page_descs_length_init.exit

fuse_page_descs_length_init.exit:                 ; preds = %for.body.i.fuse_page_descs_length_init.exit_crit_edge, %if.end.fuse_page_descs_length_init.exit_crit_edge
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %fuse_page_descs_length_init.exit.if.end31_crit_edge

fuse_page_descs_length_init.exit.if.end31_crit_edge: ; preds = %fuse_page_descs_length_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then17:                                        ; preds = %fuse_page_descs_length_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %39 = inttoptr i32 %arg to ptr
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %29, align 4
  %shr = lshr i32 %cmd, 16
  %and18 = and i32 %shr, 16383
  %iov_len = getelementptr inbounds %struct.iovec, ptr %29, i32 0, i32 1
  %41 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and18, ptr %iov_len, align 4
  %42 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool22.not = icmp eq i32 %42, 0
  %spec.select = select i1 %tobool22.not, ptr null, ptr %29
  %not.tobool22.not = xor i1 %tobool22.not, true
  %spec.select361 = zext i1 %not.tobool22.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool28.not = icmp sgt i32 %cmd, -1
  %out_iov.0 = select i1 %tobool28.not, ptr null, ptr %29
  %not.tobool28.not = xor i1 %tobool28.not, true
  %out_iovs.0 = zext i1 %not.tobool28.not to i32
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %fuse_page_descs_length_init.exit.if.end31_crit_edge
  %in_iov.1 = phi ptr [ null, %fuse_page_descs_length_init.exit.if.end31_crit_edge ], [ %spec.select, %if.then17 ]
  %out_iov.1 = phi ptr [ null, %fuse_page_descs_length_init.exit.if.end31_crit_edge ], [ %out_iov.0, %if.then17 ]
  %in_iovs.1 = phi i32 [ 0, %fuse_page_descs_length_init.exit.if.end31_crit_edge ], [ %spec.select361, %if.then17 ]
  %out_iovs.1 = phi i32 [ 0, %fuse_page_descs_length_init.exit.if.end31_crit_edge ], [ %out_iovs.0, %if.then17 ]
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 3
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 1
  %nodeid = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 4
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 2
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 5
  %value = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 5, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 5, i32 1
  %in_pages = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %ii, i32 0, i32 4
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 3
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 6
  %value131 = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 6, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds %struct.fuse_args, ptr %ap, i32 0, i32 6, i32 1
  br label %retry

retry:                                            ; preds = %retry.backedge, %if.end31
  %in_iov.2 = phi ptr [ %in_iov.1, %if.end31 ], [ %29, %retry.backedge ]
  %out_iov.2 = phi ptr [ %out_iov.1, %if.end31 ], [ %add.ptr, %retry.backedge ]
  %in_iovs.2 = phi i32 [ %in_iovs.1, %if.end31 ], [ %97, %retry.backedge ]
  %out_iovs.2 = phi i32 [ %out_iovs.1, %if.end31 ], [ %99, %retry.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_iovs.2)
  %cmp4.not.i = icmp eq i32 %in_iovs.2, 0
  br i1 %cmp4.not.i, label %retry.iov_length.exit_crit_edge, label %retry.for.body.i366_crit_edge

retry.for.body.i366_crit_edge:                    ; preds = %retry
  br label %for.body.i366

retry.iov_length.exit_crit_edge:                  ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  br label %iov_length.exit

for.body.i366:                                    ; preds = %for.body.i366.for.body.i366_crit_edge, %retry.for.body.i366_crit_edge
  %ret.06.i = phi i32 [ %add.i, %for.body.i366.for.body.i366_crit_edge ], [ 0, %retry.for.body.i366_crit_edge ]
  %seg.05.i = phi i32 [ %inc.i364, %for.body.i366.for.body.i366_crit_edge ], [ 0, %retry.for.body.i366_crit_edge ]
  %iov_len.i = getelementptr %struct.iovec, ptr %in_iov.2, i32 %seg.05.i, i32 1
  %43 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %44, %ret.06.i
  %inc.i364 = add nuw i32 %seg.05.i, 1
  %exitcond.not.i365 = icmp eq i32 %inc.i364, %in_iovs.2
  br i1 %exitcond.not.i365, label %for.body.i366.iov_length.exit_crit_edge, label %for.body.i366.for.body.i366_crit_edge

for.body.i366.for.body.i366_crit_edge:            ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i366

for.body.i366.iov_length.exit_crit_edge:          ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #7
  br label %iov_length.exit

iov_length.exit:                                  ; preds = %for.body.i366.iov_length.exit_crit_edge, %retry.iov_length.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %retry.iov_length.exit_crit_edge ], [ %add.i, %for.body.i366.iov_length.exit_crit_edge ]
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %ret.0.lcssa.i, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_iovs.2)
  %cmp4.not.i367 = icmp eq i32 %out_iovs.2, 0
  br i1 %cmp4.not.i367, label %iov_length.exit376.thread, label %iov_length.exit.for.body.i374_crit_edge

iov_length.exit.for.body.i374_crit_edge:          ; preds = %iov_length.exit
  br label %for.body.i374

iov_length.exit376.thread:                        ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %8, align 4
  br label %51

for.body.i374:                                    ; preds = %for.body.i374.for.body.i374_crit_edge, %iov_length.exit.for.body.i374_crit_edge
  %ret.06.i368 = phi i32 [ %add.i371, %for.body.i374.for.body.i374_crit_edge ], [ 0, %iov_length.exit.for.body.i374_crit_edge ]
  %seg.05.i369 = phi i32 [ %inc.i372, %for.body.i374.for.body.i374_crit_edge ], [ 0, %iov_length.exit.for.body.i374_crit_edge ]
  %iov_len.i370 = getelementptr %struct.iovec, ptr %out_iov.2, i32 %seg.05.i369, i32 1
  %47 = ptrtoint ptr %iov_len.i370 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iov_len.i370, align 4
  %add.i371 = add i32 %48, %ret.06.i368
  %inc.i372 = add nuw i32 %seg.05.i369, 1
  %exitcond.not.i373 = icmp eq i32 %inc.i372, %out_iovs.2
  br i1 %exitcond.not.i373, label %iov_length.exit376, label %for.body.i374.for.body.i374_crit_edge

for.body.i374.for.body.i374_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i374

iov_length.exit376:                               ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i371, ptr %8, align 4
  %50 = call i32 @llvm.umax.i32(i32 %add.i371, i32 4096)
  br label %51

51:                                               ; preds = %iov_length.exit376, %iov_length.exit376.thread
  %52 = phi i32 [ 4096, %iov_length.exit376.thread ], [ %50, %iov_length.exit376 ]
  %53 = call i32 @llvm.umax.i32(i32 %ret.0.lcssa.i, i32 %52)
  %sub = add i32 %53, 4095
  %div360 = lshr i32 %sub, 12
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %max_pages45 = getelementptr inbounds %struct.fuse_conn, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %max_pages45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_pages45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div360, i32 %57)
  %cmp46 = icmp ugt i32 %div360, %57
  br i1 %cmp46, label %.out_crit_edge, label %while.cond.preheader

.out_crit_edge:                                   ; preds = %51
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.cond.preheader:                             ; preds = %51
  %58 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %div360)
  %cmp50465 = icmp ult i32 %59, %div360
  br i1 %cmp50465, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3266, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %60 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pages, align 8
  %62 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_pages, align 8
  %arrayidx = getelementptr ptr, ptr %61, i32 %63
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %65 = load ptr, ptr %pages, align 8
  %66 = load i32, ptr %num_pages, align 8
  %arrayidx57 = getelementptr ptr, ptr %65, i32 %66
  %67 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %68, null
  br i1 %tobool58.not, label %while.body.out_crit_edge, label %if.end60

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end60:                                         ; preds = %while.body
  %inc = add i32 %66, 1
  %69 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc, ptr %num_pages, align 8
  %cmp50 = icmp ult i32 %inc, %div360
  br i1 %cmp50, label %if.end60.while.body_crit_edge, label %if.end60.while.end_crit_edge

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end60.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %70 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 39, ptr %opcode, align 8
  %71 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %nodeid, align 8
  %73 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %ap, align 8
  %74 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %in_numargs, align 4
  %75 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32, ptr %in_args, align 4
  %76 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %inarg, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool70.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool70.not, label %while.end.if.end123_crit_edge, label %if.then71

while.end.if.end123_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then71:                                        ; preds = %while.end
  %77 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 2, ptr %in_numargs, align 4
  %78 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %ret.0.lcssa.i, ptr %arrayidx77, align 4
  %79 = ptrtoint ptr %in_pages to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load = load i16, ptr %in_pages, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %in_pages, align 8
  call void @iov_iter_init(ptr noundef nonnull %ii, i32 noundef 1, ptr noundef %in_iov.2, i32 noundef %in_iovs.2, i32 noundef %ret.0.lcssa.i) #5
  %80 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool81.not466 = icmp eq i32 %81, 0
  br i1 %tobool81.not466, label %if.then71.if.end123_crit_edge, label %if.then71.land.rhs_crit_edge

if.then71.land.rhs_crit_edge:                     ; preds = %if.then71
  br label %land.rhs

if.then71.if.end123_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.then71.land.rhs_crit_edge
  %i.0467 = phi i32 [ %inc122, %for.inc.land.rhs_crit_edge ], [ 0, %if.then71.land.rhs_crit_edge ]
  %82 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0467, i32 %83)
  %cmp83.not = icmp ult i32 %i.0467, %83
  br i1 %cmp83.not, label %for.body.critedge, label %do.end96, !prof !16

do.end96:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #5
  br label %if.end123

for.body.critedge:                                ; preds = %land.rhs
  %84 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pages, align 8
  %arrayidx114 = getelementptr ptr, ptr %85, i32 %i.0467
  %86 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx114, align 4
  %call115 = call i32 @copy_page_from_iter(ptr noundef %87, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %ii) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 4096
  %88 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %count.i, align 8
  br i1 %cmp116.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool119.not = icmp eq i32 %.pr, 0
  br i1 %tobool119.not, label %land.lhs.true.if.end123_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

for.inc:                                          ; preds = %for.body.critedge
  %inc122 = add nuw i32 %i.0467, 1
  %tobool81.not = icmp eq i32 %.pr, 0
  br i1 %tobool81.not, label %for.inc.if.end123_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.if.end123_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.end123:                                        ; preds = %for.inc.if.end123_crit_edge, %land.lhs.true.if.end123_crit_edge, %do.end96, %if.then71.if.end123_crit_edge, %while.end.if.end123_crit_edge
  %89 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 2, ptr %out_numargs, align 2
  %90 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 16, ptr %out_args, align 4
  %91 = ptrtoint ptr %value131 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %outarg, ptr %value131, align 8
  %92 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %52, ptr %arrayidx134, align 4
  %93 = ptrtoint ptr %in_pages to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load137 = load i16, ptr %in_pages, align 8
  %bf.set143 = or i16 %bf.load137, 2560
  store i16 %bf.set143, ptr %in_pages, align 8
  %call145 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %ap) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.end123.out_crit_edge, label %if.end149

if.end123.out_crit_edge:                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end149:                                        ; preds = %if.end123
  %94 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %16, align 4
  %and151 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end199, label %if.then153

if.then153:                                       ; preds = %if.end149
  br i1 %tobool16.not, label %if.then153.out_crit_edge, label %if.end157

if.then153.out_crit_edge:                         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end157:                                        ; preds = %if.then153
  %96 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %17, align 4
  %98 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %97)
  %cmp160 = icmp ugt i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %99)
  %cmp163 = icmp ugt i32 %99, 256
  %or.cond362 = select i1 %cmp160, i1 true, i1 %cmp163
  br i1 %or.cond362, label %if.end157.out_crit_edge, label %lor.lhs.false165

if.end157.out_crit_edge:                          ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false165:                                 ; preds = %if.end157
  %add166 = add nuw nsw i32 %99, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add166)
  %cmp167 = icmp ugt i32 %add166, 256
  br i1 %cmp167, label %lor.lhs.false165.out_crit_edge, label %if.end170

lor.lhs.false165.out_crit_edge:                   ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end170:                                        ; preds = %lor.lhs.false165
  %100 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pages, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %104 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %104, 512
  %call.i = call ptr @__kmap_local_page_prot(ptr noundef %103, i32 noundef %or.i) #5
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %3, align 4
  %minor.i = getelementptr inbounds %struct.fuse_conn, ptr %106, i32 0, i32 28
  %107 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %minor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %108)
  %cmp.i = icmp ult i32 %108, 16
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end170
  %mul.i.i = shl nuw nsw i32 %add166, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %call145)
  %cmp.not.i.i = icmp eq i32 %mul.i.i, %call145
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge

if.then.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_copy_ioctl_iovec.exit.thread

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %109 = call ptr @memcpy(ptr %29, ptr %call.i, i32 %call145)
  br label %if.end188

if.end.i:                                         ; preds = %if.end170
  %mul.i378 = shl nuw nsw i32 %add166, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i378, i32 %call145)
  %cmp1.not.i379 = icmp eq i32 %mul.i378, %call145
  br i1 %cmp1.not.i379, label %for.cond.preheader.i, label %if.end.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge

if.end.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_copy_ioctl_iovec.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add166)
  %cmp448.not.i = icmp eq i32 %add166, 0
  br i1 %cmp448.not.i, label %for.cond.preheader.i.if.end188_crit_edge, label %for.cond.preheader.i.for.body.i381_crit_edge

for.cond.preheader.i.for.body.i381_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i381

for.cond.preheader.i.if.end188_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

for.body.i381:                                    ; preds = %if.end18.i.for.body.i381_crit_edge, %for.cond.preheader.i.for.body.i381_crit_edge
  %i.049.i = phi i32 [ %inc.i383, %if.end18.i.for.body.i381_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i381_crit_edge ]
  %arrayidx.i380 = getelementptr %struct.fuse_ioctl_iovec, ptr %call.i, i32 %i.049.i
  %110 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx.i380, align 8
  %conv.i = trunc i64 %111 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %111)
  %112 = icmp ult i64 %111, 4294967296
  br i1 %112, label %lor.lhs.false.i, label %for.body.i381.fuse_copy_ioctl_iovec.exit.thread_crit_edge

for.body.i381.fuse_copy_ioctl_iovec.exit.thread_crit_edge: ; preds = %for.body.i381
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_copy_ioctl_iovec.exit.thread

lor.lhs.false.i:                                  ; preds = %for.body.i381
  %len.i = getelementptr %struct.fuse_ioctl_iovec, ptr %call.i, i32 %i.049.i, i32 1
  %113 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %114)
  %115 = icmp ult i64 %114, 4294967296
  br i1 %115, label %if.end18.i, label %lor.lhs.false.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge

lor.lhs.false.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_copy_ioctl_iovec.exit.thread

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %116 = inttoptr i32 %conv.i to ptr
  %arrayidx22.i = getelementptr %struct.iovec, ptr %29, i32 %i.049.i
  %117 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %arrayidx22.i, align 4
  %118 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %len.i, align 8
  %conv25.i = trunc i64 %119 to i32
  %iov_len.i382 = getelementptr %struct.iovec, ptr %29, i32 %i.049.i, i32 1
  %120 = ptrtoint ptr %iov_len.i382 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv25.i, ptr %iov_len.i382, align 4
  %inc.i383 = add nuw i32 %i.049.i, 1
  %exitcond.not.i384 = icmp eq i32 %inc.i383, %add166
  br i1 %exitcond.not.i384, label %if.end18.i.if.end188_crit_edge, label %if.end18.i.for.body.i381_crit_edge

if.end18.i.for.body.i381_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i381

if.end18.i.if.end188_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

fuse_copy_ioctl_iovec.exit.thread:                ; preds = %lor.lhs.false.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge, %for.body.i381.fuse_copy_ioctl_iovec.exit.thread_crit_edge, %if.end.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge, %if.then.i.fuse_copy_ioctl_iovec.exit.thread_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i) #5
  br label %out

if.end188:                                        ; preds = %if.end18.i.if.end188_crit_edge, %for.cond.preheader.i.if.end188_crit_edge, %if.end.i.i
  call void @kunmap_local_indexed(ptr noundef %call.i) #5
  %add.ptr = getelementptr %struct.iovec, ptr %29, i32 %97
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp8.not.i = icmp eq i32 %97, 0
  br i1 %cmp8.not.i, label %if.end188.if.end193_crit_edge, label %for.body.preheader.i

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

for.body.preheader.i:                             ; preds = %if.end188
  %max_pages.i = getelementptr inbounds %struct.fuse_conn, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %max_pages.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_pages.i, align 4
  %shl.i = shl i32 %124, 12
  br label %for.body.i386

for.body.i386:                                    ; preds = %if.end.i390.for.body.i386_crit_edge, %for.body.preheader.i
  %max.011.i = phi i32 [ %sub.i387, %if.end.i390.for.body.i386_crit_edge ], [ %shl.i, %for.body.preheader.i ]
  %n.010.i = phi i32 [ %inc.i388, %if.end.i390.for.body.i386_crit_edge ], [ 0, %for.body.preheader.i ]
  %iov.addr.09.i = phi ptr [ %incdec.ptr.i, %if.end.i390.for.body.i386_crit_edge ], [ %29, %for.body.preheader.i ]
  %iov_len.i385 = getelementptr inbounds %struct.iovec, ptr %iov.addr.09.i, i32 0, i32 1
  %125 = ptrtoint ptr %iov_len.i385 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iov_len.i385, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max.011.i, i32 %126)
  %cmp1.i = icmp ult i32 %max.011.i, %126
  br i1 %cmp1.i, label %for.body.i386.out_crit_edge, label %if.end.i390

for.body.i386.out_crit_edge:                      ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i390:                                      ; preds = %for.body.i386
  %sub.i387 = sub i32 %max.011.i, %126
  %inc.i388 = add nuw i32 %n.010.i, 1
  %incdec.ptr.i = getelementptr %struct.iovec, ptr %iov.addr.09.i, i32 1
  %exitcond.not.i389 = icmp eq i32 %inc.i388, %97
  br i1 %exitcond.not.i389, label %if.end.i390.if.end193_crit_edge, label %if.end.i390.for.body.i386_crit_edge

if.end.i390.for.body.i386_crit_edge:              ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i386

if.end.i390.if.end193_crit_edge:                  ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

if.end193:                                        ; preds = %if.end.i390.if.end193_crit_edge, %if.end188.if.end193_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp8.not.i392 = icmp eq i32 %99, 0
  br i1 %cmp8.not.i392, label %if.end193.retry.backedge_crit_edge, label %for.body.preheader.i395

if.end193.retry.backedge_crit_edge:               ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end.i406.retry.backedge_crit_edge, %if.end193.retry.backedge_crit_edge
  br label %retry

for.body.preheader.i395:                          ; preds = %if.end193
  %max_pages.i393 = getelementptr inbounds %struct.fuse_conn, ptr %122, i32 0, i32 10
  %127 = ptrtoint ptr %max_pages.i393 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_pages.i393, align 4
  %shl.i394 = shl i32 %128, 12
  br label %for.body.i401

for.body.i401:                                    ; preds = %if.end.i406.for.body.i401_crit_edge, %for.body.preheader.i395
  %max.011.i396 = phi i32 [ %sub.i402, %if.end.i406.for.body.i401_crit_edge ], [ %shl.i394, %for.body.preheader.i395 ]
  %n.010.i397 = phi i32 [ %inc.i403, %if.end.i406.for.body.i401_crit_edge ], [ 0, %for.body.preheader.i395 ]
  %iov.addr.09.i398 = phi ptr [ %incdec.ptr.i404, %if.end.i406.for.body.i401_crit_edge ], [ %add.ptr, %for.body.preheader.i395 ]
  %iov_len.i399 = getelementptr inbounds %struct.iovec, ptr %iov.addr.09.i398, i32 0, i32 1
  %129 = ptrtoint ptr %iov_len.i399 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %iov_len.i399, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max.011.i396, i32 %130)
  %cmp1.i400 = icmp ult i32 %max.011.i396, %130
  br i1 %cmp1.i400, label %for.body.i401.out_crit_edge, label %if.end.i406

for.body.i401.out_crit_edge:                      ; preds = %for.body.i401
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i406:                                      ; preds = %for.body.i401
  %sub.i402 = sub i32 %max.011.i396, %130
  %inc.i403 = add nuw i32 %n.010.i397, 1
  %incdec.ptr.i404 = getelementptr %struct.iovec, ptr %iov.addr.09.i398, i32 1
  %exitcond.not.i405 = icmp eq i32 %inc.i403, %99
  br i1 %exitcond.not.i405, label %if.end.i406.retry.backedge_crit_edge, label %if.end.i406.for.body.i401_crit_edge

if.end.i406.for.body.i401_crit_edge:              ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i401

if.end.i406.retry.backedge_crit_edge:             ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry.backedge

if.end199:                                        ; preds = %if.end149
  %131 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call145, i32 %132)
  %cmp201 = icmp ugt i32 %call145, %132
  br i1 %cmp201, label %if.end199.out_crit_edge, label %if.end204

if.end199.out_crit_edge:                          ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end204:                                        ; preds = %if.end199
  call void @iov_iter_init(ptr noundef nonnull %ii, i32 noundef 0, ptr noundef %out_iov.2, i32 noundef %out_iovs.2, i32 noundef %call145) #5
  %133 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool207.not468 = icmp eq i32 %134, 0
  br i1 %tobool207.not468, label %if.end204.out_crit_edge, label %if.end204.land.rhs208_crit_edge

if.end204.land.rhs208_crit_edge:                  ; preds = %if.end204
  br label %land.rhs208

if.end204.out_crit_edge:                          ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.rhs208:                                      ; preds = %for.inc257.land.rhs208_crit_edge, %if.end204.land.rhs208_crit_edge
  %i.1469 = phi i32 [ %inc258, %for.inc257.land.rhs208_crit_edge ], [ 0, %if.end204.land.rhs208_crit_edge ]
  %135 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1469, i32 %136)
  %cmp211.not = icmp ult i32 %i.1469, %136
  br i1 %cmp211.not, label %for.body246.critedge, label %do.end228, !prof !16

do.end228:                                        ; preds = %land.rhs208
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #5
  br label %out

for.body246.critedge:                             ; preds = %land.rhs208
  %137 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pages, align 8
  %arrayidx248 = getelementptr ptr, ptr %138, i32 %i.1469
  %139 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx248, align 4
  %call249 = call i32 @copy_page_to_iter(ptr noundef %140, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %ii) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call249)
  %cmp250.not = icmp eq i32 %call249, 4096
  %141 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr503 = load i32, ptr %count.i, align 8
  br i1 %cmp250.not, label %for.inc257, label %land.lhs.true252

land.lhs.true252:                                 ; preds = %for.body246.critedge
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr503)
  %tobool254.not = icmp eq i32 %.pr503, 0
  %spec.select531 = select i1 %tobool254.not, i32 0, i32 -14
  br label %out

for.inc257:                                       ; preds = %for.body246.critedge
  %inc258 = add nuw i32 %i.1469, 1
  %tobool207.not = icmp eq i32 %.pr503, 0
  br i1 %tobool207.not, label %for.inc257.out_crit_edge, label %for.inc257.land.rhs208_crit_edge

for.inc257.land.rhs208_crit_edge:                 ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs208

for.inc257.out_crit_edge:                         ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.inc257.out_crit_edge, %land.lhs.true252, %do.end228, %if.end204.out_crit_edge, %if.end199.out_crit_edge, %for.body.i401.out_crit_edge, %for.body.i386.out_crit_edge, %fuse_copy_ioctl_iovec.exit.thread, %lor.lhs.false165.out_crit_edge, %if.end157.out_crit_edge, %if.then153.out_crit_edge, %if.end123.out_crit_edge, %land.lhs.true.out_crit_edge, %while.body.out_crit_edge, %.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -5, %if.end199.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ 0, %do.end228 ], [ -5, %fuse_copy_ioctl_iovec.exit.thread ], [ 0, %if.end204.out_crit_edge ], [ %spec.select531, %land.lhs.true252 ], [ 0, %for.inc257.out_crit_edge ], [ -12, %for.body.i401.out_crit_edge ], [ -12, %for.body.i386.out_crit_edge ], [ -12, %while.body.out_crit_edge ], [ -5, %if.then153.out_crit_edge ], [ -12, %lor.lhs.false165.out_crit_edge ], [ -12, %if.end157.out_crit_edge ], [ %call145, %if.end123.out_crit_edge ], [ -12, %.out_crit_edge ], [ -14, %land.lhs.true.out_crit_edge ]
  call void @free_pages(i32 noundef %call10, i32 noundef 0) #5
  %num_pages261 = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 3
  %142 = ptrtoint ptr %num_pages261 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_pages261, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool262.not471 = icmp eq i32 %143, 0
  br i1 %tobool262.not471, label %out.while.end267_crit_edge, label %out.while.body263_crit_edge

out.while.body263_crit_edge:                      ; preds = %out
  br label %while.body263

out.while.end267_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end267

while.body263:                                    ; preds = %while.body263.while.body263_crit_edge, %out.while.body263_crit_edge
  %144 = phi i32 [ %151, %while.body263.while.body263_crit_edge ], [ %143, %out.while.body263_crit_edge ]
  %145 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pages, align 8
  %dec = add i32 %144, -1
  %147 = ptrtoint ptr %num_pages261 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %dec, ptr %num_pages261, align 8
  %arrayidx266 = getelementptr ptr, ptr %146, i32 %dec
  %148 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx266, align 4
  call void @__free_pages(ptr noundef %149, i32 noundef 0) #5
  %150 = ptrtoint ptr %num_pages261 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_pages261, align 8
  %tobool262.not = icmp eq i32 %151, 0
  br i1 %tobool262.not, label %while.body263.while.end267_crit_edge, label %while.body263.while.body263_crit_edge

while.body263.while.body263_crit_edge:            ; preds = %while.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body263

while.body263.while.end267_crit_edge:             ; preds = %while.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end267

while.end267:                                     ; preds = %while.body263.while.end267_crit_edge, %out.while.end267_crit_edge
  %152 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pages, align 8
  call void @kfree(ptr noundef %153) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool269.not = icmp eq i32 %err.1, 0
  br i1 %tobool269.not, label %cond.false271, label %while.end267.cleanup274_crit_edge

while.end267.cleanup274_crit_edge:                ; preds = %while.end267
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup274

cond.false271:                                    ; preds = %while.end267
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %outarg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %outarg, align 4
  br label %cleanup274

cleanup274:                                       ; preds = %cond.false271, %while.end267.cleanup274_crit_edge
  %cond273 = phi i32 [ %155, %cond.false271 ], [ %err.1, %while.end267.cleanup274_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ap) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ii) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg) #5
  ret i32 %cond273
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_ioctl_common(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @fuse_allow_current_process(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @fuse_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -13, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_allow_current_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_file_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2.i = tail call i32 @fuse_allow_current_process(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %entry.fuse_ioctl_common.exit_crit_edge, label %if.end.i

entry.fuse_ioctl_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_ioctl_common.exit

if.end.i:                                         ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end5.i, label %if.end.i.fuse_ioctl_common.exit_crit_edge

if.end.i.fuse_ioctl_common.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_ioctl_common.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @fuse_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef 0) #5
  br label %fuse_ioctl_common.exit

fuse_ioctl_common.exit:                           ; preds = %if.end5.i, %if.end.i.fuse_ioctl_common.exit_crit_edge, %entry.fuse_ioctl_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ -13, %entry.fuse_ioctl_common.exit_crit_edge ], [ -5, %if.end.i.fuse_ioctl_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_file_compat_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2.i = tail call i32 @fuse_allow_current_process(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %entry.fuse_ioctl_common.exit_crit_edge, label %if.end.i

entry.fuse_ioctl_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_ioctl_common.exit

if.end.i:                                         ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end5.i, label %if.end.i.fuse_ioctl_common.exit_crit_edge

if.end.i.fuse_ioctl_common.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_ioctl_common.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @fuse_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef 1) #5
  br label %fuse_ioctl_common.exit

fuse_ioctl_common.exit:                           ; preds = %if.end5.i, %if.end.i.fuse_ioctl_common.exit_crit_edge, %entry.fuse_ioctl_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ -13, %entry.fuse_ioctl_common.exit_crit_edge ], [ -5, %if.end.i.fuse_ioctl_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  %inarg.i39 = alloca %struct.fuse_ioctl_in, align 8
  %outarg.i40 = alloca %struct.fuse_ioctl_out, align 4
  %args.i41 = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_ioctl_in, align 8
  %outarg.i = alloca %struct.fuse_ioctl_out, align 4
  %args.i = alloca %struct.fuse_args, align 8
  %flags = alloca i32, align 4
  %xfa = alloca %struct.fsxattr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xfa) #5
  %3 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 2
  %5 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 4
  %7 = call ptr @memset(ptr %xfa, i32 255, i32 28)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 8
  %10 = and i16 %9, -4096
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %entry.if.then_crit_edge [
    i16 -32768, label %entry.fuse_priv_ioctl_prepare.exit_crit_edge
    i16 16384, label %entry.fuse_priv_ioctl_prepare.exit_crit_edge77
  ]

entry.fuse_priv_ioctl_prepare.exit_crit_edge77:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl_prepare.exit

entry.fuse_priv_ioctl_prepare.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl_prepare.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

fuse_priv_ioctl_prepare.exit:                     ; preds = %entry.fuse_priv_ioctl_prepare.exit_crit_edge, %entry.fuse_priv_ioctl_prepare.exit_crit_edge77
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp.i = icmp eq i16 %10, 16384
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nodeid.i.i, align 8
  %call10.i = tail call ptr @fuse_file_open(ptr noundef %15, i64 noundef %17, i32 noundef 0, i1 noundef zeroext %cmp.i) #5
  %cmp.i37 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %fuse_priv_ioctl_prepare.exit.if.then_crit_edge, label %if.end

fuse_priv_ioctl_prepare.exit.if.then_crit_edge:   ; preds = %fuse_priv_ioctl_prepare.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %fuse_priv_ioctl_prepare.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i70 = phi ptr [ %call10.i, %fuse_priv_ioctl_prepare.exit.if.then_crit_edge ], [ inttoptr (i32 -25 to ptr), %entry.if.then_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i70 to i32
  br label %cleanup17

if.end:                                           ; preds = %fuse_priv_ioctl_prepare.exit
  %flags_valid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %19 = ptrtoint ptr %flags_valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %flags_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %20 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call10.i, align 8
  br i1 %bf.cast.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg.i) #5
  %22 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg.i) #5
  %25 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg.i, i32 0, i32 1
  %26 = call ptr @memset(ptr %outarg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #5
  %27 = getelementptr inbounds i8, ptr %args.i, i32 16
  %28 = call ptr @memset(ptr %27, i32 0, i32 48)
  %29 = getelementptr inbounds i8, ptr %inarg.i, i32 16
  %30 = call ptr @memset(ptr %29, i32 0, i32 16)
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 3
  %31 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fh.i, align 8
  %33 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %inarg.i, align 8
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2147195391, ptr %23, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp.i38 = icmp eq i16 %37, 16384
  %spec.store.select.i = select i1 %cmp.i38, i32 24, i32 8
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select.i, ptr %22, align 8
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %24, align 4
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %40 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 39, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 4
  %41 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %nodeid.i, align 8
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %44 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %45 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %inarg.i, ptr %value.i, align 8
  %value27.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1, i32 1
  %47 = ptrtoint ptr %value27.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %flags, ptr %value27.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %48 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %49 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %out_args.i, align 4
  %value32.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %50 = ptrtoint ptr %value32.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %outarg.i, ptr %value32.i, align 8
  %arrayidx35.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %arrayidx35.i, align 4
  %value39.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 1, i32 1
  %52 = ptrtoint ptr %value39.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %flags, ptr %value39.i, align 8
  %call.i = call i32 @fuse_simple_request(ptr noundef %21, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.then4.fuse_priv_ioctl.exit.thread_crit_edge

if.then4.fuse_priv_ioctl.exit.thread_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit.thread

if.then41.i:                                      ; preds = %if.then4
  %53 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %outarg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp42.i = icmp slt i32 %54, 0
  br i1 %cmp42.i, label %if.then41.i.fuse_priv_ioctl.exit.thread_crit_edge, label %if.else.i

if.then41.i.fuse_priv_ioctl.exit.thread_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit.thread

if.else.i:                                        ; preds = %if.then41.i
  %55 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %25, align 4
  %and47.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end7, label %if.else.i.fuse_priv_ioctl.exit.thread_crit_edge

if.else.i.fuse_priv_ioctl.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit.thread

fuse_priv_ioctl.exit.thread:                      ; preds = %if.else.i.fuse_priv_ioctl.exit.thread_crit_edge, %if.then41.i.fuse_priv_ioctl.exit.thread_crit_edge, %if.then4.fuse_priv_ioctl.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -5, %if.else.i.fuse_priv_ioctl.exit.thread_crit_edge ], [ %54, %if.then41.i.fuse_priv_ioctl.exit.thread_crit_edge ], [ %call.i, %if.then4.fuse_priv_ioctl.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i) #5
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %58) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg.i39) #5
  %59 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i39, i32 0, i32 1
  %60 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i39, i32 0, i32 2
  %61 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i39, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg.i40) #5
  %62 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg.i40, i32 0, i32 1
  %63 = call ptr @memset(ptr %outarg.i40, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i41) #5
  %64 = getelementptr inbounds i8, ptr %args.i41, i32 16
  %65 = call ptr @memset(ptr %64, i32 0, i32 48)
  %66 = getelementptr inbounds i8, ptr %inarg.i39, i32 16
  %67 = call ptr @memset(ptr %66, i32 0, i32 16)
  %fh.i42 = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 3
  %68 = ptrtoint ptr %fh.i42 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %fh.i42, align 8
  %70 = ptrtoint ptr %inarg.i39 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %inarg.i39, align 8
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -2145626081, ptr %60, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %1, align 8
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %74)
  %cmp.i43 = icmp eq i16 %74, 16384
  %spec.store.select.i44 = select i1 %cmp.i43, i32 24, i32 8
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select.i44, ptr %59, align 8
  %76 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 28, ptr %61, align 4
  %opcode.i45 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 1
  %77 = ptrtoint ptr %opcode.i45 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 39, ptr %opcode.i45, align 8
  %nodeid.i46 = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 4
  %78 = ptrtoint ptr %nodeid.i46 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %nodeid.i46, align 8
  %80 = ptrtoint ptr %args.i41 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %args.i41, align 8
  %in_numargs.i47 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 2
  %81 = ptrtoint ptr %in_numargs.i47 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %in_numargs.i47, align 4
  %in_args.i48 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 5
  %82 = ptrtoint ptr %in_args.i48 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 32, ptr %in_args.i48, align 4
  %value.i49 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 5, i32 0, i32 1
  %83 = ptrtoint ptr %value.i49 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %inarg.i39, ptr %value.i49, align 8
  %value27.i51 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 5, i32 1, i32 1
  %84 = ptrtoint ptr %value27.i51 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %xfa, ptr %value27.i51, align 8
  %out_numargs.i52 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 3
  %85 = ptrtoint ptr %out_numargs.i52 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2, ptr %out_numargs.i52, align 2
  %out_args.i53 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 6
  %86 = ptrtoint ptr %out_args.i53 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 16, ptr %out_args.i53, align 4
  %value32.i54 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 6, i32 0, i32 1
  %87 = ptrtoint ptr %value32.i54 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %outarg.i40, ptr %value32.i54, align 8
  %arrayidx35.i55 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %arrayidx35.i55 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 28, ptr %arrayidx35.i55, align 4
  %value39.i56 = getelementptr inbounds %struct.fuse_args, ptr %args.i41, i32 0, i32 6, i32 1, i32 1
  %89 = ptrtoint ptr %value39.i56 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %xfa, ptr %value39.i56, align 8
  %call.i57 = call i32 @fuse_simple_request(ptr noundef %21, ptr noundef nonnull %args.i41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool40.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool40.not.i58, label %if.then41.i60, label %if.else.fuse_priv_ioctl.exit66.thread_crit_edge

if.else.fuse_priv_ioctl.exit66.thread_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit66.thread

if.then41.i60:                                    ; preds = %if.else
  %90 = ptrtoint ptr %outarg.i40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %outarg.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp42.i59 = icmp slt i32 %91, 0
  br i1 %cmp42.i59, label %if.then41.i60.fuse_priv_ioctl.exit66.thread_crit_edge, label %if.else.i64

if.then41.i60.fuse_priv_ioctl.exit66.thread_crit_edge: ; preds = %if.then41.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit66.thread

if.else.i64:                                      ; preds = %if.then41.i60
  %92 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %62, align 4
  %and47.i61 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i61)
  %tobool48.not.i62 = icmp eq i32 %and47.i61, 0
  br i1 %tobool48.not.i62, label %if.end11, label %if.else.i64.fuse_priv_ioctl.exit66.thread_crit_edge

if.else.i64.fuse_priv_ioctl.exit66.thread_crit_edge: ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit66.thread

fuse_priv_ioctl.exit66.thread:                    ; preds = %if.else.i64.fuse_priv_ioctl.exit66.thread_crit_edge, %if.then41.i60.fuse_priv_ioctl.exit66.thread_crit_edge, %if.else.fuse_priv_ioctl.exit66.thread_crit_edge
  %err.0.i65.ph = phi i32 [ -5, %if.else.i64.fuse_priv_ioctl.exit66.thread_crit_edge ], [ %91, %if.then41.i60.fuse_priv_ioctl.exit66.thread_crit_edge ], [ %call.i57, %if.else.fuse_priv_ioctl.exit66.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i41) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i40) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i39) #5
  br label %cleanup

if.end11:                                         ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i41) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i40) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i39) #5
  %94 = ptrtoint ptr %xfa to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %xfa, align 4
  call void @fileattr_fill_xflags(ptr noundef %fa, i32 noundef %95) #5
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %3, align 4
  %fsx_extsize12 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %98 = ptrtoint ptr %fsx_extsize12 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %fsx_extsize12, align 4
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %4, align 4
  %fsx_nextents13 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 3
  %101 = ptrtoint ptr %fsx_nextents13 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %fsx_nextents13, align 4
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %5, align 4
  %fsx_projid14 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %104 = ptrtoint ptr %fsx_projid14 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %fsx_projid14, align 4
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %6, align 4
  %fsx_cowextsize15 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %107 = ptrtoint ptr %fsx_cowextsize15 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %fsx_cowextsize15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %fuse_priv_ioctl.exit66.thread, %if.end7, %fuse_priv_ioctl.exit.thread
  %err.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.end11 ], [ %err.0.i.ph, %fuse_priv_ioctl.exit.thread ], [ %err.0.i65.ph, %fuse_priv_ioctl.exit66.thread ]
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %1, align 8
  %110 = and i16 %109, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %110)
  %cmp.i67 = icmp eq i16 %110, 16384
  call void @fuse_file_release(ptr noundef %1, ptr noundef %call10.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext %cmp.i67) #5
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ %err.0, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xfa) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_xflags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %inarg.i36 = alloca %struct.fuse_ioctl_in, align 8
  %outarg.i37 = alloca %struct.fuse_ioctl_out, align 4
  %args.i38 = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_ioctl_in, align 8
  %outarg.i = alloca %struct.fuse_ioctl_out, align 4
  %args.i = alloca %struct.fuse_args, align 8
  %flags = alloca i32, align 4
  %xfa = alloca %struct.fsxattr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xfa) #5
  %5 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 1
  %6 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 3
  %8 = getelementptr inbounds %struct.fsxattr, ptr %xfa, i32 0, i32 4
  %9 = call ptr @memset(ptr %xfa, i32 255, i32 28)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %12, label %entry.if.then_crit_edge [
    i16 -32768, label %entry.fuse_priv_ioctl_prepare.exit_crit_edge
    i16 16384, label %entry.fuse_priv_ioctl_prepare.exit_crit_edge69
  ]

entry.fuse_priv_ioctl_prepare.exit_crit_edge69:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl_prepare.exit

entry.fuse_priv_ioctl_prepare.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl_prepare.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

fuse_priv_ioctl_prepare.exit:                     ; preds = %entry.fuse_priv_ioctl_prepare.exit_crit_edge, %entry.fuse_priv_ioctl_prepare.exit_crit_edge69
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp.i = icmp eq i16 %12, 16384
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nodeid.i.i, align 8
  %call10.i = tail call ptr @fuse_file_open(ptr noundef %17, i64 noundef %19, i32 noundef 0, i1 noundef zeroext %cmp.i) #5
  %cmp.i34 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %fuse_priv_ioctl_prepare.exit.if.then_crit_edge, label %if.end

fuse_priv_ioctl_prepare.exit.if.then_crit_edge:   ; preds = %fuse_priv_ioctl_prepare.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %fuse_priv_ioctl_prepare.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i67 = phi ptr [ %call10.i, %fuse_priv_ioctl_prepare.exit.if.then_crit_edge ], [ inttoptr (i32 -25 to ptr), %entry.if.then_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i67 to i32
  br label %cleanup16

if.end:                                           ; preds = %fuse_priv_ioctl_prepare.exit
  %flags_valid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %21 = ptrtoint ptr %flags_valid to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %flags_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %22 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call10.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg.i) #5
  %24 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 2
  %26 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg.i) #5
  %27 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %outarg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #5
  %29 = getelementptr inbounds i8, ptr %args.i, i32 16
  %30 = call ptr @memset(ptr %29, i32 0, i32 48)
  %31 = getelementptr inbounds i8, ptr %inarg.i, i32 16
  %32 = call ptr @memset(ptr %31, i32 0, i32 16)
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 3
  %33 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fh.i, align 8
  %35 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %inarg.i, align 8
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1074030082, ptr %25, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 8
  %39 = and i16 %38, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %39)
  %cmp.i35 = icmp eq i16 %39, 16384
  %spec.store.select.i = select i1 %cmp.i35, i32 24, i32 8
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select.i, ptr %24, align 8
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %26, align 8
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %42 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 39, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 4
  %43 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %nodeid.i, align 8
  %45 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %46 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %47 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 32, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %inarg.i, ptr %value.i, align 8
  %arrayidx23.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %arrayidx23.i, align 4
  %value27.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %value27.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %flags, ptr %value27.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %51 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %52 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %out_args.i, align 4
  %value32.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %value32.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %outarg.i, ptr %value32.i, align 8
  %value39.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 1, i32 1
  %54 = ptrtoint ptr %value39.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %flags, ptr %value39.i, align 8
  %call.i = call i32 @fuse_simple_request(ptr noundef %23, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.then5.fuse_priv_ioctl.exit_crit_edge

if.then5.fuse_priv_ioctl.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit

if.then41.i:                                      ; preds = %if.then5
  %55 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %outarg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp42.i = icmp slt i32 %56, 0
  br i1 %cmp42.i, label %if.then41.i.fuse_priv_ioctl.exit_crit_edge, label %if.else.i

if.then41.i.fuse_priv_ioctl.exit_crit_edge:       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit

if.else.i:                                        ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %27, align 4
  %and47.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %spec.select.i = select i1 %tobool48.not.i, i32 0, i32 -5
  br label %fuse_priv_ioctl.exit

fuse_priv_ioctl.exit:                             ; preds = %if.else.i, %if.then41.i.fuse_priv_ioctl.exit_crit_edge, %if.then5.fuse_priv_ioctl.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.then5.fuse_priv_ioctl.exit_crit_edge ], [ %56, %if.then41.i.fuse_priv_ioctl.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %59 = getelementptr inbounds i8, ptr %xfa, i32 20
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %59, align 4
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %61 = ptrtoint ptr %fsx_xflags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fsx_xflags, align 4
  %63 = ptrtoint ptr %xfa to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %xfa, align 4
  %fsx_extsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %64 = ptrtoint ptr %fsx_extsize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fsx_extsize, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %5, align 4
  %fsx_nextents = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 3
  %67 = ptrtoint ptr %fsx_nextents to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fsx_nextents, align 4
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %6, align 4
  %fsx_projid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %70 = ptrtoint ptr %fsx_projid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fsx_projid, align 4
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %7, align 4
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %73 = ptrtoint ptr %fsx_cowextsize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fsx_cowextsize, align 4
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %8, align 4
  %76 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call10.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg.i36) #5
  %78 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i36, i32 0, i32 1
  %79 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i36, i32 0, i32 2
  %80 = getelementptr inbounds %struct.fuse_ioctl_in, ptr %inarg.i36, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg.i37) #5
  %81 = getelementptr inbounds %struct.fuse_ioctl_out, ptr %outarg.i37, i32 0, i32 1
  %82 = call ptr @memset(ptr %outarg.i37, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i38) #5
  %83 = getelementptr inbounds i8, ptr %args.i38, i32 16
  %84 = call ptr @memset(ptr %83, i32 0, i32 48)
  %85 = getelementptr inbounds i8, ptr %inarg.i36, i32 16
  %86 = call ptr @memset(ptr %85, i32 0, i32 16)
  %fh.i39 = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 3
  %87 = ptrtoint ptr %fh.i39 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %fh.i39, align 8
  %89 = ptrtoint ptr %inarg.i36 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %inarg.i36, align 8
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1075599392, ptr %79, align 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %1, align 8
  %93 = and i16 %92, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %93)
  %cmp.i40 = icmp eq i16 %93, 16384
  %spec.store.select.i41 = select i1 %cmp.i40, i32 24, i32 8
  %94 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.store.select.i41, ptr %78, align 8
  %95 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 28, ptr %80, align 8
  %opcode.i42 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 1
  %96 = ptrtoint ptr %opcode.i42 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 39, ptr %opcode.i42, align 8
  %nodeid.i43 = getelementptr inbounds %struct.fuse_file, ptr %call10.i, i32 0, i32 4
  %97 = ptrtoint ptr %nodeid.i43 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %nodeid.i43, align 8
  %99 = ptrtoint ptr %args.i38 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %args.i38, align 8
  %in_numargs.i44 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 2
  %100 = ptrtoint ptr %in_numargs.i44 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2, ptr %in_numargs.i44, align 4
  %in_args.i45 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 5
  %101 = ptrtoint ptr %in_args.i45 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 32, ptr %in_args.i45, align 4
  %value.i46 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 5, i32 0, i32 1
  %102 = ptrtoint ptr %value.i46 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %inarg.i36, ptr %value.i46, align 8
  %arrayidx23.i47 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 5, i32 1
  %103 = ptrtoint ptr %arrayidx23.i47 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 28, ptr %arrayidx23.i47, align 4
  %value27.i48 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 5, i32 1, i32 1
  %104 = ptrtoint ptr %value27.i48 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %xfa, ptr %value27.i48, align 8
  %out_numargs.i49 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 3
  %105 = ptrtoint ptr %out_numargs.i49 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 2, ptr %out_numargs.i49, align 2
  %out_args.i50 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 6
  %106 = ptrtoint ptr %out_args.i50 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 16, ptr %out_args.i50, align 4
  %value32.i51 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 6, i32 0, i32 1
  %107 = ptrtoint ptr %value32.i51 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %outarg.i37, ptr %value32.i51, align 8
  %value39.i53 = getelementptr inbounds %struct.fuse_args, ptr %args.i38, i32 0, i32 6, i32 1, i32 1
  %108 = ptrtoint ptr %value39.i53 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %xfa, ptr %value39.i53, align 8
  %call.i54 = call i32 @fuse_simple_request(ptr noundef %77, ptr noundef nonnull %args.i38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool40.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool40.not.i55, label %if.then41.i57, label %if.else.fuse_priv_ioctl.exit63_crit_edge

if.else.fuse_priv_ioctl.exit63_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit63

if.then41.i57:                                    ; preds = %if.else
  %109 = ptrtoint ptr %outarg.i37 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %outarg.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp42.i56 = icmp slt i32 %110, 0
  br i1 %cmp42.i56, label %if.then41.i57.fuse_priv_ioctl.exit63_crit_edge, label %if.else.i61

if.then41.i57.fuse_priv_ioctl.exit63_crit_edge:   ; preds = %if.then41.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %fuse_priv_ioctl.exit63

if.else.i61:                                      ; preds = %if.then41.i57
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %81, align 4
  %and47.i58 = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i58)
  %tobool48.not.i59 = icmp eq i32 %and47.i58, 0
  %spec.select.i60 = select i1 %tobool48.not.i59, i32 0, i32 -5
  br label %fuse_priv_ioctl.exit63

fuse_priv_ioctl.exit63:                           ; preds = %if.else.i61, %if.then41.i57.fuse_priv_ioctl.exit63_crit_edge, %if.else.fuse_priv_ioctl.exit63_crit_edge
  %err.0.i62 = phi i32 [ %call.i54, %if.else.fuse_priv_ioctl.exit63_crit_edge ], [ %110, %if.then41.i57.fuse_priv_ioctl.exit63_crit_edge ], [ %spec.select.i60, %if.else.i61 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i38) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg.i37) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg.i36) #5
  br label %cleanup

cleanup:                                          ; preds = %fuse_priv_ioctl.exit63, %fuse_priv_ioctl.exit
  %err.0 = phi i32 [ %err.0.i, %fuse_priv_ioctl.exit ], [ %err.0.i62, %fuse_priv_ioctl.exit63 ]
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %1, align 8
  %115 = and i16 %114, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %115)
  %cmp.i64 = icmp eq i16 %115, 16384
  call void @fuse_file_release(ptr noundef %1, ptr noundef %call10.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext %cmp.i64) #5
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %err.0, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xfa) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_file_open(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_file_release(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fuse/ioctl.c", i32 248, i32 39}
!2 = !{ptr @__ksymtab_fuse_do_ioctl, !3, !"__ksymtab_fuse_do_ioctl", i1 false, i1 false}
!3 = !{!"../fs/fuse/ioctl.c", i32 331, i32 1}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"auto-init"}
