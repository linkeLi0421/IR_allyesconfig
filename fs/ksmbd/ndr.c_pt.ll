; ModuleID = '/llk/IR_all_yes/fs/ksmbd/ndr.c_pt.bc'
source_filename = "../fs/ksmbd/ndr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.ndr = type { ptr, i32, i32 }
%struct.xattr_dos_attrib = type { i16, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.65 = type { ptr }
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
%struct.xattr_smb_acl = type { i32, i32, [0 x %struct.xattr_acl_entry] }
%struct.xattr_acl_entry = type { i32, i32, i32, i16 }
%struct.xattr_ntacl = type { i16, ptr, i32, i16, [10 x i8], i16, i64, [64 x i8], [64 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@ndr_decode_dos_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: v%d version is not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ndr_decode_dos_attr\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ksmbd/ndr.c\00", [17 x i8] zeroinitializer }, align 32
@ndr_decode_dos_attr._entry_ptr = internal global ptr @ndr_decode_dos_attr._entry, section ".printk_index", align 4
@ndr_decode_dos_attr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ksmbd: ndr version mismatched(version: %d, version2: %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ndr_decode_dos_attr._entry_ptr.7 = internal global ptr @ndr_decode_dos_attr._entry.5, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@ndr_decode_v4_ntacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.8, ptr @.str.4, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ndr_decode_v4_ntacl\00", [44 x i8] zeroinitializer }, align 32
@ndr_decode_v4_ntacl._entry_ptr = internal global ptr @ndr_decode_v4_ntacl._entry, section ".printk_index", align 4
@ndr_decode_v4_ntacl._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.4, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ndr_decode_v4_ntacl._entry_ptr.10 = internal global ptr @ndr_decode_v4_ntacl._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"posix_acl\00", [22 x i8] zeroinitializer }, align 32
@ndr_decode_v4_ntacl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: Invalid acl description : %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ndr_decode_v4_ntacl._entry_ptr.14 = internal global ptr @ndr_decode_v4_ntacl._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 182, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 245, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 254, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 456, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 464, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 488, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [18 x i8] c"../fs/ksmbd/ndr.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 489, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ndr_decode_dos_attr._entry, ptr @ndr_decode_dos_attr._entry.5, ptr @ndr_decode_dos_attr._entry_ptr, ptr @ndr_decode_dos_attr._entry_ptr.7, ptr @ndr_decode_v4_ntacl._entry, ptr @ndr_decode_v4_ntacl._entry.12, ptr @ndr_decode_v4_ntacl._entry.9, ptr @ndr_decode_v4_ntacl._entry_ptr, ptr @ndr_decode_v4_ntacl._entry_ptr.10, ptr @ndr_decode_v4_ntacl._entry_ptr.14, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndr_decode_dos_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndr_decode_dos_attr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndr_decode_v4_ntacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndr_decode_v4_ntacl._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndr_decode_v4_ntacl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndr_encode_dos_attr(ptr noundef %n, ptr nocapture noundef readonly %da) local_unnamed_addr #0 align 64 {
entry:
  %hex_attr = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hex_attr) #10
  %0 = call ptr @memset(ptr %hex_attr, i32 0, i32 12)
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1024) #13
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %n, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %da, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp = icmp eq i16 %6, 3
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %attr = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 2
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 8
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hex_attr, i32 noundef 10, ptr noundef nonnull @.str, i32 noundef %8)
  %call.i = call i32 @strlen(ptr noundef nonnull %hex_attr) #14
  %add.i = add i32 %call.i, 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add1.i = add i32 %12, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add1.i)
  %cmp.not.i = icmp ugt i32 %10, %add1.i
  br i1 %cmp.not.i, label %if.then4.if.end4.i_crit_edge, label %if.then.i

if.then4.if.end4.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then4
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n, align 4
  %add.i.i = add i32 %call.i, 1025
  %add2.i.i = add i32 %add.i.i, %12
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef %14, i32 noundef %add2.i.i, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %n, align 4
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add4.i.i = add i32 %17, 1024
  store i32 %add4.i.i, ptr %length, align 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %19
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 1024)
  br label %if.end4.i

if.end4.i:                                        ; preds = %try_to_realloc_ndr_blob.exit.thread.i, %if.then4.if.end4.i_crit_edge
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %n, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %22, i32 %24
  %25 = call ptr @memcpy(ptr %add.ptr.i24.i, ptr %hex_attr, i32 %add.i)
  %26 = load i32, ptr %offset, align 4
  %add7.i = add i32 %call.i, 2
  %add9.i = add i32 %add7.i, %26
  br label %if.end12

if.else:                                          ; preds = %if.end
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %add1.i116 = add i32 %30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add1.i116)
  %cmp.not.i117 = icmp ugt i32 %28, %add1.i116
  br i1 %cmp.not.i117, label %if.else.if.end4.i130_crit_edge, label %if.then.i122

if.else.if.end4.i130_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i130

if.then.i122:                                     ; preds = %if.else
  %add2.i.i119 = add i32 %30, 1025
  %call.i.i120 = tail call noalias ptr @krealloc(ptr noundef nonnull %call7.i.i, i32 noundef %add2.i.i119, i32 noundef 3264) #15
  %tobool.not.i.i121 = icmp eq ptr %call.i.i120, null
  br i1 %tobool.not.i.i121, label %if.then.i122.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i125

if.then.i122.cleanup_crit_edge:                   ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i125:         ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i120, ptr %n, align 4
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  %add4.i.i123 = add i32 %33, 1024
  store i32 %add4.i.i123, ptr %length, align 4
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %call.i.i120, i32 %35
  %36 = call ptr @memset(ptr %add.ptr.i.i124, i32 0, i32 1024)
  br label %if.end4.i130

if.end4.i130:                                     ; preds = %try_to_realloc_ndr_blob.exit.thread.i125, %if.else.if.end4.i130_crit_edge
  %37 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %n, align 4
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %add.ptr.i24.i126 = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %add.ptr.i24.i126 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %add.ptr.i24.i126, align 1
  %42 = load i32, ptr %offset, align 4
  %add9.i128 = add i32 %42, 2
  br label %if.end12

if.end12:                                         ; preds = %if.end4.i130, %if.end4.i
  %storemerge.in = phi i32 [ %add9.i128, %if.end4.i130 ], [ %add9.i, %if.end4.i ]
  %storemerge = and i32 %storemerge.in, -2
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %offset, align 4
  %44 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %da, align 8
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length, align 4
  %add.i135 = add i32 %storemerge, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add.i135)
  %cmp.not.i136 = icmp ugt i32 %47, %add.i135
  br i1 %cmp.not.i136, label %if.end12.if.end17_crit_edge, label %if.then.i140

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i140:                                     ; preds = %if.end12
  %48 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %n, align 4
  %add2.i.i137 = add i32 %storemerge, 1026
  %call.i.i138 = tail call noalias ptr @krealloc(ptr noundef %49, i32 noundef %add2.i.i137, i32 noundef 3264) #15
  %tobool.not.i.i139 = icmp eq ptr %call.i.i138, null
  br i1 %tobool.not.i.i139, label %if.then.i140.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i143

if.then.i140.cleanup_crit_edge:                   ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i143:         ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i138, ptr %n, align 4
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 4
  %add4.i.i141 = add i32 %52, 1024
  store i32 %add4.i.i141, ptr %length, align 4
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset, align 4
  %add.ptr.i.i142 = getelementptr i8, ptr %call.i.i138, i32 %54
  %55 = call ptr @memset(ptr %add.ptr.i.i142, i32 0, i32 1024)
  br label %if.end17

if.end17:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i143, %if.end12.if.end17_crit_edge
  %56 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %57 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %n, align 4
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %add.ptr.i12.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %56, ptr %add.ptr.i12.i, align 2
  %62 = load i32, ptr %offset, align 4
  %add5.i = add i32 %62, 2
  store i32 %add5.i, ptr %offset, align 4
  %63 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %da, align 8
  %conv19 = zext i16 %64 to i32
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length, align 4
  %add.i147 = add i32 %62, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add.i147)
  %cmp.not.i148 = icmp ugt i32 %66, %add.i147
  br i1 %cmp.not.i148, label %if.end17.if.end23_crit_edge, label %if.then.i152

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then.i152:                                     ; preds = %if.end17
  %67 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %n, align 4
  %add2.i.i149 = add i32 %62, 1030
  %call.i.i150 = tail call noalias ptr @krealloc(ptr noundef %68, i32 noundef %add2.i.i149, i32 noundef 3264) #15
  %tobool.not.i.i151 = icmp eq ptr %call.i.i150, null
  br i1 %tobool.not.i.i151, label %if.then.i152.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i155

