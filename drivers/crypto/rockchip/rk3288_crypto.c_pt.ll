; ModuleID = '/llk/IR_all_yes/drivers/crypto/rockchip/rk3288_crypto.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rk_crypto_tmp = type { ptr, [124 x i8], %union.anon.76, i32, [124 x i8] }
%union.anon.76 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.72, ptr, ptr, ptr, ptr, %union.anon.73, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rk_crypto_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, %struct.spinlock, ptr, ptr, %struct.scatterlist, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }

@__initcall__kmod_rk_crypto__236_440_crypto_driver_init6 = internal global ptr @crypto_driver_init, section ".initcall6.init", align 4
@crypto_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk_crypto_probe, ptr @rk_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @crypto_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_crypto_driver_exit = internal global ptr @crypto_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [54 x i8] c"rk_crypto.author=Zain Wang <zain.wang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [66 x i8] c"rk_crypto.description=Support for Rockchip's cryptographic engine\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [49 x i8] c"rk_crypto.file=drivers/crypto/rockchip/rk_crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"rk_crypto.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk3288-crypto\00", [18 x i8] zeroinitializer }, align 32
@crypto_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crypto-rst\00", [21 x i8] zeroinitializer }, align 32
@rk_crypto_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&crypto_info->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 375, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"control Interrupt is not available.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk_crypto_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/crypto/rockchip/rk3288_crypto.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry_ptr = internal global ptr @rk_crypto_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rk-crypto\00", [22 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 385, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irq request failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry_ptr.16 = internal global ptr @rk_crypto_probe._entry.13, section ".printk_index", align 4
@rk_crypto_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 407, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"err in register alg\00", [44 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry_ptr.19 = internal global ptr @rk_crypto_probe._entry.17, section ".printk_index", align 4
@rk_crypto_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 411, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Crypto Accelerator successfully registered\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rk_crypto_probe._entry_ptr.23 = internal global ptr @rk_crypto_probe._entry.20, section ".printk_index", align 4
@rk_crypto_irq_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 176, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA Error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk_crypto_irq_handle\00", [43 x i8] zeroinitializer }, align 32
@rk_crypto_irq_handle._entry_ptr = internal global ptr @rk_crypto_irq_handle._entry, section ".printk_index", align 4
@rk_crypto_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.9, i32 28, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s:%d], Couldn't enable clock sclk\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk_crypto_enable_clk\00", [43 x i8] zeroinitializer }, align 32
@rk_crypto_enable_clk._entry_ptr = internal global ptr @rk_crypto_enable_clk._entry, section ".printk_index", align 4
@rk_crypto_enable_clk._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.9, i32 34, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s:%d], Couldn't enable clock aclk\0A\00", [59 x i8] zeroinitializer }, align 32
@rk_crypto_enable_clk._entry_ptr.30 = internal global ptr @rk_crypto_enable_clk._entry.28, section ".printk_index", align 4
@rk_crypto_enable_clk._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.9, i32 40, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s:%d], Couldn't enable clock hclk\0A\00", [59 x i8] zeroinitializer }, align 32
@rk_crypto_enable_clk._entry_ptr.33 = internal global ptr @rk_crypto_enable_clk._entry.31, section ".printk_index", align 4
@rk_crypto_enable_clk._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.9, i32 46, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s:%d], Couldn't enable clock dmaclk\0A\00", [57 x i8] zeroinitializer }, align 32
@rk_crypto_enable_clk._entry_ptr.36 = internal global ptr @rk_crypto_enable_clk._entry.34, section ".printk_index", align 4
@rk_load_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.9, i32 100, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s:%d] dma_map_sg(src)  error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk_load_data\00", [19 x i8] zeroinitializer }, align 32
@rk_load_data._entry_ptr = internal global ptr @rk_load_data._entry, section ".printk_index", align 4
@rk_load_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.9, i32 109, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s:%d] dma_map_sg(dst)  error\0A\00", [32 x i8] zeroinitializer }, align 32
@rk_load_data._entry_ptr.41 = internal global ptr @rk_load_data._entry.39, section ".printk_index", align 4
@rk_load_data._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.9, i32 124, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s:%d] pcopy err\0A\00", [45 x i8] zeroinitializer }, align 32
@rk_load_data._entry_ptr.44 = internal global ptr @rk_load_data._entry.42, section ".printk_index", align 4
@rk_load_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.9, i32 131, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s:%d] dma_map_sg(sg_tmp)  error\0A\00", [61 x i8] zeroinitializer }, align 32
@rk_load_data._entry_ptr.47 = internal global ptr @rk_load_data._entry.45, section ".printk_index", align 4
@rk_load_data._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.9, i32 141, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@rk_load_data._entry_ptr.49 = internal global ptr @rk_load_data._entry.48, section ".printk_index", align 4
@rk_cipher_algs = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @rk_ecb_aes_alg, ptr @rk_cbc_aes_alg, ptr @rk_ecb_des_alg, ptr @rk_cbc_des_alg, ptr @rk_ecb_des3_ede_alg, ptr @rk_cbc_des3_ede_alg, ptr @rk_ahash_sha1, ptr @rk_ahash_sha256, ptr @rk_ahash_md5], [60 x i8] zeroinitializer }, align 32
@rk_ecb_aes_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_cbc_aes_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_ecb_des_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_cbc_des_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_ecb_des3_ede_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_cbc_des3_ede_alg = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_ahash_sha1 = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_ahash_sha256 = external dso_local global %struct.rk_crypto_tmp, align 128
@rk_ahash_md5 = external dso_local global %struct.rk_crypto_tmp, align 128
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"crypto_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 431, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 435, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"crypto_of_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 307, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 326, i32 49 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 340, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 348, i32 47 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 354, i32 47 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 360, i32 47 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 366, i32 49 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 374, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 382, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 385, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 407, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 411, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 176, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 27, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 33, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 39, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 45, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 99, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 107, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 123, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 130, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 139, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"rk_cipher_algs\00", align 1
@___asan_gen_.192 = private constant [43 x i8] c"../drivers/crypto/rockchip/rk3288_crypto.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 248, i32 30 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_crypto_driver_exit, ptr @__initcall__kmod_rk_crypto__236_440_crypto_driver_init6, ptr @crypto_driver_exit, ptr @rk_crypto_enable_clk._entry, ptr @rk_crypto_enable_clk._entry.28, ptr @rk_crypto_enable_clk._entry.31, ptr @rk_crypto_enable_clk._entry.34, ptr @rk_crypto_enable_clk._entry_ptr, ptr @rk_crypto_enable_clk._entry_ptr.30, ptr @rk_crypto_enable_clk._entry_ptr.33, ptr @rk_crypto_enable_clk._entry_ptr.36, ptr @rk_crypto_irq_handle._entry, ptr @rk_crypto_irq_handle._entry_ptr, ptr @rk_crypto_probe._entry, ptr @rk_crypto_probe._entry.13, ptr @rk_crypto_probe._entry.17, ptr @rk_crypto_probe._entry.20, ptr @rk_crypto_probe._entry_ptr, ptr @rk_crypto_probe._entry_ptr.16, ptr @rk_crypto_probe._entry_ptr.19, ptr @rk_crypto_probe._entry_ptr.23, ptr @rk_load_data._entry, ptr @rk_load_data._entry.39, ptr @rk_load_data._entry.42, ptr @rk_load_data._entry.45, ptr @rk_load_data._entry.48, ptr @rk_load_data._entry_ptr, ptr @rk_load_data._entry_ptr.41, ptr @rk_load_data._entry_ptr.44, ptr @rk_load_data._entry_ptr.47, ptr @rk_load_data._entry_ptr.49, ptr @crypto_driver, ptr @.str, ptr @crypto_of_id_table, ptr @.str.1, ptr @rk_crypto_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @rk_cipher_algs], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_irq_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_enable_clk._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_enable_clk._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_crypto_enable_clk._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_load_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_load_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_load_data._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_load_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_load_data._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_cipher_algs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @crypto_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @crypto_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_crypto_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 260, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rst = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call13 = tail call i32 @reset_control_deassert(ptr noundef %3) #5
  %call.i154 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rk_crypto_action, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i, label %do.body, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call.i.i155 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  br label %cleanup

