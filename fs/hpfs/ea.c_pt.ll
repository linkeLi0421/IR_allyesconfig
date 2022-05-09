; ModuleID = '/llk/IR_all_yes/fs/hpfs/ea.c_pt.bc'
source_filename = "../fs/hpfs/ea.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.extended_attribute = type { i8, i8, i8, i8, [0 x i8] }
%struct.anode = type { i32, i32, i32, %struct.bplus_header, %union.anon.82, [3 x i32] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [40 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.83, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%union.anon.83 = type { [8 x %struct.bplus_leaf_node] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
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
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"anode\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sectors\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ea_indirect(ea) set while ea->valuelen!=8, %s %08x, pos %08x\00", [35 x i8] zeroinitializer }, align 32
@hpfs_get_ea._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013hpfs: out of memory for EA\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpfs_get_ea\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/hpfs/ea.c\00", [19 x i8] zeroinitializer }, align 32
@hpfs_get_ea._entry_ptr = internal global ptr @hpfs_get_ea._entry, section ".printk_index", align 4
@hpfs_get_ea._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hpfs_get_ea._entry_ptr.8 = internal global ptr @hpfs_get_ea._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fnode %08lx: ea_offs == %03x, ea_size_s == %03x\00", [48 x i8] zeroinitializer }, align 32
@get_indirect_ea._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.6, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_indirect_ea\00", [16 x i8] zeroinitializer }, align 32
@get_indirect_ea._entry_ptr = internal global ptr @get_indirect_ea._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 22, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 23, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 23, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 29, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 143, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 169, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 248, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [16 x i8] c"../fs/hpfs/ea.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 55, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @get_indirect_ea._entry, ptr @get_indirect_ea._entry_ptr, ptr @hpfs_get_ea._entry, ptr @hpfs_get_ea._entry.7, ptr @hpfs_get_ea._entry_ptr, ptr @hpfs_get_ea._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_get_ea._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_get_ea._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_indirect_ea._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_ea_ext_remove(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %ex = alloca [268 x i8], align 1
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp95.not = icmp eq i32 %len, 0
  br i1 %cmp95.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %valuelen_lo.i = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 2
  %valuelen_hi.i = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 3
  %namelen = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 1
  %add.ptr = getelementptr inbounds i8, ptr %ex, i32 4
  %add.ptr.i = getelementptr inbounds i8, ptr %ex, i32 9
  %add.ptr.i80 = getelementptr inbounds i8, ptr %ex, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.096 = phi i32 [ 0, %while.body.lr.ph ], [ %add31, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %ex) #8
  %0 = call ptr @memset(ptr %ex, i32 255, i32 268)
  %add = add i32 %pos.096, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp1 = icmp ugt i32 %add, %len
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool.not = icmp eq i32 %ano, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %a, i32 noundef %len) #8
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %call = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %pos.096, i32 noundef 4, ptr noundef nonnull %ex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ex, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv1.i, 8
  %add.i = or i32 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp9.not = icmp eq i32 %add.i, 8
  br i1 %cmp9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool11.not = icmp eq i32 %ano, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond12, i32 noundef %a, i32 noundef %pos.096) #8
  br label %cleanup.thread

if.end13:                                         ; preds = %if.then7
  %8 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %namelen, align 1
  %conv = zext i8 %9 to i32
  %add15 = add nuw nsw i32 %conv, 9
  %call17 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %add, i32 noundef %add15, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.cleanup.thread_crit_edge

if.end13.cleanup.thread_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %namelen, align 1
  %conv.i78 = zext i8 %11 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i78
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr1.i, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ex, align 1
  %17 = lshr i8 %16, 1
  %.lobit = and i8 %17, 1
  %18 = zext i8 %.lobit to i32
  %add.ptr1.i83 = getelementptr i8, ptr %add.ptr.i80, i32 %conv.i78
  %19 = ptrtoint ptr %add.ptr1.i83 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr1.i83, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20) #8
  call void @hpfs_ea_remove(ptr noundef %s, i32 noundef %14, i32 noundef %18, i32 noundef %21) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end13.cleanup.thread_crit_edge, %if.then10, %if.end.cleanup.thread_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  br label %cleanup41

cleanup:                                          ; preds = %if.end20, %if.end5.cleanup_crit_edge
  %22 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %namelen, align 1
  %conv27 = zext i8 %23 to i32
  %24 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i85 = zext i8 %25 to i32
  %26 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i87 = zext i8 %27 to i32
  %mul.i88 = shl nuw nsw i32 %conv1.i87, 8
  %add.i89 = or i32 %mul.i88, %conv.i85
  %add29 = add i32 %pos.096, 5
  %add30 = add i32 %add29, %conv27
  %add31 = add i32 %add30, %add.i89
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  %cmp = icmp ult i32 %add31, %len
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool33.not = icmp eq i32 %ano, 0
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %add35 = add i32 %len, 511
  %shr = lshr i32 %add35, 9
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %a, i32 noundef %shr) #8
  br label %cleanup41

if.else:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !32
  %call36 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %a, ptr noundef nonnull %bh) #8
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.else.if.end39_crit_edge, label %if.then38

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %if.else
  %btree = getelementptr inbounds %struct.anode, ptr %call36, i32 0, i32 3
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree) #8
  %29 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then38.brelse.exit_crit_edge, label %if.then.i

if.then38.brelse.exit_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %30) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then38.brelse.exit_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %a, i32 noundef 1) #8
  br label %if.end39

if.end39:                                         ; preds = %brelse.exit, %if.else.if.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %cleanup41

cleanup41:                                        ; preds = %if.end39, %if.then34, %cleanup.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_ea_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_ea_remove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_free_sectors(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_anode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_remove_btree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_read_ea(ptr noundef %s, ptr noundef readonly %fnode, ptr nocapture noundef readonly %key, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %ex = alloca [268 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %ex) #8
  %0 = call ptr @memset(ptr %ex, i32 255, i32 268)
  %ea_offs.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 19
  %1 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ea_offs.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %fnode, i32 %conv.i
  %acl_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 7
  %4 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %acl_size_s.i, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  %conv1.i = zext i16 %6 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %ea_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 12
  %7 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ea_size_s.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %conv3.i = zext i16 %9 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  %cmp217 = icmp ult ptr %add.ptr2.i, %add.ptr4.i
  br i1 %cmp217, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ea.0218 = phi ptr [ %add.ptr2.i170, %for.inc.for.body_crit_edge ], [ %add.ptr2.i, %entry.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 4
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %ea.0218 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ea.0218, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.not, label %if.end, label %if.then.indirect_crit_edge

if.then.indirect_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %indirect

if.end:                                           ; preds = %if.then
  %valuelen_lo.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 2
  %13 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i150 = zext i8 %14 to i32
  %valuelen_hi.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 3
  %15 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i151 = zext i8 %16 to i32
  %mul.i = shl nuw nsw i32 %conv1.i151, 8
  %add.i = or i32 %mul.i, %conv.i150
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %size)
  %cmp6.not = icmp ult i32 %add.i, %size
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i152 = getelementptr i8, ptr %ea.0218, i32 5
  %namelen.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 1
  %17 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %namelen.i, align 1
  %conv.i153 = zext i8 %18 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i152, i32 %conv.i153
  %19 = call ptr @memcpy(ptr %buf, ptr %add.ptr1.i, i32 %add.i)
  %20 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i161 = zext i8 %21 to i32
  %22 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i163 = zext i8 %23 to i32
  %mul.i164 = shl nuw nsw i32 %conv1.i163, 8
  %add.i165 = or i32 %mul.i164, %conv.i161
  %arrayidx = getelementptr i8, ptr %buf, i32 %add.i165
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add.ptr.i166 = getelementptr i8, ptr %ea.0218, i32 5
  %namelen.i167 = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 1
  %25 = ptrtoint ptr %namelen.i167 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %namelen.i167, align 1
  %conv.i168 = zext i8 %26 to i32
  %add.ptr1.i169 = getelementptr i8, ptr %add.ptr.i166, i32 %conv.i168
  %valuelen_lo.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 2
  %27 = ptrtoint ptr %valuelen_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %valuelen_lo.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %valuelen_hi.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0218, i32 0, i32 3
  %29 = ptrtoint ptr %valuelen_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valuelen_hi.i.i, align 1
  %conv1.i.i = zext i8 %30 to i32
  %mul.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i.i = or i32 %mul.i.i, %conv.i.i
  %add.ptr2.i170 = getelementptr i8, ptr %add.ptr1.i169, i32 %add.i.i
  %cmp = icmp ult ptr %add.ptr2.i170, %add.ptr4.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ea_secno = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 11
  %31 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ea_secno, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %ea_size_l = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 10
  %34 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ea_size_l, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %flags.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 13
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags.i, align 2
  %39 = and i16 %38, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i.not = icmp eq i16 %39, 0
  %.lobit = lshr exact i16 %39, 9
  %40 = zext i16 %.lobit to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp15219.not = icmp eq i32 %35, 0
  br i1 %cmp15219.not, label %for.end.cleanup_crit_edge, label %while.body.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.end
  %namelen = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 1
  %add.ptr = getelementptr inbounds i8, ptr %ex, i32 4
  %valuelen_lo.i191 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 2
  %valuelen_hi.i193 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %while.body.lr.ph
  %pos.0220 = phi i32 [ 0, %while.body.lr.ph ], [ %add71, %if.end65.while.body_crit_edge ]
  %add = add i32 %pos.0220, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %36)
  %cmp18 = icmp ugt i32 %add, %36
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.i.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %33, i32 noundef %36) #8
  br label %cleanup