if.then.i152.cleanup_crit_edge:                   ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i155:         ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i150, ptr %n, align 4
  %70 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length, align 4
  %add4.i.i153 = add i32 %71, 1024
  store i32 %add4.i.i153, ptr %length, align 4
  %72 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %call.i.i150, i32 %73
  %74 = call ptr @memset(ptr %add.ptr.i.i154, i32 0, i32 1024)
  br label %if.end23

if.end23:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i155, %if.end17.if.end23_crit_edge
  %75 = tail call i32 @llvm.bswap.i32(i32 %conv19) #10
  %76 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %n, align 4
  %78 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset, align 4
  %add.ptr.i12.i156 = getelementptr i8, ptr %77, i32 %79
  %80 = ptrtoint ptr %add.ptr.i12.i156 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %75, ptr %add.ptr.i12.i156, align 4
  %81 = load i32, ptr %offset, align 4
  %add5.i157 = add i32 %81, 4
  store i32 %add5.i157, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 1
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %84 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length, align 4
  %add.i162 = add i32 %81, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %add.i162)
  %cmp.not.i163 = icmp ugt i32 %85, %add.i162
  br i1 %cmp.not.i163, label %if.end23.if.end27_crit_edge, label %if.then.i167

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i167:                                     ; preds = %if.end23
  %86 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %n, align 4
  %add2.i.i164 = add i32 %81, 1032
  %call.i.i165 = tail call noalias ptr @krealloc(ptr noundef %87, i32 noundef %add2.i.i164, i32 noundef 3264) #15
  %tobool.not.i.i166 = icmp eq ptr %call.i.i165, null
  br i1 %tobool.not.i.i166, label %if.then.i167.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i170

if.then.i167.cleanup_crit_edge:                   ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i170:         ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i.i165, ptr %n, align 4
  %89 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length, align 4
  %add4.i.i168 = add i32 %90, 1024
  store i32 %add4.i.i168, ptr %length, align 4
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %call.i.i165, i32 %92
  %93 = call ptr @memset(ptr %add.ptr.i.i169, i32 0, i32 1024)
  br label %if.end27

if.end27:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i170, %if.end23.if.end27_crit_edge
  %94 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %95 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %n, align 4
  %97 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset, align 4
  %add.ptr.i12.i171 = getelementptr i8, ptr %96, i32 %98
  %99 = ptrtoint ptr %add.ptr.i12.i171 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %94, ptr %add.ptr.i12.i171, align 4
  %100 = load i32, ptr %offset, align 4
  %add5.i172 = add i32 %100, 4
  store i32 %add5.i172, ptr %offset, align 4
  %attr28 = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 2
  %101 = ptrtoint ptr %attr28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %attr28, align 8
  %call29 = tail call fastcc i32 @ndr_write_int32(ptr noundef %n, i32 noundef %102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %103 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %da, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %104)
  %cmp35 = icmp eq i16 %104, 3
  br i1 %cmp35, label %if.then37, label %if.else47

if.then37:                                        ; preds = %if.end32
  %ea_size = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 3
  %105 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ea_size, align 4
  %call38 = tail call fastcc i32 @ndr_write_int32(ptr noundef %n, i32 noundef %106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %size = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 4
  %107 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %size, align 8
  %call42 = tail call fastcc i32 @ndr_write_int64(ptr noundef %n, i64 noundef %108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_size = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 5
  br label %if.end49

if.else47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %itime = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 8
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.end45
  %itime.sink = phi ptr [ %itime, %if.else47 ], [ %alloc_size, %if.end45 ]
  %109 = ptrtoint ptr %itime.sink to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %itime.sink, align 8
  %call48 = tail call fastcc i32 @ndr_write_int64(ptr noundef %n, i64 noundef %110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  br i1 %tobool50.not, label %if.end52, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end49
  %create_time = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 6
  %111 = ptrtoint ptr %create_time to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %create_time, align 8
  %call53 = tail call fastcc i32 @ndr_write_int64(ptr noundef %n, i64 noundef %112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %113 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %da, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %114)
  %cmp59 = icmp eq i16 %114, 3
  br i1 %cmp59, label %if.then61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %change_time = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 7
  %115 = ptrtoint ptr %change_time to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %change_time, align 8
  %call62 = tail call fastcc i32 @ndr_write_int64(ptr noundef %n, i64 noundef %116)
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then.i167.cleanup_crit_edge, %if.then.i152.cleanup_crit_edge, %if.then.i140.cleanup_crit_edge, %if.then.i122.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call48, %if.end49.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call62, %if.then61 ], [ 0, %if.end56.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then.i122.cleanup_crit_edge ], [ -12, %if.then.i140.cleanup_crit_edge ], [ -12, %if.then.i152.cleanup_crit_edge ], [ -12, %if.then.i167.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hex_attr) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndr_write_int16(ptr nocapture noundef %n, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp ugt i32 %1, %add
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  %add2.i = add i32 %3, 1026
  %call.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %add2.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %try_to_realloc_ndr_blob.exit.thread

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

try_to_realloc_ndr_blob.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %n, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %add4.i = add i32 %8, 1024
  store i32 %add4.i, ptr %length, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %10
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1024)
  br label %if.end2

if.end2:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread, %entry.if.end2_crit_edge
  %12 = tail call i16 @llvm.bswap.i16(i16 %value)
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %add.ptr.i12, align 2
  %18 = load i32, ptr %offset, align 4
  %add5 = add i32 %18, 2
  store i32 %add5, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end2 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndr_write_int32(ptr nocapture noundef %n, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp ugt i32 %1, %add
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  %add2.i = add i32 %3, 1028
  %call.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %add2.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %try_to_realloc_ndr_blob.exit.thread

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

try_to_realloc_ndr_blob.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %n, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %add4.i = add i32 %8, 1024
  store i32 %add4.i, ptr %length, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %10
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1024)
  br label %if.end2

if.end2:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread, %entry.if.end2_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %value)
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %add.ptr.i12, align 4
  %18 = load i32, ptr %offset, align 4
  %add5 = add i32 %18, 4
  store i32 %add5, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end2 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndr_write_int64(ptr nocapture noundef %n, i64 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp ugt i32 %1, %add
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  %add2.i = add i32 %3, 1032
  %call.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %add2.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %try_to_realloc_ndr_blob.exit.thread

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

try_to_realloc_ndr_blob.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %n, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %add4.i = add i32 %8, 1024
  store i32 %add4.i, ptr %length, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %10
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1024)
  br label %if.end2

if.end2:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread, %entry.if.end2_crit_edge
  %12 = tail call i64 @llvm.bswap.i64(i64 %value)
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %12, ptr %add.ptr.i12, align 8
  %18 = load i32, ptr %offset, align 4
  %add5 = add i32 %18, 8
  store i32 %add5, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end2 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndr_decode_dos_attr(ptr noundef %n, ptr noundef %da) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %length.i = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %1 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp.i = icmp ult i32 %2, 12
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  %call1.i = tail call i32 @strnlen(ptr noundef %4, i32 noundef 12) #14
  %add6.i = add i32 %call1.i, 2
  %and.i = and i32 %add6.i, -2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %offset, align 4
  %add.i115 = add i32 %and.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i115, i32 %2)
  %cmp.i117 = icmp ugt i32 %add.i115, %2
  br i1 %cmp.i117, label %if.end.cleanup_crit_edge, label %if.end.i118

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i118:                                      ; preds = %if.end
  %tobool.not.i = icmp eq ptr %da, null
  br i1 %tobool.not.i, label %if.end.i118.if.end4_crit_edge, label %if.then1.i

if.end.i118.if.end4_crit_edge:                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then1.i:                                       ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i119, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %11 = ptrtoint ptr %da to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %da, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then1.i, %if.end.i118.if.end4_crit_edge
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add4.i = add i32 %13, 2
  store i32 %add4.i, ptr %offset, align 4
  %14 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %da, align 8
  %.off = add i16 %15, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %15 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add.i122 = add i32 %17, 4
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i122, i32 %19)
  %cmp.i124 = icmp ugt i32 %add.i122, %19
  br i1 %cmp.i124, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %n, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %21, i32 %17
  %22 = ptrtoint ptr %add.ptr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i126, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i122, ptr %offset, align 4
  %26 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %da, align 8
  %conv21 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv21)
  %cmp22.not = icmp eq i32 %24, %conv21
  br i1 %cmp22.not, label %if.end32, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv21, i32 noundef %24) #16
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %add.i132 = add i32 %29, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i132, i32 %19)
  %cmp.i134 = icmp ugt i32 %add.i132, %19
  br i1 %cmp.i134, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i132, ptr %offset, align 4
  %attr = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 2
  %add.i141 = add i32 %29, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141, i32 %19)
  %cmp.i143 = icmp ugt i32 %add.i141, %19
  br i1 %cmp.i143, label %if.end36.cleanup_crit_edge, label %if.end.i145

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i145:                                      ; preds = %if.end36
  %tobool.not.i144 = icmp eq ptr %attr, null
  br i1 %tobool.not.i144, label %if.end.i145.if.end40_crit_edge, label %if.then1.i147

