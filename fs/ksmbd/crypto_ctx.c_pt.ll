; ModuleID = '/llk/IR_all_yes/fs/ksmbd/crypto_ctx.c_pt.bc'
source_filename = "../fs/ksmbd/crypto_ctx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_ctx_list = type { %struct.spinlock, i32, %struct.list_head, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_crypto_ctx = type { %struct.list_head, [5 x ptr], [18 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@ctx_list = internal global { %struct.crypto_ctx_list, [52 x i8] } zeroinitializer, align 32
@ksmbd_crypto_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx_list.ctx_lock\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_crypto_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx_list.ctx_wait\00", [45 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ksmbd/crypto_ctx.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hmac(md5)\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@alloc_aead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ksmbd: Does not support encrypt ahead(id : %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alloc_aead\00", [21 x i8] zeroinitializer }, align 32
@alloc_aead._entry_ptr = internal global ptr @alloc_aead._entry, section ".printk_index", align 4
@alloc_aead._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ksmbd: Failed to alloc encrypt aead : %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@alloc_aead._entry_ptr.15 = internal global ptr @alloc_aead._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"ctx_list\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 23, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 256, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 258, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 128, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 70, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 73, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 76, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 79, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 82, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 45, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 48, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 51, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [25 x i8] c"../fs/ksmbd/crypto_ctx.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 56, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @alloc_aead._entry, ptr @alloc_aead._entry.13, ptr @alloc_aead._entry_ptr, ptr @alloc_aead._entry_ptr.15, ptr @ctx_list, ptr @ksmbd_crypto_create.__key, ptr @.str, ptr @ksmbd_crypto_create.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_list to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypto_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypto_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_aead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_aead._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_release_crypto_ctx(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @ctx_list) #6
  %0 = load i32, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp ugt i32 %0, %1
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %ctx, ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr noundef %2) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then1.list_add.exit_crit_edge

if.then1.list_add.exit_crit_edge:                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %ctx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr %prev3.i.i, align 4
  store volatile ptr %ctx, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then1.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i32, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  tail call fastcc void @ctx_free(ptr noundef nonnull %ctx)
  br label %return

return:                                           ; preds = %if.end2, %list_add.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ctx_free(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.free_shash.exit_crit_edge, label %if.then.i

entry.free_shash.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_shash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i.i) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %free_shash.exit

free_shash.exit:                                  ; preds = %if.then.i, %entry.free_shash.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %5, null
  br i1 %tobool.not.i.1, label %free_shash.exit.free_shash.exit.1_crit_edge, label %if.then.i.1

free_shash.exit.free_shash.exit.1_crit_edge:      ; preds = %free_shash.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_shash.exit.1

if.then.i.1:                                      ; preds = %free_shash.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %base.i.i.i.1 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i.i.1) #6
  tail call void @kfree(ptr noundef nonnull %5) #6
  br label %free_shash.exit.1

free_shash.exit.1:                                ; preds = %if.then.i.1, %free_shash.exit.free_shash.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %9, null
  br i1 %tobool.not.i.2, label %free_shash.exit.1.free_shash.exit.2_crit_edge, label %if.then.i.2

free_shash.exit.1.free_shash.exit.2_crit_edge:    ; preds = %free_shash.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_shash.exit.2

if.then.i.2:                                      ; preds = %free_shash.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %base.i.i.i.2 = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i.i.2) #6
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %free_shash.exit.2

free_shash.exit.2:                                ; preds = %if.then.i.2, %free_shash.exit.1.free_shash.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %13, null
  br i1 %tobool.not.i.3, label %free_shash.exit.2.free_shash.exit.3_crit_edge, label %if.then.i.3

free_shash.exit.2.free_shash.exit.3_crit_edge:    ; preds = %free_shash.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_shash.exit.3

if.then.i.3:                                      ; preds = %free_shash.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %base.i.i.i.3 = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %15, ptr noundef %base.i.i.i.3) #6
  tail call void @kfree(ptr noundef nonnull %13) #6
  br label %free_shash.exit.3

free_shash.exit.3:                                ; preds = %if.then.i.3, %free_shash.exit.2.free_shash.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %17, null
  br i1 %tobool.not.i.4, label %free_shash.exit.3.for.body3.preheader_crit_edge, label %if.then.i.4

free_shash.exit.3.for.body3.preheader_crit_edge:  ; preds = %free_shash.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.preheader

if.then.i.4:                                      ; preds = %free_shash.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %base.i.i.i.4 = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %19, ptr noundef %base.i.i.i.4) #6
  tail call void @kfree(ptr noundef nonnull %17) #6
  br label %for.body3.preheader

