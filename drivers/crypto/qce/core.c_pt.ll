; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/core.c_pt.bc'
source_filename = "../drivers/crypto/qce/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qce_algo_ops = type { i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qce_device = type { %struct.crypto_queue, %struct.spinlock, %struct.tasklet_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.qce_dma_data, i32, i32, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.qce_dma_data = type { ptr, ptr, ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.75, ptr, ptr, ptr, ptr, %union.anon.76, [120 x i8] }
%union.anon.75 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }

@__initcall__kmod_qcrypto__250_294_qce_crypto_driver_init6 = internal global ptr @qce_crypto_driver_init, section ".initcall6.init", align 4
@qce_crypto_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qce_crypto_probe, ptr @qce_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qce_crypto_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qce_crypto_driver_exit = internal global ptr @qce_crypto_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file251 = internal constant [40 x i8] c"qcrypto.file=drivers/crypto/qce/qcrypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [23 x i8] c"qcrypto.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [50 x i8] c"qcrypto.description=Qualcomm crypto engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [31 x i8] c"qcrypto.alias=platform:qcrypto\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [36 x i8] c"qcrypto.author=The Linux Foundation\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcrypto\00", [24 x i8] zeroinitializer }, align 32
@qce_crypto_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,crypto-v5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,crypto-v5.4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@qce_crypto_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qce->lock\00", [21 x i8] zeroinitializer }, align 32
@qce_check_version.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qce_check_version\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/qce/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Crypto device found, version %d.%d.%d\0A\00", [57 x i8] zeroinitializer }, align 32
@skcipher_ops = external dso_local local_unnamed_addr constant %struct.qce_algo_ops, align 4
@ahash_ops = external dso_local local_unnamed_addr constant %struct.qce_algo_ops, align 4
@aead_ops = external dso_local local_unnamed_addr constant %struct.qce_algo_ops, align 4
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"qce_crypto_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 286, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 290, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"qce_crypto_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 279, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 209, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 213, i32 38 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 217, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 241, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [29 x i8] c"../drivers/crypto/qce/core.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 182, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_qce_crypto_driver_exit, ptr @__initcall__kmod_qcrypto__250_294_qce_crypto_driver_init6, ptr @qce_crypto_driver_exit, ptr @qce_crypto_driver, ptr @.str, ptr @qce_crypto_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qce_crypto_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_crypto_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_crypto_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_crypto_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_crypto_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qce_crypto_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qce_crypto_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qce_crypto_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_crypto_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 148, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i119 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp eq i32 %call.i119, 0
  br i1 %cmp.i120, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #5
  br label %if.end12

dma_set_mask_and_coherent.exit:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp = icmp slt i32 %call.i119, 0
  br i1 %cmp, label %dma_set_mask_and_coherent.exit.cleanup_crit_edge, label %dma_set_mask_and_coherent.exit.if.end12_crit_edge

dma_set_mask_and_coherent.exit.if.end12_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

dma_set_mask_and_coherent.exit.cleanup_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %dma_set_mask_and_coherent.exit.if.end12_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call14 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #5
  %core = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %core, align 4
  %cmp.i121 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call22 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.2) #5
  %iface = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %iface, align 4
  %cmp.i122 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.3) #5
  %bus = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %bus, align 4
  %cmp.i123 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call.i124 = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end36
  %call1.i125 = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool2.not.i = icmp eq i32 %call1.i125, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

if.end41:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iface, align 4
  %call43 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.err_clks_core_crit_edge

if.end41.err_clks_core_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clks_core

if.end46:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %call48 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.err_clks_iface_crit_edge

if.end46.err_clks_iface_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clks_iface

if.end51:                                         ; preds = %if.end46
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 4
  %dma = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 10
  %call53 = tail call i32 @qce_dma_request(ptr noundef %23, ptr noundef %dma) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_clks_crit_edge

if.end51.err_clks_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clks

if.end56:                                         ; preds = %if.end51
  %call57 = tail call fastcc i32 @qce_check_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body, label %if.end56.err_clks_crit_edge