if.end.i145.if.end40_crit_edge:                   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then1.i147:                                    ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %n, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %32, i32 %add.i132
  %33 = ptrtoint ptr %add.ptr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i146, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %attr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then1.i147, %if.end.i145.if.end40_crit_edge
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add4.i148 = add i32 %38, 4
  store i32 %add4.i148, ptr %offset, align 4
  %39 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %da, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp43 = icmp eq i16 %40, 4
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end40
  %itime = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 8
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset, align 4
  %add.i153 = add i32 %42, 8
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i153, i32 %44)
  %cmp.i155 = icmp ugt i32 %add.i153, %44
  br i1 %cmp.i155, label %if.then45.cleanup_crit_edge, label %if.end.i157

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i157:                                      ; preds = %if.then45
  %tobool.not.i156 = icmp eq ptr %itime, null
  br i1 %tobool.not.i156, label %if.end.i157.if.end49_crit_edge, label %if.then1.i159

if.end.i157.if.end49_crit_edge:                   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then1.i159:                                    ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %n, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %46, i32 %42
  %47 = ptrtoint ptr %add.ptr.i.i158 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr.i.i158, align 8
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #10
  %50 = ptrtoint ptr %itime to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %itime, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then1.i159, %if.end.i157.if.end49_crit_edge
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add4.i160 = add i32 %52, 8
  store i32 %add4.i160, ptr %offset, align 4
  %create_time = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 6
  %add.i164 = add i32 %52, 16
  %53 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i164, i32 %54)
  %cmp.i166 = icmp ugt i32 %add.i164, %54
  br i1 %cmp.i166, label %if.end49.cleanup_crit_edge, label %if.end.i168

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i168:                                      ; preds = %if.end49
  %tobool.not.i167 = icmp eq ptr %create_time, null
  br i1 %tobool.not.i167, label %if.end.i168.if.end2.i172_crit_edge, label %if.then1.i170

if.end.i168.if.end2.i172_crit_edge:               ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i172

if.then1.i170:                                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %n, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %56, i32 %add4.i160
  %57 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.i.i169, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #10
  %60 = ptrtoint ptr %create_time to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %create_time, align 8
  br label %if.end2.i172

if.end2.i172:                                     ; preds = %if.then1.i170, %if.end.i168.if.end2.i172_crit_edge
  %61 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset, align 4
  %add4.i171 = add i32 %62, 8
  store i32 %add4.i171, ptr %offset, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end40
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset, align 4
  %add.i176 = add i32 %64, 4
  %65 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i176, i32 %66)
  %cmp.i178 = icmp ugt i32 %add.i176, %66
  br i1 %cmp.i178, label %if.else.cleanup_crit_edge, label %if.end54

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.else
  %67 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i176, ptr %offset, align 4
  %add.i185 = add i32 %64, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i185, i32 %66)
  %cmp.i187 = icmp ugt i32 %add.i185, %66
  br i1 %cmp.i187, label %if.end54.cleanup_crit_edge, label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %68 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i185, ptr %offset, align 4
  %add.i194 = add i32 %64, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i194, i32 %66)
  %cmp.i196 = icmp ugt i32 %add.i194, %66
  br i1 %cmp.i196, label %if.end58.cleanup_crit_edge, label %if.end62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i194, ptr %offset, align 4
  %create_time63 = getelementptr inbounds %struct.xattr_dos_attrib, ptr %da, i32 0, i32 6
  %add.i203 = add i32 %64, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i203, i32 %66)
  %cmp.i205 = icmp ugt i32 %add.i203, %66
  br i1 %cmp.i205, label %if.end62.cleanup_crit_edge, label %if.end.i207

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i207:                                      ; preds = %if.end62
  %tobool.not.i206 = icmp eq ptr %create_time63, null
  br i1 %tobool.not.i206, label %if.end.i207.if.end67_crit_edge, label %if.then1.i209

if.end.i207.if.end67_crit_edge:                   ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then1.i209:                                    ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %n, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %71, i32 %add.i194
  %72 = ptrtoint ptr %add.ptr.i.i208 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr.i.i208, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #10
  %75 = ptrtoint ptr %create_time63 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %create_time63, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then1.i209, %if.end.i207.if.end67_crit_edge
  %76 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset, align 4
  %add4.i210 = add i32 %77, 8
  %add.i215 = add i32 %77, 16
  %78 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i215, i32 %79)
  %cmp.i217 = icmp ugt i32 %add.i215, %79
  %spec.store.select = select i1 %cmp.i217, i32 %add4.i210, i32 %add.i215
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.store.select, ptr %offset, align 4
  %spec.select = select i1 %cmp.i217, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end2.i172, %if.end49.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end27, %if.end15.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ -22, %if.then45.cleanup_crit_edge ], [ 0, %if.end2.i172 ], [ -22, %if.end49.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ -22, %if.end58.cleanup_crit_edge ], [ -22, %if.end62.cleanup_crit_edge ], [ %spec.select, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndr_encode_posix_acl(ptr noundef %n, ptr noundef %user_ns, ptr nocapture noundef readonly %inode, ptr noundef readonly %acl, ptr noundef readonly %def_acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #13
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %n, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %acl, null
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.i90 = add i32 %7, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i90)
  %cmp.not.i91 = icmp ugt i32 %5, %add.i90
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %cmp.not.i91, label %if.then4.if.end10_crit_edge, label %if.then.i

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i:                                        ; preds = %if.then4
  %add2.i.i = add i32 %7, 1028
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef nonnull %call7.i.i, i32 noundef %add2.i.i, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end10.sink.split_crit_edge

if.then.i.if.end10.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp.not.i91, label %if.else.if.end10_crit_edge, label %if.then.i95

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i95:                                      ; preds = %if.else
  %add2.i.i92 = add i32 %7, 1028
  %call.i.i93 = tail call noalias ptr @krealloc(ptr noundef nonnull %call7.i.i, i32 noundef %add2.i.i92, i32 noundef 3264) #15
  %tobool.not.i.i94 = icmp eq ptr %call.i.i93, null
  br i1 %tobool.not.i.i94, label %if.then.i95.cleanup_crit_edge, label %if.then.i95.if.end10.sink.split_crit_edge

if.then.i95.if.end10.sink.split_crit_edge:        ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split

if.then.i95.cleanup_crit_edge:                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.sink.split:                              ; preds = %if.then.i95.if.end10.sink.split_crit_edge, %if.then.i.if.end10.sink.split_crit_edge
  %call.i.i93.sink200 = phi ptr [ %call.i.i, %if.then.i.if.end10.sink.split_crit_edge ], [ %call.i.i93, %if.then.i95.if.end10.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 512, %if.then.i.if.end10.sink.split_crit_edge ], [ 0, %if.then.i95.if.end10.sink.split_crit_edge ]
  %ref_id.0.ph.ph = phi i32 [ 131076, %if.then.i.if.end10.sink.split_crit_edge ], [ 131072, %if.then.i95.if.end10.sink.split_crit_edge ]
  %8 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i93.sink200, ptr %n, align 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %add4.i.i96 = add i32 %10, 1024
  store i32 %add4.i.i96, ptr %length, align 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %call.i.i93.sink200, i32 %12
  %13 = call ptr @memset(ptr %add.ptr.i.i97, i32 0, i32 1024)
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge, %if.then4.if.end10_crit_edge
  %.sink = phi i32 [ 512, %if.then4.if.end10_crit_edge ], [ 0, %if.else.if.end10_crit_edge ], [ %.sink.ph, %if.end10.sink.split ]
  %ref_id.0.ph = phi i32 [ 131076, %if.then4.if.end10_crit_edge ], [ 131072, %if.else.if.end10_crit_edge ], [ %ref_id.0.ph.ph, %if.end10.sink.split ]
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %n, align 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %add.ptr.i12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %add.ptr.i12.i, align 4
  %storemerge.in = load i32, ptr %offset, align 4
  %storemerge = add i32 %storemerge.in, 4
  store i32 %storemerge, ptr %offset, align 4
  %tobool11.not = icmp eq ptr %def_acl, null
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %add.i122 = add i32 %storemerge.in, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i122)
  %cmp.not.i123 = icmp ugt i32 %20, %add.i122
  br i1 %tobool11.not, label %if.else15, label %if.then12

if.then12:                                        ; preds = %if.end10
  br i1 %cmp.not.i123, label %if.then12.if.end2.i117_crit_edge, label %if.then.i111

if.then12.if.end2.i117_crit_edge:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i117

