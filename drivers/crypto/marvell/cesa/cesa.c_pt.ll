; ModuleID = '/llk/IR_all_yes/drivers/crypto/marvell/cesa/cesa.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/cesa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.mv_cesa_caps = type { i32, i8, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.75, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.75 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@__initcall__kmod_marvell_cesa__241_616_marvell_cesa_init6 = internal global ptr @marvell_cesa_init, section ".initcall6.init", align 4
@marvell_cesa = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_cesa_probe, ptr @mv_cesa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_cesa_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mv_cesa_plat_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_marvell_cesa_exit = internal global ptr @marvell_cesa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [73 x i8] c"marvell_cesa.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [55 x i8] c"marvell_cesa.author=Arnaud Ebalard <arno@natisbad.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [68 x i8] c"marvell_cesa.description=Support for Marvell's cryptographic engine\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [59 x i8] c"marvell_cesa.file=drivers/crypto/marvell/cesa/marvell-cesa\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [28 x i8] c"marvell_cesa.license=GPL v2\00", section ".modinfo", align 1
@cesa_dev = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"marvell-cesa\00", [19 x i8] zeroinitializer }, align 32
@mv_cesa_of_match_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirkwood_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirkwood_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-38x-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@mv_cesa_plat_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mv_crypto\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@orion_caps = internal constant { %struct.mv_cesa_caps, [40 x i8] } { %struct.mv_cesa_caps { i32 1, i8 0, ptr @orion_cipher_algs, i32 6, ptr @orion_ahash_algs, i32 4 }, [40 x i8] zeroinitializer }, align 32
@mv_cesa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Only one CESA device authorized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_cesa_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/marvell/cesa/cesa.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_cesa_probe._entry_ptr = internal global ptr @mv_cesa_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,crypto-sram-size\00", [39 x i8] zeroinitializer }, align 32
@mv_cesa_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cesa->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@mv_cesa_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&engine->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cesa%d\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cesaz%d\00", [24 x i8] zeroinitializer }, align 32
@mv_cesa_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 568, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CESA device successfully registered\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_cesa_probe._entry_ptr.16 = internal global ptr @mv_cesa_probe._entry.13, section ".printk_index", align 4
@orion_cipher_algs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @mv_cesa_ecb_des_alg, ptr @mv_cesa_cbc_des_alg, ptr @mv_cesa_ecb_des3_ede_alg, ptr @mv_cesa_cbc_des3_ede_alg, ptr @mv_cesa_ecb_aes_alg, ptr @mv_cesa_cbc_aes_alg], [40 x i8] zeroinitializer }, align 32
@orion_ahash_algs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mv_md5_alg, ptr @mv_sha1_alg, ptr @mv_ahmac_md5_alg, ptr @mv_ahmac_sha1_alg], [16 x i8] zeroinitializer }, align 32
@mv_cesa_ecb_des_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_cesa_cbc_des_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_cesa_ecb_des3_ede_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_cesa_cbc_des3_ede_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_cesa_ecb_aes_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_cesa_cbc_aes_alg = external dso_local global %struct.skcipher_alg, align 128
@mv_md5_alg = external dso_local global %struct.ahash_alg, align 128
@mv_sha1_alg = external dso_local global %struct.ahash_alg, align 128
@mv_ahmac_md5_alg = external dso_local global %struct.ahash_alg, align 128
@mv_ahmac_sha1_alg = external dso_local global %struct.ahash_alg, align 128
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tdma_desc\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cesa_op\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cesa_cache\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cesa_padding\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,crypto-srams\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sram0\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sram1\00", [26 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@kirkwood_caps = internal constant { %struct.mv_cesa_caps, [40 x i8] } { %struct.mv_cesa_caps { i32 1, i8 1, ptr @orion_cipher_algs, i32 6, ptr @orion_ahash_algs, i32 4 }, [40 x i8] zeroinitializer }, align 32
@armada_370_caps = internal constant { %struct.mv_cesa_caps, [40 x i8] } { %struct.mv_cesa_caps { i32 1, i8 1, ptr @armada_370_cipher_algs, i32 6, ptr @armada_370_ahash_algs, i32 6 }, [40 x i8] zeroinitializer }, align 32
@armada_xp_caps = internal constant { %struct.mv_cesa_caps, [40 x i8] } { %struct.mv_cesa_caps { i32 2, i8 1, ptr @armada_370_cipher_algs, i32 6, ptr @armada_370_ahash_algs, i32 6 }, [40 x i8] zeroinitializer }, align 32
@armada_370_cipher_algs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @mv_cesa_ecb_des_alg, ptr @mv_cesa_cbc_des_alg, ptr @mv_cesa_ecb_des3_ede_alg, ptr @mv_cesa_cbc_des3_ede_alg, ptr @mv_cesa_ecb_aes_alg, ptr @mv_cesa_cbc_aes_alg], [40 x i8] zeroinitializer }, align 32
@armada_370_ahash_algs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @mv_md5_alg, ptr @mv_sha1_alg, ptr @mv_sha256_alg, ptr @mv_ahmac_md5_alg, ptr @mv_ahmac_sha1_alg, ptr @mv_ahmac_sha256_alg], [40 x i8] zeroinitializer }, align 32
@mv_sha256_alg = external dso_local global %struct.ahash_alg, align 128
@mv_ahmac_sha256_alg = external dso_local global %struct.ahash_alg, align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"marvell_cesa\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 607, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"cesa_dev\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 35, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 612, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"mv_cesa_of_match_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 302, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"mv_cesa_plat_id_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 601, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"orion_caps\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 266, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 444, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 464, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 475, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 477, i32 59 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 494, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 512, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 520, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 568, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"orion_cipher_algs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 232, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"orion_ahash_algs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 241, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 349, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 355, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 360, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 365, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 378, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 382, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 396, i32 15 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 398, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"kirkwood_caps\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 275, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"armada_370_caps\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 284, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"armada_xp_caps\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 293, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"armada_370_cipher_algs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 248, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"armada_370_ahash_algs\00", align 1
@___asan_gen_.138 = private constant [38 x i8] c"../drivers/crypto/marvell/cesa/cesa.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 257, i32 26 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_marvell_cesa_exit, ptr @__initcall__kmod_marvell_cesa__241_616_marvell_cesa_init6, ptr @marvell_cesa_exit, ptr @mv_cesa_probe._entry, ptr @mv_cesa_probe._entry.13, ptr @mv_cesa_probe._entry_ptr, ptr @mv_cesa_probe._entry_ptr.16, ptr @marvell_cesa, ptr @cesa_dev, ptr @.str, ptr @mv_cesa_of_match_table, ptr @mv_cesa_plat_id_table, ptr @orion_caps, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mv_cesa_probe.__key, ptr @.str.7, ptr @.str.8, ptr @mv_cesa_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @orion_cipher_algs, ptr @orion_ahash_algs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @kirkwood_caps, ptr @armada_370_caps, ptr @armada_xp_caps, ptr @armada_370_cipher_algs, ptr @armada_370_ahash_algs], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_cesa to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cesa_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_of_match_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_plat_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_cipher_algs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_ahash_algs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_cipher_algs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_ahash_algs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mv_cesa_dequeue_req_locked(ptr noundef %engine, ptr nocapture noundef writeonly %backlog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 11
  %backlog.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %1, %queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %1
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i, ptr %backlog, align 4
  %call2 = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #8
  ret ptr %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_queue_req(ptr noundef %req, ptr noundef %creq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %creq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creq, align 4
  %lock = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %queue = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 11
  %call = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %req) #8
  %chain.i = getelementptr inbounds %struct.mv_cesa_req, ptr %creq, i32 0, i32 1
  %2 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %land.lhs.true.if.end_crit_edge [
    i32 -115, label %land.lhs.true.if.then_crit_edge
    i32 -16, label %land.lhs.true.if.then_crit_edge20
  ]