if.end56.err_clks_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clks

do.body:                                          ; preds = %if.end56
  %lock = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @qce_crypto_probe.__key, i16 noundef signext 3) #5
  %done_tasklet = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %done_tasklet, ptr noundef nonnull @qce_tasklet_req_done, i32 noundef %24) #5
  tail call void @crypto_init_queue(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 13
  %25 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qce_async_request_enqueue, ptr %async_req_enqueue, align 4
  %async_req_done = getelementptr inbounds %struct.qce_device, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %async_req_done to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @qce_async_request_done, ptr %async_req_done, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @skcipher_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @skcipher_ops, i32 0, i32 1), align 4
  %call.i126 = tail call i32 %27(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %for.cond.i, label %do.body.err_dma_crit_edge

do.body.err_dma_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dma

for.cond.i:                                       ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @ahash_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @ahash_ops, i32 0, i32 1), align 4
  %call.1.i = tail call i32 %28(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %qce_register_algs.exit, label %for.cond.i.err_dma_crit_edge

for.cond.i.err_dma_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dma

qce_register_algs.exit:                           ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @aead_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @aead_ops, i32 0, i32 1), align 4
  %call.2.i = tail call i32 %29(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool63.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool63.not, label %qce_register_algs.exit.cleanup_crit_edge, label %qce_register_algs.exit.err_dma_crit_edge

qce_register_algs.exit.err_dma_crit_edge:         ; preds = %qce_register_algs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dma

qce_register_algs.exit.cleanup_crit_edge:         ; preds = %qce_register_algs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_dma:                                          ; preds = %qce_register_algs.exit.err_dma_crit_edge, %for.cond.i.err_dma_crit_edge, %do.body.err_dma_crit_edge
  %ret.1.i133 = phi i32 [ %call.2.i, %qce_register_algs.exit.err_dma_crit_edge ], [ %call.1.i, %for.cond.i.err_dma_crit_edge ], [ %call.i126, %do.body.err_dma_crit_edge ]
  tail call void @qce_dma_release(ptr noundef %dma) #5
  br label %err_clks

err_clks:                                         ; preds = %err_dma, %if.end56.err_clks_crit_edge, %if.end51.err_clks_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end51.err_clks_crit_edge ], [ %call57, %if.end56.err_clks_crit_edge ], [ %ret.1.i133, %err_dma ]
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  tail call void @clk_unprepare(ptr noundef %31) #5
  br label %err_clks_iface

err_clks_iface:                                   ; preds = %err_clks, %if.end46.err_clks_iface_crit_edge
  %ret.1 = phi i32 [ %call48, %if.end46.err_clks_iface_crit_edge ], [ %ret.0, %err_clks ]
  %32 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iface, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %err_clks_core

