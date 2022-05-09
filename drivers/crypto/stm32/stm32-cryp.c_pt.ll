; ModuleID = '/llk/IR_all_yes/drivers/crypto/stm32/stm32-cryp.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-cryp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stm32_cryp_list = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.stm32_cryp_caps = type { i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_cryp = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.scatter_walk, %struct.scatter_walk, [4 x i32], i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.des_ctx = type { [32 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.stm32_cryp_ctx = type { %struct.crypto_engine_ctx, ptr, i32, [8 x i32], i32 }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }

@__initcall__kmod_stm32_cryp__266_1931_stm32_cryp_driver_init6 = internal global ptr @stm32_cryp_driver_init, section ".initcall6.init", align 4
@stm32_cryp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_cryp_probe, ptr @stm32_cryp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_cryp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_cryp_driver_exit = internal global ptr @stm32_cryp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author267 = internal constant [59 x i8] c"stm32_cryp.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [68 x i8] c"stm32_cryp.description=STMicrolectronics STM32 CRYP hardware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [48 x i8] c"stm32_cryp.file=drivers/crypto/stm32/stm32-cryp\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [23 x i8] c"stm32_cryp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-cryp\00", [21 x i8] zeroinitializer }, align 32
@stm32_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f756-cryp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @f7_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-cryp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mp1_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_cryp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_cryp_runtime_suspend, ptr @stm32_cryp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Cannot grab IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_cryp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/stm32/stm32-cryp.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr = internal global ptr @stm32_cryp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr.9 = internal global ptr @stm32_cryp_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cryp_list = internal global { %struct.stm32_cryp_list, [44 x i8] } { %struct.stm32_cryp_list { %struct.list_head { ptr @cryp_list, ptr @cryp_list }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not init crypto engine\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr.12 = internal global ptr @stm32_cryp_probe._entry.10, section ".printk_index", align 4
@stm32_cryp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not start crypto engine\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr.15 = internal global ptr @stm32_cryp_probe._entry.13, section ".printk_index", align 4
@crypto_algs = internal global [7 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_ecb_encrypt, ptr @stm32_cryp_aes_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_cbc_encrypt, ptr @stm32_cryp_aes_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_ctr_encrypt, ptr @stm32_cryp_aes_ctr_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_des_setkey, ptr @stm32_cryp_des_ecb_encrypt, ptr @stm32_cryp_des_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_des_setkey, ptr @stm32_cryp_des_cbc_encrypt, ptr @stm32_cryp_des_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_tdes_setkey, ptr @stm32_cryp_tdes_ecb_encrypt, ptr @stm32_cryp_tdes_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-des3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_tdes_setkey, ptr @stm32_cryp_tdes_cbc_encrypt, ptr @stm32_cryp_tdes_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-des3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@stm32_cryp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not register algs\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr.18 = internal global ptr @stm32_cryp_probe._entry.16, section ".printk_index", align 4
@aead_algs = internal global [2 x %struct.aead_alg] [%struct.aead_alg { ptr @stm32_cryp_aes_aead_setkey, ptr @stm32_cryp_aes_gcm_setauthsize, ptr @stm32_cryp_aes_gcm_encrypt, ptr @stm32_cryp_aes_gcm_decrypt, ptr @stm32_cryp_aes_aead_init, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @stm32_cryp_aes_aead_setkey, ptr @stm32_cryp_aes_ccm_setauthsize, ptr @stm32_cryp_aes_ccm_encrypt, ptr @stm32_cryp_aes_ccm_decrypt, ptr @stm32_cryp_aes_aead_init, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ccm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@stm32_cryp_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1836, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_cryp_probe._entry_ptr.22 = internal global ptr @stm32_cryp_probe._entry.19, section ".printk_index", align 4
@stm32_crypt_gcmccm_end_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Timeout (gcm/ccm header)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32_crypt_gcmccm_end_header\00", [34 x i8] zeroinitializer }, align 32
@stm32_crypt_gcmccm_end_header._entry_ptr = internal global ptr @stm32_crypt_gcmccm_end_header._entry, section ".printk_index", align 4
@stm32_cryp_irq_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1452, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No more data to process\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_cryp_irq_write_data\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_cryp_irq_write_data._entry_ptr = internal global ptr @stm32_cryp_irq_write_data._entry, section ".printk_index", align 4
@stm32_cryp_get_hw_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown mode\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_cryp_get_hw_mode\00", [41 x i8] zeroinitializer }, align 32
@stm32_cryp_get_hw_mode._entry_ptr = internal global ptr @stm32_cryp_get_hw_mode._entry, section ".printk_index", align 4
@stm32_cryp_irq_write_gcm_padded_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout (write gcm last data)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"stm32_cryp_irq_write_gcm_padded_data\00", [59 x i8] zeroinitializer }, align 32
@stm32_cryp_irq_write_gcm_padded_data._entry_ptr = internal global ptr @stm32_cryp_irq_write_gcm_padded_data._entry, section ".printk_index", align 4
@stm32_cryp_irq_write_gcm_padded_data._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 1337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout (write gcm padded data)\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_cryp_irq_write_gcm_padded_data._entry_ptr.34 = internal global ptr @stm32_cryp_irq_write_gcm_padded_data._entry.32, section ".printk_index", align 4
@stm32_cryp_irq_write_ccm_padded_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout (wite ccm padded data)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"stm32_cryp_irq_write_ccm_padded_data\00", [59 x i8] zeroinitializer }, align 32
@stm32_cryp_irq_write_ccm_padded_data._entry_ptr = internal global ptr @stm32_cryp_irq_write_ccm_padded_data._entry, section ".printk_index", align 4
@stm32_cryp_irq_write_ccm_padded_data._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stm32_cryp_irq_write_ccm_padded_data._entry_ptr.38 = internal global ptr @stm32_cryp_irq_write_ccm_padded_data._entry.37, section ".printk_index", align 4
@stm32_cryp_read_auth_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timeout (read tag)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_cryp_read_auth_tag\00", [39 x i8] zeroinitializer }, align 32
@stm32_cryp_read_auth_tag._entry_ptr = internal global ptr @stm32_cryp_read_auth_tag._entry, section ".printk_index", align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cryp_list.lock\00", [17 x i8] zeroinitializer }, align 32
@stm32_cryp_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Timeout (key preparation)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_cryp_hw_init\00", [45 x i8] zeroinitializer }, align 32
@stm32_cryp_hw_init._entry_ptr = internal global ptr @stm32_cryp_hw_init._entry, section ".printk_index", align 4
@stm32_cryp_ccm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timeout (ccm init)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_cryp_ccm_init\00", [44 x i8] zeroinitializer }, align 32
@stm32_cryp_ccm_init._entry_ptr = internal global ptr @stm32_cryp_ccm_init._entry, section ".printk_index", align 4
@stm32_cryp_gcm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timeout (gcm init)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_cryp_gcm_init\00", [44 x i8] zeroinitializer }, align 32
@stm32_cryp_gcm_init._entry_ptr = internal global ptr @stm32_cryp_gcm_init._entry, section ".printk_index", align 4
@f7_data = internal constant { %struct.stm32_cryp_caps, [30 x i8] } { %struct.stm32_cryp_caps { i8 1, i8 1 }, [30 x i8] zeroinitializer }, align 32
@mp1_data = internal constant { %struct.stm32_cryp_caps, [30 x i8] } zeroinitializer, align 32
@stm32_cryp_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 1906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_cryp_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@stm32_cryp_runtime_resume._entry_ptr = internal global ptr @stm32_cryp_runtime_resume._entry, section ".printk_index", align 4
@switch.table.stm32_cryp_aes_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.stm32_cryp_aes_ccm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 40]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 8, i64 24, i64 40, i64 48, i64 524288, i64 524296]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"stm32_cryp_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1921, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1925, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"stm32_dt_ids\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1735, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"stm32_cryp_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1914, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1771, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1777, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1784, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"cryp_list\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 162, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1815, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1822, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1828, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1836, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 407, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1452, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 355, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1303, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1337, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1403, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1443, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1187, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 164, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 579, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 514, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 381, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [8 x i8] c"f7_data\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1725, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant [9 x i8] c"mp1_data\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1730, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [37 x i8] c"../drivers/crypto/stm32/stm32-cryp.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1906, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [44 x i8] c"switch.table.stm32_cryp_aes_gcm_setauthsize\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [44 x i8] c"switch.table.stm32_cryp_aes_ccm_setauthsize\00", align 1
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_stm32_cryp_driver_exit, ptr @__initcall__kmod_stm32_cryp__266_1931_stm32_cryp_driver_init6, ptr @stm32_cryp_ccm_init._entry, ptr @stm32_cryp_ccm_init._entry_ptr, ptr @stm32_cryp_driver_exit, ptr @stm32_cryp_gcm_init._entry, ptr @stm32_cryp_gcm_init._entry_ptr, ptr @stm32_cryp_get_hw_mode._entry, ptr @stm32_cryp_get_hw_mode._entry_ptr, ptr @stm32_cryp_hw_init._entry, ptr @stm32_cryp_hw_init._entry_ptr, ptr @stm32_cryp_irq_write_ccm_padded_data._entry, ptr @stm32_cryp_irq_write_ccm_padded_data._entry.37, ptr @stm32_cryp_irq_write_ccm_padded_data._entry_ptr, ptr @stm32_cryp_irq_write_ccm_padded_data._entry_ptr.38, ptr @stm32_cryp_irq_write_data._entry, ptr @stm32_cryp_irq_write_data._entry_ptr, ptr @stm32_cryp_irq_write_gcm_padded_data._entry, ptr @stm32_cryp_irq_write_gcm_padded_data._entry.32, ptr @stm32_cryp_irq_write_gcm_padded_data._entry_ptr, ptr @stm32_cryp_irq_write_gcm_padded_data._entry_ptr.34, ptr @stm32_cryp_probe._entry, ptr @stm32_cryp_probe._entry.10, ptr @stm32_cryp_probe._entry.13, ptr @stm32_cryp_probe._entry.16, ptr @stm32_cryp_probe._entry.19, ptr @stm32_cryp_probe._entry.7, ptr @stm32_cryp_probe._entry_ptr, ptr @stm32_cryp_probe._entry_ptr.12, ptr @stm32_cryp_probe._entry_ptr.15, ptr @stm32_cryp_probe._entry_ptr.18, ptr @stm32_cryp_probe._entry_ptr.22, ptr @stm32_cryp_probe._entry_ptr.9, ptr @stm32_cryp_read_auth_tag._entry, ptr @stm32_cryp_read_auth_tag._entry_ptr, ptr @stm32_cryp_runtime_resume._entry, ptr @stm32_cryp_runtime_resume._entry_ptr, ptr @stm32_crypt_gcmccm_end_header._entry, ptr @stm32_crypt_gcmccm_end_header._entry_ptr, ptr @stm32_cryp_driver, ptr @.str, ptr @stm32_dt_ids, ptr @stm32_cryp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @cryp_list, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @f7_data, ptr @mp1_data, ptr @.str.48, ptr @.str.49, ptr @switch.table.stm32_cryp_aes_gcm_setauthsize, ptr @switch.table.stm32_cryp_aes_ccm_setauthsize], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crypt_gcmccm_end_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_irq_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_get_hw_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_irq_write_gcm_padded_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_irq_write_gcm_padded_data._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_irq_write_ccm_padded_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_irq_write_ccm_padded_data._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_read_auth_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_ccm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_gcm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f7_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp1_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cryp_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_cryp_aes_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_cryp_aes_ccm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_cryp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_cryp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_cryp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %caps = getelementptr inbounds %struct.stm32_cryp, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %caps, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.stm32_cryp, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev7, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.stm32_cryp, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.dev_name.exit_crit_edge

if.end17.dev_name.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end17.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end17.dev_name.exit_crit_edge ]
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call15, ptr noundef nonnull @stm32_cryp_irq, ptr noundef nonnull @stm32_cryp_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.stm32_cryp, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %clk, align 4
  %cmp.i150 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call23 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.6) #10
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call.i151 = tail call i32 @clk_prepare(ptr noundef %call23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i153, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.end.i153:                                      ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %call23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call23) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i154.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i151, %if.end32.do.end39_crit_edge ]
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end.i153
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !128
  %call.i155 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %cmp.i156 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end41
  %cmp47 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp47, label %if.then45.err_rst_crit_edge, label %if.then45.if.end52_crit_edge

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then45.err_rst_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rst

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #10
  %call51 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #10
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then45.if.end52_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %18 = load ptr, ptr @cryp_list, align 4
  %call.i.i157 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @cryp_list, ptr noundef %18) #10
  br i1 %call.i.i157, label %if.end.i.i, label %if.end52.list_add.exit_crit_edge

if.end52.list_add.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cryp_list, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @cryp_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end52.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %call53 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #10
  %engine = getelementptr inbounds %struct.stm32_cryp, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call53, ptr %engine, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end60

do.end59:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %err_engine1

if.end60:                                         ; preds = %list_add.exit
  %call62 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %err_engine2

if.end68:                                         ; preds = %if.end60
  %call69 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end75, label %do.end74

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %err_engine2

