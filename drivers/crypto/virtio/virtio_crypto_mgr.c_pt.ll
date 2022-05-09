; ModuleID = '/llk/IR_all_yes/drivers/crypto/virtio/virtio_crypto_mgr.c_pt.bc'
source_filename = "../drivers/crypto/virtio/virtio_crypto_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_crypto = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.virtio_crypto_op_ctrl_req, %struct.virtio_crypto_session_input, %struct.virtio_crypto_inhdr, i32, %struct.atomic_t, %struct.list_head, ptr, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.virtio_crypto_op_ctrl_req = type { %struct.virtio_crypto_ctrl_header, %union.anon.69 }
%struct.virtio_crypto_ctrl_header = type { i32, i32, i32, i32 }
%union.anon.69 = type { %struct.virtio_crypto_destroy_session_req }
%struct.virtio_crypto_destroy_session_req = type { i64, [48 x i8] }
%struct.virtio_crypto_session_input = type { i64, i32, i32 }
%struct.virtio_crypto_inhdr = type { i8 }

@table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @table_lock, i64 52), ptr getelementptr (i8, ptr @table_lock, i64 52) }, ptr @table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@num_devices = internal global { i32, [28 x i8] } zeroinitializer, align 32
@virtcrypto_devmgr_add_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016virtio_crypto: only support up to %d devices\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"virtcrypto_devmgr_add_dev\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/crypto/virtio/virtio_crypto_mgr.c\00", [54 x i8] zeroinitializer }, align 32
@virtcrypto_devmgr_add_dev._entry_ptr = internal global ptr @virtcrypto_devmgr_add_dev._entry, section ".printk_index", align 4
@virtio_crypto_table = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @virtio_crypto_table, ptr @virtio_crypto_table }, [24 x i8] zeroinitializer }, align 32
@virtcrypto_get_dev_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016virtio_crypto: Could not find a device on node %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"virtcrypto_get_dev_node\00", [40 x i8] zeroinitializer }, align 32
@virtcrypto_get_dev_node._entry_ptr = internal global ptr @virtcrypto_get_dev_node._entry, section ".printk_index", align 4
@virtcrypto_dev_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013virtio_crypto: Failed to register crypto algs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtcrypto_dev_start\00", [43 x i8] zeroinitializer }, align 32
@virtcrypto_dev_start._entry_ptr = internal global ptr @virtcrypto_dev_start._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"table_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"table_lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"table_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"num_devices\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 15, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 39, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"virtio_crypto_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 14, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 207, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 241, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [45 x i8] c"../drivers/crypto/virtio/virtio_crypto_mgr.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 18, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @virtcrypto_dev_start._entry, ptr @virtcrypto_dev_start._entry_ptr, ptr @virtcrypto_devmgr_add_dev._entry, ptr @virtcrypto_devmgr_add_dev._entry_ptr, ptr @virtcrypto_get_dev_node._entry, ptr @virtcrypto_get_dev_node._entry_ptr, ptr @table_lock, ptr @num_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @virtio_crypto_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_devmgr_add_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_get_dev_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_dev_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtcrypto_devmgr_add_dev(ptr noundef %vcrypto_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #7
  %0 = load i32, ptr @num_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %do.end, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32) #10
  br label %cleanup6

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %itr.0.in = phi ptr [ %itr.0, %for.body.for.cond_crit_edge ], [ @virtio_crypto_table, %entry.for.cond_crit_edge ]
  %1 = ptrtoint ptr %itr.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %itr.0 = load ptr, ptr %itr.0.in, align 4
  %cmp.i.not = icmp eq ptr %itr.0, @virtio_crypto_table
  br i1 %cmp.i.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %itr.0, i32 -212
  %cmp3 = icmp eq ptr %add.ptr, %vcrypto_dev
  br i1 %cmp3, label %for.body.cleanup6_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup6

for.end:                                          ; preds = %for.cond
  %ref_count = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #7
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %ref_count, align 4
  %list = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 21
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_crypto_table, i32 0, i32 1), align 4
  %call.i.i12 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef nonnull @virtio_crypto_table) #7
  br i1 %call.i.i12, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_crypto_table, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @virtio_crypto_table, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %7 = load i32, ptr @num_devices, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @num_devices, align 4
  %conv = trunc i32 %7 to i8
  %dev_id = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 23
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %dev_id, align 8
  br label %cleanup6