land.lhs.true.if.then_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge20
  tail call void @mv_cesa_tdma_chain(ptr noundef %1, ptr noundef %creq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call)
  %cmp6.not = icmp eq i32 %call, -115
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %req1.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req1.i, align 4
  %tobool.not.i19 = icmp eq ptr %6, null
  br i1 %tobool.not.i19, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %backlog.i.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %backlog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backlog.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %8, %queue
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %8
  %call2.i.i = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #8
  %9 = ptrtoint ptr %req1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.i.i, ptr %req1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %tobool4.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %tobool7.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end9.i_crit_edge, label %if.then8.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete.i, align 4
  tail call void %11(ptr noundef nonnull %spec.select.i.i.i, i32 noundef -115) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end6.i.if.end9.i_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %call2.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i, align 4
  %step.i = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %step.i, align 4
  tail call void %17(ptr noundef nonnull %call2.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.end.i.cleanup_crit_edge, %if.end.thread.i, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_tdma_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_cesa_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @marvell_cesa, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @marvell_cesa_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @marvell_cesa) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %sram_size = alloca i32, align 4
  %res_name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sram_size) #8
  %0 = load ptr, ptr @cesa_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup159

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call = tail call ptr @of_match_node(ptr noundef nonnull @mv_cesa_of_match_table, ptr noundef nonnull %2) #8
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then4.cleanup159_crit_edge, label %lor.lhs.false

if.then4.cleanup159_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

lor.lhs.false:                                    ; preds = %if.then4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup159_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

lor.lhs.false.cleanup159_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %caps.0 = phi ptr [ @orion_caps, %if.end.if.end11_crit_edge ], [ %4, %lor.lhs.false.if.end11_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #8
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup159_crit_edge, label %if.end15

if.end11.cleanup159_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end15:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %caps.0, ptr %call.i, align 4
  %dev17 = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev17, align 4
  %7 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %sram_size, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i264 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %sram_size, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sram_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %cmp = icmp ult i32 %11, 1024
  br i1 %cmp, label %if.then21, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %sram_size, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15.if.end22_crit_edge
  %13 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sram_size, align 4
  %sram_size23 = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %sram_size23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sram_size23, align 4
  %16 = ptrtoint ptr %caps.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.0, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 128) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !90

devm_kcalloc.exit.thread:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %engines25302 = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %engines25302 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %engines25302, align 4
  br label %cleanup159

devm_kcalloc.exit:                                ; preds = %if.end22
  %21 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %21, i32 noundef 3520) #8
  %engines25 = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %engines25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %engines25, align 4
  %tobool27.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool27.not, label %devm_kcalloc.exit.cleanup159_crit_edge, label %do.body30

devm_kcalloc.exit.cleanup159_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

do.body30:                                        ; preds = %devm_kcalloc.exit
  %lock = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mv_cesa_probe.__key, i16 noundef signext 3) #8
  %call34 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #8
  %regs = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call34 to i32
  br label %cleanup159

if.end40:                                         ; preds = %do.body30
  %25 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev17, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %has_tdma.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %has_tdma.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_tdma.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end40.if.end44_crit_edge, label %if.end.i

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end.i:                                         ; preds = %if.end40
  %call.i.i265 = call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef 16, i32 noundef 3520) #8
  %tobool2.not.i = icmp eq ptr %call.i.i265, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup159_crit_edge, label %if.end4.i

if.end.i.cleanup159_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.17, ptr noundef %26, i32 noundef 32, i32 noundef 16, i32 noundef 0) #8
  %31 = ptrtoint ptr %call.i.i265 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i, ptr %call.i.i265, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end4.i.cleanup159_crit_edge, label %if.end9.i

if.end4.i.cleanup159_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end9.i:                                        ; preds = %if.end4.i
  %call10.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.18, ptr noundef %26, i32 noundef 128, i32 noundef 16, i32 noundef 0) #8
  %op_pool.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %call.i.i265, i32 0, i32 1
  %32 = ptrtoint ptr %op_pool.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10.i, ptr %op_pool.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.end9.i.cleanup159_crit_edge, label %if.end14.i

if.end9.i.cleanup159_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.19, ptr noundef %26, i32 noundef 64, i32 noundef 1, i32 noundef 0) #8
  %cache_pool.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %call.i.i265, i32 0, i32 2
  %33 = ptrtoint ptr %cache_pool.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call15.i, ptr %cache_pool.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %if.end14.i.cleanup159_crit_edge, label %if.end19.i

if.end14.i.cleanup159_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.20, ptr noundef %26, i32 noundef 72, i32 noundef 1, i32 noundef 0) #8
  %padding_pool.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %call.i.i265, i32 0, i32 3
  %34 = ptrtoint ptr %padding_pool.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call20.i, ptr %padding_pool.i, align 4
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.end19.i.cleanup159_crit_edge, label %if.end24.i

if.end19.i.cleanup159_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

if.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma25.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %dma25.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i265, ptr %dma25.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end24.i, %if.end40.if.end44_crit_edge
  %call45 = call ptr @mv_mbus_dram_info_nooverlap() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %37 = ptrtoint ptr %caps.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %caps.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp47327 = icmp sgt i32 %38, 0
  br i1 %cmp47327, label %for.body.lr.ph, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  %tobool98.not = icmp eq ptr %call45, null
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0328 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %engines25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %engines25, align 4
  %arrayidx = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %res_name) #8
  %41 = call ptr @memset(ptr %res_name, i32 255, i32 7)
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.0328, ptr %arrayidx, align 4
  %lock50 = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock50, ptr noundef nonnull @.str.10, ptr noundef nonnull @mv_cesa_probe.__key.9, i16 noundef signext 3) #8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %engines.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %engines.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %engines.i, align 4
  %dev.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node.i, align 8
  %call1.i = call ptr @of_gen_pool_get(ptr noundef %50, ptr noundef nonnull @.str.22, i32 noundef %i.0328) #8
  %pool.i = getelementptr %struct.mv_cesa_engine, ptr %46, i32 %i.0328, i32 10
  %51 = ptrtoint ptr %pool.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call1.i, ptr %pool.i, align 4
  %tobool.not.i266 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i266, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %sram_size.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %44, i32 0, i32 3
  %52 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sram_size.i, align 4
  %sram_dma.i = getelementptr %struct.mv_cesa_engine, ptr %46, i32 %i.0328, i32 3
  %call4.i = call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call1.i, i32 noundef %53, ptr noundef %sram_dma.i) #8
  %54 = getelementptr %struct.mv_cesa_engine, ptr %46, i32 %i.0328, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call4.i, ptr %54, align 4
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i267, label %if.then.i.if.end57_crit_edge