if.end75:                                         ; preds = %if.end68
  %call76 = tail call i32 @crypto_register_aeads(ptr noundef nonnull @aead_algs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.end82, label %err_aead_algs

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  %call.i158 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #10
  br label %cleanup

err_aead_algs:                                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #10
  br label %err_engine2

err_engine2:                                      ; preds = %err_aead_algs, %do.end74, %do.end67
  %ret.0 = phi i32 [ %call62, %do.end67 ], [ %call69, %do.end74 ], [ %call76, %err_aead_algs ]
  %23 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %engine, align 4
  %call85 = tail call i32 @crypto_engine_exit(ptr noundef %24) #10
  br label %err_engine1

err_engine1:                                      ; preds = %err_engine2, %do.end59
  %ret.1 = phi i32 [ %ret.0, %err_engine2 ], [ -12, %do.end59 ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %call.i.i159 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #10
  br i1 %call.i.i159, label %if.end.i.i160, label %err_engine1.list_del.exit_crit_edge

err_engine1.list_del.exit_crit_edge:              ; preds = %err_engine1
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i160:                                    ; preds = %err_engine1
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i160, %err_engine1.list_del.exit_crit_edge
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %err_rst

err_rst:                                          ; preds = %list_del.exit, %if.then45.err_rst_crit_edge
  %ret.2 = phi i32 [ -517, %if.then45.err_rst_crit_edge ], [ %ret.1, %list_del.exit ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %call.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !130
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_rst.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_rst.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %err_rst
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_rst
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !131
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_rst.pm_runtime_put_noidle.exit_crit_edge
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %35) #10
  tail call void @clk_unprepare(ptr noundef %35) #10
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end82, %do.end39, %if.then26, %do.end, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then11 ], [ %call19, %do.end ], [ %12, %if.then26 ], [ %retval.0.i154.ph, %do.end39 ], [ %ret.2, %pm_runtime_put_noidle.exit ], [ 0, %do.end82 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !130
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !131
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @crypto_unregister_aeads(ptr noundef nonnull @aead_algs, i32 noundef 2) #10
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #10
  %engine = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine, align 4
  %call4 = tail call i32 @crypto_engine_exit(ptr noundef %6) #10
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del.exit_crit_edge

if.end3.list_del.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end3.list_del.exit_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !130
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %list_del.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

list_del.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !131
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %list_del.exit.pm_runtime_put_noidle.exit_crit_edge
  %clk = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_irq(i32 noundef %irq, ptr nocapture noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !132
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %irq_status = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 5
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq_status, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_irq_thread(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %block.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !132
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %irq_status = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 5
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_status, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block.i) #10
  %hw_blocksize.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 12
  %6 = call ptr @memset(ptr %block.i, i32 255, i32 16)
  %7 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp30.not.i = icmp ult i32 %8, 4
  br i1 %cmp30.not.i, label %if.then.stm32_cryp_irq_read_data.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.stm32_cryp_irq_read_data.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_read_data.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !132
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %arrayidx.i = getelementptr [4 x i32], ptr %block.i, i32 0, i32 %i.031.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %14 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_blocksize.i, align 4
  %div28.i = lshr i32 %15, 2
  %cmp.i = icmp ult i32 %inc.i, %div28.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.stm32_cryp_irq_read_data.exit_crit_edge

for.body.i.stm32_cryp_irq_read_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_read_data.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

stm32_cryp_irq_read_data.exit:                    ; preds = %for.body.i.stm32_cryp_irq_read_data.exit_crit_edge, %if.then.stm32_cryp_irq_read_data.exit_crit_edge
  %.lcssa.i = phi i32 [ %8, %if.then.stm32_cryp_irq_read_data.exit_crit_edge ], [ %15, %for.body.i.stm32_cryp_irq_read_data.exit_crit_edge ]
  %out_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 18
  %payload_out.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 15
  %16 = ptrtoint ptr %payload_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %payload_out.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %.lcssa.i, i32 %17) #10
  call void @scatterwalk_copychunks(ptr noundef nonnull %block.i, ptr noundef %out_walk.i, i32 noundef %18, i32 noundef 1) #10
  %19 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_blocksize.i, align 4
  %21 = ptrtoint ptr %payload_out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %payload_out.i, align 4
  %23 = call i32 @llvm.usub.sat.i32(i32 %22, i32 %20) #10
  %24 = ptrtoint ptr %payload_out.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %payload_out.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block.i) #10
  br label %if.end

if.end:                                           ; preds = %stm32_cryp_irq_read_data.exit, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_status, align 4
  %and2 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end19_crit_edge, label %if.then4

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then4:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %29 = and i32 %28, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %if.else17, label %if.then7

if.then7:                                         ; preds = %if.then4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !132
  %33 = and i32 %32, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %33)
  %cmp = icmp eq i32 %33, 256
  br i1 %cmp, label %if.then12, label %if.else, !prof !133

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @stm32_cryp_irq_write_gcmccm_header(ptr noundef %arg)
  br label %if.end13

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @stm32_cryp_irq_write_data(ptr noundef %arg)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i66 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.i67.not = icmp eq i32 %and.i66, 0
  br i1 %tobool.i67.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %gcm_ctr = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 20
  %36 = ptrtoint ptr %gcm_ctr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gcm_ctr, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %gcm_ctr, align 4
  br label %if.end19

if.else17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @stm32_cryp_irq_write_data(ptr noundef %arg)
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15, %if.end13.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %payload_in = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 13
  %38 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %payload_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool20.not = icmp eq i32 %39, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %header_in = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 14
  %40 = ptrtoint ptr %header_in to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %header_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not = icmp eq i32 %41, 0
  %and23 = and i32 %3, -2
  %spec.select = select i1 %tobool21.not, i32 %and23, i32 %3
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %if.end19.if.end24_crit_edge
  %it_mask.0 = phi i32 [ %3, %if.end19.if.end24_crit_edge ], [ %spec.select, %land.lhs.true ]
  %payload_out = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 15
  %42 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %payload_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not = icmp eq i32 %43, 0
  %and27 = and i32 %it_mask.0, -3
  %spec.select60 = select i1 %tobool25.not, i32 %and27, i32 %it_mask.0
  %44 = call i32 @llvm.bswap.i32(i32 %spec.select60) #10
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %46, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %44) #10, !srcloc !134
  %47 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %payload_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool30.not = icmp eq i32 %48, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end24.if.end38_crit_edge

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true31:                                  ; preds = %if.end24
  %header_in32 = getelementptr inbounds %struct.stm32_cryp, ptr %arg, i32 0, i32 14
  %49 = ptrtoint ptr %header_in32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %header_in32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool33.not = icmp eq i32 %50, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %land.lhs.true31.if.end38_crit_edge

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %51 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %payload_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool36.not = icmp eq i32 %52, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true34.if.end38_crit_edge

land.lhs.true34.if.end38_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @stm32_cryp_finish_req(ptr noundef %arg, i32 noundef 0)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true34.if.end38_crit_edge, %land.lhs.true31.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_gcmccm_header(ptr noundef %cryp) unnamed_addr #2 align 64 {
entry:
  %block = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block) #10
  %0 = call ptr @memset(ptr %block, i32 0, i32 16)
  %header_in = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 14
  %1 = ptrtoint ptr %header_in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %header_in, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 16)
  %in_walk = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 17
  call void @scatterwalk_copychunks(ptr noundef nonnull %block, ptr noundef %in_walk, i32 noundef %3, i32 noundef 0) #10
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #10
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !134
  %arrayidx.1 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %13, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %11) #10, !srcloc !134
  %arrayidx.2 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %18, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %16) #10, !srcloc !134
  %arrayidx.3 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %23, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %21) #10, !srcloc !134
  %24 = ptrtoint ptr %header_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %header_in, align 4
  %sub = sub i32 %25, %3
  store i32 %sub, ptr %header_in, align 4
  call fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef %cryp)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_data(ptr noundef %cryp) unnamed_addr #2 align 64 {
entry:
  %block.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %payload_in = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 13
  %0 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %payload_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !133

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.if.end21.i_crit_edge, label %land.lhs.true.i

land.lhs.true.if.end21.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %6 = and i32 %5, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %land.lhs.true13.i, label %land.lhs.true.i.if.end17_crit_edge

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %and.i79.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool.i80.not.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool.i80.not.i, label %land.lhs.true18.i, label %land.rhs

land.lhs.true18.i:                                ; preds = %land.lhs.true13.i
  %and.i85.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.i86.not.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.i86.not.i, label %land.lhs.true18.i.if.end21.i_crit_edge, label %land.lhs.true18.i.if.end17_crit_edge

land.lhs.true18.i.if.end17_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true18.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.lhs.true18.i.if.end21.i_crit_edge, %land.lhs.true.if.end21.i_crit_edge
  %and.i88.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i)
  %tobool.i89.not.i = icmp eq i32 %and.i88.i, 0
  %8 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %or.cond = or i1 %tobool.i89.not.i, %9
  br i1 %or.cond, label %if.end31.i, label %if.end21.i.if.end17_crit_edge

if.end21.i.if.end17_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end31.i:                                       ; preds = %if.end21.i
  %and.i100.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100.i)
  %tobool.i101.not.i = icmp eq i32 %and.i100.i, 0
  %or.cond131 = or i1 %tobool.i101.not.i, %9
  br i1 %or.cond131, label %do.end.i, label %if.end31.i.if.end17_crit_edge

if.end31.i.if.end17_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end.i:                                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #13
  br label %if.end17

land.rhs:                                         ; preds = %land.lhs.true13.i
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.rhs.if.end17_crit_edge, label %if.then13, !prof !135

land.rhs.if.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %land.rhs
  %caps = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 6
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 4
  %padding_wa = getelementptr inbounds %struct.stm32_cryp_caps, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %padding_wa to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %padding_wa, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_cryp_irq_write_gcm_padded_data(ptr noundef %cryp)
  br label %return

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_cryp_irq_set_npblb(ptr noundef %cryp)
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.rhs.if.end17_crit_edge, %do.end.i, %if.end31.i.if.end17_crit_edge, %if.end21.i.if.end17_crit_edge, %land.lhs.true18.i.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge
  %18 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %payload_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp19 = icmp ult i32 %.pr, 16
  br i1 %cmp19, label %land.lhs.true20, label %if.end17.if.end38_crit_edge

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true20:                                  ; preds = %if.end17
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %and.i.i64 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.i.not.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.i.not.i65, label %land.lhs.true20.if.end21.i83_crit_edge, label %land.lhs.true.i68

land.lhs.true20.if.end21.i83_crit_edge:           ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i83

land.lhs.true.i68:                                ; preds = %land.lhs.true20
  %21 = and i32 %20, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %land.lhs.true18.i80, label %land.lhs.true.i68.if.end38_crit_edge

land.lhs.true.i68.if.end38_crit_edge:             ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true18.i80:                              ; preds = %land.lhs.true.i68
  %and.i85.i78 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i78)
  %tobool.i86.not.i79 = icmp eq i32 %and.i85.i78, 0
  br i1 %tobool.i86.not.i79, label %land.lhs.true18.i80.if.end21.i83_crit_edge, label %land.rhs23

land.lhs.true18.i80.if.end21.i83_crit_edge:       ; preds = %land.lhs.true18.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i83

if.end21.i83:                                     ; preds = %land.lhs.true18.i80.if.end21.i83_crit_edge, %land.lhs.true20.if.end21.i83_crit_edge
  %and.i88.i81 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i81)
  %tobool.i89.not.i82 = icmp eq i32 %and.i88.i81, 0
  %23 = and i32 %20, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  %or.cond133 = or i1 %tobool.i89.not.i82, %24
  br i1 %or.cond133, label %if.end31.i92, label %if.end21.i83.if.end38_crit_edge

if.end21.i83.if.end38_crit_edge:                  ; preds = %if.end21.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end31.i92:                                     ; preds = %if.end21.i83
  %and.i100.i90 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100.i90)
  %tobool.i101.not.i91 = icmp eq i32 %and.i100.i90, 0
  %or.cond135 = or i1 %tobool.i101.not.i91, %24
  br i1 %or.cond135, label %do.end.i100, label %if.end31.i92.if.end38_crit_edge

if.end31.i92.if.end38_crit_edge:                  ; preds = %if.end31.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end.i100:                                      ; preds = %if.end31.i92
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i99 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.28) #13
  br label %if.end38

land.rhs23:                                       ; preds = %land.lhs.true18.i80
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 4
  %and.i.i104 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.i.not.i105 = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.i.not.i105, label %if.then32, label %land.rhs23.if.end38_crit_edge, !prof !133

land.rhs23.if.end38_crit_edge:                    ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then32:                                        ; preds = %land.rhs23
  %caps33 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 6
  %29 = ptrtoint ptr %caps33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps33, align 4
  %padding_wa34 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %padding_wa34 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %padding_wa34, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not = icmp eq i8 %32, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_cryp_irq_write_ccm_padded_data(ptr noundef %cryp)
  br label %return

if.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_cryp_irq_set_npblb(ptr noundef %cryp)
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %land.rhs23.if.end38_crit_edge, %do.end.i100, %if.end31.i92.if.end38_crit_edge, %if.end21.i83.if.end38_crit_edge, %land.lhs.true.i68.if.end38_crit_edge, %if.end17.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %flags.i106 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %33 = ptrtoint ptr %flags.i106 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i106, align 4
  %35 = and i32 %34, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %35)
  %36 = icmp eq i32 %35, 66
  br i1 %36, label %if.then42, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  %last_ctr.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 19
  %arrayidx.i = getelementptr %struct.stm32_cryp, ptr %cryp, i32 0, i32 19, i32 3
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i = icmp eq i32 %38, -1
  br i1 %cmp.i, label %if.then.i, label %if.then42.stm32_cryp_check_ctr_counter.exit_crit_edge, !prof !133

if.then42.stm32_cryp_check_ctr_counter.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_check_ctr_counter.exit

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_inc(ptr noundef %last_ctr.i, i32 noundef 16) #10
  %regs.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !132
  %42 = and i32 %41, -8388609
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #10, !srcloc !134
  tail call fastcc void @stm32_cryp_hw_write_iv(ptr noundef %cryp, ptr noundef %last_ctr.i) #10
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %41) #10, !srcloc !134
  br label %stm32_cryp_check_ctr_counter.exit

stm32_cryp_check_ctr_counter.exit:                ; preds = %if.then.i, %if.then42.stm32_cryp_check_ctr_counter.exit_crit_edge
  %regs.i34.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %47 = ptrtoint ptr %regs.i34.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i34.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 64
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !132
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %51 = ptrtoint ptr %last_ctr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_ctr.i, align 4
  %52 = ptrtoint ptr %regs.i34.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i34.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %53, i32 68
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #10, !srcloc !132
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %arrayidx10.i = getelementptr %struct.stm32_cryp, ptr %cryp, i32 0, i32 19, i32 1
  %56 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx10.i, align 4
  %57 = ptrtoint ptr %regs.i34.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i34.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %58, i32 72
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #10, !srcloc !132
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %arrayidx13.i = getelementptr %struct.stm32_cryp, ptr %cryp, i32 0, i32 19, i32 2
  %61 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx13.i, align 4
  %62 = ptrtoint ptr %regs.i34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i34.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %63, i32 76
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #10, !srcloc !132
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %stm32_cryp_check_ctr_counter.exit, %if.end38.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block.i) #10
  %67 = call ptr @memset(ptr %block.i, i32 0, i32 16)
  %in_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 17
  %hw_blocksize.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 12
  %68 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hw_blocksize.i, align 4
  %70 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %payload_in, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %71) #10
  call void @scatterwalk_copychunks(ptr noundef nonnull %block.i, ptr noundef %in_walk.i, i32 noundef %72, i32 noundef 0) #10
  %73 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp231.not.i = icmp ult i32 %74, 4
  br i1 %cmp231.not.i, label %if.end43.stm32_cryp_irq_write_block.exit_crit_edge, label %for.body.lr.ph.i

if.end43.stm32_cryp_irq_write_block.exit_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.lr.ph.i:                                 ; preds = %if.end43
  %regs.i.i112 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i113 = getelementptr [4 x i32], ptr %block.i, i32 0, i32 %i.032.i
  %75 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i113, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #10
  %78 = ptrtoint ptr %regs.i.i112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i112, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %79, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 %77) #10, !srcloc !134
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %80 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hw_blocksize.i, align 4
  %div28.i = lshr i32 %81, 2
  %cmp2.i = icmp ult i32 %inc.i, %div28.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge

for.body.i.stm32_cryp_irq_write_block.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

stm32_cryp_irq_write_block.exit:                  ; preds = %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge, %if.end43.stm32_cryp_irq_write_block.exit_crit_edge
  %.lcssa.i = phi i32 [ %74, %if.end43.stm32_cryp_irq_write_block.exit_crit_edge ], [ %81, %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge ]
  %82 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %payload_in, align 4
  %84 = call i32 @llvm.usub.sat.i32(i32 %83, i32 %.lcssa.i) #10
  %85 = ptrtoint ptr %payload_in to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %payload_in, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block.i) #10
  br label %return