do.body:                                          ; preds = %if.end9
  %lock = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rk_crypto_probe.__key, i16 noundef signext 3) #5
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %reg, align 4
  %cmp.i156 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then22, label %if.end25

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %do.body
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %aclk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %aclk, align 4
  %cmp.i157 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %hclk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %hclk, align 4
  %cmp.i158 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #5
  %sclk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call43, ptr %sclk, align 4
  %cmp.i159 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %dmaclk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %dmaclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call51, ptr %dmaclk, align 4
  %cmp.i160 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call58 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call58, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.7) #8
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %call.i161 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call58, ptr noundef nonnull @rk_crypto_irq_handle, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool70.not = icmp eq i32 %call.i161, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %queue_task = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %queue_task, ptr noundef nonnull @rk_crypto_queue_task_cb, i32 noundef %25) #5
  %done_task = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 10
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @rk_crypto_done_task_cb, i32 noundef %25) #5
  %queue = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 8
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 50) #5
  %enable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 32
  %26 = ptrtoint ptr %enable_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rk_crypto_enable_clk, ptr %enable_clk, align 4
  %disable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 33
  %27 = ptrtoint ptr %disable_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rk_crypto_disable_clk, ptr %disable_clk, align 4
  %load_data = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 34
  %28 = ptrtoint ptr %load_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rk_load_data, ptr %load_data, align 4
  %unload_data = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 35
  %29 = ptrtoint ptr %unload_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rk_unload_data, ptr %unload_data, align 4
  %enqueue = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 36
  %30 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rk_crypto_enqueue, ptr %enqueue, align 4
  %busy = getelementptr inbounds %struct.rk_crypto_info, ptr %call.i, i32 0, i32 28
  %31 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %busy, align 4
  %call79 = tail call fastcc i32 @rk_crypto_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.end88, label %do.end84

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  tail call void @tasklet_kill(ptr noundef %queue_task) #5
  tail call void @tasklet_kill(ptr noundef %done_task) #5
  br label %cleanup