if.then.i.if.end57_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end.i267:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %pool.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %pool.i, align 4
  br label %cleanup.thread

if.end8.i:                                        ; preds = %for.body
  %57 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %44, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i268 = icmp sgt i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0328)
  %tobool10.not.i = icmp eq i32 %i.0328, 0
  %.str.23..str.24.i = select i1 %tobool10.not.i, ptr @.str.23, ptr @.str.24
  %res_name.0.i = select i1 %cmp.i268, ptr %.str.23..str.24.i, ptr @.str.21
  %call14.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %res_name.0.i) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end8.i.cleanup.thread_crit_edge, label %lor.lhs.false.i

if.end8.i.cleanup.thread_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call14.i, i32 0, i32 1
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end.i.i, align 4
  %63 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call14.i, align 4
  %sub.i.i = add i32 %62, 1
  %add.i.i = sub i32 %sub.i.i, %64
  %sram_size17.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %44, i32 0, i32 3
  %65 = ptrtoint ptr %sram_size17.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sram_size17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %66)
  %cmp18.i = icmp ult i32 %add.i.i, %66
  br i1 %cmp18.i, label %lor.lhs.false.i.cleanup.thread_crit_edge, label %if.end20.i

lor.lhs.false.i.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %call22.i = call ptr @devm_ioremap_resource(ptr noundef %68, ptr noundef nonnull %call14.i) #8
  %69 = getelementptr %struct.mv_cesa_engine, ptr %46, i32 %i.0328, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call22.i, ptr %69, align 4
  %cmp.i.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mv_cesa_get_sram.exit, label %if.end26.i

if.end26.i:                                       ; preds = %if.end20.i
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %73 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call14.i, align 4
  %75 = ptrtoint ptr %sram_size17.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sram_size17.i, align 4
  %call29.i = call i32 @dma_map_resource(ptr noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef 0, i32 noundef 0) #8
  %sram_dma30.i = getelementptr %struct.mv_cesa_engine, ptr %46, i32 %i.0328, i32 3
  %77 = ptrtoint ptr %sram_dma30.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call29.i, ptr %sram_dma30.i, align 4
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %79, i32 noundef %call29.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29.i)
  %cmp.i65.not.i = icmp eq i32 %call29.i, -1
  br i1 %cmp.i65.not.i, label %if.end26.i.cleanup.thread_crit_edge, label %if.end26.i.if.end57_crit_edge

if.end26.i.if.end57_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end26.i.cleanup.thread_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

mv_cesa_get_sram.exit:                            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %call22.i to i32
  br label %cleanup.thread

if.end57:                                         ; preds = %if.end26.i.if.end57_crit_edge, %if.then.i.if.end57_crit_edge
  %call58 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.cleanup.thread_crit_edge, label %if.end61

if.end57.cleanup.thread_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end61:                                         ; preds = %if.end57
  %irq62 = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 15
  %81 = ptrtoint ptr %irq62 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call58, ptr %irq62, align 4
  %call63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %res_name, i32 noundef 7, ptr noundef nonnull @.str.11, i32 noundef %i.0328)
  %call65 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %res_name) #8
  %clk = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 6
  %82 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call65, ptr %clk, align 4
  %cmp.i270 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then68, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %cmp.i271 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i271, ptr null, ptr %call69
  %83 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %spec.store.select, ptr %clk, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %if.end61.if.end76_crit_edge
  %call78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %res_name, i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.0328)
  %call80 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %res_name) #8
  %zclk = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 7
  %cmp.i272 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  %spec.store.select319 = select i1 %cmp.i272, ptr null, ptr %call80
  %84 = ptrtoint ptr %zclk to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %spec.store.select319, ptr %zclk, align 4
  %85 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk, align 4
  %call.i273 = call i32 @clk_prepare(ptr noundef %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i274 = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i274, label %if.end.i277, label %if.end76.cleanup.thread_crit_edge

if.end76.cleanup.thread_crit_edge:                ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i277:                                      ; preds = %if.end76
  %call1.i275 = call i32 @clk_enable(ptr noundef %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i275)
  %tobool2.not.i276 = icmp eq i32 %call1.i275, 0
  br i1 %tobool2.not.i276, label %if.end90, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %86) #8
  br label %cleanup.thread

if.end90:                                         ; preds = %if.end.i277
  %87 = ptrtoint ptr %zclk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %zclk, align 4
  %call.i279 = call i32 @clk_prepare(ptr noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool.not.i280 = icmp eq i32 %call.i279, 0
  br i1 %tobool.not.i280, label %if.end.i283, label %if.end90.cleanup.thread_crit_edge

if.end90.cleanup.thread_crit_edge:                ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i283:                                      ; preds = %if.end90
  %call1.i281 = call i32 @clk_enable(ptr noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i281)
  %tobool2.not.i282 = icmp eq i32 %call1.i281, 0
  br i1 %tobool2.not.i282, label %if.end95, label %if.then3.i284

if.then3.i284:                                    ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %88) #8
  br label %cleanup.thread

if.end95:                                         ; preds = %if.end.i283
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %mul = shl i32 %i.0328, 13
  %add.ptr = getelementptr i8, ptr %90, i32 %mul
  %regs97 = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 1
  %91 = ptrtoint ptr %regs97 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr, ptr %regs97, align 4
  br i1 %tobool98.not, label %if.end95.do.body103_crit_edge, label %land.lhs.true

if.end95.do.body103_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body103

land.lhs.true:                                    ; preds = %if.end95
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %has_tdma = getelementptr inbounds %struct.mv_cesa_caps, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %has_tdma to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %has_tdma, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool100.not = icmp eq i8 %95, 0
  br i1 %tobool100.not, label %land.lhs.true.do.body103_crit_edge, label %if.then101

land.lhs.true.do.body103_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body103

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mv_cesa_conf_mbus_windows(ptr noundef %arrayidx, ptr noundef nonnull %call45)
  br label %do.body103