return:                                           ; preds = %stm32_cryp_irq_write_block.exit, %if.then36, %if.then15, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_finish_req(ptr noundef %cryp, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  %iv32.i = alloca [4 x i32], align 4
  %out_tag.i = alloca [4 x i32], align 4
  %in_tag.i = alloca [4 x i32], align 4
  %out_tag48.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %2 = and i32 %1, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not71 = icmp eq i32 %2, 0
  br i1 %.not71, label %land.lhs.true.land.lhs.true4_crit_edge, label %if.then

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true4

if.then:                                          ; preds = %land.lhs.true
  %regs.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !132
  %6 = and i32 %5, -75498241
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %or2.i = or i32 %7, 229376
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #10
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !134
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %areq.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 10
  %13 = ptrtoint ptr %areq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %areq.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %assoclen.i, align 8
  %mul.i = shl i32 %16, 3
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !134
  %19 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #10
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %19) #10, !srcloc !134
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i129.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.i)
  %tobool.i130.not.i = icmp eq i32 %and.i129.i, 0
  %24 = ptrtoint ptr %areq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %areq.i, align 4
  %cryptlen8.i = getelementptr inbounds %struct.aead_request, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %cryptlen8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cryptlen8.i, align 4
  br i1 %tobool.i130.not.i, label %cond.false.i, label %if.then.i.cond.end.i_crit_edge

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %authsize.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 11
  %28 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %authsize.i, align 4
  %sub.i = sub i32 %27, %29
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.false.i ], [ %27, %if.then.i.cond.end.i_crit_edge ]
  %mul9.i = shl i32 %cond.i, 3
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 0) #10, !srcloc !134
  %32 = tail call i32 @llvm.bswap.i32(i32 %mul9.i) #10
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %32) #10, !srcloc !134
  br label %if.end29.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv32.i) #10
  %35 = getelementptr inbounds [4 x i32], ptr %iv32.i, i32 0, i32 1
  %36 = getelementptr inbounds [4 x i32], ptr %iv32.i, i32 0, i32 2
  %37 = getelementptr inbounds [4 x i32], ptr %iv32.i, i32 0, i32 3
  %areq16.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 10
  %38 = ptrtoint ptr %areq16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %areq16.i, align 4
  %iv17.i = getelementptr inbounds %struct.aead_request, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %iv17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iv17.i, align 32
  %42 = call ptr @memcpy(ptr %iv32.i, ptr %41, i32 16)
  %add.ptr18.i = getelementptr inbounds i8, ptr %iv32.i, i32 15
  %43 = ptrtoint ptr %iv32.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iv32.i, align 4
  %conv.i = zext i8 %44 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr19.i = getelementptr i8, ptr %add.ptr18.i, i32 %idx.neg.i
  %add.i = add nuw nsw i32 %conv.i, 1
  %45 = call ptr @memset(ptr %add.ptr19.i, i32 0, i32 %add.i)
  %xiv.0.i = load i32, ptr %iv32.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %xiv.0.i) #10
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 %46) #10, !srcloc !134
  %49 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %xiv.0.1.i = load i32, ptr %35, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %xiv.0.1.i) #10
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i136.1.i = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.1.i, i32 %50) #10, !srcloc !134
  %53 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %xiv.0.2.i = load i32, ptr %36, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %xiv.0.2.i) #10
  %55 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i136.2.i = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.2.i, i32 %54) #10, !srcloc !134
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %xiv.0.3.i = load i32, ptr %37, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %xiv.0.3.i) #10
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i136.3.i = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.3.i, i32 %58) #10, !srcloc !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv32.i) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %cond.end.i
  %call.i.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call.i.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 253) #10
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i) #10, !srcloc !132
  %64 = and i32 %63, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not38.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not38.i.i, label %if.end29.i.land.lhs.true.i.i_crit_edge, label %if.end29.i.if.end33.i_crit_edge

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.end29.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end29.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then23.i.i.land.lhs.true.i.i_crit_edge, %if.end29.i.land.lhs.true.i.i_crit_edge
  %call12.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i) #10, !srcloc !132
  %68 = and i32 %67, 67108864
  %tobool.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i, label %if.then23.i.i.land.lhs.true.i.i_crit_edge, label %if.then23.i.i.if.end33.i_crit_edge

if.then23.i.i.if.end33.i_crit_edge:               ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then23.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #10, !srcloc !132
  %72 = and i32 %71, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool27.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool27.not.i.i, label %do.end.i, label %for.end.i.i.if.end33.i_crit_edge

for.end.i.i.if.end33.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.end.i:                                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.39) #13
  br label %if.end11

if.end33.i:                                       ; preds = %for.end.i.i.if.end33.i_crit_edge, %if.then23.i.i.if.end33.i_crit_edge, %if.end29.i.if.end33.i_crit_edge
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 4
  %and.i140.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i)
  %tobool.i141.not.i = icmp eq i32 %and.i140.i, 0
  br i1 %tobool.i141.not.i, label %if.else47.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out_tag.i) #10
  %77 = getelementptr inbounds [4 x i32], ptr %out_tag.i, i32 0, i32 1
  %78 = getelementptr inbounds [4 x i32], ptr %out_tag.i, i32 0, i32 2
  %79 = getelementptr inbounds [4 x i32], ptr %out_tag.i, i32 0, i32 3
  %80 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %81, i32 12
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.i) #10, !srcloc !132
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  %84 = ptrtoint ptr %out_tag.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %out_tag.i, align 4
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i143.1.i = getelementptr i8, ptr %86, i32 12
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.1.i) #10, !srcloc !132
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #10
  %89 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %77, align 4
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i143.2.i = getelementptr i8, ptr %91, i32 12
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.2.i) #10, !srcloc !132
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %78, align 4
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i143.3.i = getelementptr i8, ptr %96, i32 12
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.3.i) #10, !srcloc !132
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  %99 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %79, align 4
  %out_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 18
  %authsize46.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 11
  %100 = ptrtoint ptr %authsize46.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %authsize46.i, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %out_tag.i, ptr noundef %out_walk.i, i32 noundef %101, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_tag.i) #10
  br label %if.end

if.else47.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in_tag.i) #10
  %102 = call ptr @memset(ptr %in_tag.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out_tag48.i) #10
  %103 = getelementptr inbounds [4 x i32], ptr %out_tag48.i, i32 0, i32 1
  %104 = getelementptr inbounds [4 x i32], ptr %out_tag48.i, i32 0, i32 2
  %105 = getelementptr inbounds [4 x i32], ptr %out_tag48.i, i32 0, i32 3
  %in_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 17
  %authsize50.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 11
  %106 = ptrtoint ptr %authsize50.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %authsize50.i, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %in_tag.i, ptr noundef %in_walk.i, i32 noundef %107, i32 noundef 0) #10
  %108 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %109, i32 12
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.i) #10, !srcloc !132
  %111 = call i32 @llvm.bswap.i32(i32 %110) #10
  %112 = ptrtoint ptr %out_tag48.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %out_tag48.i, align 4
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i145.1.i = getelementptr i8, ptr %114, i32 12
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.1.i) #10, !srcloc !132
  %116 = call i32 @llvm.bswap.i32(i32 %115) #10
  %117 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %103, align 4
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i145.2.i = getelementptr i8, ptr %119, i32 12
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.2.i) #10, !srcloc !132
  %121 = call i32 @llvm.bswap.i32(i32 %120) #10
  %122 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %104, align 4
  %123 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i145.3.i = getelementptr i8, ptr %124, i32 12
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.3.i) #10, !srcloc !132
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  %127 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %105, align 4
  %128 = ptrtoint ptr %authsize50.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %authsize50.i, align 4
  %call.i146.i = call i32 @__crypto_memneq(ptr noundef nonnull %in_tag.i, ptr noundef nonnull %out_tag48.i, i32 noundef %129) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i146.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_tag48.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_tag.i) #10
  %spec.select = select i1 %cmp.not.i.not.i, i32 0, i32 -74
  br label %if.end

if.end:                                           ; preds = %if.else47.i, %if.then35.i
  %ret.1.i = phi i32 [ 0, %if.then35.i ], [ %spec.select, %if.else47.i ]
  %and68.i = or i32 %7, 196608
  %130 = call i32 @llvm.bswap.i32(i32 %and68.i) #10
  %131 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #10, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool3.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool3.not, label %if.end.land.lhs.true4_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.land.lhs.true4_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end.land.lhs.true4_crit_edge, %land.lhs.true.land.lhs.true4_crit_edge
  %133 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags.i, align 4
  %135 = and i32 %134, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %.not72 = icmp eq i32 %135, 0
  br i1 %.not72, label %if.then10, label %land.lhs.true4.if.end11_crit_edge

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true4
  %req1.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 9
  %136 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %req1.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iv.i, align 4
  %tobool.not.i = icmp eq ptr %139, null
  br i1 %tobool.not.i, label %if.then10.if.end11_crit_edge, label %if.end.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i:                                         ; preds = %if.then10
  %regs.i.i49 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %140 = ptrtoint ptr %regs.i.i49 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %141, i32 64
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #10, !srcloc !132
  %143 = call i32 @llvm.bswap.i32(i32 %142) #10
  %incdec.ptr.i = getelementptr i32, ptr %139, i32 1
  %144 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %139, align 4
  %145 = ptrtoint ptr %regs.i.i49 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i49, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %146, i32 68
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #10, !srcloc !132
  %148 = call i32 @llvm.bswap.i32(i32 %147) #10
  %149 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %incdec.ptr.i, align 4
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i, align 4
  %and.i.i52 = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.i.not.i53 = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.i.not.i53, label %if.end.i.if.end11_crit_edge, label %if.then5.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr3.i = getelementptr i32, ptr %139, i32 2
  %152 = ptrtoint ptr %regs.i.i49 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i49, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %153, i32 72
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #10, !srcloc !132
  %155 = call i32 @llvm.bswap.i32(i32 %154) #10
  %incdec.ptr7.i = getelementptr i32, ptr %139, i32 3
  %156 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %incdec.ptr3.i, align 4
  %157 = ptrtoint ptr %regs.i.i49 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i49, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %158, i32 76
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #10, !srcloc !132
  %160 = call i32 @llvm.bswap.i32(i32 %159) #10
  %161 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %incdec.ptr7.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5.i, %if.end.i.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %land.lhs.true4.if.end11_crit_edge, %if.end.if.end11_crit_edge, %do.end.i, %entry.if.end11_crit_edge
  %err.addr.063 = phi i32 [ 0, %land.lhs.true4.if.end11_crit_edge ], [ %ret.1.i, %if.end.if.end11_crit_edge ], [ 0, %if.then10.if.end11_crit_edge ], [ 0, %if.end.i.if.end11_crit_edge ], [ 0, %if.then5.i ], [ -110, %do.end.i ], [ %err, %entry.if.end11_crit_edge ]
  %dev = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  %call.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %163, i32 0, i32 12, i32 22
  %164 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  %call.i54 = call i32 @__pm_runtime_suspend(ptr noundef %166, i32 noundef 13) #10
  %flags.i55 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %167 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags.i55, align 4
  %169 = and i32 %168, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %.not = icmp eq i32 %169, 0
  %engine18 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 8
  %170 = ptrtoint ptr %engine18 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %engine18, align 4
  br i1 %.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %areq = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 10
  %172 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %areq, align 4
  call void @crypto_finalize_aead_request(ptr noundef %171, ptr noundef %173, i32 noundef %err.addr.063) #10
  br label %if.end19

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %req = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 9
  %174 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %req, align 4
  call void @crypto_finalize_skcipher_request(ptr noundef %171, ptr noundef %175, i32 noundef %err.addr.063) #10
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef %cryp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %header_in = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 14
  %0 = ptrtoint ptr %header_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %header_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 232) #10
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #10, !srcloc !132
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not38.i = icmp eq i32 %5, 0
  br i1 %tobool.not38.i, label %if.then.if.end_crit_edge, label %if.then.land.lhs.true.i_crit_edge

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  br label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !132
  %9 = and i32 %8, 268435456
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then23.i.if.end_crit_edge, label %if.then23.i.land.lhs.true.i_crit_edge

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.then23.i.if.end_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !132
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not.i = icmp eq i32 %13, 0
  br i1 %tobool27.not.i, label %for.end.i.if.end_crit_edge, label %do.end

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23) #13
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #10, !srcloc !134
  tail call fastcc void @stm32_cryp_finish_req(ptr noundef %cryp, i32 noundef -110)
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then23.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %flags.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %areq1.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 10
  %20 = ptrtoint ptr %areq1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %areq1.i, align 4
  %cryptlen2.i = getelementptr inbounds %struct.aead_request, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %cryptlen2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cryptlen2.i, align 4
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.stm32_cryp_get_input_text_len.exit_crit_edge

if.end.stm32_cryp_get_input_text_len.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_get_input_text_len.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %authsize.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 11
  %24 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %authsize.i, align 4
  %sub.i = sub i32 %23, %25
  br label %stm32_cryp_get_input_text_len.exit

stm32_cryp_get_input_text_len.exit:               ; preds = %cond.false.i, %if.end.stm32_cryp_get_input_text_len.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.false.i ], [ %23, %if.end.stm32_cryp_get_input_text_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool4.not = icmp eq i32 %cond.i, 0
  br i1 %tobool4.not, label %stm32_cryp_get_input_text_len.exit.cleanup_crit_edge, label %if.then5

stm32_cryp_get_input_text_len.exit.cleanup_crit_edge: ; preds = %stm32_cryp_get_input_text_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %stm32_cryp_get_input_text_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !132
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  %and = and i32 %29, -32769
  %30 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !134
  %and7 = and i32 %29, -229377
  %or = or i32 %and7, 163840
  %33 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #10, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %stm32_cryp_get_input_text_len.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_gcm_padded_data(ptr noundef %cryp) unnamed_addr #2 align 64 {
entry:
  %block.i = alloca [4 x i32], align 4
  %block = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block) #10
  %0 = call ptr @memset(ptr %block, i32 0, i32 16)
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !134
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !132
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %and = and i32 %6, -32769
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #10, !srcloc !134
  %gcm_ctr = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 20
  %10 = ptrtoint ptr %gcm_ctr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gcm_ctr, align 4
  %sub = add i32 %11, -2
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %12) #10, !srcloc !134
  %and1 = and i32 %6, -557113
  %or = or i32 %and1, 48
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !134
  %or2 = or i32 %and1, 32816
  %18 = tail call i32 @llvm.bswap.i32(i32 %or2) #10
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block.i) #10
  %21 = call ptr @memset(ptr %block.i, i32 0, i32 16)
  %in_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 17
  %hw_blocksize.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 12
  %22 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_blocksize.i, align 4
  %payload_in.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 13
  %24 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %payload_in.i, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25) #10
  call void @scatterwalk_copychunks(ptr noundef nonnull %block.i, ptr noundef %in_walk.i, i32 noundef %26, i32 noundef 0) #10
  %27 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp231.not.i = icmp ult i32 %28, 4
  br i1 %cmp231.not.i, label %entry.stm32_cryp_irq_write_block.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.stm32_cryp_irq_write_block.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr %block.i, i32 0, i32 %i.032.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #10
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #10, !srcloc !134
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %34 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_blocksize.i, align 4
  %div28.i = lshr i32 %35, 2
  %cmp2.i = icmp ult i32 %inc.i, %div28.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge

for.body.i.stm32_cryp_irq_write_block.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

stm32_cryp_irq_write_block.exit:                  ; preds = %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge, %entry.stm32_cryp_irq_write_block.exit_crit_edge
  %.lcssa.i = phi i32 [ %28, %entry.stm32_cryp_irq_write_block.exit_crit_edge ], [ %35, %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge ]
  %36 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %payload_in.i, align 4
  %38 = call i32 @llvm.usub.sat.i32(i32 %37, i32 %.lcssa.i) #10
  %39 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %payload_in.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block.i) #10
  %call.i = call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 253) #10
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %41, i32 4
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #10, !srcloc !132
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not38.i = icmp eq i32 %43, 0
  br i1 %tobool.not38.i, label %stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge, label %stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge

stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge: ; preds = %stm32_cryp_irq_write_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge: ; preds = %stm32_cryp_irq_write_block.exit
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge
  %call12.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %45, i32 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #10, !srcloc !132
  %47 = and i32 %46, 67108864
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.then23.i.land.lhs.true.i_crit_edge, label %if.then23.i.stm32_cryp_wait_output.exit_crit_edge

