; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4acl.c_pt.bc'
source_filename = "../fs/nfsd/nfs4acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.anon.159 = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.122, %struct.list_head, %struct.list_head, %union.anon.123 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.122 = type { %struct.list_head }
%union.anon.123 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.kuid_t }
%struct.nfs4_acl = type { i32, [0 x %struct.nfs4_ace] }
%struct.nfs4_ace = type { i32, i32, i32, i32, %union.anon.155 }
%union.anon.155 = type { %struct.kuid_t }
%struct.posix_acl_state = type { i32, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, %struct.posix_ace_state, ptr, ptr }
%struct.posix_ace_state = type { i32, i32 }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.156 }
%union.anon.156 = type { %struct.anon.157, [124 x i8] }
%struct.anon.157 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.136 = type { i32 }
%union.anon.137 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.139 = type { ptr }
%struct.posix_ace_state_array = type { i32, [0 x %struct.posix_user_ace_state] }
%struct.posix_user_ace_state = type { %union.anon.160, %struct.posix_ace_state }
%union.anon.160 = type { %struct.kuid_t }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@s2t_map = internal constant { [3 x %struct.anon.159], [60 x i8] } { [3 x %struct.anon.159] [%struct.anon.159 { ptr @.str.4, i32 6, i32 1 }, %struct.anon.159 { ptr @.str.5, i32 6, i32 2 }, %struct.anon.159 { ptr @.str.6, i32 9, i32 3 }], [60 x i8] zeroinitializer }, align 32
@nfs4_acl_write_who.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfsd/nfs4acl.c\00", [46 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014fh_lock: %pd2 already locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fh_lock_nested\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry_ptr = internal global ptr @fh_lock_nested._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OWNER@\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GROUP@\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EVERYONE@\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"s2t_map\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 837, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 883, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 363, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 839, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 844, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [21 x i8] c"../fs/nfsd/nfs4acl.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 849, i32 16 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @fh_lock_nested._entry, ptr @fh_lock_nested._entry_ptr, ptr @s2t_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2t_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_lock_nested._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_get_nfs4_acl(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %dentry, ptr nocapture noundef %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 32768) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %call2 = tail call ptr @posix_acl_from_mode(i16 noundef zeroext %3, i32 noundef 3264) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pacl.0 = phi ptr [ %call1, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  %cmp.i58 = icmp ugt ptr %pacl.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %pacl.0 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %pacl.0, i32 0, i32 2
  %5 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a_count, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %if.then9, label %if.end6.if.end8.i_crit_edge

if.end6.if.end8.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then9:                                         ; preds = %if.end6
  %call10 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 16384) #10
  %cmp.i59 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call10 to i32
  br label %rel_pacl

if.end14:                                         ; preds = %if.then9
  %tobool15.not = icmp eq ptr %call10, null
  br i1 %tobool15.not, label %if.end14.if.end8.i_crit_edge, label %if.then16

if.end14.if.end8.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %a_count17 = getelementptr inbounds %struct.posix_acl, ptr %call10, i32 0, i32 2
  %11 = ptrtoint ptr %a_count17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %a_count17, align 4
  %13 = add i32 %12, %6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16, %if.end14.if.end8.i_crit_edge, %if.end6.if.end8.i_crit_edge
  %dpacl.0 = phi ptr [ %call10, %if.then16 ], [ null, %if.end14.if.end8.i_crit_edge ], [ null, %if.end6.if.end8.i_crit_edge ]
  %flags.0 = phi i32 [ 2, %if.then16 ], [ 2, %if.end14.if.end8.i_crit_edge ], [ 0, %if.end6.if.end8.i_crit_edge ]
  %size.0.in = phi i32 [ %13, %if.then16 ], [ %6, %if.end14.if.end8.i_crit_edge ], [ %6, %if.end6.if.end8.i_crit_edge ]
  %mul.i = mul i32 %size.0.in, 40
  %add.i = or i32 %mul.i, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %14 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %acl, align 4
  %cmp24 = icmp eq ptr %call9.i, null
  br i1 %cmp24, label %out, label %if.end27

if.end27:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %call9.i, align 128
  %16 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acl, align 4
  tail call fastcc void @_posix_to_nfsv4_one(ptr noundef %pacl.0, ptr noundef %17, i32 noundef %flags.0)
  %tobool29.not = icmp eq ptr %dpacl.0, null
  br i1 %tobool29.not, label %if.end27.rel_pacl_crit_edge, label %out.thread74

if.end27.rel_pacl_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_pacl

out.thread74:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acl, align 4
  %or = or i32 %flags.0, 1
  tail call fastcc void @_posix_to_nfsv4_one(ptr noundef nonnull %dpacl.0, ptr noundef %19, i32 noundef %or)
  br label %land.lhs.true.i

out:                                              ; preds = %if.end8.i
  %tobool.not.i = icmp eq ptr %dpacl.0, null
  br i1 %tobool.not.i, label %out.rel_pacl_crit_edge, label %out.land.lhs.true.i_crit_edge

out.land.lhs.true.i_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

out.rel_pacl_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_pacl

land.lhs.true.i:                                  ; preds = %out.land.lhs.true.i_crit_edge, %out.thread74
  %error.077 = phi i32 [ 0, %out.thread74 ], [ -12, %out.land.lhs.true.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dpacl.0, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %dpacl.0, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dpacl.0, ptr nonnull %dpacl.0, i32 1, ptr nonnull elementtype(i32) %dpacl.0) #10, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rel_pacl_crit_edge, label %if.then10.i.i.i.i, !prof !28

if.end5.i.i.i.i.rel_pacl_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_pacl

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %dpacl.0, i32 noundef 3) #10
  br label %rel_pacl

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %dpacl.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %rel_pacl

rel_pacl:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rel_pacl_crit_edge, %out.rel_pacl_crit_edge, %if.end27.rel_pacl_crit_edge, %if.then12
  %error.1 = phi i32 [ %10, %if.then12 ], [ -12, %out.rel_pacl_crit_edge ], [ %error.077, %if.end5.i.i.i.i.rel_pacl_crit_edge ], [ %error.077, %if.then10.i.i.i.i ], [ %error.077, %do.end.i ], [ 0, %if.end27.rel_pacl_crit_edge ]
  %tobool.not.i60 = icmp eq ptr %pacl.0, null
  br i1 %tobool.not.i60, label %rel_pacl.cleanup_crit_edge, label %land.lhs.true.i64

rel_pacl.cleanup_crit_edge:                       ; preds = %rel_pacl
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i64:                                ; preds = %rel_pacl
  %call.i.i.i.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pacl.0, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %pacl.0, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pacl.0, ptr nonnull %pacl.0, i32 1, ptr nonnull elementtype(i32) %pacl.0) #10, !srcloc !27
  %asmresult.i.i.i.i.i.i.i62 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i62)
  %cmp.i.i.i.i63 = icmp eq i32 %asmresult.i.i.i.i.i.i.i62, 1
  br i1 %cmp.i.i.i.i63, label %do.end.i69, label %if.end5.i.i.i.i66

if.end5.i.i.i.i66:                                ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i62)
  %.not.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i62, 0
  br i1 %.not.i.i.i.i65, label %if.end5.i.i.i.i66.cleanup_crit_edge, label %if.then10.i.i.i.i67, !prof !28

if.end5.i.i.i.i66.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i67:                              ; preds = %if.end5.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pacl.0, i32 noundef 3) #10
  br label %cleanup