do.body103:                                       ; preds = %if.then101, %land.lhs.true.do.body103_crit_edge, %if.end95.do.body103_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs97, align 4
  %add.ptr107 = getelementptr i8, ptr %97, i32 56864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 0) #8, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs97, align 4
  %add.ptr112 = getelementptr i8, ptr %99, i32 56840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 50331648) #8, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @arm_heavy_mb() #8
  %sram_dma = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 3
  %100 = ptrtoint ptr %sram_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sram_dma, align 4
  %and = and i32 %101, 2047
  %102 = call i32 @llvm.bswap.i32(i32 %and)
  %103 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs97, align 4
  %add.ptr117 = getelementptr i8, ptr %104, i32 56836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %102) #8, !srcloc !93
  %105 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i287 = icmp eq ptr %106, null
  br i1 %tobool.not.i287, label %if.end.i288, label %do.body103.dev_name.exit_crit_edge

do.body103.dev_name.exit_crit_edge:               ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i288:                                      ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i288, %do.body103.dev_name.exit_crit_edge
  %retval.0.i289 = phi ptr [ %108, %if.end.i288 ], [ %106, %do.body103.dev_name.exit_crit_edge ]
  %call120 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call58, ptr noundef null, ptr noundef nonnull @mv_cesa_int, i32 noundef 8192, ptr noundef %retval.0.i289, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %for.inc, label %dev_name.exit.cleanup.thread_crit_edge

dev_name.exit.cleanup.thread_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %dev_name.exit.cleanup.thread_crit_edge, %if.then3.i284, %if.end90.cleanup.thread_crit_edge, %if.then3.i, %if.end76.cleanup.thread_crit_edge, %if.end57.cleanup.thread_crit_edge, %mv_cesa_get_sram.exit, %if.end26.i.cleanup.thread_crit_edge, %lor.lhs.false.i.cleanup.thread_crit_edge, %if.end8.i.cleanup.thread_crit_edge, %if.end.i267
  %ret.0.ph = phi i32 [ %80, %mv_cesa_get_sram.exit ], [ -12, %if.end.i267 ], [ %call1.i275, %if.then3.i ], [ %call1.i281, %if.then3.i284 ], [ %call.i279, %if.end90.cleanup.thread_crit_edge ], [ %call.i273, %if.end76.cleanup.thread_crit_edge ], [ -12, %if.end26.i.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread_crit_edge ], [ -22, %if.end8.i.cleanup.thread_crit_edge ], [ %call58, %if.end57.cleanup.thread_crit_edge ], [ %call120, %dev_name.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %res_name) #8
  br label %err_cleanup

for.inc:                                          ; preds = %dev_name.exit
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx, align 4
  %call125 = call i32 @cpumask_local_spread(i32 noundef %110, i32 noundef -1) #8
  %rem.i = and i32 %call125, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call125, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call.i.i290 = call i32 @__irq_apply_affinity_hint(i32 noundef %call58, ptr noundef %add.ptr.i, i1 noundef zeroext true) #8
  %queue = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 11
  call void @crypto_init_queue(ptr noundef %queue, i32 noundef 128) #8
  %load = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %load, i32 noundef 4) #8
  %111 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 0, ptr %load, align 4
  %complete_queue = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 14
  %112 = ptrtoint ptr %complete_queue to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %complete_queue, ptr %complete_queue, align 4
  %prev.i = getelementptr %struct.mv_cesa_engine, ptr %40, i32 %i.0328, i32 14, i32 1
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %complete_queue, ptr %prev.i, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %res_name) #8
  %inc = add nuw nsw i32 %i.0328, 1
  %114 = ptrtoint ptr %caps.0 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %caps.0, align 4
  %cmp47 = icmp slt i32 %inc, %115
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  store ptr %call.i, ptr @cesa_dev, align 4
  %call129 = call fastcc i32 @mv_cesa_add_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %do.end135, label %if.then131

if.then131:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @cesa_dev, align 4
  br label %err_cleanup

do.end135:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %cleanup159

err_cleanup:                                      ; preds = %if.then131, %cleanup.thread
  %ret.1 = phi i32 [ %call129, %if.then131 ], [ %ret.0.ph, %cleanup.thread ]
  %116 = ptrtoint ptr %caps.0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %caps.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp138329 = icmp sgt i32 %117, 0
  br i1 %cmp138329, label %err_cleanup.for.body139_crit_edge, label %err_cleanup.cleanup159_crit_edge

err_cleanup.cleanup159_crit_edge:                 ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

err_cleanup.for.body139_crit_edge:                ; preds = %err_cleanup
  br label %for.body139

for.body139:                                      ; preds = %for.inc156.for.body139_crit_edge, %err_cleanup.for.body139_crit_edge
  %i.1330 = phi i32 [ %inc157, %for.inc156.for.body139_crit_edge ], [ 0, %err_cleanup.for.body139_crit_edge ]
  %118 = ptrtoint ptr %engines25 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %engines25, align 4
  %zclk142 = getelementptr %struct.mv_cesa_engine, ptr %119, i32 %i.1330, i32 7
  %120 = ptrtoint ptr %zclk142 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %zclk142, align 4
  call void @clk_disable(ptr noundef %121) #8
  call void @clk_unprepare(ptr noundef %121) #8
  %122 = ptrtoint ptr %engines25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %engines25, align 4
  %clk145 = getelementptr %struct.mv_cesa_engine, ptr %123, i32 %i.1330, i32 6
  %124 = ptrtoint ptr %clk145 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk145, align 4
  call void @clk_disable(ptr noundef %125) #8
  call void @clk_unprepare(ptr noundef %125) #8
  %126 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %driver_data.i.i, align 4
  %engines.i292 = getelementptr inbounds %struct.mv_cesa_dev, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %engines.i292 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %engines.i292, align 4
  %pool.i293 = getelementptr %struct.mv_cesa_engine, ptr %129, i32 %i.1330, i32 10
  %130 = ptrtoint ptr %pool.i293 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pool.i293, align 4
  %tobool.not.i294 = icmp eq ptr %131, null
  br i1 %tobool.not.i294, label %if.else.i, label %if.then.i296

if.then.i296:                                     ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  %132 = getelementptr %struct.mv_cesa_engine, ptr %129, i32 %i.1330, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  %sram_size.i295 = getelementptr inbounds %struct.mv_cesa_dev, ptr %127, i32 0, i32 3
  %136 = ptrtoint ptr %sram_size.i295 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sram_size.i295, align 4
  call void @gen_pool_free_owner(ptr noundef nonnull %131, i32 noundef %135, i32 noundef %137, ptr noundef null) #8
  br label %mv_cesa_put_sram.exit

if.else.i:                                        ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i297 = getelementptr inbounds %struct.mv_cesa_dev, ptr %127, i32 0, i32 2
  %138 = ptrtoint ptr %dev.i297 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i297, align 4
  %sram_dma.i298 = getelementptr %struct.mv_cesa_engine, ptr %129, i32 %i.1330, i32 3
  %140 = ptrtoint ptr %sram_dma.i298 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sram_dma.i298, align 4
  %sram_size2.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %127, i32 0, i32 3
  %142 = ptrtoint ptr %sram_size2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sram_size2.i, align 4
  call void @dma_unmap_resource(ptr noundef %139, i32 noundef %141, i32 noundef %143, i32 noundef 0, i32 noundef 0) #8
  br label %mv_cesa_put_sram.exit