if.end22:                                         ; preds = %while.body
  %call24 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %33, i32 noundef %40, i32 noundef %pos.0220, i32 noundef 4, ptr noundef nonnull %ex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %41 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %namelen, align 1
  %conv29 = zext i8 %42 to i32
  %add30 = add nuw nsw i32 %conv29, 1
  %43 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ex, align 1
  %45 = shl i8 %44, 3
  %46 = and i8 %45, 8
  %47 = zext i8 %46 to i32
  %add34 = add nuw nsw i32 %add30, %47
  %call36 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %33, i32 noundef %40, i32 noundef %add, i32 noundef %add34, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %call42 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end65

if.then44:                                        ; preds = %if.end39
  %48 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ex, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.i172.not = icmp eq i8 %50, 0
  br i1 %tobool.i172.not, label %if.end47, label %if.then44.indirect_crit_edge

if.then44.indirect_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %indirect

if.end47:                                         ; preds = %if.then44
  %51 = ptrtoint ptr %valuelen_lo.i191 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %valuelen_lo.i191, align 1
  %conv.i174 = zext i8 %52 to i32
  %53 = ptrtoint ptr %valuelen_hi.i193 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %valuelen_hi.i193, align 1
  %conv1.i176 = zext i8 %54 to i32
  %mul.i177 = shl nuw nsw i32 %conv1.i176, 8
  %add.i178 = or i32 %mul.i177, %conv.i174
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i178, i32 %size)
  %cmp49.not = icmp ult i32 %add.i178, %size
  br i1 %cmp49.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %55 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %namelen, align 1
  %conv55 = zext i8 %56 to i32
  %add56 = add i32 %pos.0220, 5
  %add57 = add i32 %add56, %conv55
  %call59 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %33, i32 noundef %40, i32 noundef %add57, i32 noundef %add.i178, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %valuelen_lo.i191 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %valuelen_lo.i191, align 1
  %conv.i186 = zext i8 %58 to i32
  %59 = ptrtoint ptr %valuelen_hi.i193 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %valuelen_hi.i193, align 1
  %conv1.i188 = zext i8 %60 to i32
  %mul.i189 = shl nuw nsw i32 %conv1.i188, 8
  %add.i190 = or i32 %mul.i189, %conv.i186
  %arrayidx64 = getelementptr i8, ptr %buf, i32 %add.i190
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx64, align 1
  br label %cleanup

if.end65:                                         ; preds = %if.end39
  %62 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %namelen, align 1
  %conv67 = zext i8 %63 to i32
  %64 = ptrtoint ptr %valuelen_lo.i191 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %valuelen_lo.i191, align 1
  %conv.i192 = zext i8 %65 to i32
  %66 = ptrtoint ptr %valuelen_hi.i193 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %valuelen_hi.i193, align 1
  %conv1.i194 = zext i8 %67 to i32
  %mul.i195 = shl nuw nsw i32 %conv1.i194, 8
  %add.i196 = or i32 %mul.i195, %conv.i192
  %add69 = add i32 %pos.0220, 5
  %add70 = add i32 %add69, %conv67
  %add71 = add i32 %add70, %add.i196
  %cmp15 = icmp ult i32 %add71, %36
  br i1 %cmp15, label %if.end65.while.body_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

indirect:                                         ; preds = %if.then44.indirect_crit_edge, %if.then.indirect_crit_edge
  %ea.1 = phi ptr [ %ea.0218, %if.then.indirect_crit_edge ], [ %ex, %if.then44.indirect_crit_edge ]
  %add.ptr.i197 = getelementptr i8, ptr %ea.1, i32 5
  %namelen.i198 = getelementptr inbounds %struct.extended_attribute, ptr %ea.1, i32 0, i32 1
  %68 = ptrtoint ptr %namelen.i198 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %namelen.i198, align 1
  %conv.i199 = zext i8 %69 to i32
  %add.ptr1.i200 = getelementptr i8, ptr %add.ptr.i197, i32 %conv.i199
  %70 = ptrtoint ptr %add.ptr1.i200 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %add.ptr1.i200, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %size)
  %cmp73.not = icmp ult i32 %72, %size
  br i1 %cmp73.not, label %if.end76, label %indirect.cleanup_crit_edge