if.then.i111:                                     ; preds = %if.then12
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %n, align 4
  %add2.i.i108 = add i32 %storemerge.in, 1032
  %call.i.i109 = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %add2.i.i108, i32 noundef 3264) #15
  %tobool.not.i.i110 = icmp eq ptr %call.i.i109, null
  br i1 %tobool.not.i.i110, label %if.then.i111.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i114

if.then.i111.cleanup_crit_edge:                   ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i114:         ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i109, ptr %n, align 4
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %add4.i.i112 = add i32 %25, 1024
  store i32 %add4.i.i112, ptr %length, align 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %call.i.i109, i32 %27
  %28 = call ptr @memset(ptr %add.ptr.i.i113, i32 0, i32 1024)
  br label %if.end2.i117

if.end2.i117:                                     ; preds = %try_to_realloc_ndr_blob.exit.thread.i114, %if.then12.if.end2.i117_crit_edge
  %29 = tail call i32 @llvm.bswap.i32(i32 %ref_id.0.ph) #10
  br label %if.end20

if.else15:                                        ; preds = %if.end10
  br i1 %cmp.not.i123, label %if.else15.if.end20_crit_edge, label %if.then.i127

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then.i127:                                     ; preds = %if.else15
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %n, align 4
  %add2.i.i124 = add i32 %storemerge.in, 1032
  %call.i.i125 = tail call noalias ptr @krealloc(ptr noundef %31, i32 noundef %add2.i.i124, i32 noundef 3264) #15
  %tobool.not.i.i126 = icmp eq ptr %call.i.i125, null
  br i1 %tobool.not.i.i126, label %if.then.i127.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i130

if.then.i127.cleanup_crit_edge:                   ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i130:         ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i125, ptr %n, align 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %add4.i.i128 = add i32 %34, 1024
  store i32 %add4.i.i128, ptr %length, align 4
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %call.i.i125, i32 %36
  %37 = call ptr @memset(ptr %add.ptr.i.i129, i32 0, i32 1024)
  br label %if.end20

if.end20:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i130, %if.else15.if.end20_crit_edge, %if.end2.i117
  %.sink195 = phi i32 [ %29, %if.end2.i117 ], [ 0, %try_to_realloc_ndr_blob.exit.thread.i130 ], [ 0, %if.else15.if.end20_crit_edge ]
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %n, align 4
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add.ptr.i12.i115 = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %add.ptr.i12.i115 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink195, ptr %add.ptr.i12.i115, align 4
  %storemerge192.in = load i32, ptr %offset, align 4
  %storemerge192 = add i32 %storemerge192.in, 4
  store i32 %storemerge192, ptr %offset, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %43 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %47 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %48 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %user_ns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %46, %user_ns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end20.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

if.end20.i_uid_into_mnt.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.end20
  %cmp.i21.i.i = icmp eq ptr %46, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %46, [1 x i32] %48) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %user_ns, i32 noundef %uid.0.i.i) #10
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %if.end20.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.end20.i_uid_into_mnt.exit_crit_edge ]
  %.fca.0.insert53 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call23 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert53) #10
  %conv = zext i32 %call23 to i64
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 4
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add.i138 = add i32 %52, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add.i138)
  %cmp.not.i139 = icmp ugt i32 %50, %add.i138
  br i1 %cmp.not.i139, label %i_uid_into_mnt.exit.if.end27_crit_edge, label %if.then.i143

i_uid_into_mnt.exit.if.end27_crit_edge:           ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i143:                                     ; preds = %i_uid_into_mnt.exit
  %53 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %n, align 4
  %add2.i.i140 = add i32 %52, 1032
  %call.i.i141 = tail call noalias ptr @krealloc(ptr noundef %54, i32 noundef %add2.i.i140, i32 noundef 3264) #15
  %tobool.not.i.i142 = icmp eq ptr %call.i.i141, null
  br i1 %tobool.not.i.i142, label %if.then.i143.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i146

if.then.i143.cleanup_crit_edge:                   ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i146:         ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i141, ptr %n, align 4
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length, align 4
  %add4.i.i144 = add i32 %57, 1024
  store i32 %add4.i.i144, ptr %length, align 4
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %call.i.i141, i32 %59
  %60 = call ptr @memset(ptr %add.ptr.i.i145, i32 0, i32 1024)
  br label %if.end27

if.end27:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i146, %i_uid_into_mnt.exit.if.end27_crit_edge
  %61 = tail call i64 @llvm.bswap.i64(i64 %conv) #10
  %62 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %n, align 4
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  %add.ptr.i12.i147 = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %add.ptr.i12.i147 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %61, ptr %add.ptr.i12.i147, align 8
  %67 = load i32, ptr %offset, align 4
  %add5.i148 = add i32 %67, 8
  store i32 %add5.i148, ptr %offset, align 4
  %68 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i152 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 53
  %70 = ptrtoint ptr %s_user_ns.i.i152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_user_ns.i.i152, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %72 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack.i153 = load i32, ptr %i_gid.i, align 8
  %73 = insertvalue [1 x i32] undef, i32 %.unpack.i153, 0
  %cmp.i.i.i155 = icmp eq ptr %71, %user_ns
  %spec.select.i.i.i156 = or i1 %cmp.i.i.i.i, %cmp.i.i.i155
  br i1 %spec.select.i.i.i156, label %if.end27.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i158

if.end27.i_gid_into_mnt.exit_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_gid_into_mnt.exit

if.end.i.i158:                                    ; preds = %if.end27
  %cmp.i21.i.i157 = icmp eq ptr %71, @init_user_ns
  br i1 %cmp.i21.i.i157, label %if.end.i.i158.if.end7.i.i162_crit_edge, label %if.else.i.i160

if.end.i.i158.if.end7.i.i162_crit_edge:           ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i162

if.else.i.i160:                                   ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i159 = tail call i32 @from_kgid(ptr noundef %71, [1 x i32] %73) #10
  br label %if.end7.i.i162