mv_cesa_put_sram.exit:                            ; preds = %if.else.i, %if.then.i296
  %144 = ptrtoint ptr %engines25 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %engines25, align 4
  %irq148 = getelementptr %struct.mv_cesa_engine, ptr %145, i32 %i.1330, i32 15
  %146 = ptrtoint ptr %irq148 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %irq148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp149 = icmp sgt i32 %147, 0
  br i1 %cmp149, label %if.then150, label %mv_cesa_put_sram.exit.for.inc156_crit_edge

mv_cesa_put_sram.exit.for.inc156_crit_edge:       ; preds = %mv_cesa_put_sram.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc156

if.then150:                                       ; preds = %mv_cesa_put_sram.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i300 = call i32 @__irq_apply_affinity_hint(i32 noundef %147, ptr noundef null, i1 noundef zeroext true) #8
  br label %for.inc156

for.inc156:                                       ; preds = %if.then150, %mv_cesa_put_sram.exit.for.inc156_crit_edge
  %inc157 = add nuw nsw i32 %i.1330, 1
  %148 = ptrtoint ptr %caps.0 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %caps.0, align 4
  %cmp138 = icmp slt i32 %inc157, %149
  br i1 %cmp138, label %for.inc156.for.body139_crit_edge, label %for.inc156.cleanup159_crit_edge

for.inc156.cleanup159_crit_edge:                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159

for.inc156.for.body139_crit_edge:                 ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body139

cleanup159:                                       ; preds = %for.inc156.cleanup159_crit_edge, %err_cleanup.cleanup159_crit_edge, %do.end135, %if.end19.i.cleanup159_crit_edge, %if.end14.i.cleanup159_crit_edge, %if.end9.i.cleanup159_crit_edge, %if.end4.i.cleanup159_crit_edge, %if.end.i.cleanup159_crit_edge, %if.then37, %devm_kcalloc.exit.cleanup159_crit_edge, %devm_kcalloc.exit.thread, %if.end11.cleanup159_crit_edge, %lor.lhs.false.cleanup159_crit_edge, %if.then4.cleanup159_crit_edge, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ %24, %if.then37 ], [ 0, %do.end135 ], [ -524, %lor.lhs.false.cleanup159_crit_edge ], [ -524, %if.then4.cleanup159_crit_edge ], [ -12, %if.end11.cleanup159_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup159_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end.i.cleanup159_crit_edge ], [ -12, %if.end4.i.cleanup159_crit_edge ], [ -12, %if.end9.i.cleanup159_crit_edge ], [ -12, %if.end14.i.cleanup159_crit_edge ], [ -12, %if.end19.i.cleanup159_crit_edge ], [ %ret.1, %err_cleanup.cleanup159_crit_edge ], [ %ret.1, %for.inc156.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sram_size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nahash_algs19.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %nahash_algs19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nahash_algs19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.i = icmp sgt i32 %5, 0
  br i1 %cmp20.i, label %entry.for.body.i_crit_edge, label %entry.for.cond2.preheader.i_crit_edge

entry.for.cond2.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %for.body.i.for.cond2.preheader.i_crit_edge, %entry.for.cond2.preheader.i_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %ncipher_algs22.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ncipher_algs22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ncipher_algs22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp423.i = icmp sgt i32 %9, 0
  br i1 %cmp423.i, label %for.cond2.preheader.i.for.body5.i_crit_edge, label %for.cond2.preheader.i.mv_cesa_remove_algs.exit_crit_edge

for.cond2.preheader.i.mv_cesa_remove_algs.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_remove_algs.exit

for.cond2.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body5.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %10 = phi ptr [ %16, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ahash_algs.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ahash_algs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ahash_algs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.021.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @crypto_unregister_ahash(ptr noundef %14) #8
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %nahash_algs.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %nahash_algs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nahash_algs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond2.preheader.i_crit_edge

for.body.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond2.preheader.i.for.body5.i_crit_edge
  %19 = phi ptr [ %25, %for.body5.i.for.body5.i_crit_edge ], [ %7, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %i.124.i = phi i32 [ %inc9.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %cipher_algs.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %cipher_algs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cipher_algs.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %21, i32 %i.124.i
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @crypto_unregister_skcipher(ptr noundef %23) #8
  %inc9.i = add nuw nsw i32 %i.124.i, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %ncipher_algs.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ncipher_algs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ncipher_algs.i, align 4
  %cmp4.i = icmp slt i32 %inc9.i, %27
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.mv_cesa_remove_algs.exit_crit_edge

for.body5.i.mv_cesa_remove_algs.exit_crit_edge:   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_remove_algs.exit

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

mv_cesa_remove_algs.exit:                         ; preds = %for.body5.i.mv_cesa_remove_algs.exit_crit_edge, %for.cond2.preheader.i.mv_cesa_remove_algs.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %for.body.lr.ph, label %mv_cesa_remove_algs.exit.for.end_crit_edge

mv_cesa_remove_algs.exit.for.end_crit_edge:       ; preds = %mv_cesa_remove_algs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %mv_cesa_remove_algs.exit
  %engines = getelementptr inbounds %struct.mv_cesa_dev, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %mv_cesa_put_sram.exit.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mv_cesa_put_sram.exit.for.body_crit_edge ]
  %32 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %engines, align 4
  %zclk = getelementptr %struct.mv_cesa_engine, ptr %33, i32 %i.017, i32 7
  %34 = ptrtoint ptr %zclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %zclk, align 4
  tail call void @clk_disable(ptr noundef %35) #8
  tail call void @clk_unprepare(ptr noundef %35) #8
  %36 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %engines, align 4
  %clk = getelementptr %struct.mv_cesa_engine, ptr %37, i32 %i.017, i32 6
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  tail call void @clk_unprepare(ptr noundef %39) #8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %engines.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %engines.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %engines.i, align 4
  %pool.i = getelementptr %struct.mv_cesa_engine, ptr %43, i32 %i.017, i32 10
  %44 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pool.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %46 = getelementptr %struct.mv_cesa_engine, ptr %43, i32 %i.017, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %48 to i32
  %sram_size.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sram_size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef nonnull %45, i32 noundef %49, i32 noundef %51, ptr noundef null) #8
  br label %mv_cesa_put_sram.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %41, i32 0, i32 2
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %sram_dma.i = getelementptr %struct.mv_cesa_engine, ptr %43, i32 %i.017, i32 3
  %54 = ptrtoint ptr %sram_dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sram_dma.i, align 4
  %sram_size2.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %41, i32 0, i32 3
  %56 = ptrtoint ptr %sram_size2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sram_size2.i, align 4
  tail call void @dma_unmap_resource(ptr noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef 0, i32 noundef 0) #8
  br label %mv_cesa_put_sram.exit

mv_cesa_put_sram.exit:                            ; preds = %if.else.i, %if.then.i
  %58 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %engines, align 4
  %irq = getelementptr %struct.mv_cesa_engine, ptr %59, i32 %i.017, i32 15
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %61, ptr noundef null, i1 noundef zeroext true) #8
  %inc = add nuw nsw i32 %i.017, 1
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %cmp = icmp slt i32 %inc, %65
  br i1 %cmp, label %mv_cesa_put_sram.exit.for.body_crit_edge, label %mv_cesa_put_sram.exit.for.end_crit_edge

mv_cesa_put_sram.exit.for.end_crit_edge:          ; preds = %mv_cesa_put_sram.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

mv_cesa_put_sram.exit.for.body_crit_edge:         ; preds = %mv_cesa_put_sram.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %mv_cesa_put_sram.exit.for.end_crit_edge, %mv_cesa_remove_algs.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info_nooverlap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_cesa_conf_mbus_windows(ptr nocapture noundef readonly %engine, ptr nocapture noundef readonly %dram) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %1, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %add.ptr6 = getelementptr i8, ptr %1, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %add.ptr.1 = getelementptr i8, ptr %1, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %add.ptr6.1 = getelementptr i8, ptr %1, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %add.ptr.2 = getelementptr i8, ptr %1, i32 2580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %add.ptr6.2 = getelementptr i8, ptr %1, i32 2576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %add.ptr.3 = getelementptr i8, ptr %1, i32 2588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %add.ptr6.3 = getelementptr i8, ptr %1, i32 2584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3, i32 0) #8, !srcloc !93
  %num_cs = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 1
  %2 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp851 = icmp sgt i32 %3, 0
  br i1 %cmp851, label %for.body9.lr.ph, label %entry.for.end34_crit_edge

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body9.lr.ph:                                  ; preds = %entry
  %cs10 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 2
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.152 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc33, %for.body9.for.body9_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %size = getelementptr %struct.mbus_dram_window, ptr %cs10, i32 %i.152, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %mbus_attr = getelementptr %struct.mbus_dram_window, ptr %cs10, i32 %i.152, i32 1
  %6 = ptrtoint ptr %mbus_attr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mbus_attr, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %8 = ptrtoint ptr %dram to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dram, align 8
  %conv16 = zext i8 %9 to i32
  %shl17 = shl nuw nsw i32 %conv16, 4
  %10 = trunc i64 %5 to i32
  %11 = add i32 %10, -1
  %12 = and i32 %11, -65536
  %13 = or i32 %12, %shl
  %14 = or i32 %shl17, %13
  %conv21 = or i32 %14, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv21)
  %mul22 = shl i32 %i.152, 3
  %add23 = add i32 %mul22, 2564
  %add.ptr24 = getelementptr i8, ptr %1, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %15) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %base = getelementptr %struct.mbus_dram_window, ptr %cs10, i32 %i.152, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %base, align 8
  %conv28 = trunc i64 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %add30 = add i32 %mul22, 2560
  %add.ptr31 = getelementptr i8, ptr %1, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %18) #8, !srcloc !93
  %inc33 = add nuw nsw i32 %i.152, 1
  %19 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_cs, align 4
  %cmp8 = icmp slt i32 %inc33, %20
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end34_crit_edge