indirect.cleanup_crit_edge:                       ; preds = %indirect
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %indirect
  %add.ptr.i201 = getelementptr i8, ptr %ea.1, i32 9
  %add.ptr1.i204 = getelementptr i8, ptr %add.ptr.i201, i32 %conv.i199
  %73 = ptrtoint ptr %add.ptr1.i204 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %add.ptr1.i204, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #8
  %76 = ptrtoint ptr %ea.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ea.1, align 1
  %78 = lshr i8 %77, 1
  %.lobit214 = and i8 %78, 1
  %79 = zext i8 %.lobit214 to i32
  %call81 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %75, i32 noundef %79, i32 noundef 0, i32 noundef %72, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %namelen.i198 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %namelen.i198, align 1
  %conv.i212 = zext i8 %81 to i32
  %add.ptr1.i213 = getelementptr i8, ptr %add.ptr.i197, i32 %conv.i212
  %82 = ptrtoint ptr %add.ptr1.i213 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr1.i213, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #8
  %arrayidx86 = getelementptr i8, ptr %buf, i32 %84
  %85 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx86, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end76.cleanup_crit_edge, %indirect.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end62, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then20, %for.end.cleanup_crit_edge, %if.end8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ 0, %if.end8 ], [ -5, %if.then20 ], [ 0, %if.end62 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end47.cleanup_crit_edge ], [ -5, %if.end52.cleanup_crit_edge ], [ -22, %indirect.cleanup_crit_edge ], [ -5, %if.end76.cleanup_crit_edge ], [ -2, %for.end.cleanup_crit_edge ], [ -5, %if.end22.cleanup_crit_edge ], [ -5, %if.end27.cleanup_crit_edge ], [ -2, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_get_ea(ptr noundef %s, ptr noundef readonly %fnode, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %size) local_unnamed_addr #0 align 64 {
entry:
  %ex = alloca [268 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ea_offs.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 19
  %0 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ea_offs.i, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #8
  %conv.i = zext i16 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %fnode, i32 %conv.i
  %acl_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 7
  %3 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %acl_size_s.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  %conv1.i = zext i16 %5 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %ea_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 12
  %6 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ea_size_s.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv3.i = zext i16 %8 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  %cmp307 = icmp ult ptr %add.ptr2.i, %add.ptr4.i
  br i1 %cmp307, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ea.0308 = phi ptr [ %add.ptr2.i221, %for.inc.for.body_crit_edge ], [ %add.ptr2.i, %entry.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 4
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %ea.0308 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ea.0308, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %add.ptr.i189 = getelementptr i8, ptr %ea.0308, i32 9
  %namelen.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 1
  %12 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %namelen.i, align 1
  %conv.i190 = zext i8 %13 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i189, i32 %conv.i190
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr1.i, align 1
  %add.ptr.i191 = getelementptr i8, ptr %ea.0308, i32 5
  %add.ptr1.i194 = getelementptr i8, ptr %add.ptr.i191, i32 %conv.i190
  %16 = ptrtoint ptr %add.ptr1.i194 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr1.i194, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size, align 4
  %add.i = add i32 %18, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i197

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup91

if.end.i197:                                      ; preds = %if.then4
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %21 = lshr i8 %10, 1
  %.lobit303 = and i8 %21, 1
  %22 = zext i8 %.lobit303 to i32
  %call2.i = tail call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %20, i32 noundef %22, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup91

if.end5.i:                                        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %18
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i, align 1
  br label %cleanup91

if.end:                                           ; preds = %if.then
  %valuelen_lo.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 2
  %24 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i198 = zext i8 %25 to i32
  %valuelen_hi.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 3
  %26 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i199 = zext i8 %27 to i32
  %mul.i = shl nuw nsw i32 %conv1.i199, 8
  %add.i200 = or i32 %mul.i, %conv.i198
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i200, ptr %size, align 4
  %add = add nuw nsw i32 %add.i200, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #12
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup91

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i201 = getelementptr i8, ptr %ea.0308, i32 5
  %namelen.i202 = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 1
  %29 = ptrtoint ptr %namelen.i202 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %namelen.i202, align 1
  %conv.i203 = zext i8 %30 to i32
  %add.ptr1.i204 = getelementptr i8, ptr %add.ptr.i201, i32 %conv.i203
  %31 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i206 = zext i8 %32 to i32
  %33 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i208 = zext i8 %34 to i32
  %mul.i209 = shl nuw nsw i32 %conv1.i208, 8
  %add.i210 = or i32 %mul.i209, %conv.i206
  %35 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr1.i204, i32 %add.i210)
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %add.i210
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup91

for.inc:                                          ; preds = %for.body
  %add.ptr.i217 = getelementptr i8, ptr %ea.0308, i32 5
  %namelen.i218 = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 1
  %37 = ptrtoint ptr %namelen.i218 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %namelen.i218, align 1
  %conv.i219 = zext i8 %38 to i32
  %add.ptr1.i220 = getelementptr i8, ptr %add.ptr.i217, i32 %conv.i219
  %valuelen_lo.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 2
  %39 = ptrtoint ptr %valuelen_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %valuelen_lo.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %valuelen_hi.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0308, i32 0, i32 3
  %41 = ptrtoint ptr %valuelen_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %valuelen_hi.i.i, align 1
  %conv1.i.i = zext i8 %42 to i32
  %mul.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i.i = or i32 %mul.i.i, %conv.i.i
  %add.ptr2.i221 = getelementptr i8, ptr %add.ptr1.i220, i32 %add.i.i
  %cmp = icmp ult ptr %add.ptr2.i221, %add.ptr4.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ea_secno = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 11
  %43 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ea_secno, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %ea_size_l = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 10
  %46 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ea_size_l, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %flags.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 13
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags.i, align 2
  %51 = and i16 %50, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i222.not = icmp eq i16 %51, 0
  %.lobit = lshr exact i16 %51, 9
  %52 = zext i16 %.lobit to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp22309.not = icmp eq i32 %47, 0
  br i1 %cmp22309.not, label %for.end.cleanup91_crit_edge, label %while.body.lr.ph

for.end.cleanup91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

while.body.lr.ph:                                 ; preds = %for.end
  %namelen = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 1
  %add.ptr = getelementptr inbounds i8, ptr %ex, i32 4
  %valuelen_lo.i293 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 2
  %valuelen_hi.i295 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0310 = phi i32 [ 0, %while.body.lr.ph ], [ %add90, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %ex) #8
  %53 = call ptr @memset(ptr %ex, i32 255, i32 268)
  %add25 = add i32 %pos.0310, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %48)
  %cmp26 = icmp ugt i32 %add25, %48
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.i222.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %45, i32 noundef %48) #8
  br label %cleanup.thread

if.end30:                                         ; preds = %while.body
  %call32 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %45, i32 noundef %52, i32 noundef %pos.0310, i32 noundef 4, ptr noundef nonnull %ex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup.thread_crit_edge

if.end30.cleanup.thread_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end35:                                         ; preds = %if.end30
  %54 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen, align 1
  %conv37 = zext i8 %55 to i32
  %add38 = add nuw nsw i32 %conv37, 1
  %56 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ex, align 1
  %58 = shl i8 %57, 3
  %59 = and i8 %58, 8
  %60 = zext i8 %59 to i32
  %add42 = add nuw nsw i32 %add38, %60
  %call44 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %45, i32 noundef %52, i32 noundef %add25, i32 noundef %add42, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end35.cleanup.thread_crit_edge

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end47:                                         ; preds = %if.end35
  %call50 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %cleanup

if.then52:                                        ; preds = %if.end47
  %61 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ex, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.i224.not = icmp eq i8 %63, 0
  br i1 %tobool.i224.not, label %if.end60, label %if.then54

if.then54:                                        ; preds = %if.then52
  %add.ptr.i226 = getelementptr inbounds i8, ptr %ex, i32 9
  %64 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %namelen, align 1
  %conv.i228 = zext i8 %65 to i32
  %add.ptr1.i229 = getelementptr i8, ptr %add.ptr.i226, i32 %conv.i228
  %66 = ptrtoint ptr %add.ptr1.i229 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr1.i229, align 1
  %add.ptr.i230 = getelementptr inbounds i8, ptr %ex, i32 5
  %add.ptr1.i233 = getelementptr i8, ptr %add.ptr.i230, i32 %conv.i228
  %68 = ptrtoint ptr %add.ptr1.i233 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %add.ptr1.i233, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size, align 4
  %add.i234 = add i32 %70, 1
  %call9.i.i259 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i234, i32 noundef 3136) #12
  %tobool.not.i262 = icmp eq ptr %call9.i.i259, null
  br i1 %tobool.not.i262, label %do.end.i265, label %if.end.i269

do.end.i265:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup.thread

if.end.i269:                                      ; preds = %if.then54
  %72 = call i32 @llvm.bswap.i32(i32 %67) #8
  %73 = lshr i8 %62, 1
  %.lobit302 = and i8 %73, 1
  %74 = zext i8 %.lobit302 to i32
  %call2.i267 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %72, i32 noundef %74, i32 noundef 0, i32 noundef %70, ptr noundef nonnull %call9.i.i259) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i267)
  %tobool3.not.i268 = icmp eq i32 %call2.i267, 0
  br i1 %tobool3.not.i268, label %if.end5.i272, label %if.then4.i270

if.then4.i270:                                    ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i259) #8
  br label %cleanup.thread

if.end5.i272:                                     ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i271 = getelementptr i8, ptr %call9.i.i259, i32 %70
  %75 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx.i271, align 1
  br label %cleanup.thread