do.end88:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %do.end84, %do.end74, %do.end63, %if.then54, %if.then46, %if.then38, %if.then30, %if.then22, %devm_add_action_or_reset.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end88 ], [ %1, %if.then6 ], [ %call.i154, %devm_add_action_or_reset.exit ], [ %7, %if.then22 ], [ %9, %if.then30 ], [ %11, %if.then38 ], [ %13, %if.then46 ], [ %15, %if.then54 ], [ %20, %do.end63 ], [ %call.i161, %do.end74 ], [ %call79, %do.end84 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_crypto_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1.i = icmp eq i32 %2, 1
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %for.inc.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.1.i = icmp eq i32 %3, 1
  br i1 %cmp1.1.i, label %if.then.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %if.else.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.2.i = icmp eq i32 %4, 1
  br i1 %cmp1.2.i, label %if.then.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %if.else.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.3.i = icmp eq i32 %5, 1
  br i1 %cmp1.3.i, label %if.then.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %if.else.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1.4.i = icmp eq i32 %6, 1
  br i1 %cmp1.4.i, label %if.then.4.i, label %if.else.4.i

if.else.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %if.else.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.5.i = icmp eq i32 %7, 1
  br i1 %cmp1.5.i, label %if.then.5.i, label %if.else.5.i

if.else.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %if.else.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.6.i = icmp eq i32 %8, 1
  br i1 %cmp1.6.i, label %if.then.6.i, label %if.else.6.i

if.else.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %if.else.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp1.7.i = icmp eq i32 %9, 1
  br i1 %cmp1.7.i, label %if.then.7.i, label %if.else.7.i

if.else.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %if.else.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.8.i = icmp eq i32 %10, 1
  br i1 %cmp1.8.i, label %if.then.8.i, label %if.else.8.i

if.else.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %rk_crypto_unregister.exit

if.then.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %rk_crypto_unregister.exit

rk_crypto_unregister.exit:                        ; preds = %if.then.8.i, %if.else.8.i
  %done_task = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %done_task) #5
  %queue_task = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %queue_task) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_crypto_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.rk_crypto_info, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_crypto_irq_handle(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !106
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !107
  %7 = and i32 %4, 167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.24) #8
  %err = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -14, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %done_task = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %done_task) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end.tasklet_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_crypto_queue_task_cb(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %err1 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %err1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %err1, align 4
  %lock = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %queue = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 8
  %backlog.i = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call8 = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #5
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %busy = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 28
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %tobool11.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete, align 4
  tail call void %6(ptr noundef nonnull %spec.select.i, i32 noundef -115) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %async_req14 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %7 = ptrtoint ptr %async_req14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %async_req14, align 4
  %start = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 29
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start, align 4
  %call15 = tail call i32 %9(ptr noundef %0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %complete18 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 31
  %10 = ptrtoint ptr %complete18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete18, align 4
  %12 = ptrtoint ptr %async_req14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %async_req14, align 4
  tail call void %11(ptr noundef %13, i32 noundef %call15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_crypto_done_task_cb(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %err = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %update = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 30
  %3 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %update, align 4
  %call = tail call i32 %4(ptr noundef %0) #5
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call.sink = phi i32 [ %2, %entry.cleanup.sink.split_crit_edge ], [ %call, %if.end.cleanup.sink.split_crit_edge ]
  %complete6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 31
  %6 = ptrtoint ptr %complete6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete6, align 4
  %async_req7 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %8 = ptrtoint ptr %async_req7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async_req7, align 4
  tail call void %7(ptr noundef %9, i32 noundef %call.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_crypto_enable_clk(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 28) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %aclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aclk, align 4
  %call.i44 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.end.i48:                                       ; preds = %if.end
  %call1.i46 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %if.end9, label %if.then3.i49

if.then3.i49:                                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i49, %if.end.do.end7_crit_edge
  %retval.0.i50.ph = phi i32 [ %call1.i46, %if.then3.i49 ], [ %call.i44, %if.end.do.end7_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 34) #8
  br label %err_aclk

if.end9:                                          ; preds = %if.end.i48
  %hclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hclk, align 4
  %call.i52 = tail call i32 @clk_prepare(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %if.end9.do.end15_crit_edge

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.end.i56:                                       ; preds = %if.end9
  %call1.i54 = tail call i32 @clk_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool2.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool2.not.i55, label %if.end17, label %if.then3.i57

if.then3.i57:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i57, %if.end9.do.end15_crit_edge
  %retval.0.i58.ph = phi i32 [ %call1.i54, %if.then3.i57 ], [ %call.i52, %if.end9.do.end15_crit_edge ]
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef 40) #8
  br label %err_hclk

if.end17:                                         ; preds = %if.end.i56
  %dmaclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %dmaclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmaclk, align 4
  %call.i60 = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i64, label %if.end17.do.end23_crit_edge

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end.i64:                                       ; preds = %if.end17
  %call1.i62 = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool2.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool2.not.i63, label %if.end.i64.cleanup_crit_edge, label %if.then3.i65

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i65:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i65, %if.end17.do.end23_crit_edge
  %retval.0.i66.ph = phi i32 [ %call1.i62, %if.then3.i65 ], [ %call.i60, %if.end17.do.end23_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 46) #8
  %16 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %err_hclk

err_hclk:                                         ; preds = %do.end23, %do.end15
  %err.0 = phi i32 [ %retval.0.i58.ph, %do.end15 ], [ %retval.0.i66.ph, %do.end23 ]
  %18 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %err_aclk

err_aclk:                                         ; preds = %err_hclk, %do.end7
  %err.1 = phi i32 [ %retval.0.i50.ph, %do.end7 ], [ %err.0, %err_hclk ]
  %20 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %err_aclk, %if.end.i64.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %err.1, %err_aclk ], [ 0, %if.end.i64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_crypto_disable_clk(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dmaclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmaclk, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %hclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %aclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %sclk = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_load_data(ptr noundef %dev, ptr noundef %sg_src, ptr noundef %sg_dst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else.sink.split_crit_edge, label %cond.true

entry.if.else.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.sink.split

cond.true:                                        ; preds = %entry
  %align_size = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %align_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_size, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %cond.true.land.end.i_crit_edge

cond.true.land.end.i_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 2
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %sub.i = add i32 %3, -1
  %and1.i = and i32 %7, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.i = icmp eq i32 %and1.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %cond.true.land.end.i_crit_edge
  %8 = phi i1 [ false, %cond.true.land.end.i_crit_edge ], [ %cmp2.i, %land.rhs.i ]
  %tobool.not.i = icmp eq ptr %sg_dst, null
  br i1 %tobool.not.i, label %cond.end, label %if.end.i

if.end.i:                                         ; preds = %land.end.i
  %offset3.i = getelementptr inbounds %struct.scatterlist, ptr %sg_dst, i32 0, i32 1
  %9 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset3.i, align 4
  %and4.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 0
  br i1 %cmp5.i, label %land.end11.i, label %if.end.i.if.else.sink.split_crit_edge

if.end.i.if.else.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.sink.split

land.end11.i:                                     ; preds = %if.end.i
  %length7.i = getelementptr inbounds %struct.scatterlist, ptr %sg_dst, i32 0, i32 2
  %11 = ptrtoint ptr %length7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length7.i, align 4
  %sub8.i = add i32 %3, -1
  %and9.i = and i32 %12, %sub8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.i = icmp eq i32 %and9.i, 0
  %spec.select.i = select i1 %8, i1 %cmp10.i, i1 false
  br i1 %spec.select.i, label %land.rhs19.i, label %land.end11.i.if.else.sink.split_crit_edge

land.end11.i.if.else.sink.split_crit_edge:        ; preds = %land.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.sink.split

land.rhs19.i:                                     ; preds = %land.end11.i
  %length20.i = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 2
  %13 = ptrtoint ptr %length20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp22.i = icmp eq i32 %14, %12
  %retval.0.i142 = zext i1 %cmp22.i to i32
  %15 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i142, ptr %aligned, align 4
  br i1 %cmp22.i, label %land.rhs19.i.if.then_crit_edge, label %land.rhs19.i.if.else_crit_edge

land.rhs19.i.if.else_crit_edge:                   ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.rhs19.i.if.then_crit_edge:                   ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %land.end.i
  %retval.0.i = zext i1 %8 to i32
  %16 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %aligned, align 4
  br i1 %8, label %cond.end.if.then_crit_edge, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %land.rhs19.i.if.then_crit_edge
  %left_bytes = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %left_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %left_bytes, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  %sub = sub i32 %18, %21
  %22 = ptrtoint ptr %left_bytes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %left_bytes, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @dma_map_sg_attrs(ptr noundef %24, ptr noundef %sg_src, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 100) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 3
  %27 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_address, align 4
  %addr_in = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 26
  %29 = ptrtoint ptr %addr_in to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %addr_in, align 4
  br i1 %tobool.not.i, label %if.end.if.end80_crit_edge, label %if.then16

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then16:                                        ; preds = %if.end
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call18 = tail call i32 @dma_map_sg_attrs(ptr noundef %31, ptr noundef nonnull %sg_dst, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 109) #8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %35, ptr noundef %sg_src, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

if.end26:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %dma_address27 = getelementptr inbounds %struct.scatterlist, ptr %sg_dst, i32 0, i32 3
  br label %if.end80.sink.split

if.else.sink.split:                               ; preds = %land.end11.i.if.else.sink.split_crit_edge, %if.end.i.if.else.sink.split_crit_edge, %entry.if.else.sink.split_crit_edge
  %36 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %aligned, align 4
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %cond.end.if.else_crit_edge, %land.rhs19.i.if.else_crit_edge
  %left_bytes29 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %37 = ptrtoint ptr %left_bytes29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %left_bytes29, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 4096)
  %first = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 17
  %40 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %first, align 4
  %src_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 22
  %42 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_nents, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 19
  %44 = ptrtoint ptr %addr_vir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr_vir, align 4
  %total = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 24
  %46 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total, align 4
  %sub37 = sub i32 %47, %38
  %call38 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %41, i32 noundef %43, ptr noundef %45, i32 noundef %39, i32 noundef %sub37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, i32 noundef 124) #8
  br label %cleanup

if.end45:                                         ; preds = %if.else
  %50 = ptrtoint ptr %left_bytes29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %left_bytes29, align 4
  %sub47 = sub i32 %51, %39
  store i32 %sub47, ptr %left_bytes29, align 4
  %sg_tmp = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 16
  %52 = ptrtoint ptr %addr_vir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr_vir, align 4
  tail call void @sg_init_one(ptr noundef %sg_tmp, ptr noundef %53, i32 noundef %39) #5
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %call51 = tail call i32 @dma_map_sg_attrs(ptr noundef %55, ptr noundef %sg_tmp, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef 131) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end45
  %dma_address60 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 16, i32 3
  %58 = ptrtoint ptr %dma_address60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_address60, align 4
  %addr_in61 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 26
  %60 = ptrtoint ptr %addr_in61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %addr_in61, align 4
  %tobool62.not = icmp eq ptr %sg_dst, null
  br i1 %tobool62.not, label %if.end58.if.end80_crit_edge, label %if.then63

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then63:                                        ; preds = %if.end58
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call66 = tail call i32 @dma_map_sg_attrs(ptr noundef %62, ptr noundef %sg_tmp, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.end71, label %if.then63.if.end80.sink.split_crit_edge

if.then63.if.end80.sink.split_crit_edge:          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.sink.split

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef 141) #8
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %66, ptr noundef %sg_tmp, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

if.end80.sink.split:                              ; preds = %if.then63.if.end80.sink.split_crit_edge, %if.end26
  %dma_address60.sink = phi ptr [ %dma_address27, %if.end26 ], [ %dma_address60, %if.then63.if.end80.sink.split_crit_edge ]
  %count.0.ph = phi i32 [ %21, %if.end26 ], [ %39, %if.then63.if.end80.sink.split_crit_edge ]
  %67 = ptrtoint ptr %dma_address60.sink to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_address60.sink, align 4
  %addr_out78 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 27
  %69 = ptrtoint ptr %addr_out78 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %addr_out78, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %if.end58.if.end80_crit_edge, %if.end.if.end80_crit_edge
  %count.0 = phi i32 [ %21, %if.end.if.end80_crit_edge ], [ %39, %if.end58.if.end80_crit_edge ], [ %count.0.ph, %if.end80.sink.split ]
  %count81 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  %70 = ptrtoint ptr %count81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %count.0, ptr %count81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end71, %do.end56, %do.end43, %do.end23, %do.end
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -22, %do.end23 ], [ -22, %do.end ], [ -12, %do.end71 ], [ -12, %do.end56 ], [ -22, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_unload_data(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_src, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sg_tmp = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %sg_tmp, %cond.false ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %cond, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %sg_dst = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_dst, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %sg_tmp8 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 16
  %cond10 = select i1 %tobool4.not, ptr %sg_tmp8, ptr %7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %cond10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_crypto_enqueue(ptr noundef %dev, ptr noundef %async_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %queue = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 8
  %call5 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %async_req) #5
  %busy = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %busy, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %state.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %queue_task = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %queue_task) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_crypto_register(ptr noundef %crypto_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ecb_aes_alg to i32))
  store ptr %crypto_info, ptr @rk_ecb_aes_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp2 = icmp eq i32 %0, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %for.inc, label %if.end.for.cond9.preheader_crit_edge

if.end.for.cond9.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %if.end.8.for.cond9.preheader_crit_edge, %if.end.7.for.cond9.preheader_crit_edge, %if.end.6.for.cond9.preheader_crit_edge, %if.end.5.for.cond9.preheader_crit_edge, %if.end.4.for.cond9.preheader_crit_edge, %if.end.3.for.cond9.preheader_crit_edge, %if.end.2.for.cond9.preheader_crit_edge, %if.end.1.for.cond9.preheader_crit_edge, %if.end.for.cond9.preheader_crit_edge
  %err.0.lcssa = phi i32 [ %err.0, %if.end.for.cond9.preheader_crit_edge ], [ %err.0.1, %if.end.1.for.cond9.preheader_crit_edge ], [ %err.0.2, %if.end.2.for.cond9.preheader_crit_edge ], [ %err.0.3, %if.end.3.for.cond9.preheader_crit_edge ], [ %err.0.4, %if.end.4.for.cond9.preheader_crit_edge ], [ %err.0.5, %if.end.5.for.cond9.preheader_crit_edge ], [ %err.0.6, %if.end.6.for.cond9.preheader_crit_edge ], [ %err.0.7, %if.end.7.for.cond9.preheader_crit_edge ], [ %err.0.8, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ true, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.1 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ true, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.2 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ true, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.3 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ true, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.4 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ true, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.5 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ true, %if.end.6.for.cond9.preheader_crit_edge ], [ false, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %exitcond49.not.6 = phi i1 [ false, %if.end.for.cond9.preheader_crit_edge ], [ false, %if.end.1.for.cond9.preheader_crit_edge ], [ false, %if.end.2.for.cond9.preheader_crit_edge ], [ false, %if.end.3.for.cond9.preheader_crit_edge ], [ false, %if.end.4.for.cond9.preheader_crit_edge ], [ false, %if.end.5.for.cond9.preheader_crit_edge ], [ false, %if.end.6.for.cond9.preheader_crit_edge ], [ true, %if.end.7.for.cond9.preheader_crit_edge ], [ false, %if.end.8.for.cond9.preheader_crit_edge ]
  %.lcssa = phi ptr [ @rk_ecb_aes_alg, %if.end.for.cond9.preheader_crit_edge ], [ @rk_cbc_aes_alg, %if.end.1.for.cond9.preheader_crit_edge ], [ @rk_ecb_des_alg, %if.end.2.for.cond9.preheader_crit_edge ], [ @rk_cbc_des_alg, %if.end.3.for.cond9.preheader_crit_edge ], [ @rk_ecb_des3_ede_alg, %if.end.4.for.cond9.preheader_crit_edge ], [ @rk_cbc_des3_ede_alg, %if.end.5.for.cond9.preheader_crit_edge ], [ @rk_ahash_sha1, %if.end.6.for.cond9.preheader_crit_edge ], [ @rk_ahash_sha256, %if.end.7.for.cond9.preheader_crit_edge ], [ @rk_ahash_md5, %if.end.8.for.cond9.preheader_crit_edge ]
  %type.le = getelementptr inbounds %struct.rk_crypto_tmp, ptr %.lcssa, i32 0, i32 3
  br i1 %tobool.not, label %for.body11.lr.ph, label %for.cond9.preheader.cleanup_crit_edge

for.cond9.preheader.cleanup_crit_edge:            ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %alg20 = getelementptr inbounds %struct.rk_crypto_tmp, ptr %.lcssa, i32 0, i32 2
  %1 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp14 = icmp eq i32 %2, 1
  br i1 %cmp14, label %if.then15, label %if.else18

for.inc:                                          ; preds = %if.end
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_cbc_aes_alg to i32))
  store ptr %crypto_info, ptr @rk_cbc_aes_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.1 = icmp eq i32 %3, 1
  br i1 %cmp2.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call6.1 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %if.end.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.1 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %err.0.1 = phi i32 [ %call.1, %if.then.1 ], [ %call6.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.1)
  %tobool.not.1 = icmp eq i32 %err.0.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.end.1.for.cond9.preheader_crit_edge

if.end.1.for.cond9.preheader_crit_edge:           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.1:                                        ; preds = %if.end.1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ecb_des_alg to i32))
  store ptr %crypto_info, ptr @rk_ecb_des_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.2 = icmp eq i32 %4, 1
  br i1 %cmp2.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call6.2 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %if.end.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.2 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.else.2
  %err.0.2 = phi i32 [ %call.2, %if.then.2 ], [ %call6.2, %if.else.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.2)
  %tobool.not.2 = icmp eq i32 %err.0.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.end.2.for.cond9.preheader_crit_edge

if.end.2.for.cond9.preheader_crit_edge:           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.2:                                        ; preds = %if.end.2
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_cbc_des_alg to i32))
  store ptr %crypto_info, ptr @rk_cbc_des_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.3 = icmp eq i32 %5, 1
  br i1 %cmp2.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call6.3 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %if.end.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.3 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.else.3
  %err.0.3 = phi i32 [ %call.3, %if.then.3 ], [ %call6.3, %if.else.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.3)
  %tobool.not.3 = icmp eq i32 %err.0.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.end.3.for.cond9.preheader_crit_edge