if.then23.i.stm32_cryp_wait_output.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %49, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !132
  %51 = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool27.not.i = icmp eq i32 %51, 0
  br i1 %tobool27.not.i, label %do.end, label %for.end.i.stm32_cryp_wait_output.exit_crit_edge

for.end.i.stm32_cryp_wait_output.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

stm32_cryp_wait_output.exit:                      ; preds = %for.end.i.stm32_cryp_wait_output.exit_crit_edge, %if.then23.i.stm32_cryp_wait_output.exit_crit_edge, %stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge
  %52 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp139.not = icmp ult i32 %53, 4
  br i1 %cmp139.not, label %stm32_cryp_wait_output.exit.for.end_crit_edge, label %stm32_cryp_wait_output.exit.for.body_crit_edge

stm32_cryp_wait_output.exit.for.body_crit_edge:   ; preds = %stm32_cryp_wait_output.exit
  br label %for.body

stm32_cryp_wait_output.exit.for.end_crit_edge:    ; preds = %stm32_cryp_wait_output.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.30) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stm32_cryp_wait_output.exit.for.body_crit_edge
  %i.0140 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %stm32_cryp_wait_output.exit.for.body_crit_edge ]
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %57, i32 12
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #10, !srcloc !132
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10
  %arrayidx = getelementptr [4 x i32], ptr %block, i32 0, i32 %i.0140
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0140, 1
  %61 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_blocksize.i, align 4
  %div101 = lshr i32 %62, 2
  %cmp = icmp ult i32 %inc, %div101
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stm32_cryp_wait_output.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %53, %stm32_cryp_wait_output.exit.for.end_crit_edge ], [ %62, %for.body.for.end_crit_edge ]
  %out_walk = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 18
  %payload_out = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 15
  %63 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %payload_out, align 4
  %65 = call i32 @llvm.umin.i32(i32 %.lcssa, i32 %64)
  call void @scatterwalk_copychunks(ptr noundef nonnull %block, ptr noundef %out_walk, i32 noundef %65, i32 noundef 1) #10
  %66 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_blocksize.i, align 4
  %68 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %payload_out, align 4
  %70 = call i32 @llvm.usub.sat.i32(i32 %69, i32 %67)
  %71 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %payload_out, align 4
  %or18 = or i32 %and1, 557056
  %72 = call i32 @llvm.bswap.i32(i32 %or18) #10
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #10, !srcloc !134
  %or20 = or i32 %and1, 753664
  %75 = call i32 @llvm.bswap.i32(i32 %or20) #10
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #10, !srcloc !134
  %78 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %block, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #10
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %82, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %80) #10, !srcloc !134
  %arrayidx24.1 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx24.1, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #10
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115.1 = getelementptr i8, ptr %87, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.1, i32 %85) #10, !srcloc !134
  %arrayidx24.2 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx24.2, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #10
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115.2 = getelementptr i8, ptr %92, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.2, i32 %90) #10, !srcloc !134
  %arrayidx24.3 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx24.3, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115.3 = getelementptr i8, ptr %97, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.3, i32 %95) #10, !srcloc !134
  %call.i116 = call i64 @ktime_get() #10
  %add.i.i117 = add i64 %call.i116, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 253) #10
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i119 = getelementptr i8, ptr %99, i32 4
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i119) #10, !srcloc !132
  %101 = and i32 %100, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not38.i120 = icmp eq i32 %101, 0
  br i1 %tobool.not38.i120, label %for.end.land.lhs.true.i123_crit_edge, label %for.end.stm32_cryp_wait_output.exit131_crit_edge

for.end.stm32_cryp_wait_output.exit131_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit131

for.end.land.lhs.true.i123_crit_edge:             ; preds = %for.end
  br label %land.lhs.true.i123

land.lhs.true.i123:                               ; preds = %if.then23.i126.land.lhs.true.i123_crit_edge, %for.end.land.lhs.true.i123_crit_edge
  %call12.i121 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i121, i64 %add.i.i117)
  %cmp3.i.i122 = icmp sgt i64 %call12.i121, %add.i.i117
  br i1 %cmp3.i.i122, label %for.end.i130, label %if.then23.i126

if.then23.i126:                                   ; preds = %land.lhs.true.i123
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %103, i32 4
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #10, !srcloc !132
  %105 = and i32 %104, 67108864
  %tobool.not.i125 = icmp eq i32 %105, 0
  br i1 %tobool.not.i125, label %if.then23.i126.land.lhs.true.i123_crit_edge, label %if.then23.i126.stm32_cryp_wait_output.exit131_crit_edge

if.then23.i126.stm32_cryp_wait_output.exit131_crit_edge: ; preds = %if.then23.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit131

if.then23.i126.land.lhs.true.i123_crit_edge:      ; preds = %if.then23.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i123

for.end.i130:                                     ; preds = %land.lhs.true.i123
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i127 = getelementptr i8, ptr %107, i32 4
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i127) #10, !srcloc !132
  %109 = and i32 %108, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool27.not.i128 = icmp eq i32 %109, 0
  br i1 %tobool27.not.i128, label %do.end33, label %for.end.i130.stm32_cryp_wait_output.exit131_crit_edge

for.end.i130.stm32_cryp_wait_output.exit131_crit_edge: ; preds = %for.end.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit131

stm32_cryp_wait_output.exit131:                   ; preds = %for.end.i130.stm32_cryp_wait_output.exit131_crit_edge, %if.then23.i126.stm32_cryp_wait_output.exit131_crit_edge, %for.end.stm32_cryp_wait_output.exit131_crit_edge
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %111, i32 12
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #10, !srcloc !132
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133.1 = getelementptr i8, ptr %114, i32 12
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.1) #10, !srcloc !132
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133.2 = getelementptr i8, ptr %117, i32 12
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.2) #10, !srcloc !132
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133.3 = getelementptr i8, ptr %120, i32 12
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.3) #10, !srcloc !132
  br label %cleanup

do.end33:                                         ; preds = %for.end.i130
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %122 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.33) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %stm32_cryp_wait_output.exit131, %do.end
  %.sink = phi i32 [ 0, %stm32_cryp_wait_output.exit131 ], [ -110, %do.end33 ], [ -110, %do.end ]
  call fastcc void @stm32_cryp_finish_req(ptr noundef %cryp, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_set_npblb(ptr nocapture noundef readonly %cryp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !132
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %and = and i32 %3, -32769
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #10, !srcloc !134
  %hw_blocksize = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 12
  %7 = ptrtoint ptr %hw_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_blocksize, align 4
  %payload_in = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 13
  %9 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %payload_in, align 4
  %sub = sub i32 %8, %10
  %shl = shl i32 %sub, 20
  %or = or i32 %3, %shl
  %or1 = or i32 %or, 32768
  %11 = tail call i32 @llvm.bswap.i32(i32 %or1) #10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #10, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_ccm_padded_data(ptr noundef %cryp) unnamed_addr #2 align 64 {
entry:
  %block.i = alloca [4 x i32], align 4
  %block = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block) #10
  %0 = call ptr @memset(ptr %block, i32 0, i32 16)
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !134
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !132
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %and = and i32 %6, -32769
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #10, !srcloc !134
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %11, i32 108
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #10, !srcloc !132
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #10, !srcloc !132
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i136.1 = getelementptr i8, ptr %18, i32 84
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.1) #10, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i136.2 = getelementptr i8, ptr %22, i32 88
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.2) #10, !srcloc !132
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i136.3 = getelementptr i8, ptr %26, i32 92
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.3) #10, !srcloc !132
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %30, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %12) #10, !srcloc !134
  %and3 = and i32 %6, -557113
  %or = or i32 %and3, 48
  %31 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !134
  %or4 = or i32 %and3, 32816
  %34 = tail call i32 @llvm.bswap.i32(i32 %or4) #10
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #10, !srcloc !134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block.i) #10
  %37 = call ptr @memset(ptr %block.i, i32 0, i32 16)
  %in_walk.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 17
  %hw_blocksize.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 12
  %38 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_blocksize.i, align 4
  %payload_in.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 13
  %40 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %payload_in.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41) #10
  call void @scatterwalk_copychunks(ptr noundef nonnull %block.i, ptr noundef %in_walk.i, i32 noundef %42, i32 noundef 0) #10
  %43 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp231.not.i = icmp ult i32 %44, 4
  br i1 %cmp231.not.i, label %entry.stm32_cryp_irq_write_block.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.stm32_cryp_irq_write_block.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr %block.i, i32 0, i32 %i.032.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #10
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %47) #10, !srcloc !134
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %50 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_blocksize.i, align 4
  %div28.i = lshr i32 %51, 2
  %cmp2.i = icmp ult i32 %inc.i, %div28.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge

for.body.i.stm32_cryp_irq_write_block.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_irq_write_block.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

stm32_cryp_irq_write_block.exit:                  ; preds = %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge, %entry.stm32_cryp_irq_write_block.exit_crit_edge
  %.lcssa.i = phi i32 [ %44, %entry.stm32_cryp_irq_write_block.exit_crit_edge ], [ %51, %for.body.i.stm32_cryp_irq_write_block.exit_crit_edge ]
  %52 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %payload_in.i, align 4
  %54 = call i32 @llvm.usub.sat.i32(i32 %53, i32 %.lcssa.i) #10
  %55 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %payload_in.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block.i) #10
  %call.i = call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 253) #10
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %57, i32 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #10, !srcloc !132
  %59 = and i32 %58, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not38.i = icmp eq i32 %59, 0
  br i1 %tobool.not38.i, label %stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge, label %stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge

stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge: ; preds = %stm32_cryp_irq_write_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge: ; preds = %stm32_cryp_irq_write_block.exit
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %stm32_cryp_irq_write_block.exit.land.lhs.true.i_crit_edge
  %call12.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %61, i32 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #10, !srcloc !132
  %63 = and i32 %62, 67108864
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %if.then23.i.land.lhs.true.i_crit_edge, label %if.then23.i.stm32_cryp_wait_output.exit_crit_edge

if.then23.i.stm32_cryp_wait_output.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %65, i32 4
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !132
  %67 = and i32 %66, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool27.not.i = icmp eq i32 %67, 0
  br i1 %tobool27.not.i, label %for.end.i.cleanup.sink.split_crit_edge, label %for.end.i.stm32_cryp_wait_output.exit_crit_edge

for.end.i.stm32_cryp_wait_output.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_wait_output.exit

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

stm32_cryp_wait_output.exit:                      ; preds = %for.end.i.stm32_cryp_wait_output.exit_crit_edge, %if.then23.i.stm32_cryp_wait_output.exit_crit_edge, %stm32_cryp_irq_write_block.exit.stm32_cryp_wait_output.exit_crit_edge
  %68 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hw_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp7170.not = icmp ult i32 %69, 4
  br i1 %cmp7170.not, label %stm32_cryp_wait_output.exit.for.end13_crit_edge, label %stm32_cryp_wait_output.exit.for.body8_crit_edge

stm32_cryp_wait_output.exit.for.body8_crit_edge:  ; preds = %stm32_cryp_wait_output.exit
  br label %for.body8

stm32_cryp_wait_output.exit.for.end13_crit_edge:  ; preds = %stm32_cryp_wait_output.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %stm32_cryp_wait_output.exit.for.body8_crit_edge
  %i.1171 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 0, %stm32_cryp_wait_output.exit.for.body8_crit_edge ]
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %71, i32 12
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #10, !srcloc !132
  %73 = call i32 @llvm.bswap.i32(i32 %72) #10
  %arrayidx10 = getelementptr [4 x i32], ptr %block, i32 0, i32 %i.1171
  %74 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx10, align 4
  %inc12 = add nuw nsw i32 %i.1171, 1
  %75 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hw_blocksize.i, align 4
  %div130 = lshr i32 %76, 2
  %cmp7 = icmp ult i32 %inc12, %div130
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end13_crit_edge

for.body8.for.end13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end13:                                        ; preds = %for.body8.for.end13_crit_edge, %stm32_cryp_wait_output.exit.for.end13_crit_edge
  %.lcssa = phi i32 [ %69, %stm32_cryp_wait_output.exit.for.end13_crit_edge ], [ %76, %for.body8.for.end13_crit_edge ]
  %out_walk = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 18
  %payload_out = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 15
  %77 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %payload_out, align 4
  %79 = call i32 @llvm.umin.i32(i32 %.lcssa, i32 %78)
  call void @scatterwalk_copychunks(ptr noundef nonnull %block, ptr noundef %out_walk, i32 noundef %79, i32 noundef 1) #10
  %80 = ptrtoint ptr %hw_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hw_blocksize.i, align 4
  %82 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %payload_out, align 4
  %84 = call i32 @llvm.usub.sat.i32(i32 %83, i32 %81)
  %85 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %payload_out, align 4
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %87, i32 80
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #10, !srcloc !132
  %89 = call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146.1 = getelementptr i8, ptr %91, i32 84
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.1) #10, !srcloc !132
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146.2 = getelementptr i8, ptr %95, i32 88
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.2) #10, !srcloc !132
  %97 = call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146.3 = getelementptr i8, ptr %99, i32 92
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.3) #10, !srcloc !132
  %101 = call i32 @llvm.bswap.i32(i32 %100) #10
  %or36 = or i32 %and3, 557064
  %102 = call i32 @llvm.bswap.i32(i32 %or36) #10
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #10, !srcloc !134
  %and37 = and i32 %or36, -196657
  %or38 = or i32 %and37, 65536
  %105 = call i32 @llvm.bswap.i32(i32 %or38) #10
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #10, !srcloc !134
  %108 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %block, align 4
  %xor = xor i32 %109, %16
  %xor46 = xor i32 %89, %xor
  store i32 %xor46, ptr %block, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %xor46) #10
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %112, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %110) #10, !srcloc !134
  %arrayidx43.1 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx43.1, align 4
  %xor.1 = xor i32 %114, %20
  %xor46.1 = xor i32 %93, %xor.1
  store i32 %xor46.1, ptr %arrayidx43.1, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %xor46.1) #10
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150.1 = getelementptr i8, ptr %117, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.1, i32 %115) #10, !srcloc !134
  %arrayidx43.2 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx43.2, align 4
  %xor.2 = xor i32 %119, %24
  %xor46.2 = xor i32 %97, %xor.2
  store i32 %xor46.2, ptr %arrayidx43.2, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %xor46.2) #10
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150.2 = getelementptr i8, ptr %122, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.2, i32 %120) #10, !srcloc !134
  %arrayidx43.3 = getelementptr inbounds [4 x i32], ptr %block, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx43.3, align 4
  %xor.3 = xor i32 %124, %28
  %xor46.3 = xor i32 %101, %xor.3
  store i32 %xor46.3, ptr %arrayidx43.3, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %xor46.3) #10
  %126 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150.3 = getelementptr i8, ptr %127, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.3, i32 %125) #10, !srcloc !134
  %call.i151 = call i64 @ktime_get() #10
  %add.i.i152 = add i64 %call.i151, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 232) #10
  %128 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i154 = getelementptr i8, ptr %129, i32 4
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i154) #10, !srcloc !132
  %131 = and i32 %130, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not38.i155 = icmp eq i32 %131, 0
  br i1 %tobool.not38.i155, label %for.end13.cleanup_crit_edge, label %for.end13.land.lhs.true.i158_crit_edge

for.end13.land.lhs.true.i158_crit_edge:           ; preds = %for.end13
  br label %land.lhs.true.i158