do.end.i69:                                       ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  %a_rcu.i68 = getelementptr inbounds %struct.posix_acl, ptr %pacl.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i68, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i69, %if.then10.i.i.i.i67, %if.end5.i.i.i.i66.cleanup_crit_edge, %rel_pacl.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %error.1, %rel_pacl.cleanup_crit_edge ], [ %error.1, %if.end5.i.i.i.i66.cleanup_crit_edge ], [ %error.1, %if.then10.i.i.i.i67 ], [ %error.1, %do.end.i69 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_mode(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs4_acl_bytes(i32 noundef %entries) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %entries, 20
  %add = add i32 %mul, 4
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_posix_to_nfsv4_one(ptr noundef readonly %pacl, ptr nocapture noundef %acl, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 11
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %pacl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %do.body3, label %do.end8, !prof !30

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

do.end8:                                          ; preds = %entry
  %a_entries.i = getelementptr inbounds %struct.posix_acl, ptr %pacl, i32 0, i32 3
  %add.ptr4.i = getelementptr %struct.posix_acl_entry, ptr %a_entries.i, i32 %1
  %cmp70.i = icmp ult ptr %a_entries.i, %add.ptr4.i
  br i1 %cmp70.i, label %do.end8.for.body.i_crit_edge, label %do.end8.summarize_posix_acl.exit_crit_edge

do.end8.summarize_posix_acl.exit_crit_edge:       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %summarize_posix_acl.exit

do.end8.for.body.i_crit_edge:                     ; preds = %do.end8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8.for.body.i_crit_edge
  %pas.sroa.0.0 = phi i16 [ %pas.sroa.0.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end8.for.body.i_crit_edge ]
  %pas.sroa.6.0 = phi i16 [ %pas.sroa.6.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end8.for.body.i_crit_edge ]
  %pas.sroa.12.0 = phi i16 [ %pas.sroa.12.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end8.for.body.i_crit_edge ]
  %pas.sroa.20.0 = phi i16 [ %pas.sroa.20.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end8.for.body.i_crit_edge ]
  %pas.sroa.27.0 = phi i16 [ %pas.sroa.27.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end8.for.body.i_crit_edge ]
  %pas.sroa.33.0 = phi i16 [ %pas.sroa.33.1, %for.inc.i.for.body.i_crit_edge ], [ 7, %do.end8.for.body.i_crit_edge ]
  %pa.071.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %a_entries.i, %do.end8.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %pa.071.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pa.071.i, align 4
  %conv.i = sext i16 %3 to i32
  %4 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb5.i
    i32 2, label %sw.bb7.i
    i32 8, label %sw.bb12.i
    i32 32, label %sw.bb18.i
    i32 16, label %sw.bb20.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %5 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e_perm.i, align 2
  br label %for.inc.i

sw.bb5.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm6.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %7 = ptrtoint ptr %e_perm6.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %e_perm6.i, align 2
  br label %for.inc.i

sw.bb7.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm8.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %9 = ptrtoint ptr %e_perm8.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_perm8.i, align 2
  %or69.i = or i16 %10, %pas.sroa.6.0
  br label %for.inc.i

sw.bb12.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm13.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %11 = ptrtoint ptr %e_perm13.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_perm13.i, align 2
  %or1668.i = or i16 %12, %pas.sroa.20.0
  br label %for.inc.i

sw.bb18.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm19.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %13 = ptrtoint ptr %e_perm19.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_perm19.i, align 2
  br label %for.inc.i

sw.bb20.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %e_perm21.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.071.i, i32 0, i32 1
  %15 = ptrtoint ptr %e_perm21.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %e_perm21.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb20.i, %sw.bb18.i, %sw.bb12.i, %sw.bb7.i, %sw.bb5.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %pas.sroa.0.1 = phi i16 [ %pas.sroa.0.0, %for.body.i.for.inc.i_crit_edge ], [ %pas.sroa.0.0, %sw.bb20.i ], [ %pas.sroa.0.0, %sw.bb18.i ], [ %pas.sroa.0.0, %sw.bb12.i ], [ %pas.sroa.0.0, %sw.bb7.i ], [ %pas.sroa.0.0, %sw.bb5.i ], [ %6, %sw.bb.i ]
  %pas.sroa.6.1 = phi i16 [ %pas.sroa.6.0, %for.body.i.for.inc.i_crit_edge ], [ %pas.sroa.6.0, %sw.bb20.i ], [ %pas.sroa.6.0, %sw.bb18.i ], [ %pas.sroa.6.0, %sw.bb12.i ], [ %or69.i, %sw.bb7.i ], [ %pas.sroa.6.0, %sw.bb5.i ], [ %pas.sroa.6.0, %sw.bb.i ]
  %pas.sroa.12.1 = phi i16 [ %pas.sroa.12.0, %for.body.i.for.inc.i_crit_edge ], [ %pas.sroa.12.0, %sw.bb20.i ], [ %pas.sroa.12.0, %sw.bb18.i ], [ %pas.sroa.12.0, %sw.bb12.i ], [ %pas.sroa.12.0, %sw.bb7.i ], [ %8, %sw.bb5.i ], [ %pas.sroa.12.0, %sw.bb.i ]
  %pas.sroa.20.1 = phi i16 [ %pas.sroa.20.0, %for.body.i.for.inc.i_crit_edge ], [ %pas.sroa.20.0, %sw.bb20.i ], [ %pas.sroa.20.0, %sw.bb18.i ], [ %or1668.i, %sw.bb12.i ], [ %pas.sroa.20.0, %sw.bb7.i ], [ %pas.sroa.20.0, %sw.bb5.i ], [ %pas.sroa.20.0, %sw.bb.i ]
  %pas.sroa.27.1 = phi i16 [ %pas.sroa.27.0, %for.body.i.for.inc.i_crit_edge ], [ %pas.sroa.27.0, %sw.bb20.i ], [ %14, %sw.bb18.i ], [ %pas.sroa.27.0, %sw.bb12.i ], [ %pas.sroa.27.0, %sw.bb7.i ], [ %pas.sroa.27.0, %sw.bb5.i ], [ %pas.sroa.27.0, %sw.bb.i ]
  %pas.sroa.33.1 = phi i16 [ %pas.sroa.33.0, %for.body.i.for.inc.i_crit_edge ], [ %16, %sw.bb20.i ], [ %pas.sroa.33.0, %sw.bb18.i ], [ %pas.sroa.33.0, %sw.bb12.i ], [ %pas.sroa.33.0, %sw.bb7.i ], [ %pas.sroa.33.0, %sw.bb5.i ], [ %pas.sroa.33.0, %sw.bb.i ]
  %incdec.ptr.i = getelementptr %struct.posix_acl_entry, ptr %pa.071.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr4.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.summarize_posix_acl.exit_crit_edge

for.inc.i.summarize_posix_acl.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %summarize_posix_acl.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

summarize_posix_acl.exit:                         ; preds = %for.inc.i.summarize_posix_acl.exit_crit_edge, %do.end8.summarize_posix_acl.exit_crit_edge
  %pas.sroa.0.2 = phi i16 [ 0, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.0.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %pas.sroa.6.2 = phi i16 [ 0, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.6.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %pas.sroa.12.2 = phi i16 [ 0, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.12.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %pas.sroa.20.2 = phi i16 [ 0, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.20.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %pas.sroa.27.2 = phi i16 [ 0, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.27.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %pas.sroa.33.2 = phi i16 [ 7, %do.end8.summarize_posix_acl.exit_crit_edge ], [ %pas.sroa.33.1, %for.inc.i.summarize_posix_acl.exit_crit_edge ]
  %and65.i = and i16 %pas.sroa.33.2, %pas.sroa.6.2
  %and3266.i = and i16 %pas.sroa.33.2, %pas.sroa.12.2
  %and3867.i = and i16 %pas.sroa.33.2, %pas.sroa.20.2
  %aces = getelementptr inbounds %struct.nfs4_acl, ptr %acl, i32 0, i32 1
  %17 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %acl, align 4
  %add.ptr = getelementptr %struct.nfs4_ace, ptr %aces, i32 %18
  %neg = xor i16 %pas.sroa.0.2, -1
  %or286 = or i16 %and3867.i, %and3266.i
  %or14287 = or i16 %or286, %pas.sroa.27.2
  %or16288 = or i16 %or14287, %and65.i
  %and18289 = and i16 %or16288, %neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and18289)
  %tobool20.not = icmp eq i16 %and18289, 0
  br i1 %tobool20.not, label %summarize_posix_acl.exit.if.end23_crit_edge, label %if.then21

summarize_posix_acl.exit.if.end23_crit_edge:      ; preds = %summarize_posix_acl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %summarize_posix_acl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %add.ptr, align 4
  %flag = getelementptr %struct.nfs4_ace, ptr %aces, i32 %18, i32 1
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %flag, align 4
  %conv.i298 = zext i16 %and18289 to i32
  %and.i = lshr i32 %conv.i298, 2
  %and.lobit.i = and i32 %and.i, 1
  %and2.i = and i32 %conv.i298, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i32 %and.lobit.i, 6
  %mask.1.i = select i1 %tobool3.not.i, i32 %and.lobit.i, i32 %or5.i
  %21 = and i32 %conv.i298, %flags
  %22 = shl nuw nsw i32 %21, 5
  %23 = and i32 %22, 64
  %and16.i = shl nuw nsw i32 %conv.i298, 5
  %24 = and i32 %and16.i, 32
  %25 = or i32 %23, %24
  %26 = or i32 %25, %mask.1.i
  %access_mask = getelementptr %struct.nfs4_ace, ptr %aces, i32 %18, i32 2
  %27 = ptrtoint ptr %access_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %access_mask, align 4
  %whotype = getelementptr %struct.nfs4_ace, ptr %aces, i32 %18, i32 3
  %28 = ptrtoint ptr %whotype to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %whotype, align 4
  %incdec.ptr = getelementptr %struct.nfs4_ace, ptr %add.ptr, i32 1
  %29 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %acl, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %acl, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %summarize_posix_acl.exit.if.end23_crit_edge
  %ace.0 = phi ptr [ %incdec.ptr, %if.then21 ], [ %add.ptr, %summarize_posix_acl.exit.if.end23_crit_edge ]
  %31 = ptrtoint ptr %ace.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ace.0, align 4
  %flag25 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.0, i32 0, i32 1
  %32 = ptrtoint ptr %flag25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %flag25, align 4
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %a_entries.i, i32 0, i32 1
  %33 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %e_perm, align 2
  %conv.i299 = zext i16 %34 to i32
  %and1.i = lshr i32 %conv.i299, 2
  %35 = and i32 %and1.i, 1
  %and7.i = and i32 %conv.i299, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %mask.2.i.v = select i1 %tobool8.not.i, i32 1442176, i32 1442182
  %36 = and i32 %conv.i299, %flags
  %37 = shl nuw nsw i32 %36, 5
  %38 = and i32 %37, 64
  %and21.i = shl nuw nsw i32 %conv.i299, 5
  %39 = and i32 %and21.i, 32
  %mask.2.i = or i32 %35, %39
  %40 = or i32 %mask.2.i, %38
  %41 = or i32 %40, %mask.2.i.v
  %access_mask28 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.0, i32 0, i32 2
  %42 = ptrtoint ptr %access_mask28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %access_mask28, align 4
  %whotype29 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.0, i32 0, i32 3
  %43 = ptrtoint ptr %whotype29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %whotype29, align 4
  %44 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %acl, align 4
  %inc32 = add i32 %45, 1
  store i32 %inc32, ptr %acl, align 4
  %incdec.ptr33 = getelementptr %struct.posix_acl, ptr %pacl, i32 1, i32 1, i32 1
  %ace.1393 = getelementptr %struct.nfs4_ace, ptr %ace.0, i32 1
  %46 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %cmp35394 = icmp eq i16 %47, 2
  %and.i308 = and i32 %flags, 4
  br i1 %cmp35394, label %while.body.lr.ph, label %if.end23.while.end_crit_edge

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i = icmp eq i32 %and.i308, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1179776, i32 1442176
  br label %while.body

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %ace.1397 = phi ptr [ %ace.1393, %while.body.lr.ph ], [ %ace.1, %if.end64.while.body_crit_edge ]
  %ace.0.pn396 = phi ptr [ %ace.0, %while.body.lr.ph ], [ %ace.2, %if.end64.while.body_crit_edge ]
  %pa.0395 = phi ptr [ %incdec.ptr33, %while.body.lr.ph ], [ %incdec.ptr79, %if.end64.while.body_crit_edge ]
  %e_perm37 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0395, i32 0, i32 1
  %48 = ptrtoint ptr %e_perm37 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %e_perm37, align 2
  %and40293 = and i16 %49, %pas.sroa.33.2
  %neg41 = xor i16 %and40293, -1
  %and52296 = and i16 %or14287, %neg41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and52296)
  %tobool54.not = icmp eq i16 %and52296, 0
  br i1 %tobool54.not, label %while.body.if.end64_crit_edge, label %if.then55

while.body.if.end64_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then55:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %ace.1397 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %ace.1397, align 4
  %flag57 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn396, i32 1, i32 1
  %51 = ptrtoint ptr %flag57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond, ptr %flag57, align 4
  %conv.i300 = zext i16 %and52296 to i32
  %and.i301 = lshr i32 %conv.i300, 2
  %and.lobit.i302 = and i32 %and.i301, 1
  %and2.i303 = and i32 %conv.i300, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i303)
  %tobool3.not.i304 = icmp eq i32 %and2.i303, 0
  %or5.i305 = or i32 %and.lobit.i302, 6
  %mask.1.i306 = select i1 %tobool3.not.i304, i32 %and.lobit.i302, i32 %or5.i305
  %52 = and i32 %conv.i300, %flags
  %53 = shl nuw nsw i32 %52, 5
  %54 = and i32 %53, 64
  %and16.i307 = shl nuw nsw i32 %conv.i300, 5
  %55 = and i32 %and16.i307, 32
  %56 = or i32 %54, %55
  %57 = or i32 %56, %mask.1.i306
  %access_mask59 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn396, i32 1, i32 2
  %58 = ptrtoint ptr %access_mask59 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %access_mask59, align 4
  %whotype60 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn396, i32 1, i32 3
  %59 = ptrtoint ptr %whotype60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %whotype60, align 4
  %60 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn396, i32 1, i32 4
  %61 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0395, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %60, align 4
  %incdec.ptr61 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn396, i32 2
  %65 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %acl, align 4
  %inc63 = add i32 %66, 1
  store i32 %inc63, ptr %acl, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %while.body.if.end64_crit_edge
  %ace.2 = phi ptr [ %incdec.ptr61, %if.then55 ], [ %ace.1397, %while.body.if.end64_crit_edge ]
  %67 = ptrtoint ptr %ace.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ace.2, align 4
  %flag66 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.2, i32 0, i32 1
  %68 = ptrtoint ptr %flag66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cond, ptr %flag66, align 4
  %69 = ptrtoint ptr %e_perm37 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e_perm37, align 2
  %and71297 = and i16 %70, %pas.sroa.33.2
  %conv.i309 = zext i16 %and71297 to i32
  %and1.i310 = lshr i32 %conv.i309, 2
  %71 = and i32 %and1.i310, 1
  %72 = or i32 %71, %spec.select.i
  %and7.i311 = and i32 %conv.i309, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i311)
  %tobool8.not.i312 = icmp eq i32 %and7.i311, 0
  %or10.i313 = or i32 %72, 6
  %mask.2.i314 = select i1 %tobool8.not.i312, i32 %72, i32 %or10.i313
  %73 = and i32 %conv.i309, %flags
  %74 = shl nuw nsw i32 %73, 5
  %75 = and i32 %74, 64
  %and21.i315 = shl nuw nsw i32 %conv.i309, 5
  %76 = and i32 %and21.i315, 32
  %77 = or i32 %75, %76
  %78 = or i32 %77, %mask.2.i314
  %access_mask74 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.2, i32 0, i32 2
  %79 = ptrtoint ptr %access_mask74 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %access_mask74, align 4
  %whotype75 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.2, i32 0, i32 3
  %80 = ptrtoint ptr %whotype75 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %whotype75, align 4
  %81 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.2, i32 0, i32 4
  %82 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0395, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %81, align 4
  %86 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %acl, align 4
  %inc78 = add i32 %87, 1
  store i32 %inc78, ptr %acl, align 4
  %incdec.ptr79 = getelementptr %struct.posix_acl_entry, ptr %pa.0395, i32 1
  %ace.1 = getelementptr %struct.nfs4_ace, ptr %ace.2, i32 1
  %88 = ptrtoint ptr %incdec.ptr79 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %incdec.ptr79, align 4
  %cmp35 = icmp eq i16 %89, 2
  br i1 %cmp35, label %if.end64.while.body_crit_edge, label %if.end64.while.end_crit_edge

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end64.while.end_crit_edge, %if.end23.while.end_crit_edge
  %pa.0.lcssa = phi ptr [ %incdec.ptr33, %if.end23.while.end_crit_edge ], [ %incdec.ptr79, %if.end64.while.end_crit_edge ]
  %ace.0.pn.lcssa = phi ptr [ %ace.0, %if.end23.while.end_crit_edge ], [ %ace.2, %if.end64.while.end_crit_edge ]
  %ace.1.lcssa = phi ptr [ %ace.1393, %if.end23.while.end_crit_edge ], [ %ace.1, %if.end64.while.end_crit_edge ]
  %90 = ptrtoint ptr %ace.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %ace.1.lcssa, align 4
  %flag81 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn.lcssa, i32 1, i32 1
  %91 = ptrtoint ptr %flag81 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond, ptr %flag81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i317 = icmp eq i32 %and.i308, 0
  %spec.select.i318 = select i1 %tobool.not.i317, i32 1179776, i32 1442176
  %conv.i319 = zext i16 %and3266.i to i32
  %and1.i320 = lshr i32 %conv.i319, 2
  %92 = and i32 %and1.i320, 1
  %93 = or i32 %92, %spec.select.i318
  %and7.i321 = and i32 %conv.i319, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i321)
  %tobool8.not.i322 = icmp eq i32 %and7.i321, 0
  %or10.i323 = or i32 %93, 6
  %mask.2.i324 = select i1 %tobool8.not.i322, i32 %93, i32 %or10.i323
  %94 = and i32 %conv.i319, %flags
  %95 = shl nuw nsw i32 %94, 5
  %96 = and i32 %95, 64
  %and21.i325 = shl nuw nsw i32 %conv.i319, 5
  %97 = and i32 %and21.i325, 32
  %98 = or i32 %96, %97
  %99 = or i32 %98, %mask.2.i324
  %access_mask84 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn.lcssa, i32 1, i32 2
  %100 = ptrtoint ptr %access_mask84 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %access_mask84, align 4
  %whotype85 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn.lcssa, i32 1, i32 3
  %101 = ptrtoint ptr %whotype85 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %whotype85, align 4
  %incdec.ptr86 = getelementptr %struct.nfs4_ace, ptr %ace.0.pn.lcssa, i32 2
  %102 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %acl, align 4
  %inc88 = add i32 %103, 1
  store i32 %inc88, ptr %acl, align 4
  %incdec.ptr89 = getelementptr %struct.posix_acl_entry, ptr %pa.0.lcssa, i32 1
  %104 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %incdec.ptr89, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %105)
  %cmp93400 = icmp eq i16 %105, 8
  br i1 %cmp93400, label %while.body95.lr.ph, label %while.end.while.end112_crit_edge

while.end.while.end112_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end112

while.body95.lr.ph:                               ; preds = %while.end
  %or97 = or i32 %cond, 64
  br label %while.body95

while.body95:                                     ; preds = %while.body95.while.body95_crit_edge, %while.body95.lr.ph
  %ace.3402 = phi ptr [ %incdec.ptr86, %while.body95.lr.ph ], [ %incdec.ptr108, %while.body95.while.body95_crit_edge ]
  %pa.1401 = phi ptr [ %incdec.ptr89, %while.body95.lr.ph ], [ %incdec.ptr111, %while.body95.while.body95_crit_edge ]
  %106 = ptrtoint ptr %ace.3402 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %ace.3402, align 4
  %flag98 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3402, i32 0, i32 1
  %107 = ptrtoint ptr %flag98 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or97, ptr %flag98, align 4
  %e_perm99 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.1401, i32 0, i32 1
  %108 = ptrtoint ptr %e_perm99 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %e_perm99, align 2
  %and103292 = and i16 %109, %pas.sroa.33.2
  %conv.i329 = zext i16 %and103292 to i32
  %and1.i330 = lshr i32 %conv.i329, 2
  %110 = and i32 %and1.i330, 1
  %111 = or i32 %110, %spec.select.i318
  %and7.i331 = and i32 %conv.i329, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i331)
  %tobool8.not.i332 = icmp eq i32 %and7.i331, 0
  %or10.i333 = or i32 %111, 6
  %mask.2.i334 = select i1 %tobool8.not.i332, i32 %111, i32 %or10.i333
  %112 = and i32 %conv.i329, %flags
  %113 = shl nuw nsw i32 %112, 5
  %114 = and i32 %113, 64
  %and21.i335 = shl nuw nsw i32 %conv.i329, 5
  %115 = and i32 %and21.i335, 32
  %116 = or i32 %114, %115
  %117 = or i32 %116, %mask.2.i334
  %access_mask106 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3402, i32 0, i32 2
  %118 = ptrtoint ptr %access_mask106 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %access_mask106, align 4
  %whotype107 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3402, i32 0, i32 3
  %119 = ptrtoint ptr %whotype107 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %whotype107, align 4
  %120 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3402, i32 0, i32 4
  %121 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.1401, i32 0, i32 2
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %120, align 4
  %incdec.ptr108 = getelementptr %struct.nfs4_ace, ptr %ace.3402, i32 1
  %125 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %acl, align 4
  %inc110 = add i32 %126, 1
  store i32 %inc110, ptr %acl, align 4
  %incdec.ptr111 = getelementptr %struct.posix_acl_entry, ptr %pa.1401, i32 1
  %127 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %incdec.ptr111, align 4
  %cmp93 = icmp eq i16 %128, 8
  br i1 %cmp93, label %while.body95.while.body95_crit_edge, label %while.body95.while.end112_crit_edge

while.body95.while.end112_crit_edge:              ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end112

while.body95.while.body95_crit_edge:              ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body95

while.end112:                                     ; preds = %while.body95.while.end112_crit_edge, %while.end.while.end112_crit_edge
  %ace.3.lcssa = phi ptr [ %incdec.ptr86, %while.end.while.end112_crit_edge ], [ %incdec.ptr108, %while.body95.while.end112_crit_edge ]
  %neg115 = xor i16 %and3266.i, -1
  %and118 = and i16 %pas.sroa.27.2, %neg115
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and118)
  %tobool120.not = icmp eq i16 %and118, 0
  br i1 %tobool120.not, label %while.end112.if.end130_crit_edge, label %if.then121