if.end.3.for.cond9.preheader_crit_edge:           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.3:                                        ; preds = %if.end.3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ecb_des3_ede_alg to i32))
  store ptr %crypto_info, ptr @rk_ecb_des3_ede_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2.4 = icmp eq i32 %6, 1
  br i1 %cmp2.4, label %if.then.4, label %if.else.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call6.4 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %if.end.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call.4 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.else.4
  %err.0.4 = phi i32 [ %call.4, %if.then.4 ], [ %call6.4, %if.else.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.4)
  %tobool.not.4 = icmp eq i32 %err.0.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.end.4.for.cond9.preheader_crit_edge

if.end.4.for.cond9.preheader_crit_edge:           ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.4:                                        ; preds = %if.end.4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_cbc_des3_ede_alg to i32))
  store ptr %crypto_info, ptr @rk_cbc_des3_ede_alg, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2.5 = icmp eq i32 %7, 1
  br i1 %cmp2.5, label %if.then.5, label %if.else.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %call6.5 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %if.end.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %call.5 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.else.5
  %err.0.5 = phi i32 [ %call.5, %if.then.5 ], [ %call6.5, %if.else.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.5)
  %tobool.not.5 = icmp eq i32 %err.0.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.end.5.for.cond9.preheader_crit_edge

if.end.5.for.cond9.preheader_crit_edge:           ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.5:                                        ; preds = %if.end.5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ahash_sha1 to i32))
  store ptr %crypto_info, ptr @rk_ahash_sha1, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2.6 = icmp eq i32 %8, 1
  br i1 %cmp2.6, label %if.then.6, label %if.else.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %call6.6 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %if.end.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %call.6 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.else.6
  %err.0.6 = phi i32 [ %call.6, %if.then.6 ], [ %call6.6, %if.else.6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.6)
  %tobool.not.6 = icmp eq i32 %err.0.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %if.end.6.for.cond9.preheader_crit_edge