cleanup6:                                         ; preds = %list_add_tail.exit, %for.body.cleanup6_crit_edge, %do.end
  %retval.2 = phi i32 [ -14, %do.end ], [ 0, %list_add_tail.exit ], [ -17, %for.body.cleanup6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @virtcrypto_devmgr_get_head() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @virtio_crypto_table
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtcrypto_devmgr_rm_dev(ptr noundef %vcrypto_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 21, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = load i32, ptr @num_devices, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr @num_devices, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtcrypto_devmgr_get_first() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #7
  %0 = load volatile ptr, ptr @virtio_crypto_table, align 4
  %cmp.i.not = icmp eq ptr %0, @virtio_crypto_table
  %add.ptr = getelementptr i8, ptr %0, i32 -212
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtcrypto_dev_in_use(ptr noundef %vcrypto_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #7
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtcrypto_dev_get(ptr noundef %vcrypto_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #7, !srcloc !34
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %owner = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 22
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef %2) #7
  br i1 %call1, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -14, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtcrypto_dev_put(ptr noundef %vcrypto_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #7, !srcloc !37
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %owner = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 22
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @virtcrypto_dev_started(ptr nocapture noundef readonly %vcrypto_dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev, i32 0, i32 19
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %and = and i32 %1, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtcrypto_get_dev_node(i32 noundef %node, i32 noundef %service, i32 noundef %algo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #7
  %.pn122 = load ptr, ptr @virtio_crypto_table, align 4
  %cmp.not124 = icmp eq ptr %.pn122, @virtio_crypto_table
  br i1 %cmp.not124, label %entry.do.end_crit_edge, label %land.lhs.true.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.lr.ph:                              ; preds = %entry
  %shl.i = shl nuw i32 1, %service
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %algo)
  %cmp.i = icmp ugt i32 %algo, 31
  %sub.i = add i32 %algo, -32
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %algo
  %shl13.i = shl nuw i32 1, %spec.select.i
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %.pn127 = phi ptr [ %.pn122, %land.lhs.true.lr.ph ], [ %.pn, %for.inc.land.lhs.true_crit_edge ]
  %vcrypto_dev.0126 = phi ptr [ null, %land.lhs.true.lr.ph ], [ %vcrypto_dev.1, %for.inc.land.lhs.true_crit_edge ]
  %best.0125 = phi i32 [ -1, %land.lhs.true.lr.ph ], [ %best.1, %for.inc.land.lhs.true_crit_edge ]
  %tmp_dev.0128 = getelementptr i8, ptr %.pn127, i32 -212
  %status.i = getelementptr i8, ptr %.pn127, i32 -8
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %crypto_services.i = getelementptr i8, ptr %.pn127, i32 -148
  %2 = ptrtoint ptr %crypto_services.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crypto_services.i, align 8
  %and.i77 = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i, label %land.lhs.true9.for.inc_crit_edge, label %if.end2.i

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end2.i:                                        ; preds = %land.lhs.true9
  %4 = zext i32 %service to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %service, label %if.end2.i.virtcrypto_algo_is_supported.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb12.i
  ]

if.end2.i.virtcrypto_algo_is_supported.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtcrypto_algo_is_supported.exit

sw.bb.i:                                          ; preds = %if.end2.i
  br i1 %cmp.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_l.i = getelementptr i8, ptr %.pn127, i32 -144
  %5 = ptrtoint ptr %cipher_algo_l.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher_algo_l.i, align 4
  br label %virtcrypto_algo_is_supported.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_h.i = getelementptr i8, ptr %.pn127, i32 -140
  %7 = ptrtoint ptr %cipher_algo_h.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher_algo_h.i, align 8
  br label %virtcrypto_algo_is_supported.exit

sw.bb6.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %hash_algo.i = getelementptr i8, ptr %.pn127, i32 -136
  %9 = ptrtoint ptr %hash_algo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash_algo.i, align 4
  br label %virtcrypto_algo_is_supported.exit

sw.bb7.i:                                         ; preds = %if.end2.i
  br i1 %cmp.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_l.i = getelementptr i8, ptr %.pn127, i32 -132
  %11 = ptrtoint ptr %mac_algo_l.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_algo_l.i, align 8
  br label %virtcrypto_algo_is_supported.exit

if.else10.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_h.i = getelementptr i8, ptr %.pn127, i32 -128
  %13 = ptrtoint ptr %mac_algo_h.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_algo_h.i, align 4
  br label %virtcrypto_algo_is_supported.exit

sw.bb12.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %aead_algo.i = getelementptr i8, ptr %.pn127, i32 -124
  %15 = ptrtoint ptr %aead_algo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aead_algo.i, align 8
  br label %virtcrypto_algo_is_supported.exit

virtcrypto_algo_is_supported.exit:                ; preds = %sw.bb12.i, %if.else10.i, %if.then9.i, %sw.bb6.i, %if.else.i, %if.then4.i, %if.end2.i.virtcrypto_algo_is_supported.exit_crit_edge
  %algo_mask.0.i = phi i32 [ 0, %if.end2.i.virtcrypto_algo_is_supported.exit_crit_edge ], [ %16, %sw.bb12.i ], [ %12, %if.then9.i ], [ %14, %if.else10.i ], [ %10, %sw.bb6.i ], [ %6, %if.then4.i ], [ %8, %if.else.i ]
  %and14.i = and i32 %algo_mask.0.i, %shl13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i.not = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i.not, label %virtcrypto_algo_is_supported.exit.for.inc_crit_edge, label %if.then

virtcrypto_algo_is_supported.exit.for.inc_crit_edge: ; preds = %virtcrypto_algo_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %virtcrypto_algo_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ref_count = getelementptr i8, ptr %.pn127, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #7
  %17 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %best.0125, i32 %18)
  %cmp12 = icmp ugt i32 %best.0125, %18
  %19 = tail call i32 @llvm.umin.i32(i32 %best.0125, i32 %18)
  %spec.select76 = select i1 %cmp12, ptr %tmp_dev.0128, ptr %vcrypto_dev.0126
  br label %for.inc

for.inc:                                          ; preds = %if.then, %virtcrypto_algo_is_supported.exit.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %best.1 = phi i32 [ %best.0125, %virtcrypto_algo_is_supported.exit.for.inc_crit_edge ], [ %best.0125, %land.lhs.true.for.inc_crit_edge ], [ %19, %if.then ], [ %best.0125, %land.lhs.true9.for.inc_crit_edge ]
  %vcrypto_dev.1 = phi ptr [ %vcrypto_dev.0126, %virtcrypto_algo_is_supported.exit.for.inc_crit_edge ], [ %vcrypto_dev.0126, %land.lhs.true.for.inc_crit_edge ], [ %spec.select76, %if.then ], [ %vcrypto_dev.0126, %land.lhs.true9.for.inc_crit_edge ]
  %20 = ptrtoint ptr %.pn127 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn127, align 4
  %cmp.not = icmp eq ptr %.pn, @virtio_crypto_table
  br i1 %cmp.not, label %for.end, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %for.inc
  %tobool20.not = icmp eq ptr %vcrypto_dev.1, null
  br i1 %tobool20.not, label %for.end.do.end_crit_edge, label %if.end48.thread117

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end48.thread117:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  br label %if.end51

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %node) #10
  %.pn75129 = load ptr, ptr @virtio_crypto_table, align 4
  %cmp32.not130 = icmp eq ptr %.pn75129, @virtio_crypto_table
  br i1 %cmp32.not130, label %do.end.if.end48.thread_crit_edge, label %for.body34.lr.ph

do.end.if.end48.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.thread

for.body34.lr.ph:                                 ; preds = %do.end
  %shl.i80 = shl nuw i32 1, %service
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %algo)
  %cmp.i81 = icmp ugt i32 %algo, 31
  %sub.i82 = add i32 %algo, -32
  %spec.select.i83 = select i1 %cmp.i81, i32 %sub.i82, i32 %algo
  %shl13.i103 = shl nuw i32 1, %spec.select.i83
  br label %for.body34

if.end48.thread:                                  ; preds = %for.inc41.if.end48.thread_crit_edge, %do.end.if.end48.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  br label %cleanup

for.body34:                                       ; preds = %for.inc41.for.body34_crit_edge, %for.body34.lr.ph
  %.pn75131 = phi ptr [ %.pn75129, %for.body34.lr.ph ], [ %.pn75, %for.inc41.for.body34_crit_edge ]
  %status.i78 = getelementptr i8, ptr %.pn75131, i32 -8
  %21 = ptrtoint ptr %status.i78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i78, align 4
  %and.i79 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool36.not = icmp eq i32 %and.i79, 0
  br i1 %tobool36.not, label %for.body34.for.inc41_crit_edge, label %land.lhs.true37

for.body34.for.inc41_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

land.lhs.true37:                                  ; preds = %for.body34
  %crypto_services.i84 = getelementptr i8, ptr %.pn75131, i32 -148
  %23 = ptrtoint ptr %crypto_services.i84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crypto_services.i84, align 8
  %and.i85 = and i32 %24, %shl.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true37.for.inc41_crit_edge, label %if.end2.i87

land.lhs.true37.for.inc41_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

if.end2.i87:                                      ; preds = %land.lhs.true37
  %25 = zext i32 %service to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %service, label %if.end2.i87.virtcrypto_algo_is_supported.exit108_crit_edge [
    i32 0, label %sw.bb.i88
    i32 1, label %sw.bb6.i94
    i32 2, label %sw.bb7.i95
    i32 3, label %sw.bb12.i101
  ]

if.end2.i87.virtcrypto_algo_is_supported.exit108_crit_edge: ; preds = %if.end2.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtcrypto_algo_is_supported.exit108

sw.bb.i88:                                        ; preds = %if.end2.i87
  br i1 %cmp.i81, label %if.else.i92, label %if.then4.i90

if.then4.i90:                                     ; preds = %sw.bb.i88
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_l.i89 = getelementptr i8, ptr %.pn75131, i32 -144
  %26 = ptrtoint ptr %cipher_algo_l.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher_algo_l.i89, align 4
  br label %virtcrypto_algo_is_supported.exit108

if.else.i92:                                      ; preds = %sw.bb.i88
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_h.i91 = getelementptr i8, ptr %.pn75131, i32 -140
  %28 = ptrtoint ptr %cipher_algo_h.i91 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cipher_algo_h.i91, align 8
  br label %virtcrypto_algo_is_supported.exit108

sw.bb6.i94:                                       ; preds = %if.end2.i87
  call void @__sanitizer_cov_trace_pc() #9
  %hash_algo.i93 = getelementptr i8, ptr %.pn75131, i32 -136
  %30 = ptrtoint ptr %hash_algo.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hash_algo.i93, align 4
  br label %virtcrypto_algo_is_supported.exit108

sw.bb7.i95:                                       ; preds = %if.end2.i87
  br i1 %cmp.i81, label %if.else10.i99, label %if.then9.i97

if.then9.i97:                                     ; preds = %sw.bb7.i95
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_l.i96 = getelementptr i8, ptr %.pn75131, i32 -132
  %32 = ptrtoint ptr %mac_algo_l.i96 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mac_algo_l.i96, align 8
  br label %virtcrypto_algo_is_supported.exit108

if.else10.i99:                                    ; preds = %sw.bb7.i95
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_h.i98 = getelementptr i8, ptr %.pn75131, i32 -128
  %34 = ptrtoint ptr %mac_algo_h.i98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_algo_h.i98, align 4
  br label %virtcrypto_algo_is_supported.exit108

sw.bb12.i101:                                     ; preds = %if.end2.i87
  call void @__sanitizer_cov_trace_pc() #9
  %aead_algo.i100 = getelementptr i8, ptr %.pn75131, i32 -124
  %36 = ptrtoint ptr %aead_algo.i100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aead_algo.i100, align 8
  br label %virtcrypto_algo_is_supported.exit108

virtcrypto_algo_is_supported.exit108:             ; preds = %sw.bb12.i101, %if.else10.i99, %if.then9.i97, %sw.bb6.i94, %if.else.i92, %if.then4.i90, %if.end2.i87.virtcrypto_algo_is_supported.exit108_crit_edge
  %algo_mask.0.i102 = phi i32 [ 0, %if.end2.i87.virtcrypto_algo_is_supported.exit108_crit_edge ], [ %37, %sw.bb12.i101 ], [ %33, %if.then9.i97 ], [ %35, %if.else10.i99 ], [ %31, %sw.bb6.i94 ], [ %27, %if.then4.i90 ], [ %29, %if.else.i92 ]
  %and14.i104 = and i32 %algo_mask.0.i102, %shl13.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i104)
  %tobool15.not.i105.not = icmp eq i32 %and14.i104, 0
  br i1 %tobool15.not.i105.not, label %virtcrypto_algo_is_supported.exit108.for.inc41_crit_edge, label %if.end48