while.end112.if.end130_crit_edge:                 ; preds = %while.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then121:                                       ; preds = %while.end112
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %ace.3.lcssa to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %ace.3.lcssa, align 4
  %flag123 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3.lcssa, i32 0, i32 1
  %130 = ptrtoint ptr %flag123 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %cond, ptr %flag123, align 4
  %conv.i336 = zext i16 %and118 to i32
  %and.i337 = lshr i32 %conv.i336, 2
  %and.lobit.i338 = and i32 %and.i337, 1
  %and2.i339 = and i32 %conv.i336, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i339)
  %tobool3.not.i340 = icmp eq i32 %and2.i339, 0
  %or5.i341 = or i32 %and.lobit.i338, 6
  %mask.1.i342 = select i1 %tobool3.not.i340, i32 %and.lobit.i338, i32 %or5.i341
  %131 = and i32 %conv.i336, %flags
  %132 = shl nuw nsw i32 %131, 5
  %133 = and i32 %132, 64
  %and16.i343 = shl nuw nsw i32 %conv.i336, 5
  %134 = and i32 %and16.i343, 32
  %135 = or i32 %133, %134
  %136 = or i32 %135, %mask.1.i342
  %access_mask125 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3.lcssa, i32 0, i32 2
  %137 = ptrtoint ptr %access_mask125 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %access_mask125, align 4
  %whotype126 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.3.lcssa, i32 0, i32 3
  %138 = ptrtoint ptr %whotype126 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %whotype126, align 4
  %incdec.ptr127 = getelementptr %struct.nfs4_ace, ptr %ace.3.lcssa, i32 1
  %139 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %acl, align 4
  %inc129 = add i32 %140, 1
  store i32 %inc129, ptr %acl, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %while.end112.if.end130_crit_edge
  %ace.4 = phi ptr [ %incdec.ptr127, %if.then121 ], [ %ace.3.lcssa, %while.end112.if.end130_crit_edge ]
  %or153 = or i32 %cond, 64
  br label %while.cond132

while.cond132:                                    ; preds = %if.end161, %if.end130
  %pa.2 = phi ptr [ %incdec.ptr89, %if.end130 ], [ %incdec.ptr162, %if.end161 ]
  %ace.5 = phi ptr [ %ace.4, %if.end130 ], [ %ace.6, %if.end161 ]
  %141 = ptrtoint ptr %pa.2 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %pa.2, align 4
  %143 = zext i16 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %142, label %while.cond132.if.end170_crit_edge [
    i16 8, label %while.body137
    i16 16, label %if.then168
  ]

while.cond132.if.end170_crit_edge:                ; preds = %while.cond132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

while.body137:                                    ; preds = %while.cond132
  %e_perm138 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.2, i32 0, i32 1
  %144 = ptrtoint ptr %e_perm138 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %e_perm138, align 2
  %and142290 = and i16 %145, %pas.sroa.33.2
  %neg143 = xor i16 %and142290, -1
  %and148291 = and i16 %pas.sroa.27.2, %neg143
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and148291)
  %tobool150.not = icmp eq i16 %and148291, 0
  br i1 %tobool150.not, label %while.body137.if.end161_crit_edge, label %if.then151

while.body137.if.end161_crit_edge:                ; preds = %while.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then151:                                       ; preds = %while.body137
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %ace.5 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %ace.5, align 4
  %flag154 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 1
  %147 = ptrtoint ptr %flag154 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or153, ptr %flag154, align 4
  %conv.i344 = zext i16 %and148291 to i32
  %and.i345 = lshr i32 %conv.i344, 2
  %and.lobit.i346 = and i32 %and.i345, 1
  %and2.i347 = and i32 %conv.i344, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i347)
  %tobool3.not.i348 = icmp eq i32 %and2.i347, 0
  %or5.i349 = or i32 %and.lobit.i346, 6
  %mask.1.i350 = select i1 %tobool3.not.i348, i32 %and.lobit.i346, i32 %or5.i349
  %148 = and i32 %conv.i344, %flags
  %149 = shl nuw nsw i32 %148, 5
  %150 = and i32 %149, 64
  %and16.i351 = shl nuw nsw i32 %conv.i344, 5
  %151 = and i32 %and16.i351, 32
  %152 = or i32 %150, %151
  %153 = or i32 %152, %mask.1.i350
  %access_mask156 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 2
  %154 = ptrtoint ptr %access_mask156 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %access_mask156, align 4
  %whotype157 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 3
  %155 = ptrtoint ptr %whotype157 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %whotype157, align 4
  %156 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 4
  %157 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.2, i32 0, i32 2
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %156, align 4
  %incdec.ptr158 = getelementptr %struct.nfs4_ace, ptr %ace.5, i32 1
  %161 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %acl, align 4
  %inc160 = add i32 %162, 1
  store i32 %inc160, ptr %acl, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then151, %while.body137.if.end161_crit_edge
  %ace.6 = phi ptr [ %incdec.ptr158, %if.then151 ], [ %ace.5, %while.body137.if.end161_crit_edge ]
  %incdec.ptr162 = getelementptr %struct.posix_acl_entry, ptr %pa.2, i32 1
  br label %while.cond132

if.then168:                                       ; preds = %while.cond132
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr169 = getelementptr %struct.posix_acl_entry, ptr %pa.2, i32 1
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %while.cond132.if.end170_crit_edge
  %pa.3 = phi ptr [ %incdec.ptr169, %if.then168 ], [ %pa.2, %while.cond132.if.end170_crit_edge ]
  %163 = ptrtoint ptr %ace.5 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %ace.5, align 4
  %flag172 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 1
  %164 = ptrtoint ptr %flag172 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %cond, ptr %flag172, align 4
  %e_perm173 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.3, i32 0, i32 1
  %165 = ptrtoint ptr %e_perm173 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %e_perm173, align 2
  %conv.i355 = zext i16 %166 to i32
  %and1.i356 = lshr i32 %conv.i355, 2
  %167 = and i32 %and1.i356, 1
  %168 = or i32 %167, %spec.select.i318
  %and7.i357 = and i32 %conv.i355, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i357)
  %tobool8.not.i358 = icmp eq i32 %and7.i357, 0
  %or10.i359 = or i32 %168, 6
  %mask.2.i360 = select i1 %tobool8.not.i358, i32 %168, i32 %or10.i359
  %169 = and i32 %conv.i355, %flags
  %170 = shl nuw nsw i32 %169, 5
  %171 = and i32 %170, 64
  %and21.i361 = shl nuw nsw i32 %conv.i355, 5
  %172 = and i32 %and21.i361, 32
  %173 = or i32 %171, %172
  %174 = or i32 %173, %mask.2.i360
  %access_mask175 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 2
  %175 = ptrtoint ptr %access_mask175 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %access_mask175, align 4
  %whotype176 = getelementptr inbounds %struct.nfs4_ace, ptr %ace.5, i32 0, i32 3
  %176 = ptrtoint ptr %whotype176 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 3, ptr %whotype176, align 4
  %177 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %acl, align 4
  %inc178 = add i32 %178, 1
  store i32 %inc178, ptr %acl, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #10, !srcloc !27
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !28

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #10
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_set_nfs4_acl(ptr noundef %rqstp, ptr noundef %fhp, ptr noundef readonly %acl) local_unnamed_addr #0 align 64 {
entry:
  %effective_acl_state.i = alloca %struct.posix_acl_state, align 4
  %default_acl_state.i = alloca %struct.posix_acl_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext 0, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  %spec.select = select i1 %cmp, i32 2, i32 0
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %effective_acl_state.i) #10
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %default_acl_state.i) #10
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %acl, align 4
  %9 = getelementptr inbounds i8, ptr %effective_acl_state.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 48)
  %11 = ptrtoint ptr %effective_acl_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %effective_acl_state.i, align 4
  %mul.i.i = mul i32 %8, 12
  %add.i.i = add i32 %mul.i.i, 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #13
  %users53.i.i = getelementptr inbounds %struct.posix_acl_state, ptr %effective_acl_state.i, i32 0, i32 6
  %12 = ptrtoint ptr %users53.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i.i, ptr %users53.i.i, align 4
  %tobool.not54.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not54.i.i, label %if.end.out_nfserr.thread_crit_edge, label %if.end8.i.i41.i.i

if.end.out_nfserr.thread_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nfserr.thread

if.end8.i.i41.i.i:                                ; preds = %if.end
  %call9.i.i40.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #13
  %groups.i.i = getelementptr inbounds %struct.posix_acl_state, ptr %effective_acl_state.i, i32 0, i32 7
  %13 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i40.i.i, ptr %groups.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call9.i.i40.i.i, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i

if.then5.i.i:                                     ; preds = %if.end8.i.i41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %users53.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %users53.i.i, align 4
  tail call void @kfree(ptr noundef %15) #10
  br label %out_nfserr.thread

if.end.i:                                         ; preds = %if.end8.i.i41.i.i
  %16 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %acl, align 4
  %18 = getelementptr inbounds i8, ptr %default_acl_state.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 48)
  %20 = ptrtoint ptr %default_acl_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %default_acl_state.i, align 4
  %mul.i72.i = mul i32 %17, 12
  %add.i73.i = add i32 %mul.i72.i, 4
  %call9.i.i.i106.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i73.i, i32 noundef 3520) #13
  %users53.i107.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %21 = ptrtoint ptr %users53.i107.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i.i106.i, ptr %users53.i107.i, align 4
  %tobool.not54.i108.i = icmp eq ptr %call9.i.i.i106.i, null
  br i1 %tobool.not54.i108.i, label %if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge, label %if.end8.i.i41.i132.i

if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_acl_nfsv4_to_posix.exit

if.end8.i.i41.i132.i:                             ; preds = %if.end.i
  %call9.i.i40.i131.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i73.i, i32 noundef 3520) #13
  %groups.i135.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 7
  %22 = ptrtoint ptr %groups.i135.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i40.i131.i, ptr %groups.i135.i, align 4
  %tobool4.not.i136.i = icmp eq ptr %call9.i.i40.i131.i, null
  br i1 %tobool4.not.i136.i, label %if.then5.i138.i, label %if.end5.i

if.then5.i138.i:                                  ; preds = %if.end8.i.i41.i132.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %users53.i107.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %users53.i107.i, align 4
  tail call void @kfree(ptr noundef %24) #10
  br label %nfs4_acl_nfsv4_to_posix.exit

if.end5.i:                                        ; preds = %if.end8.i.i41.i132.i
  %aces.i = getelementptr inbounds %struct.nfs4_acl, ptr %acl, i32 0, i32 1
  %25 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %acl, align 4
  %add.ptr150.i = getelementptr %struct.nfs4_ace, ptr %aces.i, i32 %26
  %cmp151.i = icmp ult ptr %aces.i, %add.ptr150.i
  br i1 %cmp151.i, label %if.end5.i.for.body.i_crit_edge, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %ace.0152.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %aces.i, %if.end5.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %ace.0152.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ace.0152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch.i = icmp ult i32 %28, 2
  br i1 %switch.i, label %if.end13.i, label %for.body.i.out_dstate.i_crit_edge

for.body.i.out_dstate.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dstate.i

if.end13.i:                                       ; preds = %for.body.i
  %flag.i = getelementptr inbounds %struct.nfs4_ace, ptr %ace.0152.i, i32 0, i32 1
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %30, -76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.out_dstate.i_crit_edge

if.end13.i.out_dstate.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dstate.i

if.end16.i:                                       ; preds = %if.end13.i
  %and18.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 0
  br i1 %cmp19.i, label %if.end16.i.for.inc.sink.split.i_crit_edge, label %if.end21.i

if.end16.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.end21.i:                                       ; preds = %if.end16.i
  br i1 %cmp, label %if.end25.i, label %if.end21.i.out_dstate.i_crit_edge

if.end21.i.out_dstate.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dstate.i