if.end60:                                         ; preds = %if.then52
  %76 = ptrtoint ptr %valuelen_lo.i293 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %valuelen_lo.i293, align 1
  %conv.i276 = zext i8 %77 to i32
  %78 = ptrtoint ptr %valuelen_hi.i295 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %valuelen_hi.i295, align 1
  %conv1.i278 = zext i8 %79 to i32
  %mul.i279 = shl nuw nsw i32 %conv1.i278, 8
  %add.i280 = or i32 %mul.i279, %conv.i276
  %80 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i280, ptr %size, align 4
  %add62 = add nuw nsw i32 %add.i280, 1
  %call9.i178 = call noalias align 128 ptr @__kmalloc(i32 noundef %add62, i32 noundef 3136) #12
  %tobool64.not = icmp eq ptr %call9.i178, null
  br i1 %tobool64.not, label %do.end68, label %if.end71

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup.thread

if.end71:                                         ; preds = %if.end60
  %81 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %namelen, align 1
  %conv74 = zext i8 %82 to i32
  %add75 = add i32 %pos.0310, 5
  %add76 = add i32 %add75, %conv74
  %83 = ptrtoint ptr %valuelen_lo.i293 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %valuelen_lo.i293, align 1
  %conv.i282 = zext i8 %84 to i32
  %85 = ptrtoint ptr %valuelen_hi.i295 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %valuelen_hi.i295, align 1
  %conv1.i284 = zext i8 %86 to i32
  %mul.i285 = shl nuw nsw i32 %conv1.i284, 8
  %add.i286 = or i32 %mul.i285, %conv.i282
  %call78 = call i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %45, i32 noundef %52, i32 noundef %add76, i32 noundef %add.i286, ptr noundef nonnull %call9.i178) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i178) #8
  br label %cleanup.thread

if.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %valuelen_lo.i293 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %valuelen_lo.i293, align 1
  %conv.i288 = zext i8 %88 to i32
  %89 = ptrtoint ptr %valuelen_hi.i295 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %valuelen_hi.i295, align 1
  %conv1.i290 = zext i8 %90 to i32
  %mul.i291 = shl nuw nsw i32 %conv1.i290, 8
  %add.i292 = or i32 %mul.i291, %conv.i288
  %arrayidx83 = getelementptr i8, ptr %call9.i178, i32 %add.i292
  %91 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx83, align 1
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end81, %if.then80, %do.end68, %if.end5.i272, %if.then4.i270, %do.end.i265, %if.end35.cleanup.thread_crit_edge, %if.end30.cleanup.thread_crit_edge, %if.then28
  %retval.1.ph = phi ptr [ null, %do.end.i265 ], [ %call9.i.i259, %if.end5.i272 ], [ null, %if.then4.i270 ], [ null, %do.end68 ], [ %call9.i178, %if.end81 ], [ null, %if.then80 ], [ null, %if.then28 ], [ null, %if.end35.cleanup.thread_crit_edge ], [ null, %if.end30.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  br label %cleanup91

cleanup:                                          ; preds = %if.end47
  %92 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %namelen, align 1
  %conv86 = zext i8 %93 to i32
  %94 = ptrtoint ptr %valuelen_lo.i293 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %valuelen_lo.i293, align 1
  %conv.i294 = zext i8 %95 to i32
  %96 = ptrtoint ptr %valuelen_hi.i295 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %valuelen_hi.i295, align 1
  %conv1.i296 = zext i8 %97 to i32
  %mul.i297 = shl nuw nsw i32 %conv1.i296, 8
  %add.i298 = or i32 %mul.i297, %conv.i294
  %add88 = add i32 %pos.0310, 5
  %add89 = add i32 %add88, %conv86
  %add90 = add i32 %add89, %add.i298
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  %cmp22 = icmp ult i32 %add90, %48
  br i1 %cmp22, label %cleanup.while.body_crit_edge, label %cleanup.cleanup91_crit_edge

cleanup.cleanup91_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup91:                                        ; preds = %cleanup.cleanup91_crit_edge, %cleanup.thread, %for.end.cleanup91_crit_edge, %if.end14, %do.end, %if.end5.i, %if.then4.i, %do.end.i
  %retval.2 = phi ptr [ %call9.i, %if.end14 ], [ null, %do.end ], [ null, %if.then4.i ], [ %call9.i.i, %if.end5.i ], [ null, %do.end.i ], [ %retval.1.ph, %cleanup.thread ], [ null, %for.end.cleanup91_crit_edge ], [ null, %cleanup.cleanup91_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_set_ea(ptr nocapture noundef %inode, ptr noundef %fnode, ptr noundef %key, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %h = alloca [4 x i8], align 4
  %ex = alloca [268 x i8], align 1
  %bh = alloca ptr, align 4
  %bh1 = alloca ptr, align 4
  %bh2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #8
  %4 = getelementptr inbounds [4 x i8], ptr %h, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %h, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %h, i32 0, i32 3
  %ea_offs.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 19
  %7 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %h, align 4
  %8 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ea_offs.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %fnode, i32 %conv.i
  %acl_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 7
  %11 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %acl_size_s.i, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv1.i = zext i16 %13 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %ea_size_s.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 12
  %14 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ea_size_s.i, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %conv3.i = zext i16 %16 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  %cmp666 = icmp ult ptr %add.ptr2.i, %add.ptr4.i
  br i1 %cmp666, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ea.0667 = phi ptr [ %add.ptr2.i575, %for.inc.for.body_crit_edge ], [ %add.ptr2.i, %entry.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 4
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %17 = ptrtoint ptr %ea.0667 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ea.0667, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not = icmp eq i8 %19, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %add.ptr.i558 = getelementptr i8, ptr %ea.0667, i32 5
  %namelen.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 1
  %20 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %namelen.i, align 1
  %conv.i559 = zext i8 %21 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i558, i32 %conv.i559
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr1.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %size)
  %cmp6 = icmp eq i32 %24, %size
  br i1 %cmp6, label %if.then7, label %if.then4.cleanup349_crit_edge

if.then4.cleanup349_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup349

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %25 = lshr i8 %18, 1
  %.lobit654 = and i8 %25, 1
  %26 = zext i8 %.lobit654 to i32
  %add.ptr.i561 = getelementptr i8, ptr %ea.0667, i32 9
  %add.ptr1.i564 = getelementptr i8, ptr %add.ptr.i561, i32 %conv.i559
  %27 = ptrtoint ptr %add.ptr1.i564 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr1.i564, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %call.i = tail call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %29, i32 noundef %26, i32 noundef 0, i32 noundef %size, ptr noundef %data) #8
  br label %cleanup349

if.else:                                          ; preds = %if.then
  %valuelen_lo.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 2
  %30 = ptrtoint ptr %valuelen_lo.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valuelen_lo.i, align 1
  %conv.i565 = zext i8 %31 to i32
  %valuelen_hi.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 3
  %32 = ptrtoint ptr %valuelen_hi.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valuelen_hi.i, align 1
  %conv1.i566 = zext i8 %33 to i32
  %mul.i = shl nuw nsw i32 %conv1.i566, 8
  %add.i = or i32 %mul.i, %conv.i565
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %size)
  %cmp11 = icmp eq i32 %add.i, %size
  br i1 %cmp11, label %if.then13, label %if.else.cleanup349_crit_edge

if.else.cleanup349_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup349

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i567 = getelementptr i8, ptr %ea.0667, i32 5
  %namelen.i568 = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 1
  %34 = ptrtoint ptr %namelen.i568 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %namelen.i568, align 1
  %conv.i569 = zext i8 %35 to i32
  %add.ptr1.i570 = getelementptr i8, ptr %add.ptr.i567, i32 %conv.i569
  %36 = call ptr @memcpy(ptr %add.ptr1.i570, ptr %data, i32 %size)
  br label %cleanup349

for.inc:                                          ; preds = %for.body
  %add.ptr.i571 = getelementptr i8, ptr %ea.0667, i32 5
  %namelen.i572 = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 1
  %37 = ptrtoint ptr %namelen.i572 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %namelen.i572, align 1
  %conv.i573 = zext i8 %38 to i32
  %add.ptr1.i574 = getelementptr i8, ptr %add.ptr.i571, i32 %conv.i573
  %valuelen_lo.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 2
  %39 = ptrtoint ptr %valuelen_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %valuelen_lo.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %valuelen_hi.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0667, i32 0, i32 3
  %41 = ptrtoint ptr %valuelen_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %valuelen_hi.i.i, align 1
  %conv1.i.i = zext i8 %42 to i32
  %mul.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i.i = or i32 %mul.i.i, %conv.i.i
  %add.ptr2.i575 = getelementptr i8, ptr %add.ptr1.i574, i32 %add.i.i
  %cmp = icmp ult ptr %add.ptr2.i575, %add.ptr4.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ea_secno = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 11
  %43 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ea_secno, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %ea_size_l = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 10
  %46 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ea_size_l, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %flags.i = getelementptr inbounds %struct.fnode, ptr %fnode, i32 0, i32 13
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags.i, align 2
  %51 = and i16 %50, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i.not = icmp eq i16 %51, 0
  %.lobit = lshr exact i16 %51, 9
  %52 = zext i16 %.lobit to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp21668.not = icmp eq i32 %47, 0
  br i1 %cmp21668.not, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %namelen = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 1
  %add.ptr = getelementptr inbounds i8, ptr %ex, i32 4
  %valuelen_lo.i594 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 2
  %valuelen_hi.i596 = getelementptr inbounds %struct.extended_attribute, ptr %ex, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0669 = phi i32 [ 0, %while.body.lr.ph ], [ %add80, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %ex) #8
  %53 = call ptr @memset(ptr %ex, i32 255, i32 268)
  %add = add i32 %pos.0669, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %48)
  %cmp24 = icmp ugt i32 %add, %48
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.i.not, ptr @.str.2, ptr @.str.1
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %45, i32 noundef %48) #8
  br label %cleanup.thread