if.end7.i.i162:                                   ; preds = %if.else.i.i160, %if.end.i.i158.if.end7.i.i162_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i159, %if.else.i.i160 ], [ %.unpack.i153, %if.end.i.i158.if.end7.i.i162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i161 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i161, label %if.end7.i.i162.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i164

if.end7.i.i162.i_gid_into_mnt.exit_crit_edge:     ; preds = %if.end7.i.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_gid_into_mnt.exit

if.end9.i.i164:                                   ; preds = %if.end7.i.i162
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i163 = tail call i32 @make_kgid(ptr noundef %user_ns, i32 noundef %gid.0.i.i) #10
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i164, %if.end7.i.i162.i_gid_into_mnt.exit_crit_edge, %if.end27.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i165 = phi i32 [ %call10.i.i163, %if.end9.i.i164 ], [ -1, %if.end7.i.i162.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i153, %if.end27.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i165, 0
  %call32 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #10
  %conv33 = zext i32 %call32 to i64
  %74 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length, align 4
  %76 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset, align 4
  %add.i168 = add i32 %77, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add.i168)
  %cmp.not.i169 = icmp ugt i32 %75, %add.i168
  br i1 %cmp.not.i169, label %i_gid_into_mnt.exit.if.end37_crit_edge, label %if.then.i173

i_gid_into_mnt.exit.if.end37_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then.i173:                                     ; preds = %i_gid_into_mnt.exit
  %78 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %n, align 4
  %add2.i.i170 = add i32 %77, 1032
  %call.i.i171 = tail call noalias ptr @krealloc(ptr noundef %79, i32 noundef %add2.i.i170, i32 noundef 3264) #15
  %tobool.not.i.i172 = icmp eq ptr %call.i.i171, null
  br i1 %tobool.not.i.i172, label %if.then.i173.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i176

if.then.i173.cleanup_crit_edge:                   ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i176:         ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i171, ptr %n, align 4
  %81 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length, align 4
  %add4.i.i174 = add i32 %82, 1024
  store i32 %add4.i.i174, ptr %length, align 4
  %83 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset, align 4
  %add.ptr.i.i175 = getelementptr i8, ptr %call.i.i171, i32 %84
  %85 = call ptr @memset(ptr %add.ptr.i.i175, i32 0, i32 1024)
  br label %if.end37

if.end37:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i176, %i_gid_into_mnt.exit.if.end37_crit_edge
  %86 = tail call i64 @llvm.bswap.i64(i64 %conv33) #10
  %87 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %n, align 4
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset, align 4
  %add.ptr.i12.i177 = getelementptr i8, ptr %88, i32 %90
  %91 = ptrtoint ptr %add.ptr.i12.i177 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %86, ptr %add.ptr.i12.i177, align 8
  %92 = load i32, ptr %offset, align 4
  %add5.i178 = add i32 %92, 8
  store i32 %add5.i178, ptr %offset, align 4
  %93 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %inode, align 8
  %conv38 = zext i16 %94 to i32
  %call39 = tail call fastcc i32 @ndr_write_int32(ptr noundef %n, i32 noundef %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp ne i32 %call39, 0
  %brmerge = or i1 %tobool3.not, %tobool40.not
  br i1 %brmerge, label %if.end37.cleanup_crit_edge, label %if.then44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.end37
  %call45 = tail call fastcc i32 @ndr_encode_posix_acl_entry(ptr noundef %n, ptr noundef nonnull %acl)
  %tobool11.not.not = xor i1 %tobool11.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  %or.cond = select i1 %tobool11.not.not, i1 %tobool47.not, i1 false
  br i1 %or.cond, label %if.then48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call fastcc i32 @ndr_encode_posix_acl_entry(ptr noundef %n, ptr noundef nonnull %def_acl)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.then44.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then.i173.cleanup_crit_edge, %if.then.i143.cleanup_crit_edge, %if.then.i127.cleanup_crit_edge, %if.then.i111.cleanup_crit_edge, %if.then.i95.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ %call49, %if.then48 ], [ %call45, %if.then44.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then.i95.cleanup_crit_edge ], [ -12, %if.then.i111.cleanup_crit_edge ], [ -12, %if.then.i127.cleanup_crit_edge ], [ -12, %if.then.i143.cleanup_crit_edge ], [ -12, %if.then.i173.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndr_encode_posix_acl_entry(ptr noundef %n, ptr nocapture noundef readonly %acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acl, align 4
  %length.i = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %offset.i = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %5, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp.not.i = icmp ugt i32 %3, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  %add2.i.i = add i32 %5, 1028
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %add2.i.i, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %n, align 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %add4.i.i = add i32 %10, 1024
  store i32 %add4.i.i, ptr %length.i, align 4
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %12
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 1024)
  br label %if.end

if.end:                                           ; preds = %try_to_realloc_ndr_blob.exit.thread.i, %entry.if.end_crit_edge
  %14 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %n, align 4
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %16, i32 %18
  %19 = ptrtoint ptr %add.ptr.i12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %add.ptr.i12.i, align 4
  %20 = load i32, ptr %offset.i, align 4
  %add = add i32 %20, 11
  %and = and i32 %add, -8
  store i32 %and, ptr %offset.i, align 4
  %21 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %acl, align 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 4
  %add.i112 = or i32 %and, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add.i112)
  %cmp.not.i113 = icmp ugt i32 %24, %add.i112
  br i1 %cmp.not.i113, label %if.end.if.end6_crit_edge, label %if.then.i117

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i117:                                     ; preds = %if.end
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %n, align 4
  %add2.i.i114 = add i32 %and, 1028
  %call.i.i115 = tail call noalias ptr @krealloc(ptr noundef %26, i32 noundef %add2.i.i114, i32 noundef 3264) #15
  %tobool.not.i.i116 = icmp eq ptr %call.i.i115, null
  br i1 %tobool.not.i.i116, label %if.then.i117.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i120

if.then.i117.cleanup_crit_edge:                   ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i120:         ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i115, ptr %n, align 4
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 4
  %add4.i.i118 = add i32 %29, 1024
  store i32 %add4.i.i118, ptr %length.i, align 4
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %call.i.i115, i32 %31
  %32 = call ptr @memset(ptr %add.ptr.i.i119, i32 0, i32 1024)
  br label %if.end6

if.end6:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread.i120, %if.end.if.end6_crit_edge
  %33 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %n, align 4
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i121 = getelementptr i8, ptr %35, i32 %37
  %38 = ptrtoint ptr %add.ptr.i12.i121 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %add.ptr.i12.i121, align 4
  %39 = load i32, ptr %offset.i, align 4
  %add5.i122 = add i32 %39, 4
  store i32 %add5.i122, ptr %offset.i, align 4
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  %add.i128 = add i32 %39, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add.i128)
  %cmp.not.i129 = icmp ugt i32 %41, %add.i128
  br i1 %cmp.not.i129, label %if.end6.ndr_write_int32.exit141_crit_edge, label %if.then.i133

if.end6.ndr_write_int32.exit141_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndr_write_int32.exit141

if.then.i133:                                     ; preds = %if.end6
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %n, align 4
  %add2.i.i130 = add i32 %39, 1032
  %call.i.i131 = tail call noalias ptr @krealloc(ptr noundef %43, i32 noundef %add2.i.i130, i32 noundef 3264) #15
  %tobool.not.i.i132 = icmp eq ptr %call.i.i131, null
  br i1 %tobool.not.i.i132, label %if.then.i133.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i136

if.then.i133.cleanup_crit_edge:                   ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i136:         ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i131, ptr %n, align 4
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i, align 4
  %add4.i.i134 = add i32 %46, 1024
  store i32 %add4.i.i134, ptr %length.i, align 4
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %call.i.i131, i32 %48
  %49 = call ptr @memset(ptr %add.ptr.i.i135, i32 0, i32 1024)
  br label %ndr_write_int32.exit141

ndr_write_int32.exit141:                          ; preds = %try_to_realloc_ndr_blob.exit.thread.i136, %if.end6.ndr_write_int32.exit141_crit_edge
  %50 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %n, align 4
  %52 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i137 = getelementptr i8, ptr %51, i32 %53
  %54 = ptrtoint ptr %add.ptr.i12.i137 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %add.ptr.i12.i137, align 4
  %55 = load i32, ptr %offset.i, align 4
  %add5.i138 = add i32 %55, 4
  store i32 %add5.i138, ptr %offset.i, align 4
  %56 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %acl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp232 = icmp sgt i32 %57, 0
  br i1 %cmp232, label %ndr_write_int32.exit141.for.body_crit_edge, label %ndr_write_int32.exit141.cleanup_crit_edge

ndr_write_int32.exit141.cleanup_crit_edge:        ; preds = %ndr_write_int32.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ndr_write_int32.exit141.for.body_crit_edge:       ; preds = %ndr_write_int32.exit141
  br label %for.body

for.body:                                         ; preds = %ndr_write_int32.exit219.for.body_crit_edge, %ndr_write_int32.exit141.for.body_crit_edge
  %i.0233 = phi i32 [ %inc, %ndr_write_int32.exit219.for.body_crit_edge ], [ 0, %ndr_write_int32.exit141.for.body_crit_edge ]
  %58 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset.i, align 4
  %add13 = add i32 %59, 7
  %and14 = and i32 %add13, -8
  store i32 %and14, ptr %offset.i, align 4
  %arrayidx = getelementptr %struct.xattr_smb_acl, ptr %acl, i32 0, i32 2, i32 %i.0233
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %61 to i16
  %62 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i, align 4
  %add.i144 = or i32 %and14, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add.i144)
  %cmp.not.i145 = icmp ugt i32 %63, %add.i144
  br i1 %cmp.not.i145, label %for.body.if.end19_crit_edge, label %if.then.i149

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.i149:                                     ; preds = %for.body
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %n, align 4
  %add2.i.i146 = add i32 %and14, 1026
  %call.i.i147 = tail call noalias ptr @krealloc(ptr noundef %65, i32 noundef %add2.i.i146, i32 noundef 3264) #15
  %tobool.not.i.i148 = icmp eq ptr %call.i.i147, null
  br i1 %tobool.not.i.i148, label %if.then.i149.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i152

if.then.i149.cleanup_crit_edge:                   ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i152:         ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i147, ptr %n, align 4
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i, align 4
  %add4.i.i150 = add i32 %68, 1024
  store i32 %add4.i.i150, ptr %length.i, align 4
  %69 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %call.i.i147, i32 %70
  %71 = call ptr @memset(ptr %add.ptr.i.i151, i32 0, i32 1024)
  br label %if.end19

if.end19:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i152, %for.body.if.end19_crit_edge
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %73 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %n, align 4
  %75 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i153 = getelementptr i8, ptr %74, i32 %76
  %77 = ptrtoint ptr %add.ptr.i12.i153 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %72, ptr %add.ptr.i12.i153, align 2
  %78 = load i32, ptr %offset.i, align 4
  %add5.i154 = add i32 %78, 2
  store i32 %add5.i154, ptr %offset.i, align 4
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  %conv23 = trunc i32 %80 to i16
  %81 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.i, align 4
  %add.i159 = add i32 %78, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %add.i159)
  %cmp.not.i160 = icmp ugt i32 %82, %add.i159
  br i1 %cmp.not.i160, label %if.end19.if.end27_crit_edge, label %if.then.i164

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i164:                                     ; preds = %if.end19
  %83 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %n, align 4
  %add2.i.i161 = add i32 %78, 1028
  %call.i.i162 = tail call noalias ptr @krealloc(ptr noundef %84, i32 noundef %add2.i.i161, i32 noundef 3264) #15
  %tobool.not.i.i163 = icmp eq ptr %call.i.i162, null
  br i1 %tobool.not.i.i163, label %if.then.i164.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i167