for.body9.for.end34_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end34:                                        ; preds = %for.body9.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_int(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %int_mask.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 9
  %regs = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_mask.i, align 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr81 = getelementptr i8, ptr %3, i32 56864
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #8, !srcloc !100
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %and82 = and i32 %5, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool.not83 = icmp eq i32 %and82, 0
  br i1 %tobool.not83, label %entry.while.end31_crit_edge, label %do.body.lr.ph

entry.while.end31_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end31

do.body.lr.ph:                                    ; preds = %entry
  %chain.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 13
  %last.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 13, i32 1
  %req1.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 5
  %complete_queue.i.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 14
  %prev.i.i.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 14, i32 1
  %lock = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 4
  %queue.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 11
  %backlog.i.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %priv, i32 0, i32 11, i32 1
  br label %do.body

while.cond.loopexit:                              ; preds = %if.end28.while.cond.loopexit_crit_edge, %mv_cesa_rearm_engine.exit.while.cond.loopexit_crit_edge
  %6 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_mask.i, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 56864
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !100
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %and = and i32 %11, %7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end31_crit_edge, label %while.cond.loopexit.do.body_crit_edge

while.cond.loopexit.do.body_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.cond.loopexit.while.end31_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end31

do.body:                                          ; preds = %while.cond.loopexit.do.body_crit_edge, %do.body.lr.ph
  %and84 = phi i32 [ %and82, %do.body.lr.ph ], [ %and, %while.cond.loopexit.do.body_crit_edge ]
  %12 = phi i32 [ %5, %do.body.lr.ph ], [ %11, %while.cond.loopexit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %12, -1
  %13 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %15, i32 56680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 56864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #8, !srcloc !93
  %18 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %land.lhs.true.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %20 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %mv_cesa_int_process.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %22 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req1.i.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm.i.i, align 4
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call2.i.i = tail call i32 %29(ptr noundef %23, i32 noundef %and84) #8
  %30 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call2.i.i, label %if.end.i.mv_cesa_int_process.exit.thread_crit_edge [
    i32 0, label %if.then.i.i
    i32 -115, label %mv_cesa_int_process.exit.thread88
  ]

if.end.i.mv_cesa_int_process.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_int_process.exit.thread

if.then.i.i:                                      ; preds = %if.end.i
  %31 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %complete.i.i, align 4
  tail call void %34(ptr noundef %23) #8
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %23, ptr noundef %36, ptr noundef %complete_queue.i.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.mv_cesa_int_process.exit.thread_crit_edge

if.then.i.i.mv_cesa_int_process.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_int_process.exit.thread

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %23, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %complete_queue.i.i.i, ptr %23, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %23, ptr %36, align 4
  br label %mv_cesa_int_process.exit.thread

mv_cesa_int_process.exit.thread88:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %step.i.i = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %step.i.i, align 4
  tail call void %44(ptr noundef %23) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  br label %if.end16.thread

mv_cesa_int_process.exit.thread:                  ; preds = %if.end.i.i.i.i.i, %if.then.i.i.mv_cesa_int_process.exit.thread_crit_edge, %if.end.i.mv_cesa_int_process.exit.thread_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  br label %if.end16

mv_cesa_int_process.exit:                         ; preds = %land.lhs.true.i
  %call.i = tail call i32 @mv_cesa_tdma_process(ptr noundef %priv, i32 noundef %and84) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -115
  br i1 %cmp.not, label %mv_cesa_int_process.exit.if.end16.thread_crit_edge, label %mv_cesa_int_process.exit.if.end16_crit_edge

mv_cesa_int_process.exit.if.end16_crit_edge:      ; preds = %mv_cesa_int_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

mv_cesa_int_process.exit.if.end16.thread_crit_edge: ; preds = %mv_cesa_int_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %mv_cesa_int_process.exit.if.end16.thread_crit_edge, %mv_cesa_int_process.exit.thread88
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %if.end22

if.end16:                                         ; preds = %mv_cesa_int_process.exit.if.end16_crit_edge, %mv_cesa_int_process.exit.thread
  %retval.0.i87 = phi i32 [ %call2.i.i, %mv_cesa_int_process.exit.thread ], [ %call.i, %mv_cesa_int_process.exit.if.end16_crit_edge ]
  %45 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req1.i.i, align 4
  store ptr null, ptr %req1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i87)
  %cond = icmp eq i32 %retval.0.i87, 0
  br i1 %cond, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tfm, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__crt_ctx.i, align 4
  %cleanup.i = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cleanup.i, align 4
  tail call void %52(ptr noundef %46) #8
  tail call fastcc void @local_bh_disable() #8
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %complete.i, align 4
  tail call void %54(ptr noundef %46, i32 noundef %retval.0.i87) #8
  tail call fastcc void @local_bh_enable() #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge, %if.end16.thread
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %55 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %req1.i.i, align 4
  %tobool.not.i60 = icmp eq ptr %56, null
  br i1 %tobool.not.i60, label %if.end.i62, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %mv_cesa_rearm_engine.exit

if.end.i62:                                       ; preds = %if.end22
  %57 = ptrtoint ptr %backlog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %backlog.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %58, %queue.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %58
  %call2.i.i61 = tail call ptr @crypto_dequeue_request(ptr noundef %queue.i.i) #8
  %59 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call2.i.i61, ptr %req1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %tobool4.not.i = icmp eq ptr %call2.i.i61, null
  br i1 %tobool4.not.i, label %if.end.i62.mv_cesa_rearm_engine.exit_crit_edge, label %if.end6.i

if.end.i62.mv_cesa_rearm_engine.exit_crit_edge:   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_rearm_engine.exit

if.end6.i:                                        ; preds = %if.end.i62
  %tobool7.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end9.i_crit_edge, label %if.then8.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i63 = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %complete.i63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %complete.i63, align 4
  tail call void %61(ptr noundef nonnull %spec.select.i.i.i, i32 noundef -115) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end6.i.if.end9.i_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %call2.i.i61, i32 0, i32 3
  %62 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tfm.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %__crt_ctx.i.i, align 4
  %step.i = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %step.i, align 4
  tail call void %67(ptr noundef nonnull %call2.i.i61) #8
  br label %mv_cesa_rearm_engine.exit

mv_cesa_rearm_engine.exit:                        ; preds = %if.end9.i, %if.end.i62.mv_cesa_rearm_engine.exit_crit_edge, %if.end.thread.i
  %68 = ptrtoint ptr %complete_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %complete_queue.i.i.i, align 4
  %cmp.not.i78 = icmp eq ptr %69, %complete_queue.i.i.i
  %tobool.not.i657779 = icmp eq ptr %69, null
  %tobool.not.i6580 = or i1 %cmp.not.i78, %tobool.not.i657779
  br i1 %tobool.not.i6580, label %mv_cesa_rearm_engine.exit.while.cond.loopexit_crit_edge, label %mv_cesa_rearm_engine.exit.if.then.i66_crit_edge

mv_cesa_rearm_engine.exit.if.then.i66_crit_edge:  ; preds = %mv_cesa_rearm_engine.exit
  br label %if.then.i66

mv_cesa_rearm_engine.exit.while.cond.loopexit_crit_edge: ; preds = %mv_cesa_rearm_engine.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

if.then.i66:                                      ; preds = %if.end28.if.then.i66_crit_edge, %mv_cesa_rearm_engine.exit.if.then.i66_crit_edge
  %70 = phi ptr [ %88, %if.end28.if.then.i66_crit_edge ], [ %69, %mv_cesa_rearm_engine.exit.if.then.i66_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %70) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i66.if.end28_crit_edge

if.then.i66.if.end28_crit_edge:                   ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end.i.i.i:                                     ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end.i.i.i, %if.then.i66.if.end28_crit_edge
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tfm29 = getelementptr inbounds %struct.crypto_async_request, ptr %70, i32 0, i32 3
  %79 = ptrtoint ptr %tfm29 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tfm29, align 4
  %__crt_ctx.i68 = getelementptr inbounds %struct.crypto_tfm, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %__crt_ctx.i68 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %__crt_ctx.i68, align 4
  %cleanup.i69 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %cleanup.i69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cleanup.i69, align 4
  tail call void %84(ptr noundef nonnull %70) #8
  tail call fastcc void @local_bh_disable() #8
  %complete.i70 = getelementptr inbounds %struct.crypto_async_request, ptr %70, i32 0, i32 1
  %85 = ptrtoint ptr %complete.i70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %complete.i70, align 4
  tail call void %86(ptr noundef nonnull %70, i32 noundef 0) #8
  tail call fastcc void @local_bh_enable() #8
  %87 = ptrtoint ptr %complete_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %complete_queue.i.i.i, align 4
  %cmp.not.i = icmp eq ptr %88, %complete_queue.i.i.i
  %tobool.not.i6577 = icmp eq ptr %88, null
  %tobool.not.i65 = or i1 %cmp.not.i, %tobool.not.i6577
  br i1 %tobool.not.i65, label %if.end28.while.cond.loopexit_crit_edge, label %if.end28.if.then.i66_crit_edge

if.end28.if.then.i66_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i66

if.end28.while.cond.loopexit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

while.end31:                                      ; preds = %while.cond.loopexit.while.end31_crit_edge, %entry.while.end31_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end31_crit_edge ], [ 1, %while.cond.loopexit.while.end31_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_add_algs(ptr nocapture noundef readonly %cesa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cesa, align 4
  %ncipher_algs60 = getelementptr inbounds %struct.mv_cesa_caps, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ncipher_algs60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncipher_algs60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp61 = icmp sgt i32 %3, 0
  br i1 %cmp61, label %entry.for.body_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %for.inc.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %4 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cesa, align 4
  %nahash_algs63 = getelementptr inbounds %struct.mv_cesa_caps, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %nahash_algs63 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nahash_algs63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp464 = icmp sgt i32 %7, 0
  br i1 %cmp464, label %for.cond2.preheader.for.body5_crit_edge, label %for.cond2.preheader.cleanup_crit_edge

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi ptr [ %14, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.062 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cipher_algs = getelementptr inbounds %struct.mv_cesa_caps, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %cipher_algs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cipher_algs, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.062
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @crypto_register_skcipher(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.err_unregister_crypto_crit_edge

for.body.err_unregister_crypto_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister_crypto

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.062, 1
  %13 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cesa, align 4
  %ncipher_algs = getelementptr inbounds %struct.mv_cesa_caps, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ncipher_algs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ncipher_algs, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond2.preheader_crit_edge

for.inc.for.cond2.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body5:                                        ; preds = %for.inc12.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %17 = phi ptr [ %23, %for.inc12.for.body5_crit_edge ], [ %5, %for.cond2.preheader.for.body5_crit_edge ]
  %i.165 = phi i32 [ %inc13, %for.inc12.for.body5_crit_edge ], [ 0, %for.cond2.preheader.for.body5_crit_edge ]
  %ahash_algs = getelementptr inbounds %struct.mv_cesa_caps, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ahash_algs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ahash_algs, align 4
  %arrayidx7 = getelementptr ptr, ptr %19, i32 %i.165
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @crypto_register_ahash(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc12, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.body5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.165)
  %cmp1666.not = icmp eq i32 %i.165, 0
  br i1 %cmp1666.not, label %for.cond15.preheader.for.end23_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end23_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.inc12:                                        ; preds = %for.body5
  %inc13 = add nuw nsw i32 %i.165, 1
  %22 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cesa, align 4
  %nahash_algs = getelementptr inbounds %struct.mv_cesa_caps, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %nahash_algs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nahash_algs, align 4
  %cmp4 = icmp slt i32 %inc13, %25
  br i1 %cmp4, label %for.inc12.for.body5_crit_edge, label %for.inc12.cleanup_crit_edge

for.inc12.cleanup_crit_edge:                      ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc12.for.body5_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %j.067 = phi i32 [ %inc22, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %26 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cesa, align 4
  %ahash_algs19 = getelementptr inbounds %struct.mv_cesa_caps, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ahash_algs19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ahash_algs19, align 4
  %arrayidx20 = getelementptr ptr, ptr %29, i32 %j.067
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx20, align 4
  tail call void @crypto_unregister_ahash(ptr noundef %31) #8
  %inc22 = add nuw nsw i32 %j.067, 1
  %exitcond.not = icmp eq i32 %inc22, %i.165
  br i1 %exitcond.not, label %for.body17.for.end23_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.body17.for.end23_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.end23:                                        ; preds = %for.body17.for.end23_crit_edge, %for.cond15.preheader.for.end23_crit_edge
  %32 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cesa, align 4
  %ncipher_algs25 = getelementptr inbounds %struct.mv_cesa_caps, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ncipher_algs25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ncipher_algs25, align 4
  br label %err_unregister_crypto

err_unregister_crypto:                            ; preds = %for.end23, %for.body.err_unregister_crypto_crit_edge
  %ret.0 = phi i32 [ %call8, %for.end23 ], [ %call, %for.body.err_unregister_crypto_crit_edge ]
  %i.2 = phi i32 [ %35, %for.end23 ], [ %i.062, %for.body.err_unregister_crypto_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp2768 = icmp sgt i32 %i.2, 0
  br i1 %cmp2768, label %err_unregister_crypto.for.body28_crit_edge, label %err_unregister_crypto.cleanup_crit_edge

err_unregister_crypto.cleanup_crit_edge:          ; preds = %err_unregister_crypto
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_unregister_crypto.for.body28_crit_edge:       ; preds = %err_unregister_crypto
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %err_unregister_crypto.for.body28_crit_edge
  %j.169 = phi i32 [ %inc33, %for.body28.for.body28_crit_edge ], [ 0, %err_unregister_crypto.for.body28_crit_edge ]
  %36 = ptrtoint ptr %cesa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cesa, align 4
  %cipher_algs30 = getelementptr inbounds %struct.mv_cesa_caps, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %cipher_algs30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cipher_algs30, align 4
  %arrayidx31 = getelementptr ptr, ptr %39, i32 %j.169
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx31, align 4
  tail call void @crypto_unregister_skcipher(ptr noundef %41) #8
  %inc33 = add nuw nsw i32 %j.169, 1
  %exitcond75.not = icmp eq i32 %inc33, %i.2
  br i1 %exitcond75.not, label %for.body28.cleanup_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body28.cleanup_crit_edge, %err_unregister_crypto.cleanup_crit_edge, %for.inc12.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unregister_crypto.cleanup_crit_edge ], [ 0, %for.cond2.preheader.cleanup_crit_edge ], [ %ret.0, %for.body28.cleanup_crit_edge ], [ 0, %for.inc12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_tdma_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_marvell_cesa__241_616_marvell_cesa_init6, !1, !"__initcall__kmod_marvell_cesa__241_616_marvell_cesa_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 616, i32 1}
!2 = !{ptr @__exitcall_marvell_cesa_exit, !1, !"__exitcall_marvell_cesa_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 618, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 619, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 620, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 621, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @cesa_dev, !13, !"cesa_dev", i1 false, i1 false}
!13 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 35, i32 21}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 612, i32 11}
!16 = !{ptr @marvell_cesa, !17, !"marvell_cesa", i1 false, i1 false}
!17 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 607, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 444, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mv_cesa_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mv_cesa_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 464, i32 43}
!28 = !{ptr @mv_cesa_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 475, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 477, i32 59}
!33 = !{ptr @mv_cesa_probe.__key.9, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 494, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 512, i32 40}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 520, i32 40}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 568, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mv_cesa_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mv_cesa_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @orion_caps, !46, !"orion_caps", i1 false, i1 false}
!46 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 266, i32 34}
!47 = !{ptr @orion_cipher_algs, !48, !"orion_cipher_algs", i1 false, i1 false}
!48 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 232, i32 29}
!49 = !{ptr @orion_ahash_algs, !50, !"orion_ahash_algs", i1 false, i1 false}
!50 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 241, i32 26}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 349, i32 41}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 355, i32 34}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 360, i32 37}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 365, i32 39}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 378, i32 25}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 382, i32 12}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 396, i32 15}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 398, i32 15}
!67 = !{ptr @mv_cesa_of_match_table, !68, !"mv_cesa_of_match_table", i1 false, i1 false}
!68 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 302, i32 34}
!69 = !{ptr @kirkwood_caps, !70, !"kirkwood_caps", i1 false, i1 false}
!70 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 275, i32 34}
!71 = !{ptr @armada_370_caps, !72, !"armada_370_caps", i1 false, i1 false}
!72 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 284, i32 34}
!73 = !{ptr @armada_370_cipher_algs, !74, !"armada_370_cipher_algs", i1 false, i1 false}
!74 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 248, i32 29}
!75 = !{ptr @armada_370_ahash_algs, !76, !"armada_370_ahash_algs", i1 false, i1 false}
!76 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 257, i32 26}
!77 = !{ptr @armada_xp_caps, !78, !"armada_xp_caps", i1 false, i1 false}
!78 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 293, i32 34}
!79 = !{ptr @mv_cesa_plat_id_table, !80, !"mv_cesa_plat_id_table", i1 false, i1 false}
!80 = !{!"../drivers/crypto/marvell/cesa/cesa.c", i32 601, i32 40}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i8 0, i8 2}
!92 = !{i64 2154567676}
!93 = !{i64 6237833}
!94 = !{i64 2154569029}
!95 = !{i64 2154570313}
!96 = !{i64 2154562753}
!97 = !{i64 2154563188}
!98 = !{i64 2154563731}
!99 = !{i64 2154564497}
!100 = !{i64 6238251}
!101 = !{i64 2154558035}
!102 = !{i64 2154558264}
!103 = !{i64 2154558684}