if.end28:                                         ; preds = %while.body
  %call30 = call i32 @hpfs_ea_read(ptr noundef %3, i32 noundef %45, i32 noundef %52, i32 noundef %pos.0669, i32 noundef 4, ptr noundef nonnull %ex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup.thread_crit_edge

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end33:                                         ; preds = %if.end28
  %54 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen, align 1
  %conv35 = zext i8 %55 to i32
  %add36 = add nuw nsw i32 %conv35, 1
  %56 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ex, align 1
  %58 = shl i8 %57, 3
  %59 = and i8 %58, 8
  %60 = zext i8 %59 to i32
  %add40 = add nuw nsw i32 %add36, %60
  %call42 = call i32 @hpfs_ea_read(ptr noundef %3, i32 noundef %45, i32 noundef %52, i32 noundef %add, i32 noundef %add40, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end33.cleanup.thread_crit_edge

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end33
  %call48 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.end45
  %61 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ex, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.i577.not = icmp eq i8 %63, 0
  br i1 %tobool.i577.not, label %if.else61, label %if.then52

if.then52:                                        ; preds = %if.then50
  %add.ptr.i578 = getelementptr inbounds i8, ptr %ex, i32 5
  %64 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %namelen, align 1
  %conv.i580 = zext i8 %65 to i32
  %add.ptr1.i581 = getelementptr i8, ptr %add.ptr.i578, i32 %conv.i580
  %66 = ptrtoint ptr %add.ptr1.i581 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr1.i581, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %size)
  %cmp54 = icmp eq i32 %68, %size
  br i1 %cmp54, label %if.then56, label %if.then52.cleanup.thread_crit_edge

if.then52.cleanup.thread_crit_edge:               ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %69 = lshr i8 %62, 1
  %.lobit653 = and i8 %69, 1
  %70 = zext i8 %.lobit653 to i32
  %add.ptr.i583 = getelementptr inbounds i8, ptr %ex, i32 9
  %add.ptr1.i586 = getelementptr i8, ptr %add.ptr.i583, i32 %conv.i580
  %71 = ptrtoint ptr %add.ptr1.i586 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %add.ptr1.i586, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #8
  %call.i587 = call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %73, i32 noundef %70, i32 noundef 0, i32 noundef %size, ptr noundef %data) #8
  br label %cleanup.thread

if.else61:                                        ; preds = %if.then50
  %74 = ptrtoint ptr %valuelen_lo.i594 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %valuelen_lo.i594, align 1
  %conv.i589 = zext i8 %75 to i32
  %76 = ptrtoint ptr %valuelen_hi.i596 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %valuelen_hi.i596, align 1
  %conv1.i591 = zext i8 %77 to i32
  %mul.i592 = shl nuw nsw i32 %conv1.i591, 8
  %add.i593 = or i32 %mul.i592, %conv.i589
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i593, i32 %size)
  %cmp63 = icmp eq i32 %add.i593, %size
  br i1 %cmp63, label %if.then65, label %if.else61.cleanup.thread_crit_edge

if.else61.cleanup.thread_crit_edge:               ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %namelen, align 1
  %conv68 = zext i8 %79 to i32
  %add69 = add i32 %pos.0669, 5
  %add70 = add i32 %add69, %conv68
  %call71 = call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %45, i32 noundef %52, i32 noundef %add70, i32 noundef %size, ptr noundef %data) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then65, %if.else61.cleanup.thread_crit_edge, %if.then56, %if.then52.cleanup.thread_crit_edge, %if.end33.cleanup.thread_crit_edge, %if.end28.cleanup.thread_crit_edge, %if.then26
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  br label %cleanup349

cleanup:                                          ; preds = %if.end45
  %80 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %namelen, align 1
  %conv76 = zext i8 %81 to i32
  %82 = ptrtoint ptr %valuelen_lo.i594 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %valuelen_lo.i594, align 1
  %conv.i595 = zext i8 %83 to i32
  %84 = ptrtoint ptr %valuelen_hi.i596 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %valuelen_hi.i596, align 1
  %conv1.i597 = zext i8 %85 to i32
  %mul.i598 = shl nuw nsw i32 %conv1.i597, 8
  %add.i599 = or i32 %mul.i598, %conv.i595
  %add78 = add i32 %pos.0669, 5
  %add79 = add i32 %add78, %conv76
  %add80 = add i32 %add79, %add.i599
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %ex) #8
  %cmp21 = icmp ult i32 %add80, %48
  br i1 %cmp21, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %for.end.while.end_crit_edge
  %86 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ea_offs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool81.not = icmp eq i16 %87, 0
  br i1 %tobool81.not, label %if.then82, label %while.end.if.end84_crit_edge

while.end.if.end84_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then82:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -15360, ptr %ea_offs.i, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %while.end.if.end84_crit_edge
  %89 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ea_offs.i, align 4
  %91 = call i16 @llvm.bswap.i16(i16 %90)
  call void @__sanitizer_cov_trace_const_cmp2(i16 196, i16 %91)
  %cmp87 = icmp ult i16 %91, 196
  %.pre = zext i16 %91 to i32
  br i1 %cmp87, label %if.end84.if.then97_crit_edge, label %lor.lhs.false

if.end84.if.then97_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