if.then.i164.cleanup_crit_edge:                   ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i167:         ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i.i162, ptr %n, align 4
  %86 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length.i, align 4
  %add4.i.i165 = add i32 %87, 1024
  store i32 %add4.i.i165, ptr %length.i, align 4
  %88 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %call.i.i162, i32 %89
  %90 = call ptr @memset(ptr %add.ptr.i.i166, i32 0, i32 1024)
  br label %if.end27

if.end27:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i167, %if.end19.if.end27_crit_edge
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv23) #10
  %92 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %n, align 4
  %94 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i168 = getelementptr i8, ptr %93, i32 %95
  %96 = ptrtoint ptr %add.ptr.i12.i168 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %91, ptr %add.ptr.i12.i168, align 2
  %97 = load i32, ptr %offset.i, align 4
  %add5.i169 = add i32 %97, 2
  store i32 %add5.i169, ptr %offset.i, align 4
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i32 %99, label %if.end27.if.end60_crit_edge [
    i32 1, label %if.then33
    i32 3, label %if.then47
  ]

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then33:                                        ; preds = %if.end27
  %101 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset.i, align 4
  %add35 = add i32 %102, 7
  %and36 = and i32 %add35, -8
  store i32 %and36, ptr %offset.i, align 4
  %uid = getelementptr %struct.xattr_smb_acl, ptr %acl, i32 0, i32 2, i32 %i.0233, i32 1
  %103 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %uid, align 4
  %conv40 = zext i32 %104 to i64
  %105 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i, align 4
  %add.i175 = add i32 %and36, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add.i175)
  %cmp.not.i176 = icmp ugt i32 %106, %add.i175
  br i1 %cmp.not.i176, label %if.then33.if.end60.sink.split_crit_edge, label %if.then.i180

if.then33.if.end60.sink.split_crit_edge:          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split

if.then.i180:                                     ; preds = %if.then33
  %107 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %n, align 4
  %add2.i.i177 = add i32 %and36, 1032
  %call.i.i178 = tail call noalias ptr @krealloc(ptr noundef %108, i32 noundef %add2.i.i177, i32 noundef 3264) #15
  %tobool.not.i.i179 = icmp eq ptr %call.i.i178, null
  br i1 %tobool.not.i.i179, label %if.then.i180.cleanup_crit_edge, label %if.then.i180.if.end60.sink.split.sink.split_crit_edge

if.then.i180.if.end60.sink.split.sink.split_crit_edge: ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split.sink.split

if.then.i180.cleanup_crit_edge:                   ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.end27
  %109 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset.i, align 4
  %add49 = add i32 %110, 7
  %and50 = and i32 %add49, -8
  store i32 %and50, ptr %offset.i, align 4
  %gid = getelementptr %struct.xattr_smb_acl, ptr %acl, i32 0, i32 2, i32 %i.0233, i32 2
  %111 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %gid, align 4
  %conv54 = zext i32 %112 to i64
  %113 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %length.i, align 4
  %add.i190 = add i32 %and50, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %add.i190)
  %cmp.not.i191 = icmp ugt i32 %114, %add.i190
  br i1 %cmp.not.i191, label %if.then47.if.end60.sink.split_crit_edge, label %if.then.i195

if.then47.if.end60.sink.split_crit_edge:          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split

if.then.i195:                                     ; preds = %if.then47
  %115 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %n, align 4
  %add2.i.i192 = add i32 %and50, 1032
  %call.i.i193 = tail call noalias ptr @krealloc(ptr noundef %116, i32 noundef %add2.i.i192, i32 noundef 3264) #15
  %tobool.not.i.i194 = icmp eq ptr %call.i.i193, null
  br i1 %tobool.not.i.i194, label %if.then.i195.cleanup_crit_edge, label %if.then.i195.if.end60.sink.split.sink.split_crit_edge

if.then.i195.if.end60.sink.split.sink.split_crit_edge: ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split.sink.split

if.then.i195.cleanup_crit_edge:                   ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60.sink.split.sink.split:                   ; preds = %if.then.i195.if.end60.sink.split.sink.split_crit_edge, %if.then.i180.if.end60.sink.split.sink.split_crit_edge
  %call.i.i193.sink241 = phi ptr [ %call.i.i178, %if.then.i180.if.end60.sink.split.sink.split_crit_edge ], [ %call.i.i193, %if.then.i195.if.end60.sink.split.sink.split_crit_edge ]
  %conv40.sink.ph = phi i64 [ %conv40, %if.then.i180.if.end60.sink.split.sink.split_crit_edge ], [ %conv54, %if.then.i195.if.end60.sink.split.sink.split_crit_edge ]
  %117 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i.i193.sink241, ptr %n, align 4
  %118 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %length.i, align 4
  %add4.i.i196 = add i32 %119, 1024
  store i32 %add4.i.i196, ptr %length.i, align 4
  %120 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %call.i.i193.sink241, i32 %121
  %122 = call ptr @memset(ptr %add.ptr.i.i197, i32 0, i32 1024)
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.end60.sink.split.sink.split, %if.then47.if.end60.sink.split_crit_edge, %if.then33.if.end60.sink.split_crit_edge
  %conv40.sink = phi i64 [ %conv40, %if.then33.if.end60.sink.split_crit_edge ], [ %conv54, %if.then47.if.end60.sink.split_crit_edge ], [ %conv40.sink.ph, %if.end60.sink.split.sink.split ]
  %123 = tail call i64 @llvm.bswap.i64(i64 %conv40.sink) #10
  %124 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %n, align 4
  %126 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i184 = getelementptr i8, ptr %125, i32 %127
  %128 = ptrtoint ptr %add.ptr.i12.i184 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %123, ptr %add.ptr.i12.i184, align 8
  %129 = load i32, ptr %offset.i, align 4
  %add5.i185 = add i32 %129, 8
  store i32 %add5.i185, ptr %offset.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.end27.if.end60_crit_edge
  %perm = getelementptr %struct.xattr_smb_acl, ptr %acl, i32 0, i32 2, i32 %i.0233, i32 3
  %130 = ptrtoint ptr %perm to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %perm, align 4
  %conv63 = zext i16 %131 to i32
  %132 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length.i, align 4
  %134 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset.i, align 4
  %add.i206 = add i32 %135, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %add.i206)
  %cmp.not.i207 = icmp ugt i32 %133, %add.i206
  br i1 %cmp.not.i207, label %if.end60.if.end2.i217_crit_edge, label %if.then.i211

if.end60.if.end2.i217_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i217

if.then.i211:                                     ; preds = %if.end60
  %136 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %n, align 4
  %add2.i.i208 = add i32 %135, 1028
  %call.i.i209 = tail call noalias ptr @krealloc(ptr noundef %137, i32 noundef %add2.i.i208, i32 noundef 3264) #15
  %tobool.not.i.i210 = icmp eq ptr %call.i.i209, null
  br i1 %tobool.not.i.i210, label %if.then.i211.ndr_write_int32.exit219_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i214

if.then.i211.ndr_write_int32.exit219_crit_edge:   ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndr_write_int32.exit219

try_to_realloc_ndr_blob.exit.thread.i214:         ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i.i209, ptr %n, align 4
  %139 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %length.i, align 4
  %add4.i.i212 = add i32 %140, 1024
  store i32 %add4.i.i212, ptr %length.i, align 4
  %141 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %call.i.i209, i32 %142
  %143 = call ptr @memset(ptr %add.ptr.i.i213, i32 0, i32 1024)
  br label %if.end2.i217

if.end2.i217:                                     ; preds = %try_to_realloc_ndr_blob.exit.thread.i214, %if.end60.if.end2.i217_crit_edge
  %144 = tail call i32 @llvm.bswap.i32(i32 %conv63) #10
  %145 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %n, align 4
  %147 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i215 = getelementptr i8, ptr %146, i32 %148
  %149 = ptrtoint ptr %add.ptr.i12.i215 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %144, ptr %add.ptr.i12.i215, align 4
  %150 = load i32, ptr %offset.i, align 4
  %add5.i216 = add i32 %150, 4
  store i32 %add5.i216, ptr %offset.i, align 4
  br label %ndr_write_int32.exit219

ndr_write_int32.exit219:                          ; preds = %if.end2.i217, %if.then.i211.ndr_write_int32.exit219_crit_edge
  %retval.1.i218 = phi i32 [ 0, %if.end2.i217 ], [ -12, %if.then.i211.ndr_write_int32.exit219_crit_edge ]
  %inc = add nuw nsw i32 %i.0233, 1
  %151 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %acl, align 4
  %cmp = icmp slt i32 %inc, %152
  br i1 %cmp, label %ndr_write_int32.exit219.for.body_crit_edge, label %ndr_write_int32.exit219.cleanup_crit_edge

