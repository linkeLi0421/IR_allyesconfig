; ModuleID = '/llk/IR_all_yes/drivers/crypto/atmel-ecc.c_pt.bc'
source_filename = "../drivers/crypto/atmel-ecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atmel_ecc_driver_data = type { %struct.list_head, %struct.spinlock, [76 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.86, ptr, ptr, ptr, ptr, %union.anon.87, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.86 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.87 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.atmel_i2c_client_priv = type { ptr, %struct.list_head, %struct.mutex, [8 x i8], i32, [12 x i8], %struct.atomic_t, %struct.hwrng, [24 x i8] }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.ecdh = type { ptr, i16 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.atmel_i2c_cmd = type { i8, i8, i8, i8, i16, [67 x i8], i8, i16 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.atmel_i2c_work_data = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.atmel_i2c_cmd }

@atmel_ecc_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @atmel_ecc_probe, ptr @atmel_ecc_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ecc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @atmel_ecc_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_atmel_ecc__292_405_atmel_ecc_init6 = internal global ptr @atmel_ecc_init, section ".initcall6.init", align 4
@__exitcall_atmel_ecc_exit = internal global ptr @atmel_ecc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [61 x i8] c"atmel_ecc.author=Tudor Ambarus <tudor.ambarus@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [57 x i8] c"atmel_ecc.description=Microchip / Atmel ECC (I2C) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [40 x i8] c"atmel_ecc.file=drivers/crypto/atmel-ecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [25 x i8] c"atmel_ecc.license=GPL v2\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-ecc\00", [22 x i8] zeroinitializer }, align 32
@atmel_ecc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,atecc508a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_ecc_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"atecc508a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@driver_data = internal global %struct.atmel_ecc_driver_data zeroinitializer, align 128
@atmel_ecdh_nist_p256 = internal global %struct.kpp_alg { ptr @atmel_ecdh_set_secret, ptr @atmel_ecdh_generate_public_key, ptr @atmel_ecdh_compute_shared_secret, ptr @atmel_ecdh_max_size, ptr @atmel_ecdh_init_tfm, ptr @atmel_ecdh_exit_tfm, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 0, i32 20, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecdh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.86 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.87 zeroinitializer, [120 x i8] undef } }, align 128
@atmel_ecc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s alg registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_ecc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/crypto/atmel-ecc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_ecc_probe._entry_ptr = internal global ptr @atmel_ecc_probe._entry, section ".printk_index", align 4
@atmel_ecc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 340, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atmel ecc algorithms registered in /proc/crypto\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_ecc_probe._entry_ptr.9 = internal global ptr @atmel_ecc_probe._entry.6, section ".printk_index", align 4
@atmel_ecdh_set_secret._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"crypto_ecdh_decode_key failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_ecdh_set_secret\00", [42 x i8] zeroinitializer }, align 32
@atmel_ecdh_set_secret._entry_ptr = internal global ptr @atmel_ecdh_set_secret._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atmel_ecdh_init_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tfm - i2c_client binding failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_ecdh_init_tfm\00", [44 x i8] zeroinitializer }, align 32
@atmel_ecdh_init_tfm._entry_ptr = internal global ptr @atmel_ecdh_init_tfm._entry, section ".printk_index", align 4
@atmel_ecdh_init_tfm._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate transformation for '%s': %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@atmel_ecdh_init_tfm._entry_ptr.16 = internal global ptr @atmel_ecdh_init_tfm._entry.14, section ".printk_index", align 4
@atmel_ecc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device is busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel_ecc_remove\00", [47 x i8] zeroinitializer }, align 32
@atmel_ecc_remove._entry_ptr = internal global ptr @atmel_ecc_remove._entry, section ".printk_index", align 4
@atmel_ecc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&driver_data.i2c_list_lock\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"atmel_ecc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 382, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 384, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"atmel_ecc_dt_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 366, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"atmel_ecc_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 376, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 337, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 340, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 92, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 256, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 262, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 352, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [30 x i8] c"../drivers/crypto/atmel-ecc.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 394, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_atmel_ecc_exit, ptr @__initcall__kmod_atmel_ecc__292_405_atmel_ecc_init6, ptr @atmel_ecc_exit, ptr @atmel_ecc_probe._entry, ptr @atmel_ecc_probe._entry.6, ptr @atmel_ecc_probe._entry_ptr, ptr @atmel_ecc_probe._entry_ptr.9, ptr @atmel_ecc_remove._entry, ptr @atmel_ecc_remove._entry_ptr, ptr @atmel_ecdh_init_tfm._entry, ptr @atmel_ecdh_init_tfm._entry.14, ptr @atmel_ecdh_init_tfm._entry_ptr, ptr @atmel_ecdh_init_tfm._entry_ptr.16, ptr @atmel_ecdh_set_secret._entry, ptr @atmel_ecdh_set_secret._entry_ptr, ptr @atmel_ecc_driver, ptr @.str, ptr @atmel_ecc_dt_ids, ptr @atmel_ecc_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @atmel_ecc_init.__key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecdh_set_secret._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecdh_init_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecdh_init_tfm._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ecc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ecc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #8
  tail call void @i2c_del_driver(ptr noundef nonnull @atmel_ecc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1), ptr noundef nonnull @.str.19, ptr noundef nonnull @atmel_ecc_init.__key, i16 noundef signext 3) #8
  store volatile ptr @driver_data, ptr @driver_data, align 128
  store ptr @driver_data, ptr getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @atmel_ecc_driver) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecc_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atmel_i2c_probe(ptr noundef %client, ptr noundef %id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %i2c_client_list_node = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i2c_client_list_node, ptr noundef %2, ptr noundef nonnull @driver_data) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %i2c_client_list_node, ptr getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %i2c_client_list_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @driver_data, ptr %i2c_client_list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %i2c_client_list_node, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %call2 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @atmel_ecdh_nist_p256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end8, label %if.then4