if.end25.i:                                       ; preds = %if.end21.i
  call fastcc void @process_one_v4_ace(ptr noundef nonnull %default_acl_state.i, ptr noundef %ace.0152.i) #10
  %31 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flag.i, align 4
  %and27.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.for.inc.sink.split.i_crit_edge, label %if.end25.i.for.inc.i_crit_edge

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end25.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end25.i.for.inc.sink.split.i_crit_edge, %if.end16.i.for.inc.sink.split.i_crit_edge
  call fastcc void @process_one_v4_ace(ptr noundef nonnull %effective_acl_state.i, ptr noundef %ace.0152.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end25.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nfs4_ace, ptr %ace.0152.i, i32 1
  %33 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %acl, align 4
  %add.ptr.i = getelementptr %struct.nfs4_ace, ptr %aces.i, i32 %34
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %call31.i = call fastcc ptr @posix_state_to_acl(ptr noundef nonnull %effective_acl_state.i, i32 noundef %spec.select) #10
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %call31.i to i32
  br label %out_dstate.i

if.end35.i:                                       ; preds = %for.end.i
  %or.i = or i32 %spec.select, 1
  %call36.i = call fastcc ptr @posix_state_to_acl(ptr noundef nonnull %default_acl_state.i, i32 noundef %or.i) #10
  %cmp.i141.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %call36.i to i32
  call fastcc void @posix_acl_release(ptr noundef %call31.i) #10
  br label %out_dstate.i

if.end40.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sort_pacl(ptr noundef %call31.i) #10
  call fastcc void @sort_pacl(ptr noundef %call36.i) #10
  br label %out_dstate.i

out_dstate.i:                                     ; preds = %if.end40.i, %if.then38.i, %if.then33.i, %if.end21.i.out_dstate.i_crit_edge, %if.end13.i.out_dstate.i_crit_edge, %for.body.i.out_dstate.i_crit_edge
  %pacl.0 = phi ptr [ null, %if.then33.i ], [ null, %if.then38.i ], [ %call31.i, %if.end40.i ], [ null, %for.body.i.out_dstate.i_crit_edge ], [ null, %if.end13.i.out_dstate.i_crit_edge ], [ null, %if.end21.i.out_dstate.i_crit_edge ]
  %dpacl.0 = phi ptr [ null, %if.then33.i ], [ null, %if.then38.i ], [ %call36.i, %if.end40.i ], [ null, %for.body.i.out_dstate.i_crit_edge ], [ null, %if.end13.i.out_dstate.i_crit_edge ], [ null, %if.end21.i.out_dstate.i_crit_edge ]
  %ret.0.i = phi i32 [ %35, %if.then33.i ], [ %36, %if.then38.i ], [ 0, %if.end40.i ], [ -22, %for.body.i.out_dstate.i_crit_edge ], [ -22, %if.end13.i.out_dstate.i_crit_edge ], [ -22, %if.end21.i.out_dstate.i_crit_edge ]
  %users.i142.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 6
  %37 = ptrtoint ptr %users.i142.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %users.i142.i, align 4
  call void @kfree(ptr noundef %38) #10
  %groups.i143.i = getelementptr inbounds %struct.posix_acl_state, ptr %default_acl_state.i, i32 0, i32 7
  %39 = ptrtoint ptr %groups.i143.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %groups.i143.i, align 4
  call void @kfree(ptr noundef %40) #10
  br label %nfs4_acl_nfsv4_to_posix.exit

out_nfserr.thread:                                ; preds = %if.then5.i.i, %if.end.out_nfserr.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %default_acl_state.i) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %effective_acl_state.i) #10
  br label %if.else

nfs4_acl_nfsv4_to_posix.exit:                     ; preds = %out_dstate.i, %if.then5.i138.i, %if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge
  %pacl.1 = phi ptr [ null, %if.then5.i138.i ], [ %pacl.0, %out_dstate.i ], [ null, %if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge ]
  %dpacl.1 = phi ptr [ null, %if.then5.i138.i ], [ %dpacl.0, %out_dstate.i ], [ null, %if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge ]
  %ret.1.i = phi i32 [ -12, %if.then5.i138.i ], [ %ret.0.i, %out_dstate.i ], [ -12, %if.end.i.nfs4_acl_nfsv4_to_posix.exit_crit_edge ]
  %users.i144.i = getelementptr inbounds %struct.posix_acl_state, ptr %effective_acl_state.i, i32 0, i32 6
  %41 = ptrtoint ptr %users.i144.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %users.i144.i, align 4
  call void @kfree(ptr noundef %42) #10
  %groups.i145.i = getelementptr inbounds %struct.posix_acl_state, ptr %effective_acl_state.i, i32 0, i32 7
  %43 = ptrtoint ptr %groups.i145.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %groups.i145.i, align 4
  call void @kfree(ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %default_acl_state.i) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %effective_acl_state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.1.i)
  %cmp6 = icmp eq i32 %ret.1.i, -22
  br i1 %cmp6, label %nfs4_acl_nfsv4_to_posix.exit.cleanup_crit_edge, label %if.end9

nfs4_acl_nfsv4_to_posix.exit.cleanup_crit_edge:   ; preds = %nfs4_acl_nfsv4_to_posix.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %nfs4_acl_nfsv4_to_posix.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp10 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp10, label %if.end9.out_nfserr_crit_edge, label %if.end13

if.end9.out_nfserr_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nfserr

if.end13:                                         ; preds = %if.end9
  %45 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i.i48 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i48, label %do.body4.i.i, label %do.end9.i.i, !prof !30

do.body4.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #10, !srcloc !32
  unreachable

do.end9.i.i:                                      ; preds = %if.end13
  %fh_locked.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %47 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fh_locked.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool10.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %46) #14
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #10
  call void @fh_fill_pre_attrs(ptr noundef %fhp) #10
  %51 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %call14 = call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %3, i32 noundef 32768, ptr noundef %pacl.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %fh_lock.exit.out_drop_lock_crit_edge, label %if.end18

fh_lock.exit.out_drop_lock_crit_edge:             ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop_lock

if.end18:                                         ; preds = %fh_lock.exit
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %3, align 8
  %54 = and i16 %53, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %54)
  %cmp22 = icmp eq i16 %54, 16384
  br i1 %cmp22, label %if.then24, label %if.end18.out_drop_lock_crit_edge

if.end18.out_drop_lock_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop_lock

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %3, i32 noundef 16384, ptr noundef %dpacl.1) #10
  br label %out_drop_lock

out_drop_lock:                                    ; preds = %if.then24, %if.end18.out_drop_lock_crit_edge, %fh_lock.exit.out_drop_lock_crit_edge
  %host_error.0 = phi i32 [ %call14, %fh_lock.exit.out_drop_lock_crit_edge ], [ %call25, %if.then24 ], [ %call14, %if.end18.out_drop_lock_crit_edge ]
  %55 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fh_locked.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %out_drop_lock.fh_unlock.exit_crit_edge, label %if.then.i

out_drop_lock.fh_unlock.exit_crit_edge:           ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #12
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #12
  call void @fh_fill_post_attrs(ptr noundef %fhp) #10
  %57 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %61 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %out_drop_lock.fh_unlock.exit_crit_edge
  %tobool.not.i50 = icmp eq ptr %pacl.1, null
  br i1 %tobool.not.i50, label %fh_unlock.exit.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

fh_unlock.exit.posix_acl_release.exit_crit_edge:  ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %fh_unlock.exit
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pacl.1, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  call void @llvm.prefetch.p0(ptr nonnull %pacl.1, i32 1, i32 3, i32 1) #10
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pacl.1, ptr nonnull %pacl.1, i32 1, ptr nonnull elementtype(i32) %pacl.1) #10, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i51 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i51, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !28

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %pacl.1, i32 noundef 3) #10
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %pacl.1, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %fh_unlock.exit.posix_acl_release.exit_crit_edge
  %tobool.not.i52 = icmp eq ptr %dpacl.1, null
  br i1 %tobool.not.i52, label %posix_acl_release.exit.out_nfserr_crit_edge, label %land.lhs.true.i56

posix_acl_release.exit.out_nfserr_crit_edge:      ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nfserr

land.lhs.true.i56:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dpacl.1, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  call void @llvm.prefetch.p0(ptr nonnull %dpacl.1, i32 1, i32 3, i32 1) #10
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dpacl.1, ptr nonnull %dpacl.1, i32 1, ptr nonnull elementtype(i32) %dpacl.1) #10, !srcloc !27
  %asmresult.i.i.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i54, 1
  br i1 %cmp.i.i.i.i55, label %do.end.i61, label %if.end5.i.i.i.i58

if.end5.i.i.i.i58:                                ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i54)
  %.not.i.i.i.i57 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i54, 0
  br i1 %.not.i.i.i.i57, label %if.end5.i.i.i.i58.out_nfserr_crit_edge, label %if.then10.i.i.i.i59, !prof !28

if.end5.i.i.i.i58.out_nfserr_crit_edge:           ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nfserr

if.then10.i.i.i.i59:                              ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %dpacl.1, i32 noundef 3) #10
  br label %out_nfserr

do.end.i61:                                       ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  %a_rcu.i60 = getelementptr inbounds %struct.posix_acl, ptr %dpacl.1, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i60, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %out_nfserr

out_nfserr:                                       ; preds = %do.end.i61, %if.then10.i.i.i.i59, %if.end5.i.i.i.i58.out_nfserr_crit_edge, %posix_acl_release.exit.out_nfserr_crit_edge, %if.end9.out_nfserr_crit_edge
  %host_error.1 = phi i32 [ %ret.1.i, %if.end9.out_nfserr_crit_edge ], [ %host_error.0, %posix_acl_release.exit.out_nfserr_crit_edge ], [ %host_error.0, %if.end5.i.i.i.i58.out_nfserr_crit_edge ], [ %host_error.0, %if.then10.i.i.i.i59 ], [ %host_error.0, %do.end.i61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %host_error.1)
  %cmp27 = icmp eq i32 %host_error.1, -95
  br i1 %cmp27, label %out_nfserr.cleanup_crit_edge, label %out_nfserr.if.else_crit_edge

out_nfserr.if.else_crit_edge:                     ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

out_nfserr.cleanup_crit_edge:                     ; preds = %out_nfserr
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %out_nfserr.if.else_crit_edge, %out_nfserr.thread
  %host_error.181 = phi i32 [ -12, %out_nfserr.thread ], [ %host_error.1, %out_nfserr.if.else_crit_edge ]
  %call30 = call i32 @nfserrno(i32 noundef %host_error.181) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %out_nfserr.cleanup_crit_edge, %nfs4_acl_nfsv4_to_posix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.else ], [ %call, %entry.cleanup_crit_edge ], [ 10032, %nfs4_acl_nfsv4_to_posix.exit.cleanup_crit_edge ], [ 10032, %out_nfserr.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_posix_acl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_acl_get_whotype(ptr nocapture noundef readonly %p, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 6, label %land.lhs.true
    i32 9, label %land.lhs.true.2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.4, ptr noundef dereferenceable(6) %p, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.1

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.011.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %land.lhs.true.1.if.then_crit_edge ], [ 2, %land.lhs.true.2.if.then_crit_edge ]
  %type = getelementptr [3 x %struct.anon.159], ptr @s2t_map, i32 0, i32 %i.011.lcssa, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  br label %cleanup

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %bcmp.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.5, ptr noundef dereferenceable(6) %p, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %cmp3.1 = icmp eq i32 %bcmp.1, 0
  br i1 %cmp3.1, label %land.lhs.true.1.if.then_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.2:                                  ; preds = %entry
  %bcmp.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @.str.6, ptr noundef dereferenceable(9) %p, i32 9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %cmp3.2 = icmp eq i32 %bcmp.2, 0
  br i1 %cmp3.2, label %land.lhs.true.2.if.then_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cleanup:                                          ; preds = %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %land.lhs.true.2.cleanup_crit_edge ], [ 0, %land.lhs.true.1.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_acl_write_who(ptr noundef %xdr, i32 noundef %who) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %who, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %if.end, label %for.inc.2

if.end:                                           ; preds = %entry
  %stringlen = getelementptr [3 x %struct.anon.159], ptr @s2t_map, i32 0, i32 %switch.tableidx, i32 1
  %1 = ptrtoint ptr %stringlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stringlen, align 4
  %add = add i32 %2, 4
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le = getelementptr [3 x %struct.anon.159], ptr @s2t_map, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.le, align 4
  %call8 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call, ptr noundef %4, i32 noundef %2) #10
  br label %cleanup

for.inc.2:                                        ; preds = %entry
  %.b53 = load i1, ptr @nfs4_acl_write_who.__already_done, align 1
  br i1 %.b53, label %for.inc.2.cleanup_crit_edge, label %if.then14, !prof !28

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfs4_acl_write_who.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 883, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %for.inc.2.cleanup_crit_edge, %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 10018, %if.end.cleanup_crit_edge ], [ 10006, %if.then14 ], [ 10006, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_one_v4_ace(ptr noundef %state, ptr nocapture noundef readonly %ace) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mask = getelementptr inbounds %struct.nfs4_ace, ptr %ace, i32 0, i32 2
  %0 = ptrtoint ptr %access_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access_mask, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %whotype.i = getelementptr inbounds %struct.nfs4_ace, ptr %ace, i32 0, i32 3
  %3 = ptrtoint ptr %whotype.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %whotype.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %4, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb59
  ]

sw.bb.i:                                          ; preds = %entry
  %flag.i = getelementptr inbounds %struct.nfs4_ace, ptr %ace, i32 0, i32 1
  %6 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = getelementptr inbounds %struct.nfs4_ace, ptr %ace, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack154 = load i32, ptr %8, align 4
  br i1 %tobool.not.i, label %sw.bb3, label %sw.bb32

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 820, 0\0A.popsection", ""() #10, !srcloc !34
  unreachable

sw.bb:                                            ; preds = %entry
  %10 = ptrtoint ptr %ace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %owner = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %deny.i = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %deny.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %deny.i, align 4
  %neg.i = xor i32 %13, -1
  %and.i155 = and i32 %1, %neg.i
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %owner, align 4
  %neg.i156 = xor i32 %15, -1
  %and.i157 = and i32 %1, %neg.i156
  %deny.i158 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %sw.bb.i
  %users.i = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %16 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %users.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33.i = icmp sgt i32 %19, 0
  br i1 %cmp33.i, label %sw.bb3.for.body.i_crit_edge, label %sw.bb3.for.end.i_crit_edge

sw.bb3.for.end.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

sw.bb3.for.body.i_crit_edge:                      ; preds = %sw.bb3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb3.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.posix_ace_state_array, ptr %17, i32 0, i32 1, i32 %i.034.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack154)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack154
  br i1 %cmp.i.i, label %for.body.i.find_uid.exit_crit_edge, label %for.inc.i

for.body.i.find_uid.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_uid.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb3.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb3.for.end.i_crit_edge ], [ %19, %for.inc.i.for.end.i_crit_edge ]
  %inc4.i = add i32 %19, 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc4.i, ptr %17, align 4
  %arrayidx6.i = getelementptr %struct.posix_ace_state_array, ptr %17, i32 0, i32 1, i32 %i.0.lcssa.i
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.unpack154, ptr %arrayidx6.i, align 4
  %everyone.i = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %23 = ptrtoint ptr %everyone.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %everyone.i, align 4
  %perms.i = getelementptr %struct.posix_ace_state_array, ptr %17, i32 0, i32 1, i32 %i.0.lcssa.i, i32 1
  %25 = ptrtoint ptr %perms.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %perms.i, align 4
  %deny.i160 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %deny.i160 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %deny.i160, align 4
  %deny14.i = getelementptr %struct.posix_ace_state_array, ptr %17, i32 0, i32 1, i32 %i.0.lcssa.i, i32 1, i32 1
  %28 = ptrtoint ptr %deny14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %deny14.i, align 4
  br label %find_uid.exit

