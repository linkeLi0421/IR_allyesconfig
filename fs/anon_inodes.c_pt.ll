; ModuleID = '/llk/IR_all_yes/fs/anon_inodes.c_pt.bc'
source_filename = "../fs/anon_inodes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+anon_inode_getfile\22, \22a\22\09"
module asm "\09.weak\09__crc_anon_inode_getfile\09\09\09\09"
module asm "\09.long\09__crc_anon_inode_getfile\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfile:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfile\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+anon_inode_getfd\22, \22a\22\09"
module asm "\09.weak\09__crc_anon_inode_getfd\09\09\09\09"
module asm "\09.long\09__crc_anon_inode_getfd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfd:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfd\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+anon_inode_getfd_secure\22, \22a\22\09"
module asm "\09.weak\09__crc_anon_inode_getfd_secure\09\09\09\09"
module asm "\09.long\09__crc_anon_inode_getfd_secure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfd_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfd_secure\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfd_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.anon.4 = type { i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.spinlock, i32 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }

@__kstrtab_anon_inode_getfile = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfile = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfile to i32), ptr @__kstrtab_anon_inode_getfile, ptr @__kstrtabns_anon_inode_getfile }, section "___ksymtab_gpl+anon_inode_getfile", align 4
@__kstrtab_anon_inode_getfd = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfd = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfd to i32), ptr @__kstrtab_anon_inode_getfd, ptr @__kstrtabns_anon_inode_getfd }, section "___ksymtab_gpl+anon_inode_getfd", align 4
@__kstrtab_anon_inode_getfd_secure = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfd_secure = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfd_secure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfd_secure to i32), ptr @__kstrtab_anon_inode_getfd_secure, ptr @__kstrtabns_anon_inode_getfd_secure }, section "___ksymtab_gpl+anon_inode_getfd_secure", align 4
@__initcall__kmod_anon_inodes__226_270_anon_inode_init5 = internal global ptr @anon_inode_init, section ".initcall5.init", align 4
@anon_inode_inode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@anon_inode_mnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@anon_inode_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.2, i32 0, ptr @anon_inodefs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"anon_inode_init() kernel mount failed (%ld)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"anon_inode_init() inode allocation failed (%ld)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anon_inodefs\00", [19 x i8] zeroinitializer }, align 32
@anon_inodefs_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anon_inodefs_dname, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"anon_inode:%s\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"anon_inode_inode\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 28, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"anon_inode_fs_type\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 52, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 261, i32 9 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 265, i32 9 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 53, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [20 x i8] c"../fs/anon_inodes.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 35, i32 47 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_anon_inodes__226_270_anon_inode_init5, ptr @__ksymtab_anon_inode_getfd, ptr @__ksymtab_anon_inode_getfd_secure, ptr @__ksymtab_anon_inode_getfile, ptr @anon_inode_inode, ptr @anon_inode_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_inode_inode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_inode_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_inode_getfile(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fops, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef nonnull %1) #6
  br i1 %call.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.__anon_inode_getfile.exit_crit_edge

land.lhs.true.i.__anon_inode_getfile.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__anon_inode_getfile.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = load ptr, ptr @anon_inode_inode, align 4
  %cmp.i35.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.end.i.err.i_crit_edge, label %if.end13.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end13.i:                                       ; preds = %if.end.i
  tail call void @ihold(ptr noundef %2) #6
  %3 = load ptr, ptr @anon_inode_mnt, align 4
  %and.i = and i32 %flags, 2051
  %call15.i = tail call ptr @alloc_file_pseudo(ptr noundef %2, ptr noundef %3, ptr noundef %name, i32 noundef %and.i, ptr noundef %fops) #6
  %cmp.i36.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %err_iput.i, label %if.end18.i

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping.i, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %call15.i, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %f_mapping.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %call15.i, i32 0, i32 16
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv, ptr %private_data.i, align 4
  br label %__anon_inode_getfile.exit