if.end.6.for.cond9.preheader_crit_edge:           ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.6:                                        ; preds = %if.end.6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ahash_sha256 to i32))
  store ptr %crypto_info, ptr @rk_ahash_sha256, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2.7 = icmp eq i32 %9, 1
  br i1 %cmp2.7, label %if.then.7, label %if.else.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %call6.7 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %if.end.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %call.7 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.else.7
  %err.0.7 = phi i32 [ %call.7, %if.then.7 ], [ %call6.7, %if.else.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.7)
  %tobool.not.7 = icmp eq i32 %err.0.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %if.end.7.for.cond9.preheader_crit_edge

if.end.7.for.cond9.preheader_crit_edge:           ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc.7:                                        ; preds = %if.end.7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rk_ahash_md5 to i32))
  store ptr %crypto_info, ptr @rk_ahash_md5, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp2.8 = icmp eq i32 %10, 1
  br i1 %cmp2.8, label %if.then.8, label %if.else.8

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %call6.8 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %if.end.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %call.8 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.else.8
  %err.0.8 = phi i32 [ %call.8, %if.then.8 ], [ %call6.8, %if.else.8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.8)
  %tobool.not.8 = icmp eq i32 %err.0.8, 0
  br i1 %tobool.not.8, label %if.end.8.cleanup_crit_edge, label %if.end.8.for.cond9.preheader_crit_edge