err_clks_core:                                    ; preds = %err_clks_iface, %if.end41.err_clks_core_crit_edge
  %ret.2 = phi i32 [ %call43, %if.end41.err_clks_core_crit_edge ], [ %ret.1, %err_clks_iface ]
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 4
  tail call void @clk_disable(ptr noundef %35) #5
  tail call void @clk_unprepare(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clks_core, %qce_register_algs.exit.cleanup_crit_edge, %if.then3.i, %if.end36.cleanup_crit_edge, %if.then33, %if.then25, %if.then17, %dma_set_mask_and_coherent.exit.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %7, %if.then17 ], [ %11, %if.then25 ], [ %15, %if.then33 ], [ %ret.2, %err_clks_core ], [ -12, %entry.cleanup_crit_edge ], [ %call.i119, %dma_set_mask_and_coherent.exit.cleanup_crit_edge ], [ 0, %qce_register_algs.exit.cleanup_crit_edge ], [ %call1.i125, %if.then3.i ], [ %call.i124, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_crypto_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %done_tasklet = getelementptr inbounds %struct.qce_device, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %done_tasklet) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @skcipher_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @skcipher_ops, i32 0, i32 2), align 4
  tail call void %2(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @ahash_ops, i32 0, i32 2) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @ahash_ops, i32 0, i32 2), align 4
  tail call void %3(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @aead_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.qce_algo_ops, ptr @aead_ops, i32 0, i32 2), align 4
  tail call void %4(ptr noundef %1) #5
  %dma = getelementptr inbounds %struct.qce_device, ptr %1, i32 0, i32 10
  tail call void @qce_dma_release(ptr noundef %dma) #5
  %bus = getelementptr inbounds %struct.qce_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  %iface = getelementptr inbounds %struct.qce_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iface, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  %core = getelementptr inbounds %struct.qce_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %clk) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_check_version(ptr noundef %qce) unnamed_addr #2 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %step = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #5
  %0 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %major, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #5
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %minor, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %step) #5
  %2 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %step, align 4, !annotation !43
  call void @qce_get_version(ptr noundef %qce, ptr noundef nonnull %major, ptr noundef nonnull %minor, ptr noundef nonnull %step) #5
  %3 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.not = icmp eq i32 %4, 5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %burst_size = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 11
  %7 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %burst_size, align 4
  %rxchan = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxchan, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_id, align 4
  %shr = ashr i32 %11, 1
  %pipe_pair_id = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 12
  %12 = ptrtoint ptr %pipe_pair_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %pipe_pair_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_check_version.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_check_version, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !44

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %major, align 4
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor, align 4
  %19 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_check_version.__UNIQUE_ID_ddebug249, ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %step) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_tasklet_req_done(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %lock = getelementptr inbounds %struct.qce_device, ptr %0, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %req5 = getelementptr inbounds %struct.qce_device, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %req5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req5, align 4
  store ptr null, ptr %req5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %complete, align 4
  %result = getelementptr inbounds %struct.qce_device, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result, align 4
  tail call void %4(ptr noundef nonnull %2, i32 noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call fastcc i32 @qce_handle_queue(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_async_request_enqueue(ptr noundef %qce, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_handle_queue(ptr noundef %qce, ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_async_request_done(ptr noundef %qce, i32 noundef %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 4
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ret, ptr %result, align 4
  %state.i = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %done_tasklet = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %done_tasklet) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qce_dma_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qce_get_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_handle_queue(ptr noundef %qce, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @crypto_enqueue_request(ptr noundef %qce, ptr noundef nonnull %req) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %req6 = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 3
  %0 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req6, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %backlog.i = getelementptr inbounds %struct.crypto_queue, ptr %qce, i32 0, i32 1
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %qce
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call14 = tail call ptr @crypto_dequeue_request(ptr noundef %qce) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then21.critedge, label %if.then16

if.then16:                                        ; preds = %if.end10
  %4 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %req6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %if.then16.if.end27_crit_edge, label %if.then24

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then21.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete, align 4
  tail call void %6(ptr noundef nonnull %spec.select.i, i32 noundef -115) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then16.if.end27_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %call14, i32 0, i32 3
  %7 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %12, 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @skcipher_ops to i32))
  %13 = load i32, ptr @skcipher_ops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %13)
  %cmp2.not.i = icmp eq i32 %and.i.i, %13
  br i1 %cmp2.not.i, label %if.end27.qce_handle_request.exit_crit_edge, label %for.cond.i

if.end27.qce_handle_request.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_handle_request.exit

for.cond.i:                                       ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahash_ops to i32))
  %14 = load i32, ptr @ahash_ops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %14)
  %cmp2.not.1.i = icmp eq i32 %and.i.i, %14
  br i1 %cmp2.not.1.i, label %for.cond.i.qce_handle_request.exit_crit_edge, label %for.cond.1.i

for.cond.i.qce_handle_request.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_handle_request.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aead_ops to i32))
  %15 = load i32, ptr @aead_ops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %15)
  %cmp2.not.2.i = icmp eq i32 %and.i.i, %15
  br i1 %cmp2.not.2.i, label %for.cond.1.i.qce_handle_request.exit_crit_edge, label %for.cond.1.i.if.then30_crit_edge