err_iput.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iput(ptr noundef %2) #6
  br label %err.i

err.i:                                            ; preds = %err_iput.i, %if.end.i.err.i_crit_edge
  %file.0.i = phi ptr [ %call15.i, %err_iput.i ], [ inttoptr (i32 -19 to ptr), %if.end.i.err.i_crit_edge ]
  %8 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fops, align 4
  tail call void @module_put(ptr noundef %9) #6
  br label %__anon_inode_getfile.exit

__anon_inode_getfile.exit:                        ; preds = %err.i, %if.end18.i, %land.lhs.true.i.__anon_inode_getfile.exit_crit_edge
  %retval.0.i = phi ptr [ %file.0.i, %err.i ], [ %call15.i, %if.end18.i ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.i.__anon_inode_getfile.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__anon_inode_getfile(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags, ptr noundef %context_inode, i1 noundef zeroext %secure) unnamed_addr #0 align 64 {
entry:
  %qname.i = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @try_module_get(ptr noundef nonnull %1) #6
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %secure, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qname.i) #6
  %2 = getelementptr inbounds i8, ptr %qname.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %call.i = tail call i32 @strlen(ptr noundef %name) #9
  %4 = ptrtoint ptr %qname.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %qname.i, align 8
  %hash.i = getelementptr inbounds %struct.anon.4, ptr %qname.i, i32 0, i32 1
  %5 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hash.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %2, align 8
  %7 = load ptr, ptr @anon_inode_mnt, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb.i, align 4
  %call2.i = tail call ptr @alloc_anon_inode(ptr noundef %9) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.anon_inode_make_secure_inode.exit_crit_edge, label %if.end.i

if.then4.anon_inode_make_secure_inode.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %anon_inode_make_secure_inode.exit