lor.lhs.false:                                    ; preds = %if.end84
  %92 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %acl_size_s.i, align 4
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %conv91 = zext i16 %94 to i32
  %add92 = add nuw nsw i32 %conv91, %.pre
  %95 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %ea_size_s.i, align 4
  %97 = call i16 @llvm.bswap.i16(i16 %96)
  %conv93 = zext i16 %97 to i32
  %add94 = add nuw nsw i32 %add92, %conv93
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add94)
  %cmp95 = icmp ugt i32 %add94, 512
  br i1 %cmp95, label %lor.lhs.false.if.then97_crit_edge, label %if.end103

lor.lhs.false.if.then97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false.if.then97_crit_edge, %if.end84.if.then97_crit_edge
  %98 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_ino, align 8
  %100 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ea_size_s.i, align 4
  %102 = call i16 @llvm.bswap.i16(i16 %101)
  %conv102 = zext i16 %102 to i32
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %99, i32 noundef %.pre, i32 noundef %conv102) #8
  br label %cleanup349

if.end103:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool106.not = icmp eq i16 %96, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %if.end103.land.lhs.true_crit_edge

if.end103.land.lhs.true_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false107:                                 ; preds = %if.end103
  %103 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ea_size_l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool109.not = icmp eq i32 %104, 0
  br i1 %tobool109.not, label %lor.lhs.false107.land.lhs.true_crit_edge, label %lor.lhs.false107.if.end175_crit_edge

lor.lhs.false107.land.lhs.true_crit_edge:         ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false107.if.end175_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #10
  %.pre684 = add i32 %size, 5
  br label %if.end175

land.lhs.true:                                    ; preds = %lor.lhs.false107.land.lhs.true_crit_edge, %if.end103.land.lhs.true_crit_edge
  %call118 = call i32 @strlen(ptr noundef %key) #11
  %add119 = add i32 %size, 5
  %add120 = add i32 %add119, %add94
  %add121 = add i32 %add120, %call118
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add121)
  %cmp122 = icmp ult i32 %add121, 513
  br i1 %cmp122, label %if.then124, label %if.end143

if.then124:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i602 = getelementptr i8, ptr %fnode, i32 %.pre
  %add.ptr2.i605 = getelementptr i8, ptr %add.ptr.i602, i32 %conv91
  %add.ptr4.i608 = getelementptr i8, ptr %add.ptr2.i605, i32 %conv93
  %105 = ptrtoint ptr %add.ptr4.i608 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %add.ptr4.i608, align 1
  %call126 = call i32 @strlen(ptr noundef %key) #11
  %conv127 = trunc i32 %call126 to i8
  %namelen128 = getelementptr inbounds %struct.extended_attribute, ptr %add.ptr4.i608, i32 0, i32 1
  %106 = ptrtoint ptr %namelen128 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv127, ptr %namelen128, align 1
  %conv129 = trunc i32 %size to i8
  %valuelen_lo = getelementptr inbounds %struct.extended_attribute, ptr %add.ptr4.i608, i32 0, i32 2
  %107 = ptrtoint ptr %valuelen_lo to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv129, ptr %valuelen_lo, align 1
  %108 = lshr i32 %size, 8
  %conv130 = trunc i32 %108 to i8
  %valuelen_hi = getelementptr inbounds %struct.extended_attribute, ptr %add.ptr4.i608, i32 0, i32 3
  %109 = ptrtoint ptr %valuelen_hi to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv130, ptr %valuelen_hi, align 1
  %name131 = getelementptr inbounds %struct.extended_attribute, ptr %add.ptr4.i608, i32 0, i32 4
  %call133 = call ptr @strcpy(ptr noundef %name131, ptr noundef %key) #11
  %add.ptr.i609 = getelementptr i8, ptr %add.ptr4.i608, i32 5
  %conv.i611 = and i32 %call126, 255
  %add.ptr1.i612 = getelementptr i8, ptr %add.ptr.i609, i32 %conv.i611
  %110 = call ptr @memcpy(ptr %add.ptr1.i612, ptr %data, i32 %size)
  %111 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ea_size_s.i, align 4
  %113 = call i16 @llvm.bswap.i16(i16 %112)
  %call137 = call i32 @strlen(ptr noundef %key) #11
  %add138 = add i32 %call137, %size
  %114 = trunc i32 %add138 to i16
  %115 = add i16 %113, %114
  %conv141 = add i16 %115, 5
  %116 = call i16 @llvm.bswap.i16(i16 %conv141)
  %117 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %ea_size_s.i, align 4
  br label %ret

if.end143:                                        ; preds = %land.lhs.true
  br i1 %tobool106.not, label %if.end143.if.end175_crit_edge, label %land.lhs.true147

if.end143.if.end175_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

land.lhs.true147:                                 ; preds = %if.end143
  %118 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ea_size_l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool149.not = icmp eq i32 %119, 0
  br i1 %tobool149.not, label %if.then150, label %land.lhs.true147.if.end175_crit_edge

land.lhs.true147.if.end175_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then150:                                       ; preds = %land.lhs.true147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %120 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !32
  %call152 = call i32 @hpfs_alloc_sector(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then150.cleanup170_crit_edge, label %if.end155

if.then150.cleanup170_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup170

if.end155:                                        ; preds = %if.then150
  %call156 = call ptr @hpfs_get_sector(ptr noundef %3, i32 noundef %call152, ptr noundef nonnull %bh) #8
  %tobool157.not = icmp eq ptr %call156, null
  br i1 %tobool157.not, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_free_sectors(ptr noundef %3, i32 noundef %call152, i32 noundef 1) #8
  br label %cleanup170

if.end159:                                        ; preds = %if.end155
  %121 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %ea_offs.i, align 4
  %123 = call i16 @llvm.bswap.i16(i16 %122) #8
  %conv.i614 = zext i16 %123 to i32
  %add.ptr.i615 = getelementptr i8, ptr %fnode, i32 %conv.i614
  %124 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %acl_size_s.i, align 4
  %126 = call i16 @llvm.bswap.i16(i16 %125) #8
  %conv1.i617 = zext i16 %126 to i32
  %add.ptr2.i618 = getelementptr i8, ptr %add.ptr.i615, i32 %conv1.i617
  %127 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ea_size_s.i, align 4
  %129 = call i16 @llvm.bswap.i16(i16 %128)
  %conv162 = zext i16 %129 to i32
  %130 = call ptr @memcpy(ptr %call156, ptr %add.ptr2.i618, i32 %conv162)
  %131 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %ea_size_s.i, align 4
  %133 = call i16 @llvm.bswap.i16(i16 %132)
  %conv164 = zext i16 %133 to i32
  %134 = call i32 @llvm.bswap.i32(i32 %conv164)
  %135 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %ea_size_l, align 4
  %136 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %ea_size_s.i, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %call152)
  %138 = ptrtoint ptr %ea_secno to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %ea_secno, align 4
  %139 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %flags.i, align 2
  %141 = and i16 %140, -513
  store i16 %141, ptr %flags.i, align 2
  %142 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %143) #8
  %144 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %145, null
  br i1 %tobool.not.i, label %if.end159.brelse.exit_crit_edge, label %if.then.i

if.end159.brelse.exit_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %145) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end159.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %if.end175

cleanup170:                                       ; preds = %if.then158, %if.then150.cleanup170_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %cleanup349

if.end175:                                        ; preds = %brelse.exit, %land.lhs.true147.if.end175_crit_edge, %if.end143.if.end175_crit_edge, %lor.lhs.false107.if.end175_crit_edge
  %add177.pre-phi = phi i32 [ %.pre684, %lor.lhs.false107.if.end175_crit_edge ], [ %add119, %brelse.exit ], [ %add119, %land.lhs.true147.if.end175_crit_edge ], [ %add119, %if.end143.if.end175_crit_edge ]
  %146 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ea_size_l, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147)
  %call178 = call i32 @strlen(ptr noundef %key) #11
  %add179 = add i32 %add177.pre-phi, %148
  %add180 = add i32 %add179, %call178
  %add182 = add i32 %148, 511
  %shr183 = lshr i32 %add182, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %add180)
  %cmp184 = icmp ugt i32 %add180, 29999
  br i1 %cmp184, label %if.end175.bail_crit_edge, label %while.cond188.preheader