for.body3.preheader:                              ; preds = %if.then.i.4, %free_shash.exit.3.for.body3.preheader_crit_edge
  br label %for.body3

for.body3:                                        ; preds = %free_aead.exit.for.body3_crit_edge, %for.body3.preheader
  %i.119 = phi i32 [ %inc6, %free_aead.exit.for.body3_crit_edge ], [ 0, %for.body3.preheader ]
  %arrayidx4 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx, i32 0, i32 2, i32 %i.119
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i15 = icmp eq ptr %21, null
  br i1 %tobool.not.i15, label %for.body3.free_aead.exit_crit_edge, label %if.then.i17

for.body3.free_aead.exit_crit_edge:               ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_aead.exit

if.then.i17:                                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i16 = getelementptr inbounds %struct.crypto_aead, ptr %21, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %21, ptr noundef %base.i.i.i16) #6
  br label %free_aead.exit

free_aead.exit:                                   ; preds = %if.then.i17, %for.body3.free_aead.exit_crit_edge
  %inc6 = add nuw nsw i32 %i.119, 1
  %exitcond.not = icmp eq i32 %inc6, 18
  br i1 %exitcond.not, label %for.end7, label %free_aead.exit.for.body3_crit_edge

free_aead.exit.for.body3_crit_edge:               ; preds = %free_aead.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.end7:                                         ; preds = %free_aead.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_hmacmd5() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_shash_ctx_find.exit_crit_edge

entry.____crypto_shash_ctx_find.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_shash_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call8.i.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end2.i.if.end10.i_crit_edge, label %if.end8.i.i.i.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end8.i.i.i.i:                                  ; preds = %if.end2.i
  %2 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call8.i.i, align 128
  %add.i.i = add i32 %3, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %alloc_shash_desc.exit.i

if.then12.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call8.i.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8.i.i, ptr noundef %base.i.i.i.i) #6
  br label %if.end10.i

alloc_shash_desc.exit.i:                          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call9.i.i.i.i, align 128
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %arrayidx.i, align 4
  br label %____crypto_shash_ctx_find.exit

if.end10.i:                                       ; preds = %if.then12.i.i, %if.end2.i.if.end10.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_shash_ctx_find.exit

____crypto_shash_ctx_find.exit:                   ; preds = %if.end10.i, %alloc_shash_desc.exit.i, %entry.____crypto_shash_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_shash_ctx_find.exit_crit_edge ], [ %call.i, %alloc_shash_desc.exit.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_hmacsha256() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_shash_ctx_find.exit_crit_edge

entry.____crypto_shash_ctx_find.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_shash_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call8.i.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end2.i.if.end10.i_crit_edge, label %if.end8.i.i.i.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end8.i.i.i.i:                                  ; preds = %if.end2.i
  %2 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call8.i.i, align 128
  %add.i.i = add i32 %3, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %alloc_shash_desc.exit.i

if.then12.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call8.i.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8.i.i, ptr noundef %base.i.i.i.i) #6
  br label %if.end10.i

alloc_shash_desc.exit.i:                          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call9.i.i.i.i, align 128
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %arrayidx.i, align 4
  br label %____crypto_shash_ctx_find.exit

if.end10.i:                                       ; preds = %if.then12.i.i, %if.end2.i.if.end10.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_shash_ctx_find.exit

____crypto_shash_ctx_find.exit:                   ; preds = %if.end10.i, %alloc_shash_desc.exit.i, %entry.____crypto_shash_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_shash_ctx_find.exit_crit_edge ], [ %call.i, %alloc_shash_desc.exit.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_cmacaes() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_shash_ctx_find.exit_crit_edge

entry.____crypto_shash_ctx_find.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_shash_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call8.i.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end2.i.if.end10.i_crit_edge, label %if.end8.i.i.i.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end8.i.i.i.i:                                  ; preds = %if.end2.i
  %2 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call8.i.i, align 128
  %add.i.i = add i32 %3, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %alloc_shash_desc.exit.i

if.then12.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call8.i.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8.i.i, ptr noundef %base.i.i.i.i) #6
  br label %if.end10.i

alloc_shash_desc.exit.i:                          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call9.i.i.i.i, align 128
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %arrayidx.i, align 4
  br label %____crypto_shash_ctx_find.exit

if.end10.i:                                       ; preds = %if.then12.i.i, %if.end2.i.if.end10.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_shash_ctx_find.exit