for.end13.cleanup_crit_edge:                      ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i158:                               ; preds = %if.then23.i161.land.lhs.true.i158_crit_edge, %for.end13.land.lhs.true.i158_crit_edge
  %call12.i156 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i156, i64 %add.i.i152)
  %cmp3.i.i157 = icmp sgt i64 %call12.i156, %add.i.i152
  br i1 %cmp3.i.i157, label %for.end.i164, label %if.then23.i161

if.then23.i161:                                   ; preds = %land.lhs.true.i158
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %133, i32 4
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #10, !srcloc !132
  %135 = and i32 %134, 268435456
  %tobool.not.i160 = icmp eq i32 %135, 0
  br i1 %tobool.not.i160, label %if.then23.i161.cleanup_crit_edge, label %if.then23.i161.land.lhs.true.i158_crit_edge

if.then23.i161.land.lhs.true.i158_crit_edge:      ; preds = %if.then23.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i158

if.then23.i161.cleanup_crit_edge:                 ; preds = %if.then23.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.i164:                                     ; preds = %land.lhs.true.i158
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i162 = getelementptr i8, ptr %137, i32 4
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i162) #10, !srcloc !132
  %139 = and i32 %138, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool27.not.i163 = icmp eq i32 %139, 0
  br i1 %tobool27.not.i163, label %for.end.i164.cleanup_crit_edge, label %for.end.i164.cleanup.sink.split_crit_edge

for.end.i164.cleanup.sink.split_crit_edge:        ; preds = %for.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end.i164.cleanup_crit_edge:                   ; preds = %for.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.i164.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge
  %dev57 = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 1
  %140 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.35) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.i164.cleanup_crit_edge, %if.then23.i161.cleanup_crit_edge, %for.end13.cleanup_crit_edge
  %.sink = phi i32 [ 0, %for.end13.cleanup_crit_edge ], [ 0, %for.end.i164.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then23.i161.cleanup_crit_edge ]
  call fastcc void @stm32_cryp_finish_req(ptr noundef %cryp, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_hw_write_iv(ptr nocapture noundef readonly %cryp, ptr noundef readonly %iv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iv, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %iv, i32 1
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iv, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %regs.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #10, !srcloc !134
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %7) #10, !srcloc !134
  %flags.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr1 = getelementptr i32, ptr %iv, i32 2
  %incdec.ptr3 = getelementptr i32, ptr %iv, i32 3
  %12 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr1, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %14) #10, !srcloc !134
  %17 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr3, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %19) #10, !srcloc !134
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.return_crit_edge [
    i32 16, label %entry.if.else_crit_edge
    i32 24, label %entry.if.else_crit_edge7
    i32 32, label %entry.if.else_crit_edge8
  ]

entry.if.else_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.else_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge7, %entry.if.else_crit_edge8
  %key1.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %1 = call ptr @memcpy(ptr %key1.i, ptr %key, i32 %keylen)
  %keylen2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %2 = ptrtoint ptr %keylen2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen2.i, align 4
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 19, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 18, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_cryp_init_tfm(ptr nocapture noundef writeonly %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %tfm, align 128
  %do_one_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @stm32_cryp_cipher_one_req, ptr %do_one_request, align 4
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stm32_cryp_prepare_cipher_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %unprepare_request, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 35, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 34, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 66, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #10
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #10, !srcloc !137
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %cond.false, label %verify_skcipher_des_key.exit.cond.end_crit_edge

verify_skcipher_des_key.exit.cond.end_crit_edge:  ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  %key1.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %4 = call ptr @memcpy(ptr %key1.i, ptr %key, i32 %keylen)
  %keylen2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %5 = ptrtoint ptr %keylen2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keylen, ptr %keylen2.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des_key.exit.cond.end_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 21, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 37, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 36, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_setkey(ptr nocapture noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #10
  %2 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %6 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %14 = icmp eq i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %15 = icmp eq i32 %11, %13
  %tobool.not.i.i.i = and i1 %14, %15
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %entry
  %16 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %17 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %19)
  %22 = icmp ne i32 %9, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %23 = icmp ne i32 %13, %21
  %tobool12.not.not.i.i.i = or i1 %22, %23
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.cond.false_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.cond.false_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.cond.false_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.cond.false_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #10, !srcloc !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #10, !srcloc !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #10
  %key1.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %26 = call ptr @memcpy(ptr %key1.i, ptr %key, i32 %keylen)
  %keylen2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %27 = ptrtoint ptr %keylen2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %keylen, ptr %keylen2.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i6 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %cond.false ]
  ret i32 %ret.0.i.i.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 25, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 24, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 41, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end3
  %6 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %6, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %6
  %7 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.return_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.return_crit_edge:      ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %5, %stm32_cryp_find_dev.exit.thread.i ], [ %6, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 40, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_cipher_one_req(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %cryp2 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %cryp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cryp2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 50331648) #10, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_prepare_cipher_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %call = tail call fastcc i32 @stm32_cryp_prepare_req(ptr noundef %add.ptr, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_cryp_prepare_req(ptr noundef %req, ptr noundef %areq) unnamed_addr #2 align 64 {
entry:
  %block.i.i.i = alloca [4 x i32], align 4
  %iv_32.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  %tobool1.not = icmp eq ptr %areq, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end
  %tfm.i143 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i143 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i143, align 16
  %cryp6 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %cryp6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cryp6, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %cond.end.cleanup_crit_edge, label %cond.false13

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end.thread:                                  ; preds = %if.end
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %cryp6167 = getelementptr i8, ptr %5, i32 140
  %6 = ptrtoint ptr %cryp6167 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cryp6167, align 4
  %tobool7.not168 = icmp eq ptr %7, null
  br i1 %tobool7.not168, label %cond.end.thread.cleanup_crit_edge, label %cond.true11

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true11:                                      ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %__ctx.i146 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true11
  %.pn = phi ptr [ %5, %cond.true11 ], [ %1, %cond.false13 ]
  %cryp6170173 = phi ptr [ %cryp6167, %cond.true11 ], [ %cryp6, %cond.false13 ]
  %8 = phi ptr [ %7, %cond.true11 ], [ %3, %cond.false13 ]
  %cond16 = phi ptr [ %__ctx.i, %cond.true11 ], [ %__ctx.i146, %cond.false13 ]
  %cond169175 = getelementptr i8, ptr %.pn, i32 128
  %9 = ptrtoint ptr %cond16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond16, align 4
  %and = and i32 %10, 65535
  store i32 %and, ptr %cond16, align 4
  %11 = ptrtoint ptr %cryp6170173 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %cryp6170173, align 4
  %flags = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and18 = and i32 %13, -65536
  %14 = load i32, ptr %cond16, align 4
  %or = or i32 %and18, %14
  store i32 %or, ptr %flags, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond22 = select i1 %tobool.i.not, i32 8, i32 16
  %hw_blocksize = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 12
  %15 = ptrtoint ptr %hw_blocksize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond22, ptr %hw_blocksize, align 4
  %ctx23 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 7
  %16 = ptrtoint ptr %ctx23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond169175, ptr %ctx23, align 4
  br i1 %tobool.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  %req26 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 9
  %17 = ptrtoint ptr %req26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req, ptr %req26, align 4
  %areq27 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 10
  %18 = ptrtoint ptr %areq27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %areq27, align 4
  %header_in = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 14
  %19 = ptrtoint ptr %header_in to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %header_in, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  %payload_in = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 13
  %22 = ptrtoint ptr %payload_in to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %payload_in, align 4
  %23 = load i32, ptr %req, align 128
  %payload_out = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 15
  %24 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %payload_out, align 4
  %authsize = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 11
  %25 = ptrtoint ptr %authsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %authsize, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond56.c141 = load ptr, ptr %src, align 4
  %in_walk.c142 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 17
  %27 = ptrtoint ptr %in_walk.c142 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond56.c141, ptr %in_walk.c142, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %cond56.c141, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %offset2.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %offset2.i, align 4
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  br label %cond.end61

if.else:                                          ; preds = %cond.end15
  %areq29 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 10
  %31 = ptrtoint ptr %areq29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %areq, ptr %areq29, align 4
  %req30 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 9
  %32 = ptrtoint ptr %req30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %req30, align 4
  %tfm.i147 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %33 = ptrtoint ptr %tfm.i147 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfm.i147, align 16
  %add.ptr.i.i148 = getelementptr i8, ptr %34, i32 -128
  %35 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i148, align 128
  %authsize33 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 11
  %37 = ptrtoint ptr %authsize33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %authsize33, align 4
  %and.i150 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.i151.not = icmp eq i32 %and.i150, 0
  %cryptlen42 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 2
  %38 = ptrtoint ptr %cryptlen42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cryptlen42, align 4
  br i1 %tobool.i151.not, label %if.else41, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %payload_in37 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 13
  %40 = ptrtoint ptr %payload_in37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %payload_in37, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 1
  %41 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assoclen, align 8
  %header_in38 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 14
  %43 = ptrtoint ptr %header_in38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %header_in38, align 4
  %44 = ptrtoint ptr %cryptlen42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cryptlen42, align 4
  br label %cond.false53

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %39, %36
  %payload_in44 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 13
  %46 = ptrtoint ptr %payload_in44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %payload_in44, align 4
  %assoclen45 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 1
  %47 = ptrtoint ptr %assoclen45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %assoclen45, align 8
  %header_in46 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 14
  %49 = ptrtoint ptr %header_in46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %header_in46, align 4
  br label %cond.false53

cond.false53:                                     ; preds = %if.else41, %if.then35
  %.sink = phi i32 [ %sub, %if.else41 ], [ %45, %if.then35 ]
  %50 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 15
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %50, align 4
  %src54 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %52 = ptrtoint ptr %src54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %cond56.c = load ptr, ptr %src54, align 4
  %in_walk.c = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 17
  %53 = ptrtoint ptr %in_walk.c to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cond56.c, ptr %in_walk.c, align 4
  %offset.i152 = getelementptr inbounds %struct.scatterlist, ptr %cond56.c, i32 0, i32 1
  %54 = ptrtoint ptr %offset.i152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i152, align 4
  %offset2.i153 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 17, i32 1
  %56 = ptrtoint ptr %offset2.i153 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %offset2.i153, align 4
  %dst60 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 5
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false53, %if.then25
  %cond62.in = phi ptr [ %dst, %if.then25 ], [ %dst60, %cond.false53 ]
  %57 = ptrtoint ptr %cond62.in to i32
  call void @__asan_load4_noabort(i32 %57)
  %cond62 = load ptr, ptr %cond62.in, align 4
  %out_sg = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 16
  %58 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cond62, ptr %out_sg, align 4
  %out_walk = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 18
  %59 = ptrtoint ptr %out_walk to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cond62, ptr %out_walk, align 4
  %offset.i154 = getelementptr inbounds %struct.scatterlist, ptr %cond62, i32 0, i32 1
  %60 = ptrtoint ptr %offset.i154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i154, align 4
  %offset2.i155 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %offset2.i155 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %offset2.i155, align 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %65 = and i32 %64, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %.not = icmp eq i32 %65, 0
  br i1 %.not, label %cond.end61.if.end70_crit_edge, label %if.then66

cond.end61.if.end70_crit_edge:                    ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then66:                                        ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #12
  %areq68 = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 10
  %66 = ptrtoint ptr %areq68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %areq68, align 4
  %assoclen69 = getelementptr inbounds %struct.aead_request, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %assoclen69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %assoclen69, align 8
  tail call void @scatterwalk_copychunks(ptr noundef null, ptr noundef %out_walk, i32 noundef %69, i32 noundef 2) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %cond.end61.if.end70_crit_edge
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and.i163 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.i164.not = icmp eq i32 %and.i163, 0
  br i1 %tobool.i164.not, label %if.end70.if.end73_crit_edge, label %if.then72

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %last_ctr = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 19
  %72 = call ptr @memset(ptr %last_ctr, i32 0, i32 16)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %dev.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 1
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %74, i32 noundef 4) #10
  %regs.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 2
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %76, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i165, i32 0) #10, !srcloc !134
  %77 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx23, align 4
  %keylen.i = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %80)
  %switch.selectcmp.i = icmp eq i32 %80, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16768, i32 17024
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %80)
  %switch.selectcmp75.i = icmp eq i32 %80, 16
  %switch.select76.i = select i1 %switch.selectcmp75.i, i32 16512, i32 %switch.select.i
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and.i.i.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end73.if.end21.i.i_crit_edge, label %land.lhs.true.i.i

if.end73.if.end21.i.i_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i.i

land.lhs.true.i.i:                                ; preds = %if.end73
  %and.i61.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i.i)
  %tobool.i62.not.i.i = icmp eq i32 %and.i61.i.i, 0
  br i1 %tobool.i62.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %and.i67.i.i = and i32 %82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67.i.i)
  %tobool.i68.not.i.i = icmp eq i32 %and.i67.i.i, 0
  br i1 %tobool.i68.not.i.i, label %land.lhs.true8.i.i, label %land.lhs.true3.i.i.if.end.i_crit_edge

land.lhs.true3.i.i.if.end.i_crit_edge:            ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true3.i.i
  %and.i73.i.i = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.i74.not.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool.i74.not.i.i, label %land.lhs.true13.i.i, label %land.lhs.true8.i.i.if.end.i_crit_edge

land.lhs.true8.i.i.if.end.i_crit_edge:            ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true8.i.i
  %and.i79.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i.i)
  %tobool.i80.not.i.i = icmp eq i32 %and.i79.i.i, 0
  br i1 %tobool.i80.not.i.i, label %land.lhs.true18.i.i, label %land.lhs.true13.i.i.if.end.i_crit_edge

land.lhs.true13.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true13.i.i
  %and.i85.i.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i.i)
  %tobool.i86.not.i.i = icmp eq i32 %and.i85.i.i, 0
  br i1 %tobool.i86.not.i.i, label %land.lhs.true18.i.i.if.end21.i.i_crit_edge, label %land.lhs.true18.i.i.if.end.i_crit_edge

land.lhs.true18.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true18.i.i.if.end21.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true18.i.i.if.end21.i.i_crit_edge, %if.end73.if.end21.i.i_crit_edge
  %and.i88.i.i = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i.i)
  %tobool.i89.not.i.i = icmp eq i32 %and.i88.i.i, 0
  br i1 %tobool.i89.not.i.i, label %if.end21.i.i.if.end31.i.i_crit_edge, label %land.lhs.true23.i.i

if.end21.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i

land.lhs.true23.i.i:                              ; preds = %if.end21.i.i
  %and.i91.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i.i)
  %tobool.i92.not.i.i = icmp eq i32 %and.i91.i.i, 0
  br i1 %tobool.i92.not.i.i, label %land.lhs.true28.i.i, label %land.lhs.true23.i.i.if.end.i_crit_edge

land.lhs.true23.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true23.i.i
  %and.i97.i.i = and i32 %82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i.i)
  %tobool.i98.not.i.i = icmp eq i32 %and.i97.i.i, 0
  br i1 %tobool.i98.not.i.i, label %land.lhs.true28.i.i.if.end31.i.i_crit_edge, label %land.lhs.true28.i.i.if.end.i_crit_edge

land.lhs.true28.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true28.i.i.if.end31.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %land.lhs.true28.i.i.if.end31.i.i_crit_edge, %if.end21.i.i.if.end31.i.i_crit_edge
  %and.i100.i.i = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100.i.i)
  %tobool.i101.not.i.i = icmp eq i32 %and.i100.i.i, 0
  br i1 %tobool.i101.not.i.i, label %if.end31.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge, label %land.lhs.true33.i.i