find_uid.exit:                                    ; preds = %for.end.i, %for.body.i.find_uid.exit_crit_edge
  %i.032.i = phi i32 [ %i.0.lcssa.i, %for.end.i ], [ %i.034.i, %for.body.i.find_uid.exit_crit_edge ]
  %29 = ptrtoint ptr %ace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp6 = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %users.i, align 4
  %perms = getelementptr %struct.posix_ace_state_array, ptr %32, i32 0, i32 1, i32 %i.032.i, i32 1
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %find_uid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %deny.i161 = getelementptr %struct.posix_ace_state_array, ptr %32, i32 0, i32 1, i32 %i.032.i, i32 1, i32 1
  %33 = ptrtoint ptr %deny.i161 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %deny.i161, align 4
  %neg.i162 = xor i32 %34, -1
  %and.i163 = and i32 %1, %neg.i162
  br label %sw.epilog.sink.split

if.else9:                                         ; preds = %find_uid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %perms, align 4
  %neg.i165 = xor i32 %36, -1
  %and.i166 = and i32 %1, %neg.i165
  %deny.i167 = getelementptr %struct.posix_ace_state_array, ptr %32, i32 0, i32 1, i32 %i.032.i, i32 1, i32 1
  %37 = ptrtoint ptr %deny.i167 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %deny.i167, align 4
  %or.i168 = or i32 %38, %and.i166
  store i32 %or.i168, ptr %deny.i167, align 4
  %39 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %users.i, align 4
  %deny = getelementptr %struct.posix_ace_state_array, ptr %40, i32 0, i32 1, i32 %i.032.i, i32 1, i32 1
  %41 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %deny, align 4
  %owner18 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  %43 = ptrtoint ptr %owner18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %owner18, align 4
  %neg.i169 = xor i32 %44, -1
  %and.i170 = and i32 %42, %neg.i169
  %deny.i171 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %entry
  %45 = ptrtoint ptr %ace to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp22 = icmp eq i32 %46, 0
  %group = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %deny.i173 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %deny.i173 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %deny.i173, align 4
  %neg.i174 = xor i32 %48, -1
  %and.i175 = and i32 %1, %neg.i174
  br label %sw.epilog.sink.split

if.else25:                                        ; preds = %sw.bb20
  %49 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %group, align 4
  %neg.i177 = xor i32 %50, -1
  %and.i178 = and i32 %1, %neg.i177
  %deny.i179 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %deny.i179 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %deny.i179, align 4
  %or.i180 = or i32 %52, %and.i178
  store i32 %or.i180, ptr %deny.i179, align 4
  %owner29 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  %53 = ptrtoint ptr %owner29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %owner29, align 4
  %neg.i181 = xor i32 %54, -1
  %and.i182 = and i32 %or.i180, %neg.i181
  %deny.i183 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %deny.i183 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %deny.i183, align 4
  %or.i184 = or i32 %56, %and.i182
  store i32 %or.i184, ptr %deny.i183, align 4
  %everyone = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %57 = ptrtoint ptr %everyone to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %everyone, align 4
  %neg.i185 = xor i32 %58, -1
  %and.i186 = and i32 %or.i180, %neg.i185
  %deny.i187 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %deny.i187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %deny.i187, align 4
  %or.i188 = or i32 %60, %and.i186
  store i32 %or.i188, ptr %deny.i187, align 4
  %users30 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %61 = ptrtoint ptr %users30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %users30, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp4.i = icmp sgt i32 %64, 0
  br i1 %cmp4.i, label %if.else25.for.body.i191_crit_edge, label %if.else25.deny_bits_array.exit_crit_edge

if.else25.deny_bits_array.exit_crit_edge:         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit

if.else25.for.body.i191_crit_edge:                ; preds = %if.else25
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.body.i191.for.body.i191_crit_edge, %if.else25.for.body.i191_crit_edge
  %i.05.i = phi i32 [ %inc.i190, %for.body.i191.for.body.i191_crit_edge ], [ 0, %if.else25.for.body.i191_crit_edge ]
  %perms.i189 = getelementptr %struct.posix_ace_state_array, ptr %62, i32 0, i32 1, i32 %i.05.i, i32 1
  %65 = ptrtoint ptr %perms.i189 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %perms.i189, align 4
  %neg.i.i = xor i32 %66, -1
  %and.i.i = and i32 %or.i180, %neg.i.i
  %deny.i.i = getelementptr %struct.posix_ace_state_array, ptr %62, i32 0, i32 1, i32 %i.05.i, i32 1, i32 1
  %67 = ptrtoint ptr %deny.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %deny.i.i, align 4
  %or.i.i = or i32 %68, %and.i.i
  store i32 %or.i.i, ptr %deny.i.i, align 4
  %inc.i190 = add nuw nsw i32 %i.05.i, 1
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %62, align 4
  %cmp.i = icmp slt i32 %inc.i190, %70
  br i1 %cmp.i, label %for.body.i191.for.body.i191_crit_edge, label %for.body.i191.deny_bits_array.exit_crit_edge

for.body.i191.deny_bits_array.exit_crit_edge:     ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit

for.body.i191.for.body.i191_crit_edge:            ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i191

deny_bits_array.exit:                             ; preds = %for.body.i191.deny_bits_array.exit_crit_edge, %if.else25.deny_bits_array.exit_crit_edge
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %71 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %groups, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp4.i193 = icmp sgt i32 %74, 0
  br i1 %cmp4.i193, label %deny_bits_array.exit.for.body.i202_crit_edge, label %deny_bits_array.exit.sw.epilog_crit_edge

deny_bits_array.exit.sw.epilog_crit_edge:         ; preds = %deny_bits_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

deny_bits_array.exit.for.body.i202_crit_edge:     ; preds = %deny_bits_array.exit
  br label %for.body.i202

for.body.i202:                                    ; preds = %for.body.i202.for.body.i202_crit_edge, %deny_bits_array.exit.for.body.i202_crit_edge
  %i.05.i194 = phi i32 [ %inc.i200, %for.body.i202.for.body.i202_crit_edge ], [ 0, %deny_bits_array.exit.for.body.i202_crit_edge ]
  %perms.i195 = getelementptr %struct.posix_ace_state_array, ptr %72, i32 0, i32 1, i32 %i.05.i194, i32 1
  %75 = ptrtoint ptr %perms.i195 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %perms.i195, align 4
  %neg.i.i196 = xor i32 %76, -1
  %and.i.i197 = and i32 %or.i180, %neg.i.i196
  %deny.i.i198 = getelementptr %struct.posix_ace_state_array, ptr %72, i32 0, i32 1, i32 %i.05.i194, i32 1, i32 1
  %77 = ptrtoint ptr %deny.i.i198 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %deny.i.i198, align 4
  %or.i.i199 = or i32 %78, %and.i.i197
  store i32 %or.i.i199, ptr %deny.i.i198, align 4
  %inc.i200 = add nuw nsw i32 %i.05.i194, 1
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %72, align 4
  %cmp.i201 = icmp slt i32 %inc.i200, %80
  br i1 %cmp.i201, label %for.body.i202.for.body.i202_crit_edge, label %for.body.i202.sw.epilog_crit_edge

for.body.i202.sw.epilog_crit_edge:                ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i202.for.body.i202_crit_edge:            ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i202

sw.bb32:                                          ; preds = %sw.bb.i
  %groups.i = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %81 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %groups.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp33.i205 = icmp sgt i32 %84, 0
  br i1 %cmp33.i205, label %sw.bb32.for.body.i210_crit_edge, label %sw.bb32.for.end.i221_crit_edge

sw.bb32.for.end.i221_crit_edge:                   ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i221

sw.bb32.for.body.i210_crit_edge:                  ; preds = %sw.bb32
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i213.for.body.i210_crit_edge, %sw.bb32.for.body.i210_crit_edge
  %i.034.i206 = phi i32 [ %inc.i211, %for.inc.i213.for.body.i210_crit_edge ], [ 0, %sw.bb32.for.body.i210_crit_edge ]
  %arrayidx.i207 = getelementptr %struct.posix_ace_state_array, ptr %82, i32 0, i32 1, i32 %i.034.i206
  %85 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack.i208 = load i32, ptr %arrayidx.i207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i208, i32 %.unpack154)
  %cmp.i.i209 = icmp eq i32 %.unpack.i208, %.unpack154
  br i1 %cmp.i.i209, label %for.body.i210.find_gid.exit_crit_edge, label %for.inc.i213

for.body.i210.find_gid.exit_crit_edge:            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_gid.exit

for.inc.i213:                                     ; preds = %for.body.i210
  %inc.i211 = add nuw nsw i32 %i.034.i206, 1
  %exitcond.not.i212 = icmp eq i32 %inc.i211, %84
  br i1 %exitcond.not.i212, label %for.inc.i213.for.end.i221_crit_edge, label %for.inc.i213.for.body.i210_crit_edge

for.inc.i213.for.body.i210_crit_edge:             ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i210

for.inc.i213.for.end.i221_crit_edge:              ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i221

for.end.i221:                                     ; preds = %for.inc.i213.for.end.i221_crit_edge, %sw.bb32.for.end.i221_crit_edge
  %i.0.lcssa.i214 = phi i32 [ 0, %sw.bb32.for.end.i221_crit_edge ], [ %84, %for.inc.i213.for.end.i221_crit_edge ]
  %inc4.i215 = add i32 %84, 1
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc4.i215, ptr %82, align 4
  %arrayidx6.i216 = getelementptr %struct.posix_ace_state_array, ptr %82, i32 0, i32 1, i32 %i.0.lcssa.i214
  %87 = ptrtoint ptr %arrayidx6.i216 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.unpack154, ptr %arrayidx6.i216, align 4
  %everyone.i217 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %88 = ptrtoint ptr %everyone.i217 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %everyone.i217, align 4
  %perms.i218 = getelementptr %struct.posix_ace_state_array, ptr %82, i32 0, i32 1, i32 %i.0.lcssa.i214, i32 1
  %90 = ptrtoint ptr %perms.i218 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %perms.i218, align 4
  %deny.i219 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %deny.i219 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %deny.i219, align 4
  %deny14.i220 = getelementptr %struct.posix_ace_state_array, ptr %82, i32 0, i32 1, i32 %i.0.lcssa.i214, i32 1, i32 1
  %93 = ptrtoint ptr %deny14.i220 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %deny14.i220, align 4
  br label %find_gid.exit

find_gid.exit:                                    ; preds = %for.end.i221, %for.body.i210.find_gid.exit_crit_edge
  %i.032.i222 = phi i32 [ %i.0.lcssa.i214, %for.end.i221 ], [ %i.034.i206, %for.body.i210.find_gid.exit_crit_edge ]
  %94 = ptrtoint ptr %ace to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp36 = icmp eq i32 %95, 0
  %96 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %groups.i, align 4
  %perms42 = getelementptr %struct.posix_ace_state_array, ptr %97, i32 0, i32 1, i32 %i.032.i222, i32 1
  br i1 %cmp36, label %if.then38, label %if.else43

if.then38:                                        ; preds = %find_gid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %deny.i223 = getelementptr %struct.posix_ace_state_array, ptr %97, i32 0, i32 1, i32 %i.032.i222, i32 1, i32 1
  %98 = ptrtoint ptr %deny.i223 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %deny.i223, align 4
  %neg.i224 = xor i32 %99, -1
  %and.i225 = and i32 %1, %neg.i224
  br label %sw.epilog.sink.split

if.else43:                                        ; preds = %find_gid.exit
  %100 = ptrtoint ptr %perms42 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %perms42, align 4
  %neg.i227 = xor i32 %101, -1
  %and.i228 = and i32 %1, %neg.i227
  %deny.i229 = getelementptr %struct.posix_ace_state_array, ptr %97, i32 0, i32 1, i32 %i.032.i222, i32 1, i32 1
  %102 = ptrtoint ptr %deny.i229 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %deny.i229, align 4
  %or.i230 = or i32 %103, %and.i228
  store i32 %or.i230, ptr %deny.i229, align 4
  %104 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %groups.i, align 4
  %deny52 = getelementptr %struct.posix_ace_state_array, ptr %105, i32 0, i32 1, i32 %i.032.i222, i32 1, i32 1
  %106 = ptrtoint ptr %deny52 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %deny52, align 4
  %owner53 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  %108 = ptrtoint ptr %owner53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %owner53, align 4
  %neg.i231 = xor i32 %109, -1
  %and.i232 = and i32 %107, %neg.i231
  %deny.i233 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %deny.i233 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %deny.i233, align 4
  %or.i234 = or i32 %111, %and.i232
  store i32 %or.i234, ptr %deny.i233, align 4
  %group54 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  %112 = ptrtoint ptr %group54 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %group54, align 4
  %neg.i235 = xor i32 %113, -1
  %and.i236 = and i32 %107, %neg.i235
  %deny.i237 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %deny.i237 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %deny.i237, align 4
  %or.i238 = or i32 %115, %and.i236
  store i32 %or.i238, ptr %deny.i237, align 4
  %everyone55 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %116 = ptrtoint ptr %everyone55 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %everyone55, align 4
  %neg.i239 = xor i32 %117, -1
  %and.i240 = and i32 %107, %neg.i239
  %deny.i241 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %deny.i241 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %deny.i241, align 4
  %or.i242 = or i32 %119, %and.i240
  store i32 %or.i242, ptr %deny.i241, align 4
  %users56 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %120 = ptrtoint ptr %users56 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %users56, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp4.i243 = icmp sgt i32 %123, 0
  br i1 %cmp4.i243, label %if.else43.for.body.i252_crit_edge, label %if.else43.deny_bits_array.exit254_crit_edge

if.else43.deny_bits_array.exit254_crit_edge:      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit254

if.else43.for.body.i252_crit_edge:                ; preds = %if.else43
  br label %for.body.i252