for.cond.1.i.if.then30_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

for.cond.1.i.qce_handle_request.exit_crit_edge:   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_handle_request.exit

qce_handle_request.exit:                          ; preds = %for.cond.1.i.qce_handle_request.exit_crit_edge, %for.cond.i.qce_handle_request.exit_crit_edge, %if.end27.qce_handle_request.exit_crit_edge
  %.lcssa.i = phi ptr [ @skcipher_ops, %if.end27.qce_handle_request.exit_crit_edge ], [ @ahash_ops, %for.cond.i.qce_handle_request.exit_crit_edge ], [ @aead_ops, %for.cond.1.i.qce_handle_request.exit_crit_edge ]
  %async_req_handle.i = getelementptr inbounds %struct.qce_algo_ops, ptr %.lcssa.i, i32 0, i32 3
  %16 = ptrtoint ptr %async_req_handle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async_req_handle.i, align 4
  %call3.i = tail call i32 %17(ptr noundef nonnull %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool29.not = icmp eq i32 %call3.i, 0
  br i1 %tobool29.not, label %qce_handle_request.exit.cleanup_crit_edge, label %qce_handle_request.exit.if.then30_crit_edge

qce_handle_request.exit.if.then30_crit_edge:      ; preds = %qce_handle_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

qce_handle_request.exit.cleanup_crit_edge:        ; preds = %qce_handle_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %qce_handle_request.exit.if.then30_crit_edge, %for.cond.1.i.if.then30_crit_edge
  %ret.0.i60 = phi i32 [ %call3.i, %qce_handle_request.exit.if.then30_crit_edge ], [ -22, %for.cond.1.i.if.then30_crit_edge ]
  %result = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 4
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ret.0.i60, ptr %result, align 4
  %state.i = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %done_tasklet = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %done_tasklet) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then30.cleanup_crit_edge, %qce_handle_request.exit.cleanup_crit_edge, %if.then21.critedge, %if.then8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_qcrypto__250_294_qce_crypto_driver_init6, !1, !"__initcall__kmod_qcrypto__250_294_qce_crypto_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/core.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_qce_crypto_driver_exit, !1, !"__exitcall_qce_crypto_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file251, !4, !"__UNIQUE_ID_file251", i1 false, i1 false}
!4 = !{!"../drivers/crypto/qce/core.c", i32 296, i32 1}
!5 = !{ptr @__UNIQUE_ID_license252, !4, !"__UNIQUE_ID_license252", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description253, !7, !"__UNIQUE_ID_description253", i1 false, i1 false}
!7 = !{!"../drivers/crypto/qce/core.c", i32 297, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias254, !9, !"__UNIQUE_ID_alias254", i1 false, i1 false}
!9 = !{!"../drivers/crypto/qce/core.c", i32 298, i32 1}
!10 = !{ptr @__UNIQUE_ID_author255, !11, !"__UNIQUE_ID_author255", i1 false, i1 false}
!11 = !{!"../drivers/crypto/qce/core.c", i32 299, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/qce/core.c", i32 290, i32 11}
!14 = !{ptr @qce_crypto_driver, !15, !"qce_crypto_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/qce/core.c", i32 286, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/qce/core.c", i32 209, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/qce/core.c", i32 213, i32 38}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/qce/core.c", i32 217, i32 36}
!22 = !{ptr @qce_crypto_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/crypto/qce/core.c", i32 241, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/qce/core.c", i32 182, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qce_check_version.__UNIQUE_ID_ddebug249, !26, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!30 = distinct !{null, !31, !"qce_ops", i1 false, i1 false}
!31 = !{!"../drivers/crypto/qce/core.c", i32 25, i32 35}
!32 = !{ptr @qce_crypto_of_match, !33, !"qce_crypto_of_match", i1 false, i1 false}
!33 = !{!"../drivers/crypto/qce/core.c", i32 279, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2148726394, i64 2148726399, i64 2148726412, i64 2148726456, i64 2148726490, i64 2148726511}