virtcrypto_algo_is_supported.exit108.for.inc41_crit_edge: ; preds = %virtcrypto_algo_is_supported.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

for.inc41:                                        ; preds = %virtcrypto_algo_is_supported.exit108.for.inc41_crit_edge, %land.lhs.true37.for.inc41_crit_edge, %for.body34.for.inc41_crit_edge
  %38 = ptrtoint ptr %.pn75131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn75 = load ptr, ptr %.pn75131, align 4
  %cmp32.not = icmp eq ptr %.pn75, @virtio_crypto_table
  br i1 %cmp32.not, label %for.inc41.if.end48.thread_crit_edge, label %for.inc41.for.body34_crit_edge

for.inc41.for.body34_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.inc41.if.end48.thread_crit_edge:              ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.thread

if.end48:                                         ; preds = %virtcrypto_algo_is_supported.exit108
  %tmp_dev.1.le = getelementptr i8, ptr %.pn75131, i32 -212
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #7
  %tobool49.not = icmp eq ptr %tmp_dev.1.le, null
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end48.if.end51_crit_edge, %if.end48.thread117
  %vcrypto_dev.2120 = phi ptr [ %vcrypto_dev.1, %if.end48.thread117 ], [ %tmp_dev.1.le, %if.end48.if.end51_crit_edge ]
  %ref_count.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev.2120, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #7
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #7, !srcloc !34
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.i109 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.i109, label %if.then.i, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %owner.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto_dev.2120, i32 0, i32 22
  %40 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %owner.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end51.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end48.thread
  %retval.0 = phi ptr [ null, %if.end48.cleanup_crit_edge ], [ null, %if.end48.thread ], [ %vcrypto_dev.2120, %if.then.i ], [ %vcrypto_dev.2120, %if.end51.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @virtcrypto_algo_is_supported(ptr nocapture noundef readonly %vcrypto, i32 noundef %service, i32 noundef %algo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %service
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %algo)
  %cmp = icmp ugt i32 %algo, 31
  %sub = add i32 %algo, -32
  %spec.select = select i1 %cmp, i32 %sub, i32 %algo
  %crypto_services = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 6
  %0 = ptrtoint ptr %crypto_services to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypto_services, align 8
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %2 = zext i32 %service to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %service, label %if.end2.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 3, label %sw.bb12
  ]