for.body.i252:                                    ; preds = %for.body.i252.for.body.i252_crit_edge, %if.else43.for.body.i252_crit_edge
  %i.05.i244 = phi i32 [ %inc.i250, %for.body.i252.for.body.i252_crit_edge ], [ 0, %if.else43.for.body.i252_crit_edge ]
  %perms.i245 = getelementptr %struct.posix_ace_state_array, ptr %121, i32 0, i32 1, i32 %i.05.i244, i32 1
  %124 = ptrtoint ptr %perms.i245 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %perms.i245, align 4
  %neg.i.i246 = xor i32 %125, -1
  %and.i.i247 = and i32 %107, %neg.i.i246
  %deny.i.i248 = getelementptr %struct.posix_ace_state_array, ptr %121, i32 0, i32 1, i32 %i.05.i244, i32 1, i32 1
  %126 = ptrtoint ptr %deny.i.i248 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %deny.i.i248, align 4
  %or.i.i249 = or i32 %127, %and.i.i247
  store i32 %or.i.i249, ptr %deny.i.i248, align 4
  %inc.i250 = add nuw nsw i32 %i.05.i244, 1
  %128 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %121, align 4
  %cmp.i251 = icmp slt i32 %inc.i250, %129
  br i1 %cmp.i251, label %for.body.i252.for.body.i252_crit_edge, label %for.body.i252.deny_bits_array.exit254_crit_edge

for.body.i252.deny_bits_array.exit254_crit_edge:  ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit254

for.body.i252.for.body.i252_crit_edge:            ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i252

deny_bits_array.exit254:                          ; preds = %for.body.i252.deny_bits_array.exit254_crit_edge, %if.else43.deny_bits_array.exit254_crit_edge
  %130 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %groups.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp4.i255 = icmp sgt i32 %133, 0
  br i1 %cmp4.i255, label %deny_bits_array.exit254.for.body.i264_crit_edge, label %deny_bits_array.exit254.sw.epilog_crit_edge

deny_bits_array.exit254.sw.epilog_crit_edge:      ; preds = %deny_bits_array.exit254
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

deny_bits_array.exit254.for.body.i264_crit_edge:  ; preds = %deny_bits_array.exit254
  br label %for.body.i264

for.body.i264:                                    ; preds = %for.body.i264.for.body.i264_crit_edge, %deny_bits_array.exit254.for.body.i264_crit_edge
  %i.05.i256 = phi i32 [ %inc.i262, %for.body.i264.for.body.i264_crit_edge ], [ 0, %deny_bits_array.exit254.for.body.i264_crit_edge ]
  %perms.i257 = getelementptr %struct.posix_ace_state_array, ptr %131, i32 0, i32 1, i32 %i.05.i256, i32 1
  %134 = ptrtoint ptr %perms.i257 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %perms.i257, align 4
  %neg.i.i258 = xor i32 %135, -1
  %and.i.i259 = and i32 %107, %neg.i.i258
  %deny.i.i260 = getelementptr %struct.posix_ace_state_array, ptr %131, i32 0, i32 1, i32 %i.05.i256, i32 1, i32 1
  %136 = ptrtoint ptr %deny.i.i260 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %deny.i.i260, align 4
  %or.i.i261 = or i32 %137, %and.i.i259
  store i32 %or.i.i261, ptr %deny.i.i260, align 4
  %inc.i262 = add nuw nsw i32 %i.05.i256, 1
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %131, align 4
  %cmp.i263 = icmp slt i32 %inc.i262, %139
  br i1 %cmp.i263, label %for.body.i264.for.body.i264_crit_edge, label %for.body.i264.sw.epilog_crit_edge

for.body.i264.sw.epilog_crit_edge:                ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i264.for.body.i264_crit_edge:            ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i264

sw.bb59:                                          ; preds = %entry
  %140 = ptrtoint ptr %ace to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp61 = icmp eq i32 %141, 0
  %owner64 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  br i1 %cmp61, label %if.then63, label %if.else69

if.then63:                                        ; preds = %sw.bb59
  %deny.i267 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %deny.i267 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %deny.i267, align 4
  %neg.i268 = xor i32 %143, -1
  %and.i269 = and i32 %1, %neg.i268
  %144 = ptrtoint ptr %owner64 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %owner64, align 4
  %or.i270 = or i32 %145, %and.i269
  store i32 %or.i270, ptr %owner64, align 4
  %group65 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  %deny.i271 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2, i32 1
  %146 = ptrtoint ptr %deny.i271 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %deny.i271, align 4
  %neg.i272 = xor i32 %147, -1
  %and.i273 = and i32 %1, %neg.i272
  %148 = ptrtoint ptr %group65 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %group65, align 4
  %or.i274 = or i32 %149, %and.i273
  store i32 %or.i274, ptr %group65, align 4
  %other = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 3
  %deny.i275 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 3, i32 1
  %150 = ptrtoint ptr %deny.i275 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %deny.i275, align 4
  %neg.i276 = xor i32 %151, -1
  %and.i277 = and i32 %1, %neg.i276
  %152 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %other, align 4
  %or.i278 = or i32 %153, %and.i277
  store i32 %or.i278, ptr %other, align 4
  %everyone66 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %deny.i279 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %deny.i279 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %deny.i279, align 4
  %neg.i280 = xor i32 %155, -1
  %and.i281 = and i32 %1, %neg.i280
  %156 = ptrtoint ptr %everyone66 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %everyone66, align 4
  %or.i282 = or i32 %157, %and.i281
  store i32 %or.i282, ptr %everyone66, align 4
  %users67 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %158 = ptrtoint ptr %users67 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %users67, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp4.i283 = icmp sgt i32 %161, 0
  br i1 %cmp4.i283, label %if.then63.for.body.i292_crit_edge, label %if.then63.allow_bits_array.exit_crit_edge

if.then63.allow_bits_array.exit_crit_edge:        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_bits_array.exit

if.then63.for.body.i292_crit_edge:                ; preds = %if.then63
  br label %for.body.i292

for.body.i292:                                    ; preds = %for.body.i292.for.body.i292_crit_edge, %if.then63.for.body.i292_crit_edge
  %i.05.i284 = phi i32 [ %inc.i290, %for.body.i292.for.body.i292_crit_edge ], [ 0, %if.then63.for.body.i292_crit_edge ]
  %perms.i285 = getelementptr %struct.posix_ace_state_array, ptr %159, i32 0, i32 1, i32 %i.05.i284, i32 1
  %deny.i.i286 = getelementptr %struct.posix_ace_state_array, ptr %159, i32 0, i32 1, i32 %i.05.i284, i32 1, i32 1
  %162 = ptrtoint ptr %deny.i.i286 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %deny.i.i286, align 4
  %neg.i.i287 = xor i32 %163, -1
  %and.i.i288 = and i32 %1, %neg.i.i287
  %164 = ptrtoint ptr %perms.i285 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %perms.i285, align 4
  %or.i.i289 = or i32 %165, %and.i.i288
  store i32 %or.i.i289, ptr %perms.i285, align 4
  %inc.i290 = add nuw nsw i32 %i.05.i284, 1
  %166 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %159, align 4
  %cmp.i291 = icmp slt i32 %inc.i290, %167
  br i1 %cmp.i291, label %for.body.i292.for.body.i292_crit_edge, label %for.body.i292.allow_bits_array.exit_crit_edge

for.body.i292.allow_bits_array.exit_crit_edge:    ; preds = %for.body.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_bits_array.exit

for.body.i292.for.body.i292_crit_edge:            ; preds = %for.body.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i292

allow_bits_array.exit:                            ; preds = %for.body.i292.allow_bits_array.exit_crit_edge, %if.then63.allow_bits_array.exit_crit_edge
  %groups68 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %168 = ptrtoint ptr %groups68 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %groups68, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp4.i294 = icmp sgt i32 %171, 0
  br i1 %cmp4.i294, label %allow_bits_array.exit.for.body.i303_crit_edge, label %allow_bits_array.exit.sw.epilog_crit_edge

allow_bits_array.exit.sw.epilog_crit_edge:        ; preds = %allow_bits_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

allow_bits_array.exit.for.body.i303_crit_edge:    ; preds = %allow_bits_array.exit
  br label %for.body.i303

for.body.i303:                                    ; preds = %for.body.i303.for.body.i303_crit_edge, %allow_bits_array.exit.for.body.i303_crit_edge
  %i.05.i295 = phi i32 [ %inc.i301, %for.body.i303.for.body.i303_crit_edge ], [ 0, %allow_bits_array.exit.for.body.i303_crit_edge ]
  %perms.i296 = getelementptr %struct.posix_ace_state_array, ptr %169, i32 0, i32 1, i32 %i.05.i295, i32 1
  %deny.i.i297 = getelementptr %struct.posix_ace_state_array, ptr %169, i32 0, i32 1, i32 %i.05.i295, i32 1, i32 1
  %172 = ptrtoint ptr %deny.i.i297 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %deny.i.i297, align 4
  %neg.i.i298 = xor i32 %173, -1
  %and.i.i299 = and i32 %1, %neg.i.i298
  %174 = ptrtoint ptr %perms.i296 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %perms.i296, align 4
  %or.i.i300 = or i32 %175, %and.i.i299
  store i32 %or.i.i300, ptr %perms.i296, align 4
  %inc.i301 = add nuw nsw i32 %i.05.i295, 1
  %176 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %169, align 4
  %cmp.i302 = icmp slt i32 %inc.i301, %177
  br i1 %cmp.i302, label %for.body.i303.for.body.i303_crit_edge, label %for.body.i303.sw.epilog_crit_edge

for.body.i303.sw.epilog_crit_edge:                ; preds = %for.body.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i303.for.body.i303_crit_edge:            ; preds = %for.body.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i303

if.else69:                                        ; preds = %sw.bb59
  %178 = ptrtoint ptr %owner64 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %owner64, align 4
  %neg.i306 = xor i32 %179, -1
  %and.i307 = and i32 %1, %neg.i306
  %deny.i308 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %deny.i308 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %deny.i308, align 4
  %or.i309 = or i32 %181, %and.i307
  store i32 %or.i309, ptr %deny.i308, align 4
  %group71 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  %182 = ptrtoint ptr %group71 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %group71, align 4
  %neg.i310 = xor i32 %183, -1
  %and.i311 = and i32 %1, %neg.i310
  %deny.i312 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2, i32 1
  %184 = ptrtoint ptr %deny.i312 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %deny.i312, align 4
  %or.i313 = or i32 %185, %and.i311
  store i32 %or.i313, ptr %deny.i312, align 4
  %other72 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 3
  %186 = ptrtoint ptr %other72 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %other72, align 4
  %neg.i314 = xor i32 %187, -1
  %and.i315 = and i32 %1, %neg.i314
  %deny.i316 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 3, i32 1
  %188 = ptrtoint ptr %deny.i316 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %deny.i316, align 4
  %or.i317 = or i32 %189, %and.i315
  store i32 %or.i317, ptr %deny.i316, align 4
  %everyone73 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4
  %190 = ptrtoint ptr %everyone73 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %everyone73, align 4
  %neg.i318 = xor i32 %191, -1
  %and.i319 = and i32 %1, %neg.i318
  %deny.i320 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 4, i32 1
  %192 = ptrtoint ptr %deny.i320 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %deny.i320, align 4
  %or.i321 = or i32 %193, %and.i319
  store i32 %or.i321, ptr %deny.i320, align 4
  %users74 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %194 = ptrtoint ptr %users74 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %users74, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp4.i322 = icmp sgt i32 %197, 0
  br i1 %cmp4.i322, label %if.else69.for.body.i331_crit_edge, label %if.else69.deny_bits_array.exit333_crit_edge

if.else69.deny_bits_array.exit333_crit_edge:      ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit333

if.else69.for.body.i331_crit_edge:                ; preds = %if.else69
  br label %for.body.i331

for.body.i331:                                    ; preds = %for.body.i331.for.body.i331_crit_edge, %if.else69.for.body.i331_crit_edge
  %i.05.i323 = phi i32 [ %inc.i329, %for.body.i331.for.body.i331_crit_edge ], [ 0, %if.else69.for.body.i331_crit_edge ]
  %perms.i324 = getelementptr %struct.posix_ace_state_array, ptr %195, i32 0, i32 1, i32 %i.05.i323, i32 1
  %198 = ptrtoint ptr %perms.i324 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %perms.i324, align 4
  %neg.i.i325 = xor i32 %199, -1
  %and.i.i326 = and i32 %1, %neg.i.i325
  %deny.i.i327 = getelementptr %struct.posix_ace_state_array, ptr %195, i32 0, i32 1, i32 %i.05.i323, i32 1, i32 1
  %200 = ptrtoint ptr %deny.i.i327 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %deny.i.i327, align 4
  %or.i.i328 = or i32 %201, %and.i.i326
  store i32 %or.i.i328, ptr %deny.i.i327, align 4
  %inc.i329 = add nuw nsw i32 %i.05.i323, 1
  %202 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %195, align 4
  %cmp.i330 = icmp slt i32 %inc.i329, %203
  br i1 %cmp.i330, label %for.body.i331.for.body.i331_crit_edge, label %for.body.i331.deny_bits_array.exit333_crit_edge

for.body.i331.deny_bits_array.exit333_crit_edge:  ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #12
  br label %deny_bits_array.exit333

for.body.i331.for.body.i331_crit_edge:            ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i331

deny_bits_array.exit333:                          ; preds = %for.body.i331.deny_bits_array.exit333_crit_edge, %if.else69.deny_bits_array.exit333_crit_edge
  %groups75 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %204 = ptrtoint ptr %groups75 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %groups75, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp4.i334 = icmp sgt i32 %207, 0
  br i1 %cmp4.i334, label %deny_bits_array.exit333.for.body.i343_crit_edge, label %deny_bits_array.exit333.sw.epilog_crit_edge

deny_bits_array.exit333.sw.epilog_crit_edge:      ; preds = %deny_bits_array.exit333
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

deny_bits_array.exit333.for.body.i343_crit_edge:  ; preds = %deny_bits_array.exit333
  br label %for.body.i343

for.body.i343:                                    ; preds = %for.body.i343.for.body.i343_crit_edge, %deny_bits_array.exit333.for.body.i343_crit_edge
  %i.05.i335 = phi i32 [ %inc.i341, %for.body.i343.for.body.i343_crit_edge ], [ 0, %deny_bits_array.exit333.for.body.i343_crit_edge ]
  %perms.i336 = getelementptr %struct.posix_ace_state_array, ptr %205, i32 0, i32 1, i32 %i.05.i335, i32 1
  %208 = ptrtoint ptr %perms.i336 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %perms.i336, align 4
  %neg.i.i337 = xor i32 %209, -1
  %and.i.i338 = and i32 %1, %neg.i.i337
  %deny.i.i339 = getelementptr %struct.posix_ace_state_array, ptr %205, i32 0, i32 1, i32 %i.05.i335, i32 1, i32 1
  %210 = ptrtoint ptr %deny.i.i339 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %deny.i.i339, align 4
  %or.i.i340 = or i32 %211, %and.i.i338
  store i32 %or.i.i340, ptr %deny.i.i339, align 4
  %inc.i341 = add nuw nsw i32 %i.05.i335, 1
  %212 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %205, align 4
  %cmp.i342 = icmp slt i32 %inc.i341, %213
  br i1 %cmp.i342, label %for.body.i343.for.body.i343_crit_edge, label %for.body.i343.sw.epilog_crit_edge