____crypto_shash_ctx_find.exit:                   ; preds = %if.end10.i, %alloc_shash_desc.exit.i, %entry.____crypto_shash_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_shash_ctx_find.exit_crit_edge ], [ %call.i, %alloc_shash_desc.exit.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_sha256() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_shash_ctx_find.exit_crit_edge

entry.____crypto_shash_ctx_find.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_shash_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call8.i.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end2.i.if.end10.i_crit_edge, label %if.end8.i.i.i.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end8.i.i.i.i:                                  ; preds = %if.end2.i
  %2 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call8.i.i, align 128
  %add.i.i = add i32 %3, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %alloc_shash_desc.exit.i

if.then12.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call8.i.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8.i.i, ptr noundef %base.i.i.i.i) #6
  br label %if.end10.i

alloc_shash_desc.exit.i:                          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call9.i.i.i.i, align 128
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %arrayidx.i, align 4
  br label %____crypto_shash_ctx_find.exit

if.end10.i:                                       ; preds = %if.then12.i.i, %if.end2.i.if.end10.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_shash_ctx_find.exit

____crypto_shash_ctx_find.exit:                   ; preds = %if.end10.i, %alloc_shash_desc.exit.i, %entry.____crypto_shash_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_shash_ctx_find.exit_crit_edge ], [ %call.i, %alloc_shash_desc.exit.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_sha512() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_shash_ctx_find.exit_crit_edge

entry.____crypto_shash_ctx_find.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_shash_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call8.i.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end2.i.if.end10.i_crit_edge, label %if.end8.i.i.i.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end8.i.i.i.i:                                  ; preds = %if.end2.i
  %2 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call8.i.i, align 128
  %add.i.i = add i32 %3, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %alloc_shash_desc.exit.i

if.then12.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call8.i.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8.i.i, ptr noundef %base.i.i.i.i) #6
  br label %if.end10.i

alloc_shash_desc.exit.i:                          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call9.i.i.i.i, align 128
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %arrayidx.i, align 4
  br label %____crypto_shash_ctx_find.exit

if.end10.i:                                       ; preds = %if.then12.i.i, %if.end2.i.if.end10.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_shash_ctx_find.exit

____crypto_shash_ctx_find.exit:                   ; preds = %if.end10.i, %alloc_shash_desc.exit.i, %entry.____crypto_shash_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_shash_ctx_find.exit_crit_edge ], [ %call.i, %alloc_shash_desc.exit.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_gcm() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 2, i32 16
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_aead_ctx_find.exit_crit_edge

entry.____crypto_aead_ctx_find.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_aead_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call2.i.i = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end7.i.i, label %alloc_aead.exit.i

do.end7.i.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2.i.i to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %2) #10
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end10.i

alloc_aead.exit.i:                                ; preds = %if.end2.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.i.i, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool8.not.i, label %alloc_aead.exit.i.if.end10.i_crit_edge, label %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge

alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge: ; preds = %alloc_aead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_aead_ctx_find.exit

alloc_aead.exit.i.if.end10.i_crit_edge:           ; preds = %alloc_aead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %alloc_aead.exit.i.if.end10.i_crit_edge, %do.end7.i.i
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_aead_ctx_find.exit

____crypto_aead_ctx_find.exit:                    ; preds = %if.end10.i, %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge, %entry.____crypto_aead_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_aead_ctx_find.exit_crit_edge ], [ %call.i, %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_crypto_ctx_find_ccm() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ksmbd_find_crypto_ctx() #6
  %arrayidx.i = getelementptr %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 2, i32 17
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end2.i, label %entry.____crypto_aead_ctx_find.exit_crit_edge

entry.____crypto_aead_ctx_find.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_aead_ctx_find.exit

if.end2.i:                                        ; preds = %entry
  %call2.i.i = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end7.i.i, label %alloc_aead.exit.i

do.end7.i.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2.i.i to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %2) #10
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end10.i

alloc_aead.exit.i:                                ; preds = %if.end2.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.i.i, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool8.not.i, label %alloc_aead.exit.i.if.end10.i_crit_edge, label %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge

alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge: ; preds = %alloc_aead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____crypto_aead_ctx_find.exit

alloc_aead.exit.i.if.end10.i_crit_edge:           ; preds = %alloc_aead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %alloc_aead.exit.i.if.end10.i_crit_edge, %do.end7.i.i
  tail call void @ksmbd_release_crypto_ctx(ptr noundef %call.i) #6
  br label %____crypto_aead_ctx_find.exit