if.end31.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_get_hw_mode.exit.i

land.lhs.true33.i.i:                              ; preds = %if.end31.i.i
  %and.i103.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103.i.i)
  %tobool.i104.not.i.i = icmp eq i32 %and.i103.i.i, 0
  br i1 %tobool.i104.not.i.i, label %land.lhs.true38.i.i, label %land.lhs.true33.i.i.if.end.i_crit_edge

land.lhs.true33.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true38.i.i:                              ; preds = %land.lhs.true33.i.i
  %and.i109.i.i = and i32 %82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109.i.i)
  %tobool.i110.not.i.i = icmp eq i32 %and.i109.i.i, 0
  br i1 %tobool.i110.not.i.i, label %land.lhs.true38.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge, label %land.lhs.true38.i.i.if.end.i_crit_edge

land.lhs.true38.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true38.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge: ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_get_hw_mode.exit.i

stm32_cryp_get_hw_mode.exit.i:                    ; preds = %land.lhs.true38.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge, %if.end31.i.i.stm32_cryp_get_hw_mode.exit.i_crit_edge
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true38.i.i.if.end.i_crit_edge, %land.lhs.true33.i.i.if.end.i_crit_edge, %land.lhs.true28.i.i.if.end.i_crit_edge, %land.lhs.true23.i.i.if.end.i_crit_edge, %land.lhs.true18.i.i.if.end.i_crit_edge, %land.lhs.true13.i.i.if.end.i_crit_edge, %land.lhs.true8.i.i.if.end.i_crit_edge, %land.lhs.true3.i.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 8, %land.lhs.true38.i.i.if.end.i_crit_edge ], [ 0, %land.lhs.true33.i.i.if.end.i_crit_edge ], [ 24, %land.lhs.true28.i.i.if.end.i_crit_edge ], [ 16, %land.lhs.true23.i.i.if.end.i_crit_edge ], [ 524296, %land.lhs.true18.i.i.if.end.i_crit_edge ], [ 524288, %land.lhs.true13.i.i.if.end.i_crit_edge ], [ 48, %land.lhs.true8.i.i.if.end.i_crit_edge ], [ 40, %land.lhs.true3.i.i.if.end.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.end.i_crit_edge ]
  %and.i.i78.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78.i)
  %tobool.i.not.i79.i = icmp eq i32 %and.i.i78.i, 0
  br i1 %tobool.i.not.i79.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %85 = zext i32 %retval.0.i.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %retval.0.i.ph.i, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 32, label %land.lhs.true.i.if.then9.i_crit_edge
    i32 40, label %land.lhs.true.i.if.then9.i_crit_edge178
  ]

land.lhs.true.i.if.then9.i_crit_edge178:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

land.lhs.true.i.if.then9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then9.i:                                       ; preds = %land.lhs.true.i.if.then9.i_crit_edge, %land.lhs.true.i.if.then9.i_crit_edge178
  %or10.i = or i32 %switch.select76.i, 56
  %86 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #10
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #10, !srcloc !134
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and.i.i82.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82.i)
  %tobool.i.not.i83.i = icmp eq i32 %and.i.i82.i, 0
  %91 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctx23, align 4
  br i1 %tobool.i.not.i83.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %key.i.i = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %key.i.i, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %97, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %95) #10, !srcloc !134
  %98 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx23, align 4
  %arrayidx3.i.i = getelementptr %struct.stm32_cryp_ctx, ptr %99, i32 0, i32 3, i32 1
  %100 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx3.i.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %103 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %104, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %102) #10, !srcloc !134
  br label %stm32_cryp_hw_write_key.exit.i

if.else.i.i:                                      ; preds = %if.then9.i
  %keylen.i.i = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %92, i32 0, i32 2
  %105 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %keylen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.not24.i.i = icmp ult i32 %106, 4
  br i1 %cmp.not24.i.i, label %if.else.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_hw_write_key.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.i
  %div19.i.i = lshr i32 %106, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %r_id.026.i.i = phi i32 [ 60, %for.body.lr.ph.i.i ], [ %sub8.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.025.i.i = phi i32 [ %div19.i.i, %for.body.lr.ph.i.i ], [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %107 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctx23, align 4
  %sub.i.i = add nsw i32 %i.025.i.i, -1
  %arrayidx7.i.i = getelementptr %struct.stm32_cryp_ctx, ptr %108, i32 0, i32 3, i32 %sub.i.i
  %109 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx7.i.i, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  %112 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %113, i32 %r_id.026.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %111) #10, !srcloc !134
  %sub8.i.i = add i32 %r_id.026.i.i, -4
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_hw_write_key.exit.i

stm32_cryp_hw_write_key.exit.i:                   ; preds = %for.body.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge, %if.else.i.i.stm32_cryp_hw_write_key.exit.i_crit_edge, %if.then.i.i
  %114 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #10, !srcloc !132
  %117 = or i32 %116, 8388608
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #10, !srcloc !134
  %call.i85.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call.i85.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 232) #10
  %120 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %121, i32 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i) #10, !srcloc !132
  %123 = and i32 %122, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not38.i.i = icmp eq i32 %123, 0
  br i1 %tobool.not38.i.i, label %stm32_cryp_hw_write_key.exit.i.if.end14.i_crit_edge, label %stm32_cryp_hw_write_key.exit.i.land.lhs.true.i87.i_crit_edge

stm32_cryp_hw_write_key.exit.i.land.lhs.true.i87.i_crit_edge: ; preds = %stm32_cryp_hw_write_key.exit.i
  br label %land.lhs.true.i87.i

stm32_cryp_hw_write_key.exit.i.if.end14.i_crit_edge: ; preds = %stm32_cryp_hw_write_key.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true.i87.i:                              ; preds = %if.then23.i.i.land.lhs.true.i87.i_crit_edge, %stm32_cryp_hw_write_key.exit.i.land.lhs.true.i87.i_crit_edge
  %call12.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i87.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %124 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %125, i32 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #10, !srcloc !132
  %127 = and i32 %126, 268435456
  %tobool.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i.i, label %if.then23.i.i.if.end14.i_crit_edge, label %if.then23.i.i.land.lhs.true.i87.i_crit_edge

if.then23.i.i.land.lhs.true.i87.i_crit_edge:      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i87.i

if.then23.i.i.if.end14.i_crit_edge:               ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

for.end.i.i:                                      ; preds = %land.lhs.true.i87.i
  %128 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %129, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #10, !srcloc !132
  %131 = and i32 %130, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool27.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool27.not.i.i, label %for.end.i.i.if.end14.i_crit_edge, label %do.end.i

for.end.i.i.if.end14.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i:                                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end14.i:                                       ; preds = %for.end.i.i.if.end14.i_crit_edge, %if.then23.i.i.if.end14.i_crit_edge, %stm32_cryp_hw_write_key.exit.i.if.end14.i_crit_edge
  %or15.i = or i32 %retval.0.i.ph.i, %switch.select76.i
  %or16.i = or i32 %or15.i, 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #10
  %135 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #10, !srcloc !134
  br label %if.end22.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %or17.i = or i32 %retval.0.i.ph.i, %switch.select76.i
  %or20.i = or i32 %or17.i, 4
  %spec.select.i = select i1 %tobool.i.not.i79.i, i32 %or20.i, i32 %or17.i
  %137 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %138 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #10, !srcloc !134
  %140 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags, align 4
  %and.i.i95.i = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.i.not.i96.i = icmp eq i32 %and.i.i95.i, 0
  %142 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx23, align 4
  br i1 %tobool.i.not.i96.i, label %if.else.i106.i, label %if.then.i103.i

if.then.i103.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %key.i98.i = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %key.i98.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %key.i98.i, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %147 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i100.i = getelementptr i8, ptr %148, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100.i, i32 %146) #10, !srcloc !134
  %149 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ctx23, align 4
  %arrayidx3.i101.i = getelementptr %struct.stm32_cryp_ctx, ptr %150, i32 0, i32 3, i32 1
  %151 = ptrtoint ptr %arrayidx3.i101.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx3.i101.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  %154 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i102.i = getelementptr i8, ptr %155, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i102.i, i32 %153) #10, !srcloc !134
  br label %if.end22.i

if.else.i106.i:                                   ; preds = %if.else.i
  %keylen.i104.i = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %143, i32 0, i32 2
  %156 = ptrtoint ptr %keylen.i104.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %keylen.i104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %157)
  %cmp.not24.i105.i = icmp ult i32 %157, 4
  br i1 %cmp.not24.i105.i, label %if.else.i106.i.if.end22.i_crit_edge, label %for.body.lr.ph.i109.i

if.else.i106.i.if.end22.i_crit_edge:              ; preds = %if.else.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

for.body.lr.ph.i109.i:                            ; preds = %if.else.i106.i
  %div19.i107.i = lshr i32 %157, 2
  br label %for.body.i117.i

for.body.i117.i:                                  ; preds = %for.body.i117.i.for.body.i117.i_crit_edge, %for.body.lr.ph.i109.i
  %r_id.026.i110.i = phi i32 [ 60, %for.body.lr.ph.i109.i ], [ %sub8.i115.i, %for.body.i117.i.for.body.i117.i_crit_edge ]
  %i.025.i111.i = phi i32 [ %div19.i107.i, %for.body.lr.ph.i109.i ], [ %sub.i112.i, %for.body.i117.i.for.body.i117.i_crit_edge ]
  %158 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ctx23, align 4
  %sub.i112.i = add nsw i32 %i.025.i111.i, -1
  %arrayidx7.i113.i = getelementptr %struct.stm32_cryp_ctx, ptr %159, i32 0, i32 3, i32 %sub.i112.i
  %160 = ptrtoint ptr %arrayidx7.i113.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx7.i113.i, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #10
  %163 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i114.i = getelementptr i8, ptr %164, i32 %r_id.026.i110.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i114.i, i32 %162) #10, !srcloc !134
  %sub8.i115.i = add i32 %r_id.026.i110.i, -4
  %cmp.not.i116.i = icmp eq i32 %sub.i112.i, 0
  br i1 %cmp.not.i116.i, label %for.body.i117.i.if.end22.i_crit_edge, label %for.body.i117.i.for.body.i117.i_crit_edge

for.body.i117.i.for.body.i117.i_crit_edge:        ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i117.i

for.body.i117.i.if.end22.i_crit_edge:             ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.body.i117.i.if.end22.i_crit_edge, %if.else.i106.i.if.end22.i_crit_edge, %if.then.i103.i, %if.end14.i
  %cfg.2.i = phi i32 [ %or16.i, %if.end14.i ], [ %spec.select.i, %if.then.i103.i ], [ %spec.select.i, %if.else.i106.i.if.end22.i_crit_edge ], [ %spec.select.i, %for.body.i117.i.if.end22.i_crit_edge ]
  %165 = zext i32 %retval.0.i.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %retval.0.i.ph.i, label %if.end22.i.sw.epilog35.i_crit_edge [
    i32 48, label %if.end22.i.sw.bb33.i_crit_edge
    i32 40, label %if.end22.i.sw.bb33.i_crit_edge179
    i32 24, label %if.end22.i.sw.bb33.i_crit_edge180
    i32 8, label %if.end22.i.sw.bb33.i_crit_edge181
    i32 524296, label %if.then25.i
    i32 524288, label %if.else27.i
  ]

if.end22.i.sw.bb33.i_crit_edge181:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

if.end22.i.sw.bb33.i_crit_edge180:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

if.end22.i.sw.bb33.i_crit_edge179:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

if.end22.i.sw.bb33.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

if.end22.i.sw.epilog35.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv_32.i.i) #10
  %166 = getelementptr inbounds [4 x i32], ptr %iv_32.i.i, i32 0, i32 1
  %167 = getelementptr inbounds [4 x i32], ptr %iv_32.i.i, i32 0, i32 2
  %168 = getelementptr inbounds [4 x i32], ptr %iv_32.i.i, i32 0, i32 3
  %areq.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 10
  %169 = ptrtoint ptr %areq.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %areq.i.i, align 4
  %iv2.i.i = getelementptr inbounds %struct.aead_request, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %iv2.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %iv2.i.i, align 32
  %173 = call ptr @memcpy(ptr %iv_32.i.i, ptr %172, i32 16)
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %iv_32.i.i, i32 15
  %174 = ptrtoint ptr %iv_32.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %iv_32.i.i, align 4
  %conv.i.i = zext i8 %175 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %idx.neg.i.i
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %176 = call ptr @memset(ptr %add.ptr4.i.i, i32 0, i32 %add.i.i)
  %177 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %add.ptr3.i.i, align 1
  %178 = load i32, ptr %iv_32.i.i, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #10
  %180 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %181, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %179) #10, !srcloc !134
  %182 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %166, align 4
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #10
  %185 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15.i.i.i = getelementptr i8, ptr %186, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i.i, i32 %184) #10, !srcloc !134
  %187 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags, align 4
  %and.i.i.i.i = and i32 %188, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then25.i.stm32_cryp_hw_write_iv.exit.i.i_crit_edge, label %if.then2.i.i.i

if.then25.i.stm32_cryp_hw_write_iv.exit.i.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_hw_write_iv.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %167, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #10
  %192 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %193, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i.i, i32 %191) #10, !srcloc !134
  %194 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %168, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #10
  %197 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i.i.i = getelementptr i8, ptr %198, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i.i, i32 %196) #10, !srcloc !134
  br label %stm32_cryp_hw_write_iv.exit.i.i