ndr_write_int32.exit219.cleanup_crit_edge:        ; preds = %ndr_write_int32.exit219
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ndr_write_int32.exit219.for.body_crit_edge:       ; preds = %ndr_write_int32.exit219
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %ndr_write_int32.exit219.cleanup_crit_edge, %if.then.i195.cleanup_crit_edge, %if.then.i180.cleanup_crit_edge, %if.then.i164.cleanup_crit_edge, %if.then.i149.cleanup_crit_edge, %ndr_write_int32.exit141.cleanup_crit_edge, %if.then.i133.cleanup_crit_edge, %if.then.i117.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then.i117.cleanup_crit_edge ], [ -12, %if.then.i133.cleanup_crit_edge ], [ 0, %ndr_write_int32.exit141.cleanup_crit_edge ], [ %retval.1.i218, %ndr_write_int32.exit219.cleanup_crit_edge ], [ -12, %if.then.i149.cleanup_crit_edge ], [ -12, %if.then.i164.cleanup_crit_edge ], [ -12, %if.then.i195.cleanup_crit_edge ], [ -12, %if.then.i180.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndr_encode_v4_ntacl(ptr noundef %n, ptr nocapture noundef readonly %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2048, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2048) #13
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %n, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %acl, align 8
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.i = add i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp.not.i = icmp ugt i32 %7, %add.i
  br i1 %cmp.not.i, label %if.end.if.end6_crit_edge, label %if.then.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  %add2.i.i = add i32 %9, 1026
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef nonnull %call7.i.i, i32 noundef %add2.i.i, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %n, align 4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %add4.i.i = add i32 %12, 1024
  store i32 %add4.i.i, ptr %length, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %14
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 1024)
  br label %if.end6

if.end6:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread.i, %if.end.if.end6_crit_edge
  %16 = tail call i16 @llvm.bswap.i16(i16 %5) #10
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %n, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %add.ptr.i12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %16, ptr %add.ptr.i12.i, align 2
  %22 = load i32, ptr %offset, align 4
  %add5.i = add i32 %22, 2
  store i32 %add5.i, ptr %offset, align 4
  %23 = ptrtoint ptr %acl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %acl, align 8
  %conv = zext i16 %24 to i32
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  %add.i88 = add i32 %22, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add.i88)
  %cmp.not.i89 = icmp ugt i32 %26, %add.i88
  br i1 %cmp.not.i89, label %if.end6.if.end11_crit_edge, label %if.then.i93

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then.i93:                                      ; preds = %if.end6
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %n, align 4
  %add2.i.i90 = add i32 %22, 1030
  %call.i.i91 = tail call noalias ptr @krealloc(ptr noundef %28, i32 noundef %add2.i.i90, i32 noundef 3264) #15
  %tobool.not.i.i92 = icmp eq ptr %call.i.i91, null
  br i1 %tobool.not.i.i92, label %if.then.i93.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i96

if.then.i93.cleanup_crit_edge:                    ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i96:          ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i91, ptr %n, align 4
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  %add4.i.i94 = add i32 %31, 1024
  store i32 %add4.i.i94, ptr %length, align 4
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %call.i.i91, i32 %33
  %34 = call ptr @memset(ptr %add.ptr.i.i95, i32 0, i32 1024)
  br label %if.end11

if.end11:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i96, %if.end6.if.end11_crit_edge
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  %36 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %n, align 4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %add.ptr.i12.i97 = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %add.ptr.i12.i97 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %add.ptr.i12.i97, align 4
  %41 = load i32, ptr %offset, align 4
  %add5.i98 = add i32 %41, 4
  store i32 %add5.i98, ptr %offset, align 4
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length, align 4
  %add.i103 = add i32 %41, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add.i103)
  %cmp.not.i104 = icmp ugt i32 %43, %add.i103
  br i1 %cmp.not.i104, label %if.end11.if.end15_crit_edge, label %if.then.i108

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i108:                                     ; preds = %if.end11
  %44 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %n, align 4
  %add2.i.i105 = add i32 %41, 1030
  %call.i.i106 = tail call noalias ptr @krealloc(ptr noundef %45, i32 noundef %add2.i.i105, i32 noundef 3264) #15
  %tobool.not.i.i107 = icmp eq ptr %call.i.i106, null
  br i1 %tobool.not.i.i107, label %if.then.i108.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i111

if.then.i108.cleanup_crit_edge:                   ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i111:         ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i106, ptr %n, align 4
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length, align 4
  %add4.i.i109 = add i32 %48, 1024
  store i32 %add4.i.i109, ptr %length, align 4
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %call.i.i106, i32 %50
  %51 = call ptr @memset(ptr %add.ptr.i.i110, i32 0, i32 1024)
  br label %if.end15

if.end15:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i111, %if.end11.if.end15_crit_edge
  %52 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %n, align 4
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset, align 4
  %add.ptr.i12.i112 = getelementptr i8, ptr %53, i32 %55
  %56 = ptrtoint ptr %add.ptr.i12.i112 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 512, ptr %add.ptr.i12.i112, align 2
  %57 = load i32, ptr %offset, align 4
  %add5.i113 = add i32 %57, 2
  store i32 %add5.i113, ptr %offset, align 4
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  %add.i119 = add i32 %57, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add.i119)
  %cmp.not.i120 = icmp ugt i32 %59, %add.i119
  br i1 %cmp.not.i120, label %if.end15.if.end19_crit_edge, label %if.then.i124

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.i124:                                     ; preds = %if.end15
  %60 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %n, align 4
  %add2.i.i121 = add i32 %57, 1030
  %call.i.i122 = tail call noalias ptr @krealloc(ptr noundef %61, i32 noundef %add2.i.i121, i32 noundef 3264) #15
  %tobool.not.i.i123 = icmp eq ptr %call.i.i122, null
  br i1 %tobool.not.i.i123, label %if.then.i124.cleanup_crit_edge, label %try_to_realloc_ndr_blob.exit.thread.i127

if.then.i124.cleanup_crit_edge:                   ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_to_realloc_ndr_blob.exit.thread.i127:         ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i122, ptr %n, align 4
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 4
  %add4.i.i125 = add i32 %64, 1024
  store i32 %add4.i.i125, ptr %length, align 4
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %call.i.i122, i32 %66
  %67 = call ptr @memset(ptr %add.ptr.i.i126, i32 0, i32 1024)
  br label %if.end19