____crypto_aead_ctx_find.exit:                    ; preds = %if.end10.i, %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge, %entry.____crypto_aead_ctx_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end10.i ], [ %call.i, %entry.____crypto_aead_ctx_find.exit_crit_edge ], [ %call.i, %alloc_aead.exit.i.____crypto_aead_ctx_find.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_crypto_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i.not2 = icmp eq ptr %0, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %10, %list_del.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @ctx_free(ptr noundef %1)
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i.not = icmp eq ptr %10, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_crypto_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @ctx_list, ptr noundef nonnull @.str, ptr noundef nonnull @ksmbd_crypto_create.__key, i16 noundef signext 3) #6
  store volatile ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2, i32 1), align 4
  tail call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull @.str.2, ptr noundef nonnull @ksmbd_crypto_create.__key.1) #6
  store i32 1, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ksmbd_find_crypto_ctx() unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry34 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_list) #6
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i.not76 = icmp eq ptr %0, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i.not76, label %entry.if.end_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %while.cond.backedge.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi ptr [ %0, %entry.if.then_crit_edge ], [ %15, %while.cond.backedge.if.then_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  br label %cleanup52

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = load i32, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp = icmp ugt i32 %9, %10
  br i1 %cmp, label %if.then2, label %if.end19

if.then2:                                         ; preds = %if.end
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 129) #6
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i58.not = icmp eq ptr %11, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i58.not, label %if.end10, label %if.then2.while.cond.backedge_crit_edge

if.then2.while.cond.backedge_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end10:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call1174 = call i32 @prepare_to_wait_event(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %13 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i60.not75 = icmp eq ptr %13, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i60.not75, label %if.end10.cleanup_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  call void @schedule() #6
  %call11 = call i32 @prepare_to_wait_event(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i60.not = icmp eq ptr %14, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i60.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end10.for.end_crit_edge
  call void @finish_wait(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.end46, %if.then22.while.cond.backedge_crit_edge, %for.end, %if.then2.while.cond.backedge_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_list) #6
  %15 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i.not = icmp eq ptr %15, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i.not, label %while.cond.backedge.if.end_crit_edge, label %while.cond.backedge.if.then_crit_edge

while.cond.backedge.if.then_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end19:                                         ; preds = %if.end
  %16 = load i32, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 100) #11
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end19.cleanup52_crit_edge

if.end19.cleanup52_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.then22:                                        ; preds = %if.end19
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_list) #6
  %18 = load i32, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 1), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_list) #6
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 142) #6
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i63.not = icmp eq ptr %19, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i63.not, label %if.end33, label %if.then22.while.cond.backedge_crit_edge

if.then22.while.cond.backedge_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end33:                                         ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry34) #6
  %20 = call ptr @memset(ptr %__wq_entry34, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry34, i32 noundef 0) #6
  %call3872 = call i32 @prepare_to_wait_event(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry34, i32 noundef 2) #6
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i65.not73 = icmp eq ptr %21, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i65.not73, label %if.end33.cleanup43_crit_edge, label %if.end33.for.end46_crit_edge

if.end33.for.end46_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

if.end33.cleanup43_crit_edge:                     ; preds = %if.end33
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup43.cleanup43_crit_edge, %if.end33.cleanup43_crit_edge
  call void @schedule() #6
  %call38 = call i32 @prepare_to_wait_event(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry34, i32 noundef 2) #6
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2), align 4
  %cmp.i65.not = icmp eq ptr %22, getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 2)
  br i1 %cmp.i65.not, label %cleanup43.cleanup43_crit_edge, label %cleanup43.for.end46_crit_edge

cleanup43.for.end46_crit_edge:                    ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

cleanup43.cleanup43_crit_edge:                    ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

for.end46:                                        ; preds = %cleanup43.for.end46_crit_edge, %if.end33.for.end46_crit_edge
  call void @finish_wait(ptr noundef getelementptr inbounds (%struct.crypto_ctx_list, ptr @ctx_list, i32 0, i32 3), ptr noundef nonnull %__wq_entry34) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry34) #6
  br label %while.cond.backedge

cleanup52:                                        ; preds = %if.end19.cleanup52_crit_edge, %list_del.exit
  %retval.0 = phi ptr [ %.lcssa, %list_del.exit ], [ %call7.i.i, %if.end19.cleanup52_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @ksmbd_crypto_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/crypto_ctx.c", i32 256, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ksmbd_crypto_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/ksmbd/crypto_ctx.c", i32 258, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ctx_list, !7, !"ctx_list", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/crypto_ctx.c", i32 23, i32 31}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/crypto_ctx.c", i32 128, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/crypto_ctx.c", i32 70, i32 28}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/crypto_ctx.c", i32 73, i32 28}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/crypto_ctx.c", i32 76, i32 28}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ksmbd/crypto_ctx.c", i32 79, i32 28}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/crypto_ctx.c", i32 82, i32 28}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/crypto_ctx.c", i32 45, i32 27}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/crypto_ctx.c", i32 48, i32 27}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/crypto_ctx.c", i32 51, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @alloc_aead._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @alloc_aead._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ksmbd/crypto_ctx.c", i32 56, i32 3}
!31 = !{ptr @alloc_aead._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @alloc_aead._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