if.end2.sw.epilog_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end2
  br i1 %cmp, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_l = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 7
  %3 = ptrtoint ptr %cipher_algo_l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher_algo_l, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_algo_h = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 8
  %5 = ptrtoint ptr %cipher_algo_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher_algo_h, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %hash_algo = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 9
  %7 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_algo, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end2
  br i1 %cmp, label %if.else10, label %if.then9

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_l = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 10
  %9 = ptrtoint ptr %mac_algo_l to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_algo_l, align 8
  br label %sw.epilog

if.else10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %mac_algo_h = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 11
  %11 = ptrtoint ptr %mac_algo_h to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_algo_h, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %aead_algo = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 12
  %13 = ptrtoint ptr %aead_algo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aead_algo, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %if.else10, %if.then9, %sw.bb6, %if.else, %if.then4, %if.end2.sw.epilog_crit_edge
  %algo_mask.0 = phi i32 [ 0, %if.end2.sw.epilog_crit_edge ], [ %14, %sw.bb12 ], [ %10, %if.then9 ], [ %12, %if.else10 ], [ %8, %sw.bb6 ], [ %4, %if.then4 ], [ %6, %if.else ]
  %shl13 = shl nuw i32 1, %spec.select
  %and14 = and i32 %algo_mask.0, %shl13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool15.not, %sw.epilog ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtcrypto_dev_start(ptr noundef %vcrypto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @virtio_crypto_algs_register(ptr noundef %vcrypto) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_crypto_algs_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtcrypto_dev_stop(ptr noundef %vcrypto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_crypto_algs_unregister(ptr noundef %vcrypto) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_crypto_algs_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @virtcrypto_devmgr_add_dev._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @virtcrypto_devmgr_add_dev._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 207, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @virtcrypto_get_dev_node._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @virtcrypto_get_dev_node._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 241, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @virtcrypto_dev_start._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @virtcrypto_dev_start._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @num_devices, !17, !"num_devices", i1 false, i1 false}
!17 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 15, i32 17}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 18, i32 8}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @table_lock, !19, !"table_lock", i1 false, i1 false}
!22 = !{ptr @virtio_crypto_table, !23, !"virtio_crypto_table", i1 false, i1 false}
!23 = !{!"../drivers/crypto/virtio/virtio_crypto_mgr.c", i32 14, i32 8}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148444182}
!34 = !{i64 2148359491, i64 2148359523, i64 2148359552, i64 2148359586, i64 2148359617, i64 2148359640}
!35 = !{i64 2148444411}
!36 = !{i64 2148447223}
!37 = !{i64 2148361956, i64 2148361988, i64 2148362017, i64 2148362051, i64 2148362082, i64 2148362105}
!38 = !{i64 2148447452}