if.end.8.for.cond9.preheader_crit_edge:           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %for.body11.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %for.inc22

if.else18:                                        ; preds = %for.body11.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22

for.inc22:                                        ; preds = %if.else18, %if.then15
  br i1 %exitcond49.not, label %for.inc22.cleanup_crit_edge, label %for.body11.1

for.inc22.cleanup_crit_edge:                      ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.1:                                     ; preds = %for.inc22
  %11 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14.1 = icmp eq i32 %12, 1
  br i1 %cmp14.1, label %if.then15.1, label %if.else18.1

if.else18.1:                                      ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.1

if.then15.1:                                      ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %for.inc22.1

for.inc22.1:                                      ; preds = %if.then15.1, %if.else18.1
  br i1 %exitcond49.not.1, label %for.inc22.1.cleanup_crit_edge, label %for.body11.2

for.inc22.1.cleanup_crit_edge:                    ; preds = %for.inc22.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.2:                                     ; preds = %for.inc22.1
  %13 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14.2 = icmp eq i32 %14, 1
  br i1 %cmp14.2, label %if.then15.2, label %if.else18.2

if.else18.2:                                      ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.2

if.then15.2:                                      ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %for.inc22.2

for.inc22.2:                                      ; preds = %if.then15.2, %if.else18.2
  br i1 %exitcond49.not.2, label %for.inc22.2.cleanup_crit_edge, label %for.body11.3

