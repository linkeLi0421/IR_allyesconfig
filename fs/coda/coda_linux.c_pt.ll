; ModuleID = '/llk/IR_all_yes/fs/coda/coda_linux.c_pt.bc'
source_filename = "../fs/coda/coda_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.coda_vattr = type { i32, i16, i16, i32, i32, i32, i64, i32, %struct.coda_timespec, %struct.coda_timespec, %struct.coda_timespec, i32, i32, i64, i64, i64 }
%struct.coda_timespec = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@coda_f2s.s = internal global { [60 x i8], [36 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(%08x.%08x.%08x.%08x)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".CONTROL\00", [23 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@coda_fake_statfs = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@switch.table.coda_inode_type = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -32768, i16 16384, i16 0, i16 0, i16 -24576], [22 x i8] zeroinitializer }, align 32
@switch.table.coda_vattr_to_iattr = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -32768, i16 16384, i16 0, i16 0, i16 -24576], [22 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 30, i32 14 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 32, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 41, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"coda_fake_statfs\00", align 1
@___asan_gen_.12 = private constant [24 x i8] c"../fs/coda/coda_linux.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 25, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"switch.table.coda_inode_type\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [33 x i8] c"switch.table.coda_vattr_to_iattr\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @coda_f2s.s, ptr @.str, ptr @.str.1, ptr @coda_fake_statfs, ptr @switch.table.coda_inode_type, ptr @switch.table.coda_vattr_to_iattr], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_f2s.s to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fake_statfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.coda_inode_type to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.coda_vattr_to_iattr to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @coda_f2s(ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [4 x i32], ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @coda_f2s.s, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret ptr @coda_f2s.s
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_iscontrol(ptr nocapture noundef readonly %name, i32 noundef %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp = icmp eq i32 %length, 8
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %0 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @coda_flags_to_cflags(i16 noundef zeroext %flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp = icmp eq i16 %0, 0
  %spec.select = zext i1 %cmp to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %0)
  %cmp6 = icmp eq i16 %0, 2
  %coda_flags.1 = select i1 %cmp6, i16 3, i16 %spec.select
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %0)
  %cmp15 = icmp eq i16 %0, 1
  %1 = or i16 %coda_flags.1, 2
  %coda_flags.2 = select i1 %cmp15, i16 %1, i16 %coda_flags.1
  %and23 = lshr i16 %flags, 5
  %2 = and i16 %and23, 16
  %and30 = shl i16 %flags, 3
  %3 = and i16 %and30, 512
  %and38 = shl i16 %flags, 1
  %4 = and i16 %and38, 256
  %5 = or i16 %3, %2
  %6 = or i16 %5, %4
  %7 = or i16 %6, %coda_flags.2
  ret i16 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @coda_inode_type(ptr nocapture noundef readonly %attr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.coda_inode_type, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_vattr_to_iattr(ptr noundef %inode, ptr nocapture noundef readonly %attr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.coda_inode_type.exit_crit_edge

entry.coda_inode_type.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %coda_inode_type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.coda_vattr_to_iattr, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %coda_inode_type.exit

coda_inode_type.exit:                             ; preds = %switch.lookup, %entry.coda_inode_type.exit_crit_edge
  %retval.0.i = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.coda_inode_type.exit_crit_edge ]
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %or94 = or i16 %5, %retval.0.i
  store i16 %or94, ptr %inode, align 8
  %va_mode = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %va_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %va_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.not = icmp eq i16 %7, -1
  br i1 %cmp.not, label %coda_inode_type.exit.if.end_crit_edge, label %if.then

coda_inode_type.exit.if.end_crit_edge:            ; preds = %coda_inode_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %coda_inode_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or8103 = or i16 %7, %retval.0.i
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or8103, ptr %inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %coda_inode_type.exit.if.end_crit_edge
  %va_uid = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %va_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %va_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp11.not = icmp eq i32 %10, -1
  br i1 %cmp11.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %call15 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #8
  %11 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call15, ptr %i_uid, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %va_gid = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 4
  %12 = ptrtoint ptr %va_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %va_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp17.not = icmp eq i32 %13, -1
  br i1 %cmp17.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %call22 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %13) #8
  %14 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call22, ptr %i_gid, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16.if.end24_crit_edge
  %va_nlink = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 2
  %15 = ptrtoint ptr %va_nlink to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %va_nlink, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp26.not = icmp eq i16 %16, -1
  br i1 %cmp26.not, label %if.end24.if.end31_crit_edge, label %if.then28

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = sext i16 %16 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv25) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end24.if.end31_crit_edge
  %va_size = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 6
  %17 = ptrtoint ptr %va_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %va_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp32.not = icmp eq i64 %18, -1
  br i1 %cmp32.not, label %if.end31.if.end42_crit_edge, label %if.end36

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end36:                                         ; preds = %if.end31
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %i_size, align 8
  %20 = ptrtoint ptr %va_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %.pr = load i64, ptr %va_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.pr)
  %cmp38.not = icmp eq i64 %.pr, -1
  br i1 %cmp38.not, label %if.end36.if.end42_crit_edge, label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i64 %.pr, 511
  %shr = lshr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %21 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr, ptr %i_blocks, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %va_atime = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 8
  %22 = ptrtoint ptr %va_atime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %va_atime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %cmp43.not = icmp eq i64 %23, -1
  br i1 %cmp43.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %.elt101 = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %.elt101 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack102 = load i64, ptr %.elt101, align 8
  %tmp46.sroa.4.8.insert.insert = or i64 %.unpack102, 4294967295
  %25 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %23, ptr %i_atime, align 8
  %tmp46.sroa.4.0.i_atime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %tmp46.sroa.4.0.i_atime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %tmp46.sroa.4.8.insert.insert, ptr %tmp46.sroa.4.0.i_atime.sroa_idx, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %va_mtime = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 9
  %27 = ptrtoint ptr %va_mtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %va_mtime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp50.not = icmp eq i64 %28, -1
  br i1 %cmp50.not, label %if.end48.if.end55_crit_edge, label %if.then52

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %.elt98 = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %.elt98 to i32
  call void @__asan_load8_noabort(i32 %29)
  %.unpack99 = load i64, ptr %.elt98, align 8
  %tmp53.sroa.4.8.insert.insert = or i64 %.unpack99, 4294967295
  %30 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %i_mtime, align 8
  %tmp53.sroa.4.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %tmp53.sroa.4.0.i_mtime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %tmp53.sroa.4.8.insert.insert, ptr %tmp53.sroa.4.0.i_mtime.sroa_idx, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end48.if.end55_crit_edge
  %va_ctime = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 10
  %32 = ptrtoint ptr %va_ctime to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %va_ctime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %33)
  %cmp57.not = icmp eq i64 %33, -1
  br i1 %cmp57.not, label %if.end55.if.end62_crit_edge, label %if.then59

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %.elt95 = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %.elt95 to i32
  call void @__asan_load8_noabort(i32 %34)
  %.unpack96 = load i64, ptr %.elt95, align 8
  %tmp60.sroa.4.8.insert.insert = or i64 %.unpack96, 4294967295
  %35 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %33, ptr %i_ctime, align 8
  %tmp60.sroa.4.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %tmp60.sroa.4.0.i_ctime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %tmp60.sroa.4.8.insert.insert, ptr %tmp60.sroa.4.0.i_ctime.sroa_idx, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end55.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_iattr_to_vattr(ptr nocapture noundef readonly %iattr, ptr nocapture noundef writeonly %vattr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %va_mode = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 1
  %0 = ptrtoint ptr %va_mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %va_mode, align 4
  %va_uid = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 3
  %1 = ptrtoint ptr %va_uid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %va_uid, align 8
  %va_gid = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 4
  %2 = ptrtoint ptr %va_gid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %va_gid, align 4
  %va_size = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 6
  %3 = ptrtoint ptr %va_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %va_size, align 8
  %va_atime = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 8
  %4 = ptrtoint ptr %va_atime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %va_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tv_nsec, align 8
  %va_mtime = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 9
  %6 = ptrtoint ptr %va_mtime to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %va_mtime, align 8
  %tv_nsec4 = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %tv_nsec4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tv_nsec4, align 8
  %va_ctime = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 10
  %8 = ptrtoint ptr %va_ctime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %va_ctime, align 8
  %tv_nsec7 = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %tv_nsec7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tv_nsec7, align 8
  %10 = ptrtoint ptr %vattr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vattr, align 8
  %va_fileid = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 5
  %11 = ptrtoint ptr %va_fileid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %va_fileid, align 8
  %va_gen = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 11
  %12 = ptrtoint ptr %va_gen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %va_gen, align 8
  %va_nlink = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 2
  %13 = ptrtoint ptr %va_nlink to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %va_nlink, align 2
  %va_blocksize = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 7
  %14 = ptrtoint ptr %va_blocksize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %va_blocksize, align 8
  %va_rdev = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 13
  %va_flags = getelementptr inbounds %struct.coda_vattr, ptr %vattr, i32 0, i32 12
  %15 = call ptr @memset(ptr %va_rdev, i32 255, i32 16)
  %16 = ptrtoint ptr %va_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %va_flags, align 4
  %17 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iattr, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %19 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ia_mode, align 4
  %21 = ptrtoint ptr %va_mode to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %va_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %22 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack89 = load i32, ptr %ia_uid, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack89, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %23) #8
  %24 = ptrtoint ptr %va_uid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call, ptr %va_uid, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %and14 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %25 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack88 = load i32, ptr %ia_gid, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack88, 0
  %call18 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %26) #8
  %27 = ptrtoint ptr %va_gid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call18, ptr %va_gid, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %and21 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %28 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ia_size, align 8
  %30 = ptrtoint ptr %va_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %va_size, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %and26 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %31 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %31)
  %.unpack85 = load i64, ptr %ia_atime, align 8
  %.elt86 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %.elt86 to i32
  call void @__asan_load8_noabort(i32 %32)
  %.unpack87 = load i64, ptr %.elt86, align 8
  %tmp.sroa.4.8.insert.insert = or i64 %.unpack87, 4294967295
  %33 = ptrtoint ptr %va_atime to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %.unpack85, ptr %va_atime, align 8
  %34 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %tmp.sroa.4.8.insert.insert, ptr %tv_nsec, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %and31 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %35 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %35)
  %.unpack82 = load i64, ptr %ia_mtime, align 8
  %.elt83 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load8_noabort(i32 %36)
  %.unpack84 = load i64, ptr %.elt83, align 8
  %tmp35.sroa.4.8.insert.insert = or i64 %.unpack84, 4294967295
  %37 = ptrtoint ptr %va_mtime to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %.unpack82, ptr %va_mtime, align 8
  %38 = ptrtoint ptr %tv_nsec4 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %tmp35.sroa.4.8.insert.insert, ptr %tv_nsec4, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %and37 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %39 = ptrtoint ptr %ia_ctime to i32
  call void @__asan_load8_noabort(i32 %39)
  %.unpack = load i64, ptr %ia_ctime, align 8
  %.elt80 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %.elt80 to i32
  call void @__asan_load8_noabort(i32 %40)
  %.unpack81 = load i64, ptr %.elt80, align 8
  %tmp41.sroa.4.8.insert.insert = or i64 %.unpack81, 4294967295
  %41 = ptrtoint ptr %va_ctime to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %.unpack, ptr %va_ctime, align 8
  %42 = ptrtoint ptr %tv_nsec7 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %tmp41.sroa.4.8.insert.insert, ptr %tv_nsec7, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @coda_f2s.s, !1, !"s", i1 false, i1 false}
!1 = !{!"../fs/coda/coda_linux.c", i32 30, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/coda/coda_linux.c", i32 32, i32 14}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/coda/coda_linux.c", i32 41, i32 32}
!6 = !{ptr @coda_fake_statfs, !7, !"coda_fake_statfs", i1 false, i1 false}
!7 = !{!"../fs/coda/coda_linux.c", i32 25, i32 5}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