stm32_cryp_hw_write_iv.exit.i.i:                  ; preds = %if.then2.i.i.i, %if.then25.i.stm32_cryp_hw_write_iv.exit.i.i_crit_edge
  %b0_32.sroa.0.sroa.0.0.extract.shift.i.i = lshr i32 %178, 24
  %b0_32.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %b0_32.sroa.0.sroa.0.0.extract.shift.i.i to i8
  %199 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %199)
  %b0_32.sroa.10.0.copyload.i.i = load i32, ptr %167, align 4
  %200 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %200)
  %b0_32.sroa.12.0.copyload.i.i = load i32, ptr %168, align 4
  %authsize.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 11
  %201 = ptrtoint ptr %authsize.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %authsize.i.i, align 4
  %.tr.i.i = trunc i32 %202 to i8
  %203 = shl i8 %.tr.i.i, 2
  %204 = add i8 %203, -8
  %205 = and i8 %204, -8
  %conv10.i.i = or i8 %205, %b0_32.sroa.0.sroa.0.0.extract.trunc.i.i
  %206 = ptrtoint ptr %areq.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %areq.i.i, align 4
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %assoclen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.not.i119.i = icmp eq i32 %209, 0
  %210 = or i8 %conv10.i.i, 64
  %spec.select111.i.i = select i1 %tobool.not.i119.i, i8 %conv10.i.i, i8 %210
  %211 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %flags, align 4
  %and.i.i88.i.i = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88.i.i)
  %tobool.i.not.i89.i.i = icmp eq i32 %and.i.i88.i.i, 0
  %cryptlen2.i.i.i = getelementptr inbounds %struct.aead_request, ptr %207, i32 0, i32 2
  %213 = ptrtoint ptr %cryptlen2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cryptlen2.i.i.i, align 4
  %sub.i.i.i = select i1 %tobool.i.not.i89.i.i, i32 %202, i32 0
  %spec.select.i.i = sub i32 %214, %sub.i.i.i
  %b0_32.sroa.12.14.insert.ext.i.i = and i32 %spec.select.i.i, 65280
  %b0_32.sroa.12.14.insert.mask.i.i = and i32 %b0_32.sroa.12.0.copyload.i.i, -65536
  %b0_32.sroa.12.14.insert.insert.i.i = or i32 %b0_32.sroa.12.14.insert.ext.i.i, %b0_32.sroa.12.14.insert.mask.i.i
  %b0_32.sroa.12.15.insert.ext.i.i = and i32 %spec.select.i.i, 255
  %b0_32.sroa.12.15.insert.insert.i.i = or i32 %b0_32.sroa.12.14.insert.insert.i.i, %b0_32.sroa.12.15.insert.ext.i.i
  %or21.i.i = or i32 %cfg.2.i, 32768
  %215 = tail call i32 @llvm.bswap.i32(i32 %or21.i.i) #10
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #10, !srcloc !134
  %b0_32.sroa.0.sroa.8.0.insert.ext.i.i = and i32 %178, 16777215
  %b0_32.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %spec.select111.i.i to i32
  %b0_32.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw i32 %b0_32.sroa.0.sroa.0.0.insert.ext.i.i, 24
  %b0_32.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %b0_32.sroa.0.sroa.0.0.insert.shift.i.i, %b0_32.sroa.0.sroa.8.0.insert.ext.i.i
  %218 = tail call i32 @llvm.bswap.i32(i32 %b0_32.sroa.0.sroa.0.0.insert.insert.i.i) #10
  %219 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i120.i = getelementptr i8, ptr %220, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120.i, i32 %218) #10, !srcloc !134
  %221 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %222, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %184) #10, !srcloc !134
  %223 = tail call i32 @llvm.bswap.i32(i32 %b0_32.sroa.10.0.copyload.i.i) #10
  %224 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %225, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 %223) #10, !srcloc !134
  %226 = tail call i32 @llvm.bswap.i32(i32 %b0_32.sroa.12.15.insert.insert.i.i) #10
  %227 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %228, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i, i32 %226) #10, !srcloc !134
  %call.i.i.i = tail call i64 @ktime_get() #10
  %add.i.i.i.i = add i64 %call.i.i.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 245) #10
  %229 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i.i, align 4
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #10, !srcloc !132
  %232 = and i32 %231, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not37.i.i.i = icmp eq i32 %232, 0
  br i1 %tobool.not37.i.i.i, label %stm32_cryp_hw_write_iv.exit.i.i.if.end31.i123.i_crit_edge, label %stm32_cryp_hw_write_iv.exit.i.i.land.lhs.true.i.i.i_crit_edge

stm32_cryp_hw_write_iv.exit.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %stm32_cryp_hw_write_iv.exit.i.i
  br label %land.lhs.true.i.i.i

stm32_cryp_hw_write_iv.exit.i.i.if.end31.i123.i_crit_edge: ; preds = %stm32_cryp_hw_write_iv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i123.i

land.lhs.true.i.i.i:                              ; preds = %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge, %stm32_cryp_hw_write_iv.exit.i.i.land.lhs.true.i.i.i_crit_edge
  %call12.i.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call12.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %233 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i.i, align 4
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #10, !srcloc !132
  %236 = and i32 %235, 8388608
  %tobool.not.i.i.i = icmp eq i32 %236, 0
  br i1 %tobool.not.i.i.i, label %if.then23.i.i.i.if.end31.i123.i_crit_edge, label %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

if.then23.i.i.i.if.end31.i123.i_crit_edge:        ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i123.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %237 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i, align 4
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #10, !srcloc !132
  %240 = and i32 %239, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool27.not.i.i.i = icmp eq i32 %240, 0
  br i1 %tobool27.not.i.i.i, label %for.end.i.i.i.if.end31.i123.i_crit_edge, label %if.end29.i

for.end.i.i.i.if.end31.i123.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i123.i

if.end31.i123.i:                                  ; preds = %for.end.i.i.i.if.end31.i123.i_crit_edge, %if.then23.i.i.i.if.end31.i123.i_crit_edge, %stm32_cryp_hw_write_iv.exit.i.i.if.end31.i123.i_crit_edge
  %241 = ptrtoint ptr %areq.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %areq.i.i, align 4
  %assoclen33.i.i = getelementptr inbounds %struct.aead_request, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %assoclen33.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %assoclen33.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool34.not.i.i = icmp eq i32 %244, 0
  br i1 %tobool34.not.i.i, label %if.else.i124.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end31.i123.i
  %or36.i.i = or i32 %cfg.2.i, 98304
  %245 = tail call i32 @llvm.bswap.i32(i32 %or36.i.i) #10
  %246 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %245) #10, !srcloc !134
  %248 = ptrtoint ptr %areq.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %areq.i.i, align 4
  %assoclen.i.i.i = getelementptr inbounds %struct.aead_request, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %assoclen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %assoclen.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block.i.i.i) #10
  %252 = call ptr @memset(ptr %block.i.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %251)
  %cmp.i.i.i = icmp ult i32 %251, 65281
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i.i = lshr i32 %251, 8
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %253 = ptrtoint ptr %block.i.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %conv.i.i.i, ptr %block.i.i.i, align 4
  %conv2.i.i.i = trunc i32 %251 to i8
  br label %stm32_cryp_write_ccm_first_header.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %block.i.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 -1, ptr %block.i.i.i, align 4
  %shr7.i.i.i = lshr i32 %251, 24
  %conv8.i.i.i = trunc i32 %shr7.i.i.i to i8
  %arrayidx9.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i, i32 2
  %255 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv8.i.i.i, ptr %arrayidx9.i.i.i, align 2
  %and10.i.i.i = lshr i32 %251, 16
  %conv12.i.i.i = trunc i32 %and10.i.i.i to i8
  %arrayidx13.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i, i32 3
  %256 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv12.i.i.i, ptr %arrayidx13.i.i.i, align 1
  %and14.i.i.i = lshr i32 %251, 8
  %conv16.i.i.i = trunc i32 %and14.i.i.i to i8
  %arrayidx17.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i, i32 4
  %257 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv16.i.i.i, ptr %arrayidx17.i.i.i, align 4
  %conv19.i.i.i = trunc i32 %251 to i8
  %arrayidx20.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i, i32 5
  %258 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv19.i.i.i, ptr %arrayidx20.i.i.i, align 1
  br label %stm32_cryp_write_ccm_first_header.exit.i.i

stm32_cryp_write_ccm_first_header.exit.i.i:       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %.sink.i.i.i = phi i8 [ %conv2.i.i.i, %if.then.i.i.i ], [ -2, %if.else.i.i.i ]
  %len.0.i.i.i = phi i32 [ 2, %if.then.i.i.i ], [ 6, %if.else.i.i.i ]
  %259 = getelementptr inbounds i8, ptr %block.i.i.i, i32 1
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %.sink.i.i.i, ptr %259, align 1
  %sub.i93.i.i = sub nuw nsw i32 16, %len.0.i.i.i
  %261 = tail call i32 @llvm.umin.i32(i32 %sub.i93.i.i, i32 %251) #10
  %add.ptr.i94.i.i = getelementptr i8, ptr %block.i.i.i, i32 %len.0.i.i.i
  %in_walk.i.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 17
  call void @scatterwalk_copychunks(ptr noundef %add.ptr.i94.i.i, ptr noundef %in_walk.i.i.i, i32 noundef %261, i32 noundef 0) #10
  %262 = ptrtoint ptr %block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %block.i.i.i, align 4
  %264 = call i32 @llvm.bswap.i32(i32 %263) #10
  %265 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i96.i.i = getelementptr i8, ptr %266, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96.i.i, i32 %264) #10, !srcloc !134
  %arrayidx26.1.i.i.i = getelementptr inbounds [4 x i32], ptr %block.i.i.i, i32 0, i32 1
  %267 = ptrtoint ptr %arrayidx26.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx26.1.i.i.i, align 4
  %269 = call i32 @llvm.bswap.i32(i32 %268) #10
  %270 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.1.i.i.i = getelementptr i8, ptr %271, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i.i, i32 %269) #10, !srcloc !134
  %arrayidx26.2.i.i.i = getelementptr inbounds [4 x i32], ptr %block.i.i.i, i32 0, i32 2
  %272 = ptrtoint ptr %arrayidx26.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx26.2.i.i.i, align 4
  %274 = call i32 @llvm.bswap.i32(i32 %273) #10
  %275 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.2.i.i.i = getelementptr i8, ptr %276, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i.i, i32 %274) #10, !srcloc !134
  %arrayidx26.3.i.i.i = getelementptr inbounds [4 x i32], ptr %block.i.i.i, i32 0, i32 3
  %277 = ptrtoint ptr %arrayidx26.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx26.3.i.i.i, align 4
  %279 = call i32 @llvm.bswap.i32(i32 %278) #10
  %280 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.3.i.i.i = getelementptr i8, ptr %281, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i.i, i32 %279) #10, !srcloc !134
  %header_in.i.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 14
  %282 = ptrtoint ptr %header_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %header_in.i.i.i, align 4
  %sub27.i.i.i = sub i32 %283, %261
  store i32 %sub27.i.i.i, ptr %header_in.i.i.i, align 4
  call fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block.i.i.i) #10
  br label %if.end29.thread172.i

if.else.i124.i:                                   ; preds = %if.end31.i123.i
  %284 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %flags, align 4
  %and.i.i98.i.i = and i32 %285, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98.i.i)
  %tobool.i.not.i99.i.i = icmp eq i32 %and.i.i98.i.i, 0
  %cryptlen2.i101.i.i = getelementptr inbounds %struct.aead_request, ptr %242, i32 0, i32 2
  %286 = ptrtoint ptr %cryptlen2.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cryptlen2.i101.i.i, align 4
  br i1 %tobool.i.not.i99.i.i, label %cond.false.i104.i.i, label %if.else.i124.i.stm32_cryp_get_input_text_len.exit106.i.i_crit_edge

if.else.i124.i.stm32_cryp_get_input_text_len.exit106.i.i_crit_edge: ; preds = %if.else.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_get_input_text_len.exit106.i.i

cond.false.i104.i.i:                              ; preds = %if.else.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  %288 = ptrtoint ptr %authsize.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %authsize.i.i, align 4
  %sub.i103.i.i = sub i32 %287, %289
  br label %stm32_cryp_get_input_text_len.exit106.i.i

stm32_cryp_get_input_text_len.exit106.i.i:        ; preds = %cond.false.i104.i.i, %if.else.i124.i.stm32_cryp_get_input_text_len.exit106.i.i_crit_edge
  %cond.i105.i.i = phi i32 [ %sub.i103.i.i, %cond.false.i104.i.i ], [ %287, %if.else.i124.i.stm32_cryp_get_input_text_len.exit106.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i105.i.i)
  %tobool38.not.i.i = icmp eq i32 %cond.i105.i.i, 0
  br i1 %tobool38.not.i.i, label %stm32_cryp_get_input_text_len.exit106.i.i.if.end29.thread172.i_crit_edge, label %if.then39.i.i

stm32_cryp_get_input_text_len.exit106.i.i.if.end29.thread172.i_crit_edge: ; preds = %stm32_cryp_get_input_text_len.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.thread172.i

if.then39.i.i:                                    ; preds = %stm32_cryp_get_input_text_len.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or40.i.i = or i32 %cfg.2.i, 131072
  %290 = tail call i32 @llvm.bswap.i32(i32 %or40.i.i) #10
  %291 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %290) #10, !srcloc !134
  br label %if.end29.thread172.i

if.else27.i:                                      ; preds = %if.end22.i
  %areq.i126.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 10
  %293 = ptrtoint ptr %areq.i126.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %areq.i126.i, align 4
  %iv1.i.i = getelementptr inbounds %struct.aead_request, ptr %294, i32 0, i32 3
  %295 = ptrtoint ptr %iv1.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %iv1.i.i, align 32
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 4)
  %iv.sroa.0.0.copyload.i.i = load i32, ptr %296, align 1
  %iv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %296, i32 4
  %298 = ptrtoint ptr %iv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %iv.sroa.5.0.copyload.i.i = load i32, ptr %iv.sroa.5.0..sroa_idx.i.i, align 1
  %iv.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %296, i32 8
  %299 = ptrtoint ptr %iv.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %iv.sroa.7.0.copyload.i.i = load i32, ptr %iv.sroa.7.0..sroa_idx.i.i, align 1
  %gcm_ctr.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 20
  %300 = ptrtoint ptr %gcm_ctr.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 2, ptr %gcm_ctr.i.i, align 4
  %301 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.0.0.copyload.i.i) #10
  %302 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i128.i = getelementptr i8, ptr %303, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i128.i, i32 %301) #10, !srcloc !134
  %304 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.5.0.copyload.i.i) #10
  %305 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15.i.i129.i = getelementptr i8, ptr %306, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i129.i, i32 %304) #10, !srcloc !134
  %307 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %flags, align 4
  %and.i.i.i131.i = and i32 %308, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i131.i)
  %tobool.i.not.i.i132.i = icmp eq i32 %and.i.i.i131.i, 0
  br i1 %tobool.i.not.i.i132.i, label %if.else27.i.stm32_cryp_hw_write_iv.exit.i139.i_crit_edge, label %if.then2.i.i135.i

if.else27.i.stm32_cryp_hw_write_iv.exit.i139.i_crit_edge: ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_hw_write_iv.exit.i139.i

if.then2.i.i135.i:                                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #12
  %309 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.7.0.copyload.i.i) #10
  %310 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i.i133.i = getelementptr i8, ptr %311, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i133.i, i32 %309) #10, !srcloc !134
  %312 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i.i134.i = getelementptr i8, ptr %313, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i134.i, i32 33554432) #10, !srcloc !134
  br label %stm32_cryp_hw_write_iv.exit.i139.i

stm32_cryp_hw_write_iv.exit.i139.i:               ; preds = %if.then2.i.i135.i, %if.else27.i.stm32_cryp_hw_write_iv.exit.i139.i_crit_edge
  %or3.i.i = or i32 %cfg.2.i, 32768
  %314 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #10
  %315 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %314) #10, !srcloc !134
  %call.i.i136.i = tail call i64 @ktime_get() #10
  %add.i.i.i137.i = add i64 %call.i.i136.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 245) #10
  %317 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i, align 4
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #10, !srcloc !132
  %320 = and i32 %319, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool.not37.i.i138.i = icmp eq i32 %320, 0
  br i1 %tobool.not37.i.i138.i, label %stm32_cryp_hw_write_iv.exit.i139.i.if.end.i.i_crit_edge, label %stm32_cryp_hw_write_iv.exit.i139.i.land.lhs.true.i.i142.i_crit_edge

stm32_cryp_hw_write_iv.exit.i139.i.land.lhs.true.i.i142.i_crit_edge: ; preds = %stm32_cryp_hw_write_iv.exit.i139.i
  br label %land.lhs.true.i.i142.i

stm32_cryp_hw_write_iv.exit.i139.i.if.end.i.i_crit_edge: ; preds = %stm32_cryp_hw_write_iv.exit.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i142.i:                           ; preds = %if.then23.i.i144.i.land.lhs.true.i.i142.i_crit_edge, %stm32_cryp_hw_write_iv.exit.i139.i.land.lhs.true.i.i142.i_crit_edge
  %call12.i.i140.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i140.i, i64 %add.i.i.i137.i)
  %cmp3.i.i.i141.i = icmp sgt i64 %call12.i.i140.i, %add.i.i.i137.i
  br i1 %cmp3.i.i.i141.i, label %for.end.i.i146.i, label %if.then23.i.i144.i