for.inc22.2.cleanup_crit_edge:                    ; preds = %for.inc22.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.3:                                     ; preds = %for.inc22.2
  %15 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14.3 = icmp eq i32 %16, 1
  br i1 %cmp14.3, label %if.then15.3, label %if.else18.3

if.else18.3:                                      ; preds = %for.body11.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.3

if.then15.3:                                      ; preds = %for.body11.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %for.inc22.3

for.inc22.3:                                      ; preds = %if.then15.3, %if.else18.3
  br i1 %exitcond49.not.3, label %for.inc22.3.cleanup_crit_edge, label %for.body11.4

for.inc22.3.cleanup_crit_edge:                    ; preds = %for.inc22.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.4:                                     ; preds = %for.inc22.3
  %17 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp14.4 = icmp eq i32 %18, 1
  br i1 %cmp14.4, label %if.then15.4, label %if.else18.4

if.else18.4:                                      ; preds = %for.body11.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.4

if.then15.4:                                      ; preds = %for.body11.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc22.4

for.inc22.4:                                      ; preds = %if.then15.4, %if.else18.4
  br i1 %exitcond49.not.4, label %for.inc22.4.cleanup_crit_edge, label %for.body11.5

for.inc22.4.cleanup_crit_edge:                    ; preds = %for.inc22.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.5:                                     ; preds = %for.inc22.4
  %19 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp14.5 = icmp eq i32 %20, 1
  br i1 %cmp14.5, label %if.then15.5, label %if.else18.5