if.end175.bail_crit_edge:                         ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

while.cond188.preheader:                          ; preds = %if.end175
  %add189 = add nuw nsw i32 %add180, 511
  %shr190 = lshr i32 %add189, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr190, i32 %shr183)
  %cmp191672 = icmp ugt i32 %shr190, %shr183
  br i1 %cmp191672, label %while.body193.lr.ph, label %while.cond188.preheader.while.end276_crit_edge

while.cond188.preheader.while.end276_crit_edge:   ; preds = %while.cond188.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end276

while.body193.lr.ph:                              ; preds = %while.cond188.preheader
  %sub = sub nsw i32 1, %shr190
  br label %while.body193

while.body193:                                    ; preds = %if.end275.while.body193_crit_edge, %while.body193.lr.ph
  %len.0673 = phi i32 [ %shr183, %while.body193.lr.ph ], [ %len.4, %if.end275.while.body193_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0673)
  %tobool194.not = icmp eq i32 %len.0673, 0
  br i1 %tobool194.not, label %if.then195, label %if.else208

if.then195:                                       ; preds = %while.body193
  %call196 = call i32 @hpfs_alloc_sector(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then195.bail_crit_edge, label %cleanup205.thread

if.then195.bail_crit_edge:                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

cleanup205.thread:                                ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  %149 = call i32 @llvm.bswap.i32(i32 %call196)
  %150 = ptrtoint ptr %ea_secno to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %ea_secno, align 4
  %151 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %flags.i, align 2
  %153 = and i16 %152, -513
  store i16 %153, ptr %flags.i, align 2
  br label %if.end264

if.else208:                                       ; preds = %while.body193
  %154 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %flags.i, align 2
  %156 = and i16 %155, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %cmp.i620.not = icmp eq i16 %156, 0
  br i1 %cmp.i620.not, label %if.then210, label %if.else208.if.end264_crit_edge

if.else208.if.end264_crit_edge:                   ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then210:                                       ; preds = %if.else208
  %157 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ea_secno, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %add212 = add i32 %159, %len.0673
  %call213 = call i32 @hpfs_alloc_if_possible(ptr noundef %3, i32 noundef %add212) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.else217, label %if.then215

if.then215:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #10
  %inc216 = add nuw i32 %len.0673, 1
  br label %if.end264

if.else217:                                       ; preds = %if.then210
  %call220 = call i32 @hpfs_alloc_sector(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.else217.bail_crit_edge, label %for.cond224.preheader

if.else217.bail_crit_edge:                        ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

for.cond224.preheader:                            ; preds = %if.else217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0673)
  %cmp225670 = icmp sgt i32 %len.0673, 0
  br i1 %cmp225670, label %for.cond224.preheader.for.body227_crit_edge, label %for.cond224.preheader.cleanup258_crit_edge

for.cond224.preheader.cleanup258_crit_edge:       ; preds = %for.cond224.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup258

for.cond224.preheader.for.body227_crit_edge:      ; preds = %for.cond224.preheader
  br label %for.body227

for.body227:                                      ; preds = %for.inc251.for.body227_crit_edge, %for.cond224.preheader.for.body227_crit_edge
  %i.0671 = phi i32 [ %inc252, %for.inc251.for.body227_crit_edge ], [ 0, %for.cond224.preheader.for.body227_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh1) #8
  %160 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh1, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh2) #8
  %161 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh2, align 4, !annotation !32
  %162 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ea_secno, align 4
  %164 = call i32 @llvm.bswap.i32(i32 %163)
  %add229 = add i32 %164, %i.0671
  %165 = xor i32 %i.0671, -1
  %sub231 = add i32 %len.0673, %165
  %call232 = call ptr @hpfs_map_sector(ptr noundef %3, i32 noundef %add229, ptr noundef nonnull %bh1, i32 noundef %sub231) #8
  %tobool233.not = icmp eq ptr %call232, null
  br i1 %tobool233.not, label %for.body227.cleanup245_crit_edge, label %if.end237

for.body227.cleanup245_crit_edge:                 ; preds = %for.body227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup245

if.end237:                                        ; preds = %for.body227
  %add238 = add i32 %i.0671, %call220
  %call239 = call ptr @hpfs_get_sector(ptr noundef %3, i32 noundef %add238, ptr noundef nonnull %bh2) #8
  %tobool240.not = icmp eq ptr %call239, null
  br i1 %tobool240.not, label %if.then241, label %if.end244

if.then241:                                       ; preds = %if.end237
  %166 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bh1, align 4
  %tobool.not.i621 = icmp eq ptr %167, null
  br i1 %tobool.not.i621, label %if.then241.cleanup245_crit_edge, label %if.then.i622

if.then241.cleanup245_crit_edge:                  ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup245

if.then.i622:                                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %167) #8
  br label %cleanup245

if.end244:                                        ; preds = %if.end237
  %168 = call ptr @memcpy(ptr %call239, ptr %call232, i32 512)
  %169 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bh1, align 4
  %tobool.not.i624 = icmp eq ptr %170, null
  br i1 %tobool.not.i624, label %if.end244.brelse.exit626_crit_edge, label %if.then.i625

if.end244.brelse.exit626_crit_edge:               ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit626

if.then.i625:                                     ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %170) #8
  br label %brelse.exit626

brelse.exit626:                                   ; preds = %if.then.i625, %if.end244.brelse.exit626_crit_edge
  %171 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh2, align 4
  call void @mark_buffer_dirty(ptr noundef %172) #8
  %173 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bh2, align 4
  %tobool.not.i627 = icmp eq ptr %174, null
  br i1 %tobool.not.i627, label %brelse.exit626.for.inc251_crit_edge, label %if.then.i628

brelse.exit626.for.inc251_crit_edge:              ; preds = %brelse.exit626
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc251

if.then.i628:                                     ; preds = %brelse.exit626
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %174) #8
  br label %for.inc251

cleanup245:                                       ; preds = %if.then.i622, %if.then241.cleanup245_crit_edge, %for.body227.cleanup245_crit_edge
  call void @hpfs_free_sectors(ptr noundef %3, i32 noundef %call220, i32 noundef %shr190) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh1) #8
  br label %bail

for.inc251:                                       ; preds = %if.then.i628, %brelse.exit626.for.inc251_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh1) #8
  %inc252 = add nuw nsw i32 %i.0671, 1
  %exitcond.not = icmp eq i32 %inc252, %len.0673
  br i1 %exitcond.not, label %for.inc251.cleanup258_crit_edge, label %for.inc251.for.body227_crit_edge

for.inc251.for.body227_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body227

for.inc251.cleanup258_crit_edge:                  ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup258

cleanup258:                                       ; preds = %for.inc251.cleanup258_crit_edge, %for.cond224.preheader.cleanup258_crit_edge
  %175 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ea_secno, align 4
  %177 = call i32 @llvm.bswap.i32(i32 %176)
  call void @hpfs_free_sectors(ptr noundef %3, i32 noundef %177, i32 noundef %len.0673) #8
  %178 = call i32 @llvm.bswap.i32(i32 %call220)
  %179 = ptrtoint ptr %ea_secno to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %ea_secno, align 4
  br label %if.end264

if.end264:                                        ; preds = %cleanup258, %if.then215, %if.else208.if.end264_crit_edge, %cleanup205.thread
  %len.3 = phi i32 [ %len.0673, %if.else208.if.end264_crit_edge ], [ %inc216, %if.then215 ], [ %shr190, %cleanup258 ], [ 1, %cleanup205.thread ]
  %180 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %flags.i, align 2
  %182 = and i16 %181, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp.i631.not = icmp eq i16 %182, 0
  br i1 %cmp.i631.not, label %if.end264.if.end275_crit_edge, label %if.then266