for.body.i343.sw.epilog_crit_edge:                ; preds = %for.body.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i343.for.body.i343_crit_edge:            ; preds = %for.body.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i343

sw.epilog.sink.split:                             ; preds = %if.then38, %if.then24, %if.else9, %if.then8, %if.else, %if.then
  %perms42.sink368 = phi ptr [ %perms42, %if.then38 ], [ %group, %if.then24 ], [ %perms, %if.then8 ], [ %deny.i171, %if.else9 ], [ %owner, %if.then ], [ %deny.i158, %if.else ]
  %and.i225.sink = phi i32 [ %and.i225, %if.then38 ], [ %and.i175, %if.then24 ], [ %and.i163, %if.then8 ], [ %and.i170, %if.else9 ], [ %and.i155, %if.then ], [ %and.i157, %if.else ]
  %214 = ptrtoint ptr %perms42.sink368 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %perms42.sink368, align 4
  %or.i226 = or i32 %215, %and.i225.sink
  store i32 %or.i226, ptr %perms42.sink368, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.i343.sw.epilog_crit_edge, %deny_bits_array.exit333.sw.epilog_crit_edge, %for.body.i303.sw.epilog_crit_edge, %allow_bits_array.exit.sw.epilog_crit_edge, %for.body.i264.sw.epilog_crit_edge, %deny_bits_array.exit254.sw.epilog_crit_edge, %for.body.i202.sw.epilog_crit_edge, %deny_bits_array.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @posix_state_to_acl(ptr nocapture noundef %state, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %users, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true3:                                   ; preds = %if.end
  %groups = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true3.if.end12_crit_edge, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true3.if.end12_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %if.end.if.else_crit_edge
  %add = add i32 %5, 4
  %groups9 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %10 = ptrtoint ptr %groups9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add11 = add i32 %add, %13
  br label %if.end12

if.end12:                                         ; preds = %if.else, %land.lhs.true3.if.end12_crit_edge
  %nace.0 = phi i32 [ %add11, %if.else ], [ 3, %land.lhs.true3.if.end12_crit_edge ]
  %call = tail call ptr @posix_acl_alloc(i32 noundef %nace.0, i32 noundef 3264) #10
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %a_entries to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %a_entries, align 4
  %owner = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %owner, align 4
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %a_entries, i32 0, i32 1
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6, i32 70
  %17 = trunc i32 %16 to i16
  %18 = shl i16 %17, 2
  %19 = and i16 %18, 4
  %and6.i = and i32 %16, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i, i32 %spec.select.i)
  %cmp7.i = icmp eq i32 %and6.i, %spec.select.i
  %20 = or i16 %19, 2
  %spec.select29.i = select i1 %cmp7.i, i16 %20, i16 %19
  %21 = lshr i16 %17, 5
  %22 = and i16 %21, 1
  %23 = or i16 %22, %spec.select29.i
  %24 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %e_perm, align 2
  %25 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %users, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp195 = icmp sgt i32 %28, 0
  br i1 %cmp195, label %for.body.lr.ph, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %mask.i = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %pace.0196 = phi ptr [ %a_entries, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pace.0196, i32 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %incdec.ptr, align 4
  %30 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %users, align 4
  %perms = getelementptr %struct.posix_ace_state_array, ptr %31, i32 0, i32 1, i32 %i.0197, i32 1
  %32 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %perms, align 4
  %e_perm22 = getelementptr %struct.posix_acl_entry, ptr %pace.0196, i32 1, i32 1
  %34 = trunc i32 %33 to i16
  %35 = shl i16 %34, 2
  %36 = and i16 %35, 4
  %and6.i138 = and i32 %33, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i138, i32 %spec.select.i)
  %cmp7.i139 = icmp eq i32 %and6.i138, %spec.select.i
  %37 = or i16 %36, 2
  %spec.select29.i140 = select i1 %cmp7.i139, i16 %37, i16 %36
  %38 = lshr i16 %34, 5
  %39 = and i16 %38, 1
  %40 = or i16 %39, %spec.select29.i140
  %41 = ptrtoint ptr %e_perm22 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %e_perm22, align 2
  %42 = getelementptr %struct.posix_acl_entry, ptr %pace.0196, i32 1, i32 2
  %43 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %users, align 4
  %arrayidx25 = getelementptr %struct.posix_ace_state_array, ptr %44, i32 0, i32 1, i32 %i.0197
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx25, align 4
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %42, align 4
  %48 = load ptr, ptr %users, align 4
  %perms29 = getelementptr %struct.posix_ace_state_array, ptr %48, i32 0, i32 1, i32 %i.0197, i32 1
  %49 = ptrtoint ptr %perms29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %perms29, align 4
  %51 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask.i, align 4
  %or.i = or i32 %52, %50
  store i32 %or.i, ptr %mask.i, align 4
  %inc = add nuw nsw i32 %i.0197, 1
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 4
  %cmp = icmp slt i32 %inc, %54
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %pace.0.lcssa = phi ptr [ %a_entries, %if.end16.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %incdec.ptr30 = getelementptr %struct.posix_acl_entry, ptr %pace.0.lcssa, i32 1
  %55 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 4, ptr %incdec.ptr30, align 4
  %group = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 2
  %56 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %group, align 4
  %e_perm33 = getelementptr %struct.posix_acl_entry, ptr %pace.0.lcssa, i32 1, i32 1
  %58 = trunc i32 %57 to i16
  %59 = shl i16 %58, 2
  %60 = and i16 %59, 4
  %and6.i148 = and i32 %57, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i148, i32 %spec.select.i)
  %cmp7.i149 = icmp eq i32 %and6.i148, %spec.select.i
  %61 = or i16 %60, 2
  %spec.select29.i150 = select i1 %cmp7.i149, i16 %61, i16 %60
  %62 = lshr i16 %58, 5
  %63 = and i16 %62, 1
  %64 = or i16 %63, %spec.select29.i150
  %65 = ptrtoint ptr %e_perm33 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %e_perm33, align 2
  %66 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %group, align 4
  %mask.i155 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 5
  %68 = ptrtoint ptr %mask.i155 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mask.i155, align 4
  %or.i156 = or i32 %69, %67
  store i32 %or.i156, ptr %mask.i155, align 4
  %groups36 = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 7
  %70 = ptrtoint ptr %groups36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %groups36, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp38198 = icmp sgt i32 %73, 0
  br i1 %cmp38198, label %for.end.for.body39_crit_edge, label %for.end.for.end57_crit_edge

for.end.for.end57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.end.for.body39_crit_edge
  %i.1200 = phi i32 [ %inc56, %for.body39.for.body39_crit_edge ], [ 0, %for.end.for.body39_crit_edge ]
  %pace.1199 = phi ptr [ %incdec.ptr40, %for.body39.for.body39_crit_edge ], [ %incdec.ptr30, %for.end.for.body39_crit_edge ]
  %incdec.ptr40 = getelementptr %struct.posix_acl_entry, ptr %pace.1199, i32 1
  %74 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 8, ptr %incdec.ptr40, align 4
  %75 = ptrtoint ptr %groups36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %groups36, align 4
  %perms45 = getelementptr %struct.posix_ace_state_array, ptr %76, i32 0, i32 1, i32 %i.1200, i32 1
  %77 = ptrtoint ptr %perms45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %perms45, align 4
  %e_perm47 = getelementptr %struct.posix_acl_entry, ptr %pace.1199, i32 1, i32 1
  %79 = trunc i32 %78 to i16
  %80 = shl i16 %79, 2
  %81 = and i16 %80, 4
  %and6.i160 = and i32 %78, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i160, i32 %spec.select.i)
  %cmp7.i161 = icmp eq i32 %and6.i160, %spec.select.i
  %82 = or i16 %81, 2
  %spec.select29.i162 = select i1 %cmp7.i161, i16 %82, i16 %81
  %83 = lshr i16 %79, 5
  %84 = and i16 %83, 1
  %85 = or i16 %84, %spec.select29.i162
  %86 = ptrtoint ptr %e_perm47 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %e_perm47, align 2
  %87 = getelementptr %struct.posix_acl_entry, ptr %pace.1199, i32 1, i32 2
  %88 = ptrtoint ptr %groups36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %groups36, align 4
  %arrayidx50 = getelementptr %struct.posix_ace_state_array, ptr %89, i32 0, i32 1, i32 %i.1200
  %90 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx50, align 4
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %87, align 4
  %93 = load ptr, ptr %groups36, align 4
  %perms54 = getelementptr %struct.posix_ace_state_array, ptr %93, i32 0, i32 1, i32 %i.1200, i32 1
  %94 = ptrtoint ptr %perms54 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %perms54, align 4
  %96 = ptrtoint ptr %mask.i155 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mask.i155, align 4
  %or.i168 = or i32 %97, %95
  store i32 %or.i168, ptr %mask.i155, align 4
  %inc56 = add nuw nsw i32 %i.1200, 1
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %93, align 4
  %cmp38 = icmp slt i32 %inc56, %99
  br i1 %cmp38, label %for.body39.for.body39_crit_edge, label %for.body39.for.end57_crit_edge

for.body39.for.end57_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

for.end57:                                        ; preds = %for.body39.for.end57_crit_edge, %for.end.for.end57_crit_edge
  %pace.1.lcssa = phi ptr [ %incdec.ptr30, %for.end.for.end57_crit_edge ], [ %incdec.ptr40, %for.body39.for.end57_crit_edge ]
  %.lcssa = phi i32 [ %73, %for.end.for.end57_crit_edge ], [ %99, %for.body39.for.end57_crit_edge ]
  %100 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %users, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool60.not = icmp eq i32 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool63.not = icmp eq i32 %.lcssa, 0
  %or.cond134 = select i1 %tobool60.not, i1 %tobool63.not, i1 false
  br i1 %or.cond134, label %for.end57.if.end69_crit_edge, label %if.then64

for.end57.if.end69_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then64:                                        ; preds = %for.end57
  %incdec.ptr65 = getelementptr %struct.posix_acl_entry, ptr %pace.1.lcssa, i32 1
  %104 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 16, ptr %incdec.ptr65, align 4
  %105 = ptrtoint ptr %mask.i155 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mask.i155, align 4
  %e_perm68 = getelementptr %struct.posix_acl_entry, ptr %pace.1.lcssa, i32 1, i32 1
  %107 = trunc i32 %106 to i16
  %108 = shl i16 %107, 2
  %109 = and i16 %108, 4
  %and6.i172 = and i32 %106, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i172, i32 %spec.select.i)
  %cmp7.i173 = icmp eq i32 %and6.i172, %spec.select.i
  %110 = or i16 %109, 2
  %spec.select29.i174 = select i1 %cmp7.i173, i16 %110, i16 %109
  %111 = ptrtoint ptr %e_perm68 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %spec.select29.i174, ptr %e_perm68, align 2
  %and14.i175 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i175)
  %cmp15.not.i176 = icmp eq i32 %and14.i175, 0
  br i1 %cmp15.not.i176, label %if.then64.if.end69_crit_edge, label %if.then17.i177

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then17.i177:                                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %112 = or i16 %spec.select29.i174, 1
  %113 = ptrtoint ptr %e_perm68 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %e_perm68, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then17.i177, %if.then64.if.end69_crit_edge, %for.end57.if.end69_crit_edge
  %pace.2 = phi ptr [ %pace.1.lcssa, %for.end57.if.end69_crit_edge ], [ %incdec.ptr65, %if.then64.if.end69_crit_edge ], [ %incdec.ptr65, %if.then17.i177 ]
  %incdec.ptr70 = getelementptr %struct.posix_acl_entry, ptr %pace.2, i32 1
  %114 = ptrtoint ptr %incdec.ptr70 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 32, ptr %incdec.ptr70, align 4
  %other = getelementptr inbounds %struct.posix_acl_state, ptr %state, i32 0, i32 3
  %115 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %other, align 4
  %e_perm73 = getelementptr %struct.posix_acl_entry, ptr %pace.2, i32 1, i32 1
  %117 = trunc i32 %116 to i16
  %118 = shl i16 %117, 2
  %119 = and i16 %118, 4
  %and6.i182 = and i32 %116, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i182, i32 %spec.select.i)
  %cmp7.i183 = icmp eq i32 %and6.i182, %spec.select.i
  %120 = or i16 %119, 2
  %spec.select29.i184 = select i1 %cmp7.i183, i16 %120, i16 %119
  %121 = ptrtoint ptr %e_perm73 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %spec.select29.i184, ptr %e_perm73, align 2
  %and14.i185 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i185)
  %cmp15.not.i186 = icmp eq i32 %and14.i185, 0
  br i1 %cmp15.not.i186, label %if.end69.cleanup_crit_edge, label %if.then17.i187

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.i187:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %122 = or i16 %spec.select29.i184, 1
  %123 = ptrtoint ptr %e_perm73 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %e_perm73, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then17.i187, %if.end69.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ], [ %call, %if.end69.cleanup_crit_edge ], [ %call, %if.then17.i187 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sort_pacl(ptr noundef %pacl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pacl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %pacl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  br label %while.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %lor.lhs.false.while.cond_crit_edge
  %i.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 1, %lor.lhs.false.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %cmp1 = icmp eq i16 %3, 2
  %inc = add i32 %i.0, 1
  br i1 %cmp1, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp29.i = icmp sgt i32 %sub, 1
  br i1 %cmp29.i, label %while.end.for.body.i_crit_edge, label %while.end.sort_pacl_range.exit_crit_edge

while.end.sort_pacl_range.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sort_pacl_range.exit

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.cond.loopexit.i:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sorted.2.i)
  %tobool.not.i = icmp eq i32 %sorted.2.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.for.body.i.backedge_crit_edge, label %sort_pacl_range.exitthread-pre-split

while.cond.loopexit.i.for.body.i.backedge_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.backedge

for.body.i:                                       ; preds = %for.body.i.backedge, %while.end.for.body.i_crit_edge
  %sorted.131.i = phi i32 [ %sorted.131.i.be, %for.body.i.backedge ], [ 1, %while.end.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ %i.030.i.be, %for.body.i.backedge ], [ 1, %while.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i
  %add.i = add nuw nsw i32 %i.030.i, 1
  %arrayidx2.i = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i.i = icmp eq i16 %5, %7
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp8.i.i = icmp sgt i16 %5, %7
  br i1 %cmp8.i.i, label %if.then.i.i.if.then.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.i.i:                                       ; preds = %for.body.i
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %5, label %if.end.i.i.for.inc.i_crit_edge [
    i16 2, label %if.then14.i.i
    i16 8, label %pace_gt.exit.i
  ]

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  %9 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i, i32 2
  %10 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i, i32 2
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack35.i.i = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack36.i.i = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack35.i.i, i32 %.unpack36.i.i)
  %cmp.i.i.i = icmp ugt i32 %.unpack35.i.i, %.unpack36.i.i
  br i1 %cmp.i.i.i, label %if.then14.i.i.if.then.i_crit_edge, label %if.then14.i.i.for.inc.i_crit_edge

if.then14.i.i.for.inc.i_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then14.i.i.if.then.i_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

pace_gt.exit.i:                                   ; preds = %if.end.i.i
  %13 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i, i32 2
  %14 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i, i32 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i.i = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack34.i.i = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %.unpack34.i.i)
  %cmp.i37.i.i = icmp ugt i32 %.unpack.i.i, %.unpack34.i.i
  br i1 %cmp.i37.i.i, label %pace_gt.exit.i.if.then.i_crit_edge, label %pace_gt.exit.i.for.inc.i_crit_edge