if.end.i:                                         ; preds = %if.then4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %11, -513
  store i32 %and.i, ptr %i_flags.i, align 4
  %call4.i = call i32 @security_inode_init_security_anon(ptr noundef %call2.i, ptr noundef nonnull %qname.i, ptr noundef %context_inode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.anon_inode_make_secure_inode.exit_crit_edge, label %if.then5.i

if.end.i.anon_inode_make_secure_inode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %anon_inode_make_secure_inode.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @iput(ptr noundef %call2.i) #6
  %12 = inttoptr i32 %call4.i to ptr
  br label %anon_inode_make_secure_inode.exit

anon_inode_make_secure_inode.exit:                ; preds = %if.then5.i, %if.end.i.anon_inode_make_secure_inode.exit_crit_edge, %if.then4.anon_inode_make_secure_inode.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.then5.i ], [ %call2.i, %if.then4.anon_inode_make_secure_inode.exit_crit_edge ], [ %call2.i, %if.end.i.anon_inode_make_secure_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qname.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %anon_inode_make_secure_inode.exit.err_crit_edge, label %anon_inode_make_secure_inode.exit.if.end14_crit_edge

anon_inode_make_secure_inode.exit.if.end14_crit_edge: ; preds = %anon_inode_make_secure_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

anon_inode_make_secure_inode.exit.err_crit_edge:  ; preds = %anon_inode_make_secure_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr @anon_inode_inode, align 4
  %cmp.i35 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.else.err_crit_edge, label %if.end13

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ihold(ptr noundef %13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %anon_inode_make_secure_inode.exit.if.end14_crit_edge
  %inode.0 = phi ptr [ %retval.0.i, %anon_inode_make_secure_inode.exit.if.end14_crit_edge ], [ %13, %if.end13 ]
  %14 = load ptr, ptr @anon_inode_mnt, align 4
  %and = and i32 %flags, 2051
  %call15 = call ptr @alloc_file_pseudo(ptr noundef %inode.0, ptr noundef %14, ptr noundef %name, i32 noundef %and, ptr noundef %fops) #6
  %cmp.i36 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %err_iput, label %if.end18

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode.0, i32 0, i32 9
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %call15, i32 0, i32 18
  %17 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %f_mapping, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %call15, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %priv, ptr %private_data, align 4
  br label %cleanup

err_iput:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @iput(ptr noundef %inode.0) #6
  br label %err

err:                                              ; preds = %err_iput, %if.else.err_crit_edge, %anon_inode_make_secure_inode.exit.err_crit_edge
  %file.0 = phi ptr [ %call15, %err_iput ], [ %retval.0.i, %anon_inode_make_secure_inode.exit.err_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.err_crit_edge ]
  %19 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fops, align 4
  call void @module_put(ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end18, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %file.0, %err ], [ %call15, %if.end18 ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_inode_getfile_secure(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags, ptr noundef %context_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__anon_inode_getfile(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags, ptr noundef %context_inode, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anon_inode_getfd(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.__anon_inode_getfd.exit_crit_edge, label %if.end.i

entry.__anon_inode_getfd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__anon_inode_getfd.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fops, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.if.end.i2_crit_edge, label %land.lhs.true.i

if.end.i.if.end.i2_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i2

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i1 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %1) #6
  br i1 %call.i1, label %land.lhs.true.i.if.end.i2_crit_edge, label %land.lhs.true.i.if.then3.i_crit_edge

land.lhs.true.i.if.then3.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

land.lhs.true.i.if.end.i2_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i2

if.end.i2:                                        ; preds = %land.lhs.true.i.if.end.i2_crit_edge, %if.end.i.if.end.i2_crit_edge
  %2 = load ptr, ptr @anon_inode_inode, align 4
  %cmp.i35.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.end.i2.err.i_crit_edge, label %if.end13.i

if.end.i2.err.i_crit_edge:                        ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end13.i:                                       ; preds = %if.end.i2
  tail call void @ihold(ptr noundef %2) #6
  %3 = load ptr, ptr @anon_inode_mnt, align 4
  %and.i = and i32 %flags, 2051
  %call15.i = tail call ptr @alloc_file_pseudo(ptr noundef %2, ptr noundef %3, ptr noundef %name, i32 noundef %and.i, ptr noundef %fops) #6
  %cmp.i36.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %err_iput.i, label %if.end18.i

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping.i, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %call15.i, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %f_mapping.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %call15.i, i32 0, i32 16
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv, ptr %private_data.i, align 4
  br label %__anon_inode_getfile.exit

err_iput.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iput(ptr noundef %2) #6
  br label %err.i

err.i:                                            ; preds = %err_iput.i, %if.end.i2.err.i_crit_edge
  %file.0.i = phi ptr [ %call15.i, %err_iput.i ], [ inttoptr (i32 -19 to ptr), %if.end.i2.err.i_crit_edge ]
  %8 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fops, align 4
  tail call void @module_put(ptr noundef %9) #6
  br label %__anon_inode_getfile.exit

__anon_inode_getfile.exit:                        ; preds = %err.i, %if.end18.i
  %retval.0.i3 = phi ptr [ %file.0.i, %err.i ], [ %call15.i, %if.end18.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__anon_inode_getfile.exit.if.then3.i_crit_edge, label %if.end5.i

__anon_inode_getfile.exit.if.then3.i_crit_edge:   ; preds = %__anon_inode_getfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %__anon_inode_getfile.exit.if.then3.i_crit_edge, %land.lhs.true.i.if.then3.i_crit_edge
  %retval.0.i36 = phi ptr [ %retval.0.i3, %__anon_inode_getfile.exit.if.then3.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.i.if.then3.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i36 to i32
  tail call void @put_unused_fd(i32 noundef %call.i) #6
  br label %__anon_inode_getfd.exit

if.end5.i:                                        ; preds = %__anon_inode_getfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fd_install(i32 noundef %call.i, ptr noundef %retval.0.i3) #6
  br label %__anon_inode_getfd.exit

__anon_inode_getfd.exit:                          ; preds = %if.end5.i, %if.then3.i, %entry.__anon_inode_getfd.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then3.i ], [ %call.i, %if.end5.i ], [ %call.i, %entry.__anon_inode_getfd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anon_inode_getfd_secure(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags, ptr noundef %context_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.__anon_inode_getfd.exit_crit_edge, label %if.end.i

entry.__anon_inode_getfd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__anon_inode_getfd.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call fastcc ptr @__anon_inode_getfile(ptr noundef %name, ptr noundef %fops, ptr noundef %priv, i32 noundef %flags, ptr noundef %context_inode, i1 noundef zeroext true) #6
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call1.i to i32
  tail call void @put_unused_fd(i32 noundef %call.i) #6
  br label %__anon_inode_getfd.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fd_install(i32 noundef %call.i, ptr noundef %call1.i) #6
  br label %__anon_inode_getfd.exit

__anon_inode_getfd.exit:                          ; preds = %if.end5.i, %if.then3.i, %entry.__anon_inode_getfd.exit_crit_edge
  %retval.0.i = phi i32 [ %0, %if.then3.i ], [ %call.i, %if.end5.i ], [ %call.i, %entry.__anon_inode_getfd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anon_inode_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kern_mount(ptr noundef nonnull @anon_inode_fs_type) #6
  store ptr %call, ptr @anon_inode_mnt, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %0) #10
  unreachable

if.end:                                           ; preds = %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt_sb, align 4
  %call3 = tail call ptr @alloc_anon_inode(ptr noundef %2) #6
  store ptr %call3, ptr @anon_inode_inode, align 4
  %cmp.i8 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %3) #10
  unreachable

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security_anon(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anon_inodefs_init_fs_context(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 151263540) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dops = getelementptr inbounds %struct.pseudo_fs_context, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @anon_inodefs_dentry_operations, ptr %dops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @anon_inodefs_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull @.str.3, ptr noundef %1) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_anon_inode_getfile, !1, !"__ksymtab_anon_inode_getfile", i1 false, i1 false}
!1 = !{!"../fs/anon_inodes.c", i32 149, i32 1}
!2 = !{ptr @__ksymtab_anon_inode_getfd, !3, !"__ksymtab_anon_inode_getfd", i1 false, i1 false}
!3 = !{!"../fs/anon_inodes.c", i32 231, i32 1}
!4 = !{ptr @__ksymtab_anon_inode_getfd_secure, !5, !"__ksymtab_anon_inode_getfd_secure", i1 false, i1 false}
!5 = !{!"../fs/anon_inodes.c", i32 255, i32 1}
!6 = !{ptr @__initcall__kmod_anon_inodes__226_270_anon_inode_init5, !7, !"__initcall__kmod_anon_inodes__226_270_anon_inode_init5", i1 false, i1 false}
!7 = !{!"../fs/anon_inodes.c", i32 270, i32 1}
!8 = !{ptr @anon_inode_inode, !9, !"anon_inode_inode", i1 false, i1 false}
!9 = !{!"../fs/anon_inodes.c", i32 28, i32 22}
!10 = !{ptr @anon_inode_mnt, !11, !"anon_inode_mnt", i1 false, i1 false}
!11 = !{!"../fs/anon_inodes.c", i32 27, i32 25}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/anon_inodes.c", i32 261, i32 9}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/anon_inodes.c", i32 265, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/anon_inodes.c", i32 53, i32 11}
!18 = !{ptr @anon_inode_fs_type, !19, !"anon_inode_fs_type", i1 false, i1 false}
!19 = !{!"../fs/anon_inodes.c", i32 52, i32 32}
!20 = !{ptr @anon_inodefs_dentry_operations, !21, !"anon_inodefs_dentry_operations", i1 false, i1 false}
!21 = !{!"../fs/anon_inodes.c", i32 39, i32 39}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/anon_inodes.c", i32 35, i32 47}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