if.end19:                                         ; preds = %try_to_realloc_ndr_blob.exit.thread.i127, %if.end15.if.end19_crit_edge
  %68 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %n, align 4
  %70 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset, align 4
  %add.ptr.i12.i128 = getelementptr i8, ptr %69, i32 %71
  %72 = ptrtoint ptr %add.ptr.i12.i128 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 67109376, ptr %add.ptr.i12.i128, align 4
  %73 = load i32, ptr %offset, align 4
  %add5.i129 = add i32 %73, 4
  store i32 %add5.i129, ptr %offset, align 4
  %hash_type = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 3
  %74 = ptrtoint ptr %hash_type to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hash_type, align 4
  %call20 = tail call fastcc i32 @ndr_write_int16(ptr noundef %n, i16 noundef zeroext %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 7
  %call24 = tail call fastcc i32 @ndr_write_bytes(ptr noundef %n, ptr noundef %hash, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %desc = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 4
  %desc_len = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 5
  %76 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %desc_len, align 8
  %conv29 = zext i16 %77 to i32
  %call30 = tail call fastcc i32 @ndr_write_bytes(ptr noundef %n, ptr noundef %desc, i32 noundef %conv29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %current_time = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 6
  %78 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %current_time, align 8
  %call34 = tail call fastcc i32 @ndr_write_int64(ptr noundef %n, i64 noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %posix_acl_hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 8
  %call39 = tail call fastcc i32 @ndr_write_bytes(ptr noundef %n, ptr noundef %posix_acl_hash, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %sd_buf = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 1
  %80 = ptrtoint ptr %sd_buf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sd_buf, align 4
  %sd_size = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 2
  %82 = ptrtoint ptr %sd_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sd_size, align 8
  %call43 = tail call fastcc i32 @ndr_write_bytes(ptr noundef %n, ptr noundef %81, i32 noundef %83)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then.i124.cleanup_crit_edge, %if.then.i108.cleanup_crit_edge, %if.then.i93.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then.i93.cleanup_crit_edge ], [ -12, %if.then.i108.cleanup_crit_edge ], [ -12, %if.then.i124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndr_write_bytes(ptr nocapture noundef %n, ptr nocapture noundef readonly %value, i32 noundef %sz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, %sz
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp ugt i32 %1, %add
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  %add2.i = add i32 %add, 1024
  %call.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %add2.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %try_to_realloc_ndr_blob.exit.thread

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

try_to_realloc_ndr_blob.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %n, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %add4.i = add i32 %8, 1024
  store i32 %add4.i, ptr %length, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %10
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1024)
  br label %if.end2

if.end2:                                          ; preds = %try_to_realloc_ndr_blob.exit.thread, %entry.if.end2_crit_edge
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %n, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add.ptr.i15 = getelementptr i8, ptr %13, i32 %15
  %16 = call ptr @memcpy(ptr %add.ptr.i15, ptr %value, i32 %sz)
  %17 = load i32, ptr %offset, align 4
  %add5 = add i32 %17, %sz
  store i32 %add5, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end2 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndr_decode_v4_ntacl(ptr noundef %n, ptr noundef %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %length.i = getelementptr inbounds %struct.ndr, ptr %n, i32 0, i32 2
  %1 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp ult i32 %2, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %acl, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  %8 = ptrtoint ptr %acl to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %acl, align 2
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add4.i = add i32 %10, 2
  store i32 %add4.i, ptr %offset, align 4
  %11 = ptrtoint ptr %acl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %acl, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp.not = icmp eq i16 %12, 4
  br i1 %cmp.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.i121 = add i32 %14, 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i121, i32 %16)
  %cmp.i123 = icmp ugt i32 %add.i121, %16
  br i1 %cmp.i123, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %n, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %18, i32 %14
  %19 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i125, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i121, ptr %offset, align 4
  %23 = ptrtoint ptr %acl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %acl, align 8
  %conv13 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv13)
  %cmp14.not = icmp eq i32 %21, %conv13
  br i1 %cmp14.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv13, i32 noundef %21) #16
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add.i131 = add i32 %26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i131, i32 %16)
  %cmp.i133 = icmp ugt i32 %add.i131, %16
  br i1 %cmp.i133, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i131, ptr %offset, align 4
  %add.i140 = add i32 %26, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i140, i32 %16)
  %cmp.i142 = icmp ugt i32 %add.i140, %16
  br i1 %cmp.i142, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i140, ptr %offset, align 4
  %hash_type = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 3
  %add.i149 = add i32 %26, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i149, i32 %16)
  %cmp.i151 = icmp ugt i32 %add.i149, %16
  br i1 %cmp.i151, label %if.end32.cleanup_crit_edge, label %if.end.i153

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i153:                                      ; preds = %if.end32
  %tobool.not.i152 = icmp eq ptr %hash_type, null
  br i1 %tobool.not.i152, label %if.end.i153.if.end36_crit_edge, label %if.then1.i155

if.end.i153.if.end36_crit_edge:                   ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then1.i155:                                    ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %n, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %30, i32 %add.i140
  %31 = ptrtoint ptr %add.ptr.i.i154 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i154, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  %34 = ptrtoint ptr %hash_type to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %hash_type, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then1.i155, %if.end.i153.if.end36_crit_edge
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %add4.i156 = add i32 %36, 2
  store i32 %add4.i156, ptr %offset, align 4
  %hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 7
  %add.i161 = add i32 %36, 66
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i161, i32 %38)
  %cmp.i163 = icmp ugt i32 %add.i161, %38
  br i1 %cmp.i163, label %if.end36.cleanup_crit_edge, label %if.end.i165

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i165:                                      ; preds = %if.end36
  %tobool.not.i164 = icmp eq ptr %hash, null
  br i1 %tobool.not.i164, label %if.end.i165.if.end40_crit_edge, label %if.then1.i167

if.end.i165.if.end40_crit_edge:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then1.i167:                                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %n, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %40, i32 %add4.i156
  %41 = call ptr @memcpy(ptr %hash, ptr %add.ptr.i.i166, i32 64)
  br label %if.end40

if.end40:                                         ; preds = %if.then1.i167, %if.end.i165.if.end40_crit_edge
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add4.i168 = add i32 %43, 64
  store i32 %add4.i168, ptr %offset, align 4
  %desc = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 4
  %add.i172 = add i32 %43, 74
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i172, i32 %45)
  %cmp.i174 = icmp ugt i32 %add.i172, %45
  br i1 %cmp.i174, label %if.end40.ndr_read_bytes.exit182_crit_edge, label %if.end.i176

if.end40.ndr_read_bytes.exit182_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndr_read_bytes.exit182

if.end.i176:                                      ; preds = %if.end40
  %tobool.not.i175 = icmp eq ptr %desc, null
  br i1 %tobool.not.i175, label %if.end.i176.if.end2.i180_crit_edge, label %if.then1.i178

if.end.i176.if.end2.i180_crit_edge:               ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i180

if.then1.i178:                                    ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %n, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %47, i32 %add4.i168
  %48 = call ptr @memcpy(ptr %desc, ptr %add.ptr.i.i177, i32 10)
  br label %if.end2.i180

if.end2.i180:                                     ; preds = %if.then1.i178, %if.end.i176.if.end2.i180_crit_edge
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %add4.i179 = add i32 %50, 10
  store i32 %add4.i179, ptr %offset, align 4
  br label %ndr_read_bytes.exit182

ndr_read_bytes.exit182:                           ; preds = %if.end2.i180, %if.end40.ndr_read_bytes.exit182_crit_edge
  %call45 = tail call i32 @strncmp(ptr noundef %desc, ptr noundef nonnull dereferenceable(10) @.str.11, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end55, label %do.end50

do.end50:                                         ; preds = %ndr_read_bytes.exit182
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %desc) #16
  br label %cleanup

if.end55:                                         ; preds = %ndr_read_bytes.exit182
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add.i184 = add i32 %52, 8
  %53 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i184, i32 %54)
  %cmp.i186 = icmp ugt i32 %add.i184, %54
  br i1 %cmp.i186, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i184, ptr %offset, align 4
  %posix_acl_hash = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 8
  %add.i192 = add i32 %52, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i192, i32 %54)
  %cmp.i194 = icmp ugt i32 %add.i192, %54
  br i1 %cmp.i194, label %if.end59.cleanup_crit_edge, label %if.end.i196

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i196:                                      ; preds = %if.end59
  %tobool.not.i195 = icmp eq ptr %posix_acl_hash, null
  br i1 %tobool.not.i195, label %if.end.i196.if.end64_crit_edge, label %if.then1.i198

if.end.i196.if.end64_crit_edge:                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then1.i198:                                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %n, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %57, i32 %add.i184
  %58 = call ptr @memcpy(ptr %posix_acl_hash, ptr %add.ptr.i.i197, i32 64)
  br label %if.end64

if.end64:                                         ; preds = %if.then1.i198, %if.end.i196.if.end64_crit_edge
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %add4.i199 = add i32 %60, 64
  store i32 %add4.i199, ptr %offset, align 4
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i, align 4
  %sub = sub i32 %62, %add4.i199
  %sd_size = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 2
  %63 = ptrtoint ptr %sd_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %sd_size, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #17
  %sd_buf = getelementptr inbounds %struct.xattr_ntacl, ptr %acl, i32 0, i32 1
  %64 = ptrtoint ptr %sd_buf to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i, ptr %sd_buf, align 4
  %tobool69.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool69.not, label %if.end64.cleanup_crit_edge, label %if.end71

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %65 = ptrtoint ptr %sd_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sd_size, align 8
  %67 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset, align 4
  %add.i204 = add i32 %68, %66
  %69 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i204, i32 %70)
  %cmp.i206 = icmp ugt i32 %add.i204, %70
  br i1 %cmp.i206, label %if.end71.cleanup_crit_edge, label %if.end2.i212

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i212:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %n, align 4
  %add.ptr.i.i209 = getelementptr i8, ptr %72, i32 %68
  %73 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr.i.i209, i32 %66)
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %add4.i211 = add i32 %75, %66
  store i32 %add4.i211, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i212, %if.end71.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end50, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end19, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ -22, %do.end50 ], [ -12, %if.end64.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ], [ -22, %if.end59.cleanup_crit_edge ], [ 0, %if.end2.i212 ], [ -22, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/ndr.c", i32 182, i32 26}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/ndr.c", i32 185, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/ndr.c", i32 245, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ndr_decode_dos_attr._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ndr_decode_dos_attr._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/ndr.c", i32 254, i32 3}
!12 = !{ptr @ndr_decode_dos_attr._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ndr_decode_dos_attr._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/ndr.c", i32 456, i32 3}
!16 = !{ptr @ndr_decode_v4_ntacl._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ndr_decode_v4_ntacl._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @ndr_decode_v4_ntacl._entry.9, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/ndr.c", i32 464, i32 3}
!20 = !{ptr @ndr_decode_v4_ntacl._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ksmbd/ndr.c", i32 488, i32 25}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ksmbd/ndr.c", i32 489, i32 3}
!25 = !{ptr @ndr_decode_v4_ntacl._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ndr_decode_v4_ntacl._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