if.then4:                                         ; preds = %list_add_tail.exit
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i2c_client_list_node) #8
  br i1 %call.i.i19, label %if.end.i.i20, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i20:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %i2c_client_list_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i20, %if.then4.list_del.exit_crit_edge
  %12 = ptrtoint ptr %i2c_client_list_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %i2c_client_list_node, align 4
  %prev.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef getelementptr inbounds (%struct.kpp_alg, ptr @atmel_ecdh_nist_p256, i32 0, i32 8, i32 9)) #11
  br label %cleanup

do.end8:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.7) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end8 ], [ %call2, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecc_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tfm_count = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfm_count, i32 noundef 4) #8
  %2 = ptrtoint ptr %tfm_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tfm_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @atmel_ecdh_nist_p256) #8
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %i2c_client_list_node = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1
  %call.i.i4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i2c_client_list_node) #8
  br i1 %call.i.i4, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %i2c_client_list_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %i2c_client_list_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %i2c_client_list_node, align 4
  %prev.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_i2c_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecdh_set_secret(ptr nocapture noundef %tfm, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %params = alloca %struct.ecdh, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #8
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %params, align 8, !annotation !67
  %public_key1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %1 = ptrtoint ptr %public_key1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %public_key1, align 4
  tail call void @kfree(ptr noundef %2) #8
  %3 = ptrtoint ptr %public_key1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %public_key1, align 4
  %call3 = call i32 @crypto_ecdh_decode_key(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %do_fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %do_fallback, align 4
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %9 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -128
  call void @crypto_stats_get(ptr noundef %12) #8
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i = call i32 %14(ptr noundef %10, ptr noundef %buf, i32 noundef %len) #8
  call void @crypto_stats_kpp_set_secret(ptr noundef %12, i32 noundef %call1.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 76) #12
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i44 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 64) #12
  %tobool12.not = icmp eq ptr %call7.i44, null
  br i1 %tobool12.not, label %if.end10.free_cmd_crit_edge, label %if.end14

if.end10.free_cmd_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cmd

if.end14:                                         ; preds = %if.end10
  %do_fallback15 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %17 = ptrtoint ptr %do_fallback15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %do_fallback15, align 4
  call void @atmel_i2c_init_genkey_cmd(ptr noundef nonnull %call7.i, i16 noundef zeroext 2) #8
  %18 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i, align 4
  %call17 = call i32 @atmel_i2c_send_receive(ptr noundef %19, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %free_public_key

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.atmel_i2c_cmd, ptr %call7.i, i32 0, i32 5, i32 1
  %20 = call ptr @memcpy(ptr %call7.i44, ptr %arrayidx, i32 64)
  %21 = ptrtoint ptr %public_key1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i44, ptr %public_key1, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

free_public_key:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i44) #8
  br label %free_cmd

free_cmd:                                         ; preds = %free_public_key, %if.end10.free_cmd_crit_edge
  %ret.0 = phi i32 [ %call17, %free_public_key ], [ -12, %if.end10.free_cmd_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_cmd, %if.end20, %if.end6.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1.i, %if.then4 ], [ %ret.0, %free_cmd ], [ 0, %if.end20 ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecdh_generate_public_key(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %do_fallback = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_fallback, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %8) #8
  %generate_public_key.i = getelementptr i8, ptr %8, i32 -124
  %9 = ptrtoint ptr %generate_public_key.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %generate_public_key.i, align 4
  %call2.i = tail call i32 %10(ptr noundef %req) #8
  tail call void @crypto_stats_kpp_generate_public_key(ptr noundef %8, i32 noundef %call2.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %public_key = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %11 = ptrtoint ptr %public_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %public_key, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_len, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 64)
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  %conv = zext i32 %15 to i64
  %call7 = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %conv) #8
  %18 = ptrtoint ptr %public_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %public_key, align 4
  %call9 = tail call i32 @sg_copy_from_buffer(ptr noundef %17, i32 noundef %call7, ptr noundef %19, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %15)
  %cmp10.not = icmp eq i32 %call9, %15
  %ret.0 = select i1 %cmp10.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %ret.0, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecdh_compute_shared_secret(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %do_fallback = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_fallback, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback, align 4
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %8) #8
  %compute_shared_secret.i = getelementptr i8, ptr %8, i32 -120
  %9 = ptrtoint ptr %compute_shared_secret.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %compute_shared_secret.i, align 8
  %call2.i = tail call i32 %10(ptr noundef %req) #8
  tail call void @crypto_stats_kpp_compute_shared_secret(ptr noundef %8, i32 noundef %call2.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_len, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp.not = icmp eq i32 %12, 64
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, i32 2592, i32 3264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef %cond, i32 noundef 136) #12
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %__crt_ctx.i, ptr %call7.i, align 8
  %17 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i, align 4
  %client11 = getelementptr inbounds %struct.atmel_i2c_work_data, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %client11, align 4
  %cmd = getelementptr inbounds %struct.atmel_i2c_work_data, ptr %call7.i, i32 0, i32 5
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 8
  %call12 = tail call i32 @atmel_i2c_init_ecdh_cmd(ptr noundef %cmd, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %free_work_data

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @atmel_i2c_enqueue(ptr noundef nonnull %call7.i, ptr noundef nonnull @atmel_ecdh_done, ptr noundef %req) #8
  br label %cleanup

free_work_data:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_work_data, %if.end15, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call12, %free_work_data ], [ -115, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecdh_max_size(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %max_size.i = getelementptr i8, ptr %3, i32 -116
  %4 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max_size.i, align 4
  %call1.i = tail call i32 %5(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then ], [ 64, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ecdh_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %curve_id = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %2 = ptrtoint ptr %curve_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %curve_id, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %3 = load volatile ptr, ptr @driver_data, align 128
  %cmp.i.not.i = icmp eq ptr %3, @driver_data
  br i1 %cmp.i.not.i, label %entry.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atmel_ecc_i2c_client_alloc.exit.thread

for.condthread-pre-split.i:                       ; preds = %for.body.i
  %4 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.pr.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.pr.i, @driver_data
  br i1 %cmp.not.i, label %for.condthread-pre-split.i.for.end.i_crit_edge, label %for.condthread-pre-split.i.for.body.i_crit_edge

for.condthread-pre-split.i.for.body.i_crit_edge:  ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.condthread-pre-split.i.for.end.i_crit_edge:   ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.condthread-pre-split.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %min_i2c_priv.035.i = phi ptr [ %spec.select30.i, %for.condthread-pre-split.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %min_tfm_cnt.034.i = phi i32 [ %7, %for.condthread-pre-split.i.for.body.i_crit_edge ], [ 2147483647, %entry.for.body.i_crit_edge ]
  %.pn33.i = phi ptr [ %.pn.pr.i, %for.condthread-pre-split.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %i2c_priv.0.i = getelementptr i8, ptr %.pn33.i, i32 -4
  %tfm_count.i = getelementptr i8, ptr %.pn33.i, i32 124
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfm_count.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %tfm_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tfm_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %min_tfm_cnt.034.i)
  %cmp4.i = icmp slt i32 %6, %min_tfm_cnt.034.i
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %min_tfm_cnt.034.i) #8
  %spec.select30.i = select i1 %cmp4.i, ptr %i2c_priv.0.i, ptr %min_i2c_priv.035.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %for.body.i.for.end.i_crit_edge, label %for.condthread-pre-split.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.condthread-pre-split.i.for.end.i_crit_edge
  %tobool14.not.i = icmp eq ptr %spec.select30.i, null
  br i1 %tobool14.not.i, label %for.end.i.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge, label %atmel_ecc_i2c_client_alloc.exit

for.end.i.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atmel_ecc_i2c_client_alloc.exit.thread

atmel_ecc_i2c_client_alloc.exit.thread:           ; preds = %for.end.i.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge, %entry.atmel_ecc_i2c_client_alloc.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -19 to ptr), ptr %__crt_ctx.i, align 4
  br label %do.end

atmel_ecc_i2c_client_alloc.exit:                  ; preds = %for.end.i
  %tfm_count16.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %spec.select30.i, i32 0, i32 6
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count16.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tfm_count16.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfm_count16.i, ptr %tfm_count16.i, i32 1, ptr elementtype(i32) %tfm_count16.i) #8, !srcloc !69
  %10 = ptrtoint ptr %spec.select30.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec.select30.i, align 128
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_ecc_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %__crt_ctx.i, align 4
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %atmel_ecc_i2c_client_alloc.exit.do.end_crit_edge, label %if.end

atmel_ecc_i2c_client_alloc.exit.do.end_crit_edge: ; preds = %atmel_ecc_i2c_client_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %atmel_ecc_i2c_client_alloc.exit.do.end_crit_edge, %atmel_ecc_i2c_client_alloc.exit.thread
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  %13 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_ctx.i, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end:                                           ; preds = %atmel_ecc_i2c_client_alloc.exit
  %call8 = tail call ptr @crypto_alloc_kpp(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #8
  %cmp.i34 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %cra_name.i, i32 noundef %18) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tfm, align 128
  %21 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call8, align 128
  %or.i.i = or i32 %22, %20
  store i32 %or.i.i, ptr %call8, align 128
  %fallback19 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %23 = ptrtoint ptr %fallback19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %fallback19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13, %do.end
  %retval.0 = phi i32 [ %15, %do.end ], [ %18, %do.end13 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ecdh_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %public_key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %public_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %public_key, align 4
  tail call void @kfree(ptr noundef %1) #8
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #8
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %tfm_count.i = getelementptr inbounds %struct.atmel_i2c_client_priv, ptr %7, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tfm_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfm_count.i, ptr %tfm_count.i, i32 1, ptr elementtype(i32) %tfm_count.i) #8, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_decode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_i2c_init_genkey_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_i2c_send_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_set_secret(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_generate_public_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_i2c_init_ecdh_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_i2c_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ecdh_done(ptr noundef %work_data, ptr noundef %areq, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %if.end, label %entry.free_work_data_crit_edge

entry.free_work_data_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_work_data

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 4
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dst_len, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 32)
  %dst = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 2
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %conv = zext i32 %2 to i64
  %call = tail call i32 @sg_nents_for_len(ptr noundef %4, i64 noundef %conv) #8
  %arrayidx = getelementptr %struct.atmel_i2c_work_data, ptr %work_data, i32 0, i32 5, i32 5, i32 1
  %call3 = tail call i32 @sg_copy_from_buffer(ptr noundef %4, i32 noundef %call, ptr noundef %arrayidx, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %2)
  %cmp4.not = icmp eq i32 %call3, %2
  %spec.select = select i1 %cmp4.not, i32 0, i32 -22
  br label %free_work_data

free_work_data:                                   ; preds = %if.end, %entry.free_work_data_crit_edge
  %status.addr.0 = phi i32 [ %status, %entry.free_work_data_crit_edge ], [ %spec.select, %if.end ]
  tail call void @kfree_sensitive(ptr noundef %work_data) #8
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i, align 8
  tail call void %6(ptr noundef %areq, i32 noundef %status.addr.0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_compute_shared_secret(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_kpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_atmel_ecc__292_405_atmel_ecc_init6, !1, !"__initcall__kmod_atmel_ecc__292_405_atmel_ecc_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/atmel-ecc.c", i32 405, i32 1}
!2 = !{ptr @__exitcall_atmel_ecc_exit, !3, !"__exitcall_atmel_ecc_exit", i1 false, i1 false}
!3 = !{!"../drivers/crypto/atmel-ecc.c", i32 406, i32 1}
!4 = !{ptr @__UNIQUE_ID_author293, !5, !"__UNIQUE_ID_author293", i1 false, i1 false}
!5 = !{!"../drivers/crypto/atmel-ecc.c", i32 408, i32 1}
!6 = !{ptr @__UNIQUE_ID_description294, !7, !"__UNIQUE_ID_description294", i1 false, i1 false}
!7 = !{!"../drivers/crypto/atmel-ecc.c", i32 409, i32 1}
!8 = !{ptr @__UNIQUE_ID_file295, !9, !"__UNIQUE_ID_file295", i1 false, i1 false}
!9 = !{!"../drivers/crypto/atmel-ecc.c", i32 410, i32 1}
!10 = !{ptr @__UNIQUE_ID_license296, !9, !"__UNIQUE_ID_license296", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/crypto/atmel-ecc.c", i32 384, i32 11}
!13 = !{ptr @atmel_ecc_driver, !14, !"atmel_ecc_driver", i1 false, i1 false}
!14 = !{!"../drivers/crypto/atmel-ecc.c", i32 382, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/atmel-ecc.c", i32 337, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @atmel_ecc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @atmel_ecc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/crypto/atmel-ecc.c", i32 340, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @atmel_ecc_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @atmel_ecc_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @driver_data, !29, !"driver_data", i1 false, i1 false}
!29 = !{!"../drivers/crypto/atmel-ecc.c", i32 26, i32 37}
!30 = !{ptr @atmel_ecdh_nist_p256, !31, !"atmel_ecdh_nist_p256", i1 false, i1 false}
!31 = !{!"../drivers/crypto/atmel-ecc.c", i32 297, i32 23}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/atmel-ecc.c", i32 92, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @atmel_ecdh_set_secret._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @atmel_ecdh_set_secret._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/atmel-ecc.c", i32 256, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @atmel_ecdh_init_tfm._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @atmel_ecdh_init_tfm._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/atmel-ecc.c", i32 262, i32 3}
!44 = !{ptr @atmel_ecdh_init_tfm._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_ecdh_init_tfm._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/atmel-ecc.c", i32 352, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @atmel_ecc_remove._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @atmel_ecc_remove._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @atmel_ecc_dt_ids, !52, !"atmel_ecc_dt_ids", i1 false, i1 false}
!52 = !{!"../drivers/crypto/atmel-ecc.c", i32 366, i32 34}
!53 = !{ptr @atmel_ecc_id, !54, !"atmel_ecc_id", i1 false, i1 false}
!54 = !{!"../drivers/crypto/atmel-ecc.c", i32 376, i32 35}
!55 = !{ptr @atmel_ecc_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/crypto/atmel-ecc.c", i32 394, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i8 0, i8 2}
!69 = !{i64 2148197399, i64 2148197425, i64 2148197454, i64 2148197488, i64 2148197519, i64 2148197542}
!70 = !{i64 2148199864, i64 2148199890, i64 2148199919, i64 2148199953, i64 2148199984, i64 2148200007}