if.then23.i.i144.i:                               ; preds = %land.lhs.true.i.i142.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %321 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i.i, align 4
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #10, !srcloc !132
  %324 = and i32 %323, 8388608
  %tobool.not.i.i143.i = icmp eq i32 %324, 0
  br i1 %tobool.not.i.i143.i, label %if.then23.i.i144.i.if.end.i.i_crit_edge, label %if.then23.i.i144.i.land.lhs.true.i.i142.i_crit_edge

if.then23.i.i144.i.land.lhs.true.i.i142.i_crit_edge: ; preds = %if.then23.i.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i142.i

if.then23.i.i144.i.if.end.i.i_crit_edge:          ; preds = %if.then23.i.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.end.i.i146.i:                                 ; preds = %land.lhs.true.i.i142.i
  %325 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs.i.i, align 4
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #10, !srcloc !132
  %328 = and i32 %327, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool27.not.i.i145.i = icmp eq i32 %328, 0
  br i1 %tobool27.not.i.i145.i, label %for.end.i.i146.i.if.end.i.i_crit_edge, label %if.end29.thread168.i

for.end.i.i146.i.if.end.i.i_crit_edge:            ; preds = %for.end.i.i146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end29.thread168.i:                             ; preds = %for.end.i.i146.i
  call void @__sanitizer_cov_trace_pc() #12
  %329 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end.i.i146.i.if.end.i.i_crit_edge, %if.then23.i.i144.i.if.end.i.i_crit_edge, %stm32_cryp_hw_write_iv.exit.i139.i.if.end.i.i_crit_edge
  %331 = ptrtoint ptr %areq.i126.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %areq.i126.i, align 4
  %assoclen.i149.i = getelementptr inbounds %struct.aead_request, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %assoclen.i149.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %assoclen.i149.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool5.not.i.i = icmp eq i32 %334, 0
  br i1 %tobool5.not.i.i, label %if.else.i151.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i.i = or i32 %cfg.2.i, 65536
  %335 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #10
  %336 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #10, !srcloc !134
  br label %sw.epilog35.i

if.else.i151.i:                                   ; preds = %if.end.i.i
  %338 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %flags, align 4
  %and.i.i32.i.i = and i32 %339, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32.i.i)
  %tobool.i.not.i33.i.i = icmp eq i32 %and.i.i32.i.i, 0
  %cryptlen2.i.i150.i = getelementptr inbounds %struct.aead_request, ptr %332, i32 0, i32 2
  %340 = ptrtoint ptr %cryptlen2.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %cryptlen2.i.i150.i, align 4
  br i1 %tobool.i.not.i33.i.i, label %cond.false.i.i.i, label %if.else.i151.i.stm32_cryp_get_input_text_len.exit.i.i_crit_edge

if.else.i151.i.stm32_cryp_get_input_text_len.exit.i.i_crit_edge: ; preds = %if.else.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_get_input_text_len.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.else.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  %authsize.i.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 11
  %342 = ptrtoint ptr %authsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %authsize.i.i.i, align 4
  %sub.i.i152.i = sub i32 %341, %343
  br label %stm32_cryp_get_input_text_len.exit.i.i

stm32_cryp_get_input_text_len.exit.i.i:           ; preds = %cond.false.i.i.i, %if.else.i151.i.stm32_cryp_get_input_text_len.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.i.i152.i, %cond.false.i.i.i ], [ %341, %if.else.i151.i.stm32_cryp_get_input_text_len.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i)
  %tobool9.not.i.i = icmp eq i32 %cond.i.i.i, 0
  br i1 %tobool9.not.i.i, label %stm32_cryp_get_input_text_len.exit.i.i.sw.epilog35.i_crit_edge, label %if.then10.i.i

stm32_cryp_get_input_text_len.exit.i.i.sw.epilog35.i_crit_edge: ; preds = %stm32_cryp_get_input_text_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35.i

if.then10.i.i:                                    ; preds = %stm32_cryp_get_input_text_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or11.i.i = or i32 %cfg.2.i, 131072
  %344 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #10
  %345 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %344) #10, !srcloc !134
  br label %sw.epilog35.i

if.end29.thread172.i:                             ; preds = %if.then39.i.i, %stm32_cryp_get_input_text_len.exit106.i.i.if.end29.thread172.i_crit_edge, %stm32_cryp_write_ccm_first_header.exit.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv_32.i.i) #10
  br label %sw.epilog35.i

if.end29.i:                                       ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %347 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %348, ptr noundef nonnull @.str.44) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv_32.i.i) #10
  br label %cleanup

sw.bb33.i:                                        ; preds = %if.end22.i.sw.bb33.i_crit_edge, %if.end22.i.sw.bb33.i_crit_edge179, %if.end22.i.sw.bb33.i_crit_edge180, %if.end22.i.sw.bb33.i_crit_edge181
  %req.i = getelementptr inbounds %struct.stm32_cryp, ptr %8, i32 0, i32 9
  %349 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %req.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %350, i32 0, i32 1
  %351 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %iv.i, align 4
  %tobool.not.i154.i = icmp eq ptr %352, null
  br i1 %tobool.not.i154.i, label %sw.bb33.i.sw.epilog35.i_crit_edge, label %if.end.i160.i

sw.bb33.i.sw.epilog35.i_crit_edge:                ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35.i

if.end.i160.i:                                    ; preds = %sw.bb33.i
  %incdec.ptr.i.i = getelementptr i32, ptr %352, i32 1
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %352, align 4
  %355 = tail call i32 @llvm.bswap.i32(i32 %354) #10
  %356 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i156.i = getelementptr i8, ptr %357, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i156.i, i32 %355) #10, !srcloc !134
  %358 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %incdec.ptr.i.i, align 4
  %360 = tail call i32 @llvm.bswap.i32(i32 %359) #10
  %361 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %362, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %360) #10, !srcloc !134
  %363 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %flags, align 4
  %and.i.i158.i = and i32 %364, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158.i)
  %tobool.i.not.i159.i = icmp eq i32 %and.i.i158.i, 0
  br i1 %tobool.i.not.i159.i, label %if.end.i160.i.sw.epilog35.i_crit_edge, label %if.then2.i.i

if.end.i160.i.sw.epilog35.i_crit_edge:            ; preds = %if.end.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35.i

if.then2.i.i:                                     ; preds = %if.end.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr1.i.i = getelementptr i32, ptr %352, i32 2
  %incdec.ptr3.i.i = getelementptr i32, ptr %352, i32 3
  %365 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %incdec.ptr1.i.i, align 4
  %367 = tail call i32 @llvm.bswap.i32(i32 %366) #10
  %368 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %369, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %367) #10, !srcloc !134
  %370 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %incdec.ptr3.i.i, align 4
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #10
  %373 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %374, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %372) #10, !srcloc !134
  br label %sw.epilog35.i

sw.epilog35.i:                                    ; preds = %if.then2.i.i, %if.end.i160.i.sw.epilog35.i_crit_edge, %sw.bb33.i.sw.epilog35.i_crit_edge, %if.end29.thread172.i, %if.then10.i.i, %stm32_cryp_get_input_text_len.exit.i.i.sw.epilog35.i_crit_edge, %if.then6.i.i, %if.end22.i.sw.epilog35.i_crit_edge
  %375 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %regs.i.i, align 4
  %377 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #10, !srcloc !132
  %378 = or i32 %377, 8388608
  %379 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %378) #10, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog35.i, %if.end29.i, %if.end29.thread168.i, %do.end.i, %stm32_cryp_get_hw_mode.exit.i, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %cond.end.cleanup_crit_edge ], [ -19, %cond.end.thread.cleanup_crit_edge ], [ -110, %do.end.i ], [ 0, %sw.epilog35.i ], [ -22, %stm32_cryp_get_hw_mode.exit.i ], [ -110, %if.end29.i ], [ -110, %if.end29.thread168.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_aead_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge11
    i32 32, label %entry.if.end_crit_edge12
  ]

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12
  %key4 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %1 = call ptr @memcpy(ptr %key4, ptr %key, i32 %keylen)
  %keylen5 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %2 = ptrtoint ptr %keylen5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.stm32_cryp_aes_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %entry
  %4 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %4, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %4
  %5 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge: ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_aead_crypt.exit

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %3, %stm32_cryp_find_dev.exit.thread.i ], [ %4, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %7 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %8, ptr noundef %req) #10
  br label %stm32_cryp_aead_crypt.exit

stm32_cryp_aead_crypt.exit:                       ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %entry
  %4 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %4, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %4
  %5 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge: ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_cryp_aead_crypt.exit

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %3, %stm32_cryp_find_dev.exit.thread.i ], [ %4, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 130, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %7 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %8, ptr noundef %req) #10
  br label %stm32_cryp_aead_crypt.exit

stm32_cryp_aead_crypt.exit:                       ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.stm32_cryp_aead_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_cryp_aes_aead_init(ptr nocapture noundef writeonly %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %reqsize = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %0 = ptrtoint ptr %reqsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %reqsize, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %1 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @stm32_cryp_aead_one_req, ptr %do_one_request, align 4
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stm32_cryp_prepare_aead_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %unprepare_request, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.stm32_cryp_aes_ccm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %5 = icmp ult i8 %4, 7
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %7, i32 140
  %8 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end
  %10 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %10, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %10
  %11 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.cleanup_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.cleanup_crit_edge:     ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %9, %stm32_cryp_find_dev.exit.thread.i ], [ %10, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 259, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %13 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %14, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %5 = icmp ult i8 %4, 7
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %cryp1.i.i = getelementptr i8, ptr %7, i32 140
  %8 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cryp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %stm32_cryp_find_dev.exit.i, label %stm32_cryp_find_dev.exit.thread.i

stm32_cryp_find_dev.exit.thread.i:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  br label %if.end.i

stm32_cryp_find_dev.exit.i:                       ; preds = %if.end
  %10 = load ptr, ptr @cryp_list, align 4
  %cmp.not.i.i = icmp eq ptr %10, @cryp_list
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %10
  %11 = ptrtoint ptr %cryp1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i.i, ptr %cryp1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %stm32_cryp_find_dev.exit.i.cleanup_crit_edge, label %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge

stm32_cryp_find_dev.exit.i.if.end.i_crit_edge:    ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

stm32_cryp_find_dev.exit.i.cleanup_crit_edge:     ; preds = %stm32_cryp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge, %stm32_cryp_find_dev.exit.thread.i
  %cryp.1.i13.i = phi ptr [ %9, %stm32_cryp_find_dev.exit.thread.i ], [ %10, %stm32_cryp_find_dev.exit.i.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 258, ptr %__ctx.i.i, align 4
  %engine.i = getelementptr inbounds %struct.stm32_cryp, ptr %cryp.1.i13.i, i32 0, i32 8
  %13 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine.i, align 4
  %call5.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %14, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %stm32_cryp_find_dev.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call5.i, %if.end.i ], [ -19, %stm32_cryp_find_dev.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aead_one_req(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %cryp2 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %cryp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cryp2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload_in = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.rhs, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.rhs:                                         ; preds = %if.end
  %header_in = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %header_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %header_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then8, label %land.rhs.if.end9_crit_edge, !prof !133

land.rhs.if.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stm32_cryp_finish_req(ptr noundef nonnull %3, i32 noundef 0)
  br label %cleanup

if.end9:                                          ; preds = %land.rhs.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %regs.i.i = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 50331648) #10, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end9 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_prepare_aead_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stm32_cryp_prepare_req(ptr noundef null, ptr noundef %areq)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cryp_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_stm32_cryp__266_1931_stm32_cryp_driver_init6, !1, !"__initcall__kmod_stm32_cryp__266_1931_stm32_cryp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1931, i32 1}
!2 = !{ptr @__exitcall_stm32_cryp_driver_exit, !1, !"__exitcall_stm32_cryp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author267, !4, !"__UNIQUE_ID_author267", i1 false, i1 false}
!4 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1933, i32 1}
!5 = !{ptr @__UNIQUE_ID_description268, !6, !"__UNIQUE_ID_description268", i1 false, i1 false}
!6 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1934, i32 1}
!7 = !{ptr @__UNIQUE_ID_file269, !8, !"__UNIQUE_ID_file269", i1 false, i1 false}
!8 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1935, i32 1}
!9 = !{ptr @__UNIQUE_ID_license270, !8, !"__UNIQUE_ID_license270", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1925, i32 21}
!12 = !{ptr @stm32_cryp_driver, !13, !"stm32_cryp_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1921, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1771, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stm32_cryp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stm32_cryp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1777, i32 42}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1784, i32 3}
!26 = !{ptr @stm32_cryp_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_cryp_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1815, i32 3}
!30 = !{ptr @stm32_cryp_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32_cryp_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1822, i32 3}
!34 = !{ptr @stm32_cryp_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stm32_cryp_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1828, i32 3}
!38 = !{ptr @stm32_cryp_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32_cryp_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1836, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stm32_cryp_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_cryp_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 407, i32 4}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @stm32_crypt_gcmccm_end_header._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @stm32_crypt_gcmccm_end_header._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1452, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stm32_cryp_irq_write_data._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @stm32_cryp_irq_write_data._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 355, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stm32_cryp_get_hw_mode._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @stm32_cryp_get_hw_mode._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1303, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @stm32_cryp_irq_write_gcm_padded_data._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @stm32_cryp_irq_write_gcm_padded_data._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1337, i32 3}
!68 = !{ptr @stm32_cryp_irq_write_gcm_padded_data._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @stm32_cryp_irq_write_gcm_padded_data._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1403, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @stm32_cryp_irq_write_ccm_padded_data._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @stm32_cryp_irq_write_ccm_padded_data._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @stm32_cryp_irq_write_ccm_padded_data._entry.37, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1443, i32 3}
!77 = !{ptr @stm32_cryp_irq_write_ccm_padded_data._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1187, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stm32_cryp_read_auth_tag._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stm32_cryp_read_auth_tag._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 164, i32 14}
!85 = !{ptr @cryp_list, !86, !"cryp_list", i1 false, i1 false}
!86 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 162, i32 31}
!87 = !{ptr @crypto_algs, !88, !"crypto_algs", i1 false, i1 false}
!88 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1556, i32 28}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 579, i32 4}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stm32_cryp_hw_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @stm32_cryp_hw_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 514, i32 3}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @stm32_cryp_ccm_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @stm32_cryp_ccm_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 381, i32 3}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stm32_cryp_gcm_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @stm32_cryp_gcm_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @aead_algs, !105, !"aead_algs", i1 false, i1 false}
!105 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1682, i32 24}
!106 = !{ptr @stm32_dt_ids, !107, !"stm32_dt_ids", i1 false, i1 false}
!107 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1735, i32 34}
!108 = !{ptr @f7_data, !109, !"f7_data", i1 false, i1 false}
!109 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1725, i32 37}
!110 = !{ptr @mp1_data, !111, !"mp1_data", i1 false, i1 false}
!111 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1730, i32 37}
!112 = !{ptr @stm32_cryp_pm_ops, !113, !"stm32_cryp_pm_ops", i1 false, i1 false}
!113 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1914, i32 32}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/stm32/stm32-cryp.c", i32 1906, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @stm32_cryp_runtime_resume._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @stm32_cryp_runtime_resume._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148285685, i64 2148285711, i64 2148285740, i64 2148285774, i64 2148285805, i64 2148285828}
!129 = !{i64 2148285104}
!130 = !{i64 769927, i64 769952, i64 769974, i64 769990, i64 770002, i64 770022, i64 770046, i64 770062, i64 770074}
!131 = !{i64 2148285292}
!132 = !{i64 4283379}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 4282961}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i8 0, i8 2}
!137 = !{i64 2149117289}