if.end264.if.end275_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then266:                                       ; preds = %if.end264
  %183 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ea_secno, align 4
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %call268 = call i32 @hpfs_add_sector_to_btree(ptr noundef %3, i32 noundef %185, i32 noundef 0, i32 noundef %len.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call268)
  %cmp269.not = icmp eq i32 %call268, -1
  br i1 %cmp269.not, label %if.then266.bail_crit_edge, label %if.then271

if.then266.bail_crit_edge:                        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.then271:                                       ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #10
  %inc272 = add i32 %len.3, 1
  br label %if.end275

if.end275:                                        ; preds = %if.then271, %if.end264.if.end275_crit_edge
  %len.4 = phi i32 [ %inc272, %if.then271 ], [ %len.3, %if.end264.if.end275_crit_edge ]
  %cmp191 = icmp ugt i32 %shr190, %len.4
  br i1 %cmp191, label %if.end275.while.body193_crit_edge, label %if.end275.while.end276_crit_edge

if.end275.while.end276_crit_edge:                 ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end276

if.end275.while.body193_crit_edge:                ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body193

while.end276:                                     ; preds = %if.end275.while.end276_crit_edge, %while.cond188.preheader.while.end276_crit_edge
  %len.0.lcssa = phi i32 [ %shr183, %while.cond188.preheader.while.end276_crit_edge ], [ %len.4, %if.end275.while.end276_crit_edge ]
  %186 = ptrtoint ptr %h to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %h, align 4
  %call277 = call i32 @strlen(ptr noundef %key) #11
  %conv278 = trunc i32 %call277 to i8
  %187 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv278, ptr %4, align 1
  %conv281 = trunc i32 %size to i8
  %188 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv281, ptr %5, align 2
  %189 = lshr i32 %size, 8
  %conv284 = trunc i32 %189 to i8
  %190 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv284, ptr %6, align 1
  %191 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %ea_secno, align 4
  %193 = call i32 @llvm.bswap.i32(i32 %192)
  %194 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %flags.i, align 2
  %196 = lshr i16 %195, 9
  %.lobit650 = and i16 %196, 1
  %197 = zext i16 %.lobit650 to i32
  %198 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ea_size_l, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  %call291 = call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %193, i32 noundef %197, i32 noundef %200, i32 noundef 4, ptr noundef nonnull %h) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.end294, label %while.end276.bail_crit_edge

while.end276.bail_crit_edge:                      ; preds = %while.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end294:                                        ; preds = %while.end276
  %201 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ea_secno, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %202)
  %204 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %flags.i, align 2
  %206 = lshr i16 %205, 9
  %.lobit651 = and i16 %206, 1
  %207 = zext i16 %.lobit651 to i32
  %208 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ea_size_l, align 4
  %210 = call i32 @llvm.bswap.i32(i32 %209)
  %add299 = add i32 %210, 4
  %211 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %4, align 1
  %conv301 = zext i8 %212 to i32
  %add302 = add nuw nsw i32 %conv301, 1
  %call303 = call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %203, i32 noundef %207, i32 noundef %add299, i32 noundef %add302, ptr noundef %key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %if.end294.bail_crit_edge

if.end294.bail_crit_edge:                         ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end306:                                        ; preds = %if.end294
  %213 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ea_secno, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214)
  %216 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %flags.i, align 2
  %218 = lshr i16 %217, 9
  %.lobit652 = and i16 %218, 1
  %219 = zext i16 %.lobit652 to i32
  %220 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ea_size_l, align 4
  %222 = call i32 @llvm.bswap.i32(i32 %221)
  %add311 = add i32 %222, 5
  %223 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %4, align 1
  %conv313 = zext i8 %224 to i32
  %add314 = add i32 %add311, %conv313
  %call315 = call i32 @hpfs_ea_write(ptr noundef %3, i32 noundef %215, i32 noundef %219, i32 noundef %add314, i32 noundef %size, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.end318, label %if.end306.bail_crit_edge

if.end306.bail_crit_edge:                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end318:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  %225 = call i32 @llvm.bswap.i32(i32 %add180)
  %226 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %ea_size_l, align 4
  br label %ret

ret:                                              ; preds = %if.end318, %if.then124
  %add321.pre-phi = phi i32 [ %add177.pre-phi, %if.end318 ], [ %add119, %if.then124 ]
  %call320 = call i32 @strlen(ptr noundef %key) #11
  %i_ea_size = getelementptr i8, ptr %inode, i32 -12
  %227 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %i_ea_size, align 4
  %add322 = add i32 %add321.pre-phi, %call320
  %add324 = add i32 %add322, %228
  store i32 %add324, ptr %i_ea_size, align 4
  br label %cleanup349

bail:                                             ; preds = %if.end306.bail_crit_edge, %if.end294.bail_crit_edge, %while.end276.bail_crit_edge, %if.then266.bail_crit_edge, %cleanup245, %if.else217.bail_crit_edge, %if.then195.bail_crit_edge, %if.end175.bail_crit_edge
  %len.5 = phi i32 [ %shr183, %if.end175.bail_crit_edge ], [ %len.0.lcssa, %while.end276.bail_crit_edge ], [ %len.0.lcssa, %if.end294.bail_crit_edge ], [ %len.0.lcssa, %if.end306.bail_crit_edge ], [ %len.0673, %cleanup245 ], [ %len.0673, %if.else217.bail_crit_edge ], [ 0, %if.then195.bail_crit_edge ], [ %len.3, %if.then266.bail_crit_edge ]
  %229 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %ea_secno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool326.not = icmp eq i32 %230, 0
  br i1 %tobool326.not, label %if.else345, label %if.then327

if.then327:                                       ; preds = %bail
  %231 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %flags.i, align 2
  %233 = and i16 %232, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %cmp.i640.not = icmp eq i16 %233, 0
  %234 = call i32 @llvm.bswap.i32(i32 %230)
  %235 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ea_size_l, align 4
  %237 = call i32 @llvm.bswap.i32(i32 %236)
  %add337 = add i32 %237, 511
  %shr338 = lshr i32 %add337, 9
  br i1 %cmp.i640.not, label %if.else334, label %if.then329

if.then329:                                       ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_truncate_btree(ptr noundef %3, i32 noundef %234, i32 noundef 1, i32 noundef %shr338) #8
  br label %cleanup349

if.else334:                                       ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #10
  %add339 = add i32 %shr338, %234
  %sub343 = sub i32 %len.5, %shr338
  call void @hpfs_free_sectors(ptr noundef %3, i32 noundef %add339, i32 noundef %sub343) #8
  br label %cleanup349

if.else345:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %ea_size_l, align 4
  %239 = ptrtoint ptr %ea_secno to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %ea_secno, align 4
  br label %cleanup349

cleanup349:                                       ; preds = %if.else345, %if.else334, %if.then329, %ret, %cleanup170, %if.then97, %cleanup.thread, %if.then13, %if.else.cleanup349_crit_edge, %if.then7, %if.then4.cleanup349_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_ea_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_alloc_sector(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_get_sector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_alloc_if_possible(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_sector(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_add_sector_to_btree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_truncate_btree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/ea.c", i32 22, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/ea.c", i32 23, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/ea.c", i32 23, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/ea.c", i32 29, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/ea.c", i32 143, i32 5}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hpfs_get_ea._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hpfs_get_ea._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @hpfs_get_ea._entry.7, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../fs/hpfs/ea.c", i32 169, i32 5}
!16 = !{ptr @hpfs_get_ea._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/hpfs/ea.c", i32 248, i32 17}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/hpfs/ea.c", i32 55, i32 3}
!21 = !{ptr @get_indirect_ea._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @get_indirect_ea._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
