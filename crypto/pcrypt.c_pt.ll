; ModuleID = '/llk/IR_all_yes/crypto/pcrypt.c_pt.bc'
source_filename = "../crypto/pcrypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.crypto_attr_type = type { i32, i32 }
%struct.aead_instance = type { ptr, [124 x i8], %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.46, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.43, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.43 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.46 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.pcrypt_request = type { %struct.padata_priv, ptr, [92 x i8], [0 x ptr] }
%struct.padata_priv = type { %struct.list_head, ptr, i32, i32, i32, ptr, ptr }
%struct.padata_instance = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, %struct.list_head, %struct.padata_cpumask, %struct.kobject, %struct.mutex, i8 }
%struct.padata_cpumask = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@pcrypt_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @pcrypt_create, [128 x i8] c"pcrypt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@pencrypt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pdecrypt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pcrypt_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pcrypt__183_376_pcrypt_init4 = internal global ptr @pcrypt_init, section ".initcall4.init", align 4
@__exitcall_pcrypt_exit = internal global ptr @pcrypt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [26 x i8] c"pcrypt.file=crypto/pcrypt\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [19 x i8] c"pcrypt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [62 x i8] c"pcrypt.author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [43 x i8] c"pcrypt.description=Parallel crypto wrapper\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [20 x i8] c"pcrypt.alias=pcrypt\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [27 x i8] c"pcrypt.alias=crypto-pcrypt\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcrypt(%s)\00", [21 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcrypt\00", [25 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pencrypt\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pdecrypt\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"pcrypt_tmpl\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 334, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"pencrypt\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 20, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"pdecrypt\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 21, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"pcrypt_kset\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 22, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 220, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 344, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 348, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 352, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [19 x i8] c"../crypto/pcrypt.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 312, i32 40 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_pcrypt_exit, ptr @__initcall__kmod_pcrypt__183_376_pcrypt_init4, ptr @pcrypt_exit, ptr @pcrypt_tmpl, ptr @pencrypt, ptr @pdecrypt, ptr @pcrypt_kset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcrypt_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pencrypt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdecrypt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcrypt_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_template(ptr noundef nonnull @pcrypt_tmpl) #7
  %0 = load ptr, ptr @pencrypt, align 4
  tail call void @padata_free(ptr noundef %0) #7
  %1 = load ptr, ptr @pdecrypt, align 4
  tail call void @padata_free(ptr noundef %1) #7
  %2 = load ptr, ptr @pcrypt_kset, align 4
  tail call void @kset_unregister(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @padata_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef %0) #7
  store ptr %call, ptr @pcrypt_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @pcrypt_init_padata(ptr noundef nonnull @pencrypt, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_unreg_kset_crit_edge

if.end.err_unreg_kset_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unreg_kset

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @pcrypt_init_padata(ptr noundef nonnull @pdecrypt, ptr noundef nonnull @.str.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_deinit_pencrypt

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @crypto_register_template(ptr noundef nonnull @pcrypt_tmpl) #7
  br label %cleanup

err_deinit_pencrypt:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @pencrypt, align 4
  tail call void @padata_free(ptr noundef %1) #7
  br label %err_unreg_kset

err_unreg_kset:                                   ; preds = %err_deinit_pencrypt, %if.end.err_unreg_kset_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_unreg_kset_crit_edge ], [ %call5, %err_deinit_pencrypt ]
  %2 = load ptr, ptr @pcrypt_kset, align 4
  tail call void @kset_unregister(ptr noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_kset, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %err.0, %err_unreg_kset ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_get_attr_type(ptr noundef %tb) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %mask = getelementptr inbounds %struct.crypto_attr_type, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %and = and i32 %2, 15
  %and3 = and i32 %and, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3)
  %cond = icmp eq i32 %and3, 3
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %xor.i.i.i = and i32 %2, 65920
  %and.i.i.i = xor i32 %xor.i.i.i, 65920
  %and1.i.i.i = and i32 %and.i.i.i, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 936) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %__ctx.i.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 1
  %6 = load ptr, ptr @pencrypt, align 4
  %call3.i = tail call ptr @padata_alloc_shell(ptr noundef %6) #7
  %psenc.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 1, i32 1, i32 24
  %7 = ptrtoint ptr %psenc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.i, ptr %psenc.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_free_inst.i_crit_edge, label %if.end7.i

if.end.i.err_free_inst.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst.i

if.end7.i:                                        ; preds = %if.end.i
  %8 = load ptr, ptr @pdecrypt, align 4
  %call8.i = tail call ptr @padata_alloc_shell(ptr noundef %8) #7
  %psdec.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 1, i32 1, i32 28
  %9 = ptrtoint ptr %psdec.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %psdec.i, align 8
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.end7.i.err_free_inst.i_crit_edge, label %if.end12.i

if.end7.i.err_free_inst.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst.i

if.end12.i:                                       ; preds = %if.end7.i
  %base.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call14.i = tail call ptr @crypto_attr_alg_name(ptr noundef %11) #7
  %call15.i = tail call i32 @crypto_grab_aead(ptr noundef %__ctx.i.i.i, ptr noundef %base.i.i, ptr noundef %call14.i, i32 noundef 0, i32 noundef %and1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i.err_free_inst.i_crit_edge

if.end12.i.err_free_inst.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst.i

if.end18.i:                                       ; preds = %if.end12.i
  %alg.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alg.i.i, align 8
  %cra_driver_name.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name2.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 9
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_driver_name2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 127
  br i1 %cmp.i.i, label %if.end18.i.err_free_inst.i_crit_edge, label %if.end25.i

if.end18.i.err_free_inst.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst.i

if.end25.i:                                       ; preds = %if.end18.i
  %cra_name.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name6.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 8
  %14 = call ptr @memcpy(ptr %cra_name.i.i, ptr %cra_name6.i.i, i32 128)
  %cra_priority.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cra_priority.i.i, align 32
  %add.i.i = add i32 %16, 100
  %cra_priority9.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %cra_priority9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i.i, ptr %cra_priority9.i.i, align 32
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cra_blocksize.i.i, align 4
  %cra_blocksize11.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %cra_blocksize11.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cra_blocksize11.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 5
  %21 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_alignmask.i.i, align 4
  %cra_alignmask13.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %cra_alignmask13.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cra_alignmask13.i.i, align 4
  %24 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2
  %cra_flags.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_flags.i, align 16
  %or.i = or i32 %26, 128
  store i32 %or.i, ptr %cra_flags.i, align 16
  %ivsize.i.i = getelementptr i8, ptr %13, i32 -104
  %27 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ivsize.i.i, align 8
  %ivsize.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %29 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ivsize.i, align 8
  %maxauthsize.i.i = getelementptr i8, ptr %13, i32 -100
  %30 = ptrtoint ptr %maxauthsize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxauthsize.i.i, align 4
  %maxauthsize.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %32 = ptrtoint ptr %maxauthsize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %maxauthsize.i, align 4
  %cra_ctxsize.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %cra_ctxsize.i, align 8
  %init.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %34 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pcrypt_aead_init_tfm, ptr %init.i, align 16
  %exit.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %35 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pcrypt_aead_exit_tfm, ptr %exit.i, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pcrypt_aead_setkey, ptr %24, align 128
  %setauthsize.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %setauthsize.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pcrypt_aead_setauthsize, ptr %setauthsize.i, align 4
  %encrypt.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %38 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pcrypt_aead_encrypt, ptr %encrypt.i, align 8
  %decrypt.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %39 = ptrtoint ptr %decrypt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pcrypt_aead_decrypt, ptr %decrypt.i, align 4
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pcrypt_free, ptr %call7.i.i.i, align 128
  %call30.i = tail call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end25.i.cleanup_crit_edge, label %if.end25.i.err_free_inst.i_crit_edge

if.end25.i.err_free_inst.i_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_inst.i:                                  ; preds = %if.end25.i.err_free_inst.i_crit_edge, %if.end18.i.err_free_inst.i_crit_edge, %if.end12.i.err_free_inst.i_crit_edge, %if.end7.i.err_free_inst.i_crit_edge, %if.end.i.err_free_inst.i_crit_edge
  %err.0.i = phi i32 [ %call15.i, %if.end12.i.err_free_inst.i_crit_edge ], [ %call30.i, %if.end25.i.err_free_inst.i_crit_edge ], [ -12, %if.end7.i.err_free_inst.i_crit_edge ], [ -12, %if.end.i.err_free_inst.i_crit_edge ], [ -36, %if.end18.i.err_free_inst.i_crit_edge ]
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i.i) #7
  %psdec.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i.i, i32 1, i32 1, i32 28
  %41 = ptrtoint ptr %psdec.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %psdec.i.i, align 8
  tail call void @padata_free_shell(ptr noundef %42) #7
  %43 = ptrtoint ptr %psenc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %psenc.i, align 4
  tail call void @padata_free_shell(ptr noundef %44) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst.i, %if.end25.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ %err.0.i, %err_free_inst.i ], [ 0, %if.end25.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_attr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @padata_alloc_shell(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_aead_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %tfm_count = getelementptr i8, ptr %1, i32 676
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %tfm_count, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfm_count, ptr %tfm_count, i32 1, ptr elementtype(i32) %tfm_count) #7, !srcloc !42
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %3) #7
  %rem = urem i32 %asmresult.i.i.i.i, %call4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %4) #7
  %cb_cpu = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %cb_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp29 = icmp sgt i32 %rem, 0
  br i1 %cmp29, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cpu.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb_cpu, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_online_mask) #11
  %8 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %cb_cpu, align 4
  %inc = add nuw nsw i32 %cpu.030, 1
  %cmp = icmp slt i32 %inc, %rem
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i28 = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #7
  %cmp.i = icmp ugt ptr %call.i28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i28 to i32
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i28, ptr %__crt_ctx.i.i, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i28, i32 0, i32 1
  %11 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %12, 256
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %13 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %reqsize1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_aead_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_aead_setkey(ptr nocapture noundef readonly %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_aead_setauthsize(ptr nocapture noundef readonly %parent, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %6 = call ptr @memset(ptr %__ctx.i, i32 0, i32 24)
  %parallel = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %7 = ptrtoint ptr %parallel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pcrypt_aead_enc, ptr %parallel, align 4
  %serial = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %8 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pcrypt_aead_serial, ptr %serial, align 4
  %9 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %and = and i32 %3, -513
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pcrypt_aead_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cryptlen, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %21 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 4
  %23 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 5
  %24 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 2
  %25 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 3
  %26 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %assoclen, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 1
  %29 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %assoclen1.i, align 8
  %psenc = getelementptr i8, ptr %5, i32 668
  %30 = ptrtoint ptr %psenc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psenc, align 4
  %cb_cpu = getelementptr i8, ptr %1, i32 132
  %call7 = tail call i32 @padata_do_parallel(ptr noundef %31, ptr noundef %__ctx.i, ptr noundef %cb_cpu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %.call7 = select i1 %tobool.not, i32 -115, i32 %call7
  ret i32 %.call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrypt_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %6 = call ptr @memset(ptr %__ctx.i, i32 0, i32 24)
  %parallel = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %7 = ptrtoint ptr %parallel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pcrypt_aead_dec, ptr %parallel, align 4
  %serial = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %8 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pcrypt_aead_serial, ptr %serial, align 4
  %9 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %and = and i32 %3, -513
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pcrypt_aead_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cryptlen, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %21 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 4
  %23 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 5
  %24 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 2
  %25 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 3
  %26 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %assoclen, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 1
  %29 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %assoclen1.i, align 8
  %psdec = getelementptr i8, ptr %5, i32 672
  %30 = ptrtoint ptr %psdec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psdec, align 4
  %cb_cpu = getelementptr i8, ptr %1, i32 132
  %call7 = tail call i32 @padata_do_parallel(ptr noundef %31, ptr noundef %__ctx.i, ptr noundef %cb_cpu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %.call7 = select i1 %tobool.not, i32 -115, i32 %call7
  ret i32 %.call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #7
  %psdec = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 28
  %0 = ptrtoint ptr %psdec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psdec, align 4
  tail call void @padata_free_shell(ptr noundef %1) #7
  %psenc = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 24
  %2 = ptrtoint ptr %psenc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psenc, align 4
  tail call void @padata_free_shell(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %inst) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_aead_enc(ptr noundef %padata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.pcrypt_request, ptr %padata, i32 0, i32 3
  %call2 = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call2)
  %cmp = icmp eq i32 %call2, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %info, align 4
  tail call void @padata_do_serial(ptr noundef %padata) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_aead_serial(ptr nocapture noundef readonly %padata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pcrypt_request, ptr %padata, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %info = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete.i, align 8
  tail call void %5(ptr noundef %1, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_aead_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %info = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %err, ptr %info, align 4
  tail call void @padata_do_serial(ptr noundef %__ctx.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @padata_do_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @padata_do_serial(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcrypt_aead_dec(ptr noundef %padata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.pcrypt_request, ptr %padata, i32 0, i32 3
  %call2 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call2)
  %cmp = icmp eq i32 %call2, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %info, align 4
  tail call void @padata_do_serial(ptr noundef %padata) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @padata_free_shell(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcrypt_init_padata(ptr nocapture noundef %pinst, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @padata_alloc(ptr noundef %name) #7
  %0 = ptrtoint ptr %pinst to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pinst, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @pcrypt_kset, align 4
  %kobj.i = getelementptr inbounds %struct.padata_instance, ptr %call, i32 0, i32 6
  %kset.i = getelementptr inbounds %struct.padata_instance, ptr %call, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %kset.i, align 4
  %call.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %pcrypt_sysfs_add.exit.thread, label %if.then3

pcrypt_sysfs_add.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @kobject_uevent(ptr noundef %kobj.i, i32 noundef 0) #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pinst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pinst, align 4
  tail call void @padata_free(ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %pcrypt_sysfs_add.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.then3 ], [ 0, %pcrypt_sysfs_add.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @padata_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_pcrypt__183_376_pcrypt_init4, !1, !"__initcall__kmod_pcrypt__183_376_pcrypt_init4", i1 false, i1 false}
!1 = !{!"../crypto/pcrypt.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_pcrypt_exit, !3, !"__exitcall_pcrypt_exit", i1 false, i1 false}
!3 = !{!"../crypto/pcrypt.c", i32 377, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../crypto/pcrypt.c", i32 379, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author186, !8, !"__UNIQUE_ID_author186", i1 false, i1 false}
!8 = !{!"../crypto/pcrypt.c", i32 380, i32 1}
!9 = !{ptr @__UNIQUE_ID_description187, !10, !"__UNIQUE_ID_description187", i1 false, i1 false}
!10 = !{!"../crypto/pcrypt.c", i32 381, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace188, !12, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!12 = !{!"../crypto/pcrypt.c", i32 382, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto189, !12, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!14 = !{ptr @pencrypt, !15, !"pencrypt", i1 false, i1 false}
!15 = !{!"../crypto/pcrypt.c", i32 20, i32 32}
!16 = !{ptr @pdecrypt, !17, !"pdecrypt", i1 false, i1 false}
!17 = !{!"../crypto/pcrypt.c", i32 21, i32 32}
!18 = !{ptr @pcrypt_kset, !19, !"pcrypt_kset", i1 false, i1 false}
!19 = !{!"../crypto/pcrypt.c", i32 22, i32 31}
!20 = !{ptr @pcrypt_tmpl, !21, !"pcrypt_tmpl", i1 false, i1 false}
!21 = !{!"../crypto/pcrypt.c", i32 334, i32 31}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/pcrypt.c", i32 220, i32 8}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../crypto/pcrypt.c", i32 344, i32 36}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/pcrypt.c", i32 348, i32 38}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/pcrypt.c", i32 352, i32 38}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/pcrypt.c", i32 312, i32 40}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148248541}
!42 = !{i64 2148163850, i64 2148163882, i64 2148163911, i64 2148163945, i64 2148163976, i64 2148163999}
!43 = !{i64 2148248770}