pace_gt.exit.i.for.inc.i_crit_edge:               ; preds = %pace_gt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

pace_gt.exit.i.if.then.i_crit_edge:               ; preds = %pace_gt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %pace_gt.exit.i.if.then.i_crit_edge, %if.then14.i.i.if.then.i_crit_edge, %if.then.i.i.if.then.i_crit_edge
  %__tmp.sroa.5.0.arrayidx4.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %17 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %__tmp.sroa.5.0.copyload.i = load i16, ptr %__tmp.sroa.5.0.arrayidx4.sroa_idx.i, align 2
  %__tmp.sroa.6.0.arrayidx4.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %18 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %__tmp.sroa.6.0.copyload.i = load i32, ptr %__tmp.sroa.6.0.arrayidx4.sroa_idx.i, align 4
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx2.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %arrayidx.i, align 4
  store i16 %5, ptr %arrayidx2.i, align 4
  %__tmp.sroa.5.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx2.i, i32 2
  %22 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %__tmp.sroa.5.0.copyload.i, ptr %__tmp.sroa.5.0.arrayidx12.sroa_idx.i, align 2
  %__tmp.sroa.6.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx2.i, i32 4
  %23 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %__tmp.sroa.6.0.copyload.i, ptr %__tmp.sroa.6.0.arrayidx12.sroa_idx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %pace_gt.exit.i.for.inc.i_crit_edge, %if.then14.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %sorted.2.i = phi i32 [ 0, %if.then.i ], [ %sorted.131.i, %pace_gt.exit.i.for.inc.i_crit_edge ], [ %sorted.131.i, %if.then.i.i.for.inc.i_crit_edge ], [ %sorted.131.i, %if.then14.i.i.for.inc.i_crit_edge ], [ %sorted.131.i, %if.end.i.i.for.inc.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %exitcond.not.i = icmp eq i32 %add.i, %sub
  br i1 %exitcond.not.i, label %while.cond.loopexit.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %while.cond.loopexit.i.for.body.i.backedge_crit_edge
  %sorted.131.i.be = phi i32 [ %sorted.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 1, %while.cond.loopexit.i.for.body.i.backedge_crit_edge ]
  %i.030.i.be = phi i32 [ %add.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 1, %while.cond.loopexit.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

sort_pacl_range.exitthread-pre-split:             ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr = load i16, ptr %arrayidx, align 4
  br label %sort_pacl_range.exit

sort_pacl_range.exit:                             ; preds = %sort_pacl_range.exitthread-pre-split, %while.end.sort_pacl_range.exit_crit_edge
  %25 = phi i16 [ %.pr, %sort_pacl_range.exitthread-pre-split ], [ %3, %while.end.sort_pacl_range.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %25)
  %cmp7.not = icmp eq i16 %25, 4
  br i1 %cmp7.not, label %sort_pacl_range.exit.while.cond20_crit_edge, label %do.body12, !prof !28

sort_pacl_range.exit.while.cond20_crit_edge:      ; preds = %sort_pacl_range.exit
  br label %while.cond20

do.body12:                                        ; preds = %sort_pacl_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %sort_pacl_range.exit.while.cond20_crit_edge
  %j.0 = phi i32 [ %inc28, %while.cond20.while.cond20_crit_edge ], [ %inc, %sort_pacl_range.exit.while.cond20_crit_edge ]
  %arrayidx22 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %j.0
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx22, align 4
  %cmp25 = icmp eq i16 %27, 8
  %inc28 = add i32 %j.0, 1
  br i1 %cmp25, label %while.cond20.while.cond20_crit_edge, label %while.end29

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond20

while.end29:                                      ; preds = %while.cond20
  %sub30 = add i32 %j.0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub30)
  %cmp29.i45 = icmp slt i32 %inc, %sub30
  br i1 %cmp29.i45, label %while.end29.for.body.i55_crit_edge, label %while.end29.cleanup_crit_edge

while.end29.cleanup_crit_edge:                    ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end29.for.body.i55_crit_edge:               ; preds = %while.end29
  br label %for.body.i55

while.cond.loopexit.i47:                          ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sorted.2.i74)
  %tobool.not.i46 = icmp eq i32 %sorted.2.i74, 0
  br i1 %tobool.not.i46, label %while.cond.loopexit.i47.for.body.i55.backedge_crit_edge, label %while.cond.loopexit.i47.cleanup_crit_edge

while.cond.loopexit.i47.cleanup_crit_edge:        ; preds = %while.cond.loopexit.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.loopexit.i47.for.body.i55.backedge_crit_edge: ; preds = %while.cond.loopexit.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i55.backedge

for.body.i55:                                     ; preds = %for.body.i55.backedge, %while.end29.for.body.i55_crit_edge
  %sorted.131.i49 = phi i32 [ %sorted.131.i49.be, %for.body.i55.backedge ], [ 1, %while.end29.for.body.i55_crit_edge ]
  %i.030.i50 = phi i32 [ %i.030.i50.be, %for.body.i55.backedge ], [ %inc, %while.end29.for.body.i55_crit_edge ]
  %arrayidx.i51 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i50
  %add.i52 = add nsw i32 %i.030.i50, 1
  %arrayidx2.i53 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i52
  %28 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i51, align 4
  %30 = ptrtoint ptr %arrayidx2.i53 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx2.i53, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.not.i.i54 = icmp eq i16 %29, %31
  br i1 %cmp.not.i.i54, label %if.end.i.i58, label %if.then.i.i57

if.then.i.i57:                                    ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp8.i.i56 = icmp sgt i16 %29, %31
  br i1 %cmp8.i.i56, label %if.then.i.i57.if.then.i73_crit_edge, label %if.then.i.i57.for.inc.i76_crit_edge

if.then.i.i57.for.inc.i76_crit_edge:              ; preds = %if.then.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76

if.then.i.i57.if.then.i73_crit_edge:              ; preds = %if.then.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i73

if.end.i.i58:                                     ; preds = %for.body.i55
  %32 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %29, label %if.end.i.i58.for.inc.i76_crit_edge [
    i16 2, label %if.then14.i.i62
    i16 8, label %pace_gt.exit.i66
  ]

if.end.i.i58.for.inc.i76_crit_edge:               ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76

if.then14.i.i62:                                  ; preds = %if.end.i.i58
  %33 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i50, i32 2
  %34 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i52, i32 2
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack35.i.i59 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack36.i.i60 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack35.i.i59, i32 %.unpack36.i.i60)
  %cmp.i.i.i61 = icmp ugt i32 %.unpack35.i.i59, %.unpack36.i.i60
  br i1 %cmp.i.i.i61, label %if.then14.i.i62.if.then.i73_crit_edge, label %if.then14.i.i62.for.inc.i76_crit_edge

if.then14.i.i62.for.inc.i76_crit_edge:            ; preds = %if.then14.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76

if.then14.i.i62.if.then.i73_crit_edge:            ; preds = %if.then14.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i73

pace_gt.exit.i66:                                 ; preds = %if.end.i.i58
  %37 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %i.030.i50, i32 2
  %38 = getelementptr %struct.posix_acl, ptr %pacl, i32 0, i32 3, i32 %add.i52, i32 2
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i.i63 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack34.i.i64 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i63, i32 %.unpack34.i.i64)
  %cmp.i37.i.i65 = icmp ugt i32 %.unpack.i.i63, %.unpack34.i.i64
  br i1 %cmp.i37.i.i65, label %pace_gt.exit.i66.if.then.i73_crit_edge, label %pace_gt.exit.i66.for.inc.i76_crit_edge

pace_gt.exit.i66.for.inc.i76_crit_edge:           ; preds = %pace_gt.exit.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76

pace_gt.exit.i66.if.then.i73_crit_edge:           ; preds = %pace_gt.exit.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i73

if.then.i73:                                      ; preds = %pace_gt.exit.i66.if.then.i73_crit_edge, %if.then14.i.i62.if.then.i73_crit_edge, %if.then.i.i57.if.then.i73_crit_edge
  %__tmp.sroa.5.0.arrayidx4.sroa_idx.i67 = getelementptr inbounds i8, ptr %arrayidx.i51, i32 2
  %41 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx4.sroa_idx.i67 to i32
  call void @__asan_load2_noabort(i32 %41)
  %__tmp.sroa.5.0.copyload.i68 = load i16, ptr %__tmp.sroa.5.0.arrayidx4.sroa_idx.i67, align 2
  %__tmp.sroa.6.0.arrayidx4.sroa_idx.i69 = getelementptr inbounds i8, ptr %arrayidx.i51, i32 4
  %42 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx4.sroa_idx.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %__tmp.sroa.6.0.copyload.i70 = load i32, ptr %__tmp.sroa.6.0.arrayidx4.sroa_idx.i69, align 4
  %43 = ptrtoint ptr %arrayidx2.i53 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %arrayidx2.i53, align 4
  %45 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %arrayidx.i51, align 4
  store i16 %29, ptr %arrayidx2.i53, align 4
  %__tmp.sroa.5.0.arrayidx12.sroa_idx.i71 = getelementptr inbounds i8, ptr %arrayidx2.i53, i32 2
  %46 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx12.sroa_idx.i71 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %__tmp.sroa.5.0.copyload.i68, ptr %__tmp.sroa.5.0.arrayidx12.sroa_idx.i71, align 2
  %__tmp.sroa.6.0.arrayidx12.sroa_idx.i72 = getelementptr inbounds i8, ptr %arrayidx2.i53, i32 4
  %47 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx12.sroa_idx.i72 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %__tmp.sroa.6.0.copyload.i70, ptr %__tmp.sroa.6.0.arrayidx12.sroa_idx.i72, align 4
  br label %for.inc.i76

for.inc.i76:                                      ; preds = %if.then.i73, %pace_gt.exit.i66.for.inc.i76_crit_edge, %if.then14.i.i62.for.inc.i76_crit_edge, %if.end.i.i58.for.inc.i76_crit_edge, %if.then.i.i57.for.inc.i76_crit_edge
  %sorted.2.i74 = phi i32 [ 0, %if.then.i73 ], [ %sorted.131.i49, %pace_gt.exit.i66.for.inc.i76_crit_edge ], [ %sorted.131.i49, %if.then.i.i57.for.inc.i76_crit_edge ], [ %sorted.131.i49, %if.then14.i.i62.for.inc.i76_crit_edge ], [ %sorted.131.i49, %if.end.i.i58.for.inc.i76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i52, i32 %sub30)
  %exitcond.not.i75 = icmp eq i32 %add.i52, %sub30
  br i1 %exitcond.not.i75, label %while.cond.loopexit.i47, label %for.inc.i76.for.body.i55.backedge_crit_edge

for.inc.i76.for.body.i55.backedge_crit_edge:      ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i55.backedge

for.body.i55.backedge:                            ; preds = %for.inc.i76.for.body.i55.backedge_crit_edge, %while.cond.loopexit.i47.for.body.i55.backedge_crit_edge
  %sorted.131.i49.be = phi i32 [ %sorted.2.i74, %for.inc.i76.for.body.i55.backedge_crit_edge ], [ 1, %while.cond.loopexit.i47.for.body.i55.backedge_crit_edge ]
  %i.030.i50.be = phi i32 [ %add.i52, %for.inc.i76.for.body.i55.backedge_crit_edge ], [ %inc, %while.cond.loopexit.i47.for.body.i55.backedge_crit_edge ]
  br label %for.body.i55

cleanup:                                          ; preds = %while.cond.loopexit.i47.cleanup_crit_edge, %while.end29.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_pre_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_post_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4acl.c", i32 883, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nfsd/nfsfh.h", i32 363, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @fh_lock_nested._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @fh_lock_nested._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nfsd/nfs4acl.c", i32 839, i32 16}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfsd/nfs4acl.c", i32 844, i32 16}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfsd/nfs4acl.c", i32 849, i32 16}
!15 = !{ptr @s2t_map, !16, !"s2t_map", i1 false, i1 false}
!16 = !{!"../fs/nfsd/nfs4acl.c", i32 837, i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148762174}
!27 = !{i64 2148676614, i64 2148676646, i64 2148676675, i64 2148676709, i64 2148676740, i64 2148676763}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2150383263}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2157403885, i64 2157404367, i64 2157403922, i64 2157403978, i64 2157404012, i64 2157404036, i64 2157404077, i64 2157404098, i64 2157404126, i64 2157404160}
!32 = !{i64 2155091424, i64 2155091904, i64 2155091461, i64 2155091517, i64 2155091551, i64 2155091575, i64 2155091616, i64 2155091637, i64 2155091665, i64 2155091699}
!33 = !{i8 0, i8 2}
!34 = !{i64 2157409173, i64 2157409655, i64 2157409210, i64 2157409266, i64 2157409300, i64 2157409324, i64 2157409365, i64 2157409386, i64 2157409414, i64 2157409448}
!35 = !{i64 2157405771, i64 2157406253, i64 2157405808, i64 2157405864, i64 2157405898, i64 2157405922, i64 2157405963, i64 2157405984, i64 2157406012, i64 2157406046}