if.else18.5:                                      ; preds = %for.body11.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.5

if.then15.5:                                      ; preds = %for.body11.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %for.inc22.5

for.inc22.5:                                      ; preds = %if.then15.5, %if.else18.5
  br i1 %exitcond49.not.5, label %for.inc22.5.cleanup_crit_edge, label %for.body11.6

for.inc22.5.cleanup_crit_edge:                    ; preds = %for.inc22.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.6:                                     ; preds = %for.inc22.5
  %21 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14.6 = icmp eq i32 %22, 1
  br i1 %cmp14.6, label %if.then15.6, label %if.else18.6

if.else18.6:                                      ; preds = %for.body11.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %for.inc22.6

if.then15.6:                                      ; preds = %for.body11.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %for.inc22.6

for.inc22.6:                                      ; preds = %if.then15.6, %if.else18.6
  br i1 %exitcond49.not.6, label %for.inc22.6.cleanup_crit_edge, label %for.body11.7

for.inc22.6.cleanup_crit_edge:                    ; preds = %for.inc22.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.7:                                     ; preds = %for.inc22.6
  %23 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.le, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp14.7 = icmp eq i32 %24, 1
  br i1 %cmp14.7, label %if.then15.7, label %if.else18.7

if.else18.7:                                      ; preds = %for.body11.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef %alg20) #5
  br label %cleanup

if.then15.7:                                      ; preds = %for.body11.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15.7, %if.else18.7, %for.inc22.6.cleanup_crit_edge, %for.inc22.5.cleanup_crit_edge, %for.inc22.4.cleanup_crit_edge, %for.inc22.3.cleanup_crit_edge, %for.inc22.2.cleanup_crit_edge, %for.inc22.1.cleanup_crit_edge, %for.inc22.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %for.cond9.preheader.cleanup_crit_edge
  %err.066 = phi i32 [ %err.0.lcssa, %for.cond9.preheader.cleanup_crit_edge ], [ %err.0.8, %if.end.8.cleanup_crit_edge ], [ %err.0.lcssa, %if.else18.7 ], [ %err.0.lcssa, %if.then15.7 ], [ %err.0.lcssa, %for.inc22.6.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.5.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.4.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.3.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.2.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.1.cleanup_crit_edge ], [ %err.0.lcssa, %for.inc22.cleanup_crit_edge ]
  ret i32 %err.066
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_rk_crypto__236_440_crypto_driver_init6, !1, !"__initcall__kmod_rk_crypto__236_440_crypto_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 440, i32 1}
!2 = !{ptr @__exitcall_crypto_driver_exit, !1, !"__exitcall_crypto_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 443, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 444, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 435, i32 11}
!12 = !{ptr @crypto_driver, !13, !"crypto_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 431, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 326, i32 49}
!16 = !{ptr @rk_crypto_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 340, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 348, i32 47}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 354, i32 47}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 360, i32 47}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 366, i32 49}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 374, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rk_crypto_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @rk_crypto_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 382, i32 11}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 385, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rk_crypto_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rk_crypto_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 407, i32 3}
!44 = !{ptr @rk_crypto_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rk_crypto_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 411, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rk_crypto_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rk_crypto_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 176, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rk_crypto_irq_handle._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rk_crypto_irq_handle._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 27, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rk_crypto_enable_clk._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rk_crypto_enable_clk._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 33, i32 3}
!63 = !{ptr @rk_crypto_enable_clk._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rk_crypto_enable_clk._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 39, i32 3}
!67 = !{ptr @rk_crypto_enable_clk._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rk_crypto_enable_clk._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 45, i32 3}
!71 = !{ptr @rk_crypto_enable_clk._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rk_crypto_enable_clk._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 99, i32 4}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rk_load_data._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rk_load_data._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 107, i32 5}
!80 = !{ptr @rk_load_data._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rk_load_data._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 123, i32 4}
!84 = !{ptr @rk_load_data._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rk_load_data._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 130, i32 4}
!88 = !{ptr @rk_load_data._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @rk_load_data._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @rk_load_data._entry.48, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 139, i32 5}
!92 = !{ptr @rk_load_data._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @rk_cipher_algs, !94, !"rk_cipher_algs", i1 false, i1 false}
!94 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 248, i32 30}
!95 = !{ptr @crypto_of_id_table, !96, !"crypto_of_id_table", i1 false, i1 false}
!96 = !{!"../drivers/crypto/rockchip/rk3288_crypto.c", i32 307, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 4777054}
!107 = !{i64 4776636}
!108 = !{i8 0, i8 2}
