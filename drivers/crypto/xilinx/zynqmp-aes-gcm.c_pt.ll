; ModuleID = '/llk/IR_all_yes/drivers/crypto/xilinx/zynqmp-aes-gcm.c_pt.bc'
source_filename = "../drivers/crypto/xilinx/zynqmp-aes-gcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.zynqmp_aead_drv_ctx = type { %union.anon.71, ptr, ptr, [120 x i8] }
%union.anon.71 = type { %struct.aead_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.72, ptr, ptr, ptr, ptr, %union.anon.73, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.zynqmp_aead_hw_req = type { i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_zynqmp_aes_gcm__245_448_zynqmp_aes_driver_init6 = internal global ptr @zynqmp_aes_driver_init, section ".initcall6.init", align 4
@zynqmp_aes_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynqmp_aes_aead_probe, ptr @zynqmp_aes_aead_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynqmp_aes_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynqmp_aes_driver_exit = internal global ptr @zynqmp_aes_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file246 = internal constant [57 x i8] c"zynqmp_aes_gcm.file=drivers/crypto/xilinx/zynqmp-aes-gcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [27 x i8] c"zynqmp_aes_gcm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zynqmp-aes\00", [21 x i8] zeroinitializer }, align 32
@zynqmp_aes_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@aes_drv_ctx = internal global %struct.zynqmp_aead_drv_ctx { %union.anon.71 { %struct.aead_alg { ptr @zynqmp_aes_aead_setkey, ptr @zynqmp_aes_aead_setauthsize, ptr @zynqmp_aes_aead_encrypt, ptr @zynqmp_aes_aead_decrypt, ptr @zynqmp_aes_aead_init, ptr @zynqmp_aes_aead_exit, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 70019, i32 1, i32 68, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xilinx-zynqmp-aes-gcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } } }, ptr null, ptr null, [120 x i8] undef }, align 128
@zynqmp_aes_aead_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynqmp_aes_aead_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/crypto/xilinx/zynqmp-aes-gcm.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_probe._entry_ptr = internal global ptr @zynqmp_aes_aead_probe._entry, section ".printk_index", align 4
@zynqmp_aes_aead_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot alloc AES engine\0A\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_probe._entry_ptr.8 = internal global ptr @zynqmp_aes_aead_probe._entry.6, section ".printk_index", align 4
@zynqmp_aes_aead_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot start AES engine\0A\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_probe._entry_ptr.11 = internal global ptr @zynqmp_aes_aead_probe._entry.9, section ".printk_index", align 4
@zynqmp_aes_aead_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register AEAD alg.\0A\00", [34 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_probe._entry_ptr.14 = internal global ptr @zynqmp_aes_aead_probe._entry.12, section ".printk_index", align 4
@zynqmp_aes_aead_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s() Error: failed to allocate fallback for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zynqmp_aes_aead_init\00", [43 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_init._entry_ptr = internal global ptr @zynqmp_aes_aead_init._entry, section ".printk_index", align 4
@zynqmp_aes_aead_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: AES PM API failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_aes_aead_cipher\00", [41 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_cipher._entry_ptr = internal global ptr @zynqmp_aes_aead_cipher._entry, section ".printk_index", align 4
@zynqmp_aes_aead_cipher._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ERROR: Gcm Tag mismatch\0A\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_cipher._entry_ptr.21 = internal global ptr @zynqmp_aes_aead_cipher._entry.19, section ".printk_index", align 4
@zynqmp_aes_aead_cipher._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERROR: Wrong KeySrc, enable secure mode\0A\00", [55 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_cipher._entry_ptr.24 = internal global ptr @zynqmp_aes_aead_cipher._entry.22, section ".printk_index", align 4
@zynqmp_aes_aead_cipher._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR: PUF is not registered\0A\00", [34 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_cipher._entry_ptr.27 = internal global ptr @zynqmp_aes_aead_cipher._entry.25, section ".printk_index", align 4
@zynqmp_aes_aead_cipher._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERROR: Unknown error\0A\00", [42 x i8] zeroinitializer }, align 32
@zynqmp_aes_aead_cipher._entry_ptr.30 = internal global ptr @zynqmp_aes_aead_cipher._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"zynqmp_aes_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 439, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 443, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"zynqmp_aes_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 433, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 391, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 397, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 404, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 410, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 327, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 136, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 141, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 144, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 147, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [42 x i8] c"../drivers/crypto/xilinx/zynqmp-aes-gcm.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_zynqmp_aes_driver_exit, ptr @__initcall__kmod_zynqmp_aes_gcm__245_448_zynqmp_aes_driver_init6, ptr @zynqmp_aes_aead_cipher._entry, ptr @zynqmp_aes_aead_cipher._entry.19, ptr @zynqmp_aes_aead_cipher._entry.22, ptr @zynqmp_aes_aead_cipher._entry.25, ptr @zynqmp_aes_aead_cipher._entry.28, ptr @zynqmp_aes_aead_cipher._entry_ptr, ptr @zynqmp_aes_aead_cipher._entry_ptr.21, ptr @zynqmp_aes_aead_cipher._entry_ptr.24, ptr @zynqmp_aes_aead_cipher._entry_ptr.27, ptr @zynqmp_aes_aead_cipher._entry_ptr.30, ptr @zynqmp_aes_aead_init._entry, ptr @zynqmp_aes_aead_init._entry_ptr, ptr @zynqmp_aes_aead_probe._entry, ptr @zynqmp_aes_aead_probe._entry.12, ptr @zynqmp_aes_aead_probe._entry.6, ptr @zynqmp_aes_aead_probe._entry.9, ptr @zynqmp_aes_aead_probe._entry_ptr, ptr @zynqmp_aes_aead_probe._entry_ptr.11, ptr @zynqmp_aes_aead_probe._entry_ptr.14, ptr @zynqmp_aes_aead_probe._entry_ptr.8, ptr @zynqmp_aes_driver_exit, ptr @zynqmp_aes_driver, ptr @.str, ptr @zynqmp_aes_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_cipher._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_cipher._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_cipher._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_aes_aead_cipher._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynqmp_aes_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_aes_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynqmp_aes_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr getelementptr inbounds (%struct.zynqmp_aead_drv_ctx, ptr @aes_drv_ctx, i32 0, i32 1), align 128
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  store ptr %dev1, ptr getelementptr inbounds (%struct.zynqmp_aead_drv_ctx, ptr @aes_drv_ctx, i32 0, i32 1), align 128
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  br label %if.end3

dma_set_mask_and_coherent.exit:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %dma_set_mask_and_coherent.exit.if.end3_crit_edge

dma_set_mask_and_coherent.exit.if.end3_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end3:                                          ; preds = %dma_set_mask_and_coherent.exit.if.end3_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %call4 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #6
  store ptr %call4, ptr getelementptr inbounds (%struct.zynqmp_aead_drv_ctx, ptr @aes_drv_ctx, i32 0, i32 2), align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %err_engine

if.end10:                                         ; preds = %if.end3
  %call11 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %err_engine

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @crypto_register_aead(ptr noundef nonnull @aes_drv_ctx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_drv_ctx) #6
  br label %err_engine

err_engine:                                       ; preds = %do.end23, %do.end16, %do.end9
  %err.0 = phi i32 [ %call11, %do.end16 ], [ %call18, %do.end23 ], [ -12, %do.end9 ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.zynqmp_aead_drv_ctx, ptr @aes_drv_ctx, i32 0, i32 2), align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %err_engine.cleanup_crit_edge, label %if.then26

err_engine.cleanup_crit_edge:                     ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @crypto_engine_exit(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %err_engine.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %err.0, %if.then26 ], [ %err.0, %err_engine.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.zynqmp_aead_drv_ctx, ptr @aes_drv_ctx, i32 0, i32 2), align 4
  %call = tail call i32 @crypto_engine_exit(ptr noundef %0) #6
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_drv_ctx) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_setkey(ptr nocapture noundef %aead, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %keylen)
  %cmp = icmp eq i32 %keylen, 1
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %switch = icmp ult i8 %1, 3
  br i1 %switch, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  %keysrc13 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 52
  %2 = ptrtoint ptr %keysrc13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %keysrc13, align 4
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %keylen14 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 44
  %3 = ptrtoint ptr %keylen14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %keylen14, align 4
  br label %if.end23

if.else15:                                        ; preds = %entry
  %keylen16 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 44
  %4 = ptrtoint ptr %keylen16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %keylen, ptr %keylen16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %cmp17 = icmp eq i32 %keylen, 32
  br i1 %cmp17, label %if.then19, label %if.else15.if.end23_crit_edge

if.else15.if.end23_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %keysrc20 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 52
  %5 = ptrtoint ptr %keysrc20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %keysrc20, align 4
  %key21 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 8
  %6 = call ptr @memcpy(ptr %key21, ptr %key, i32 32)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else15.if.end23_crit_edge, %if.else, %if.then11
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %fbk_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 56
  %7 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fbk_cipher, align 4
  %base = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 128
  %and = and i32 %10, -1048321
  store i32 %and, ptr %base, align 128
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i, align 128
  %and26 = and i32 %12, 1048320
  %13 = load ptr, ptr %fbk_cipher, align 4
  %base28 = getelementptr inbounds %struct.crypto_aead, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base28, align 128
  %or = or i32 %15, %and26
  store i32 %or, ptr %base28, align 128
  %16 = load ptr, ptr %fbk_cipher, align 4
  %call31 = tail call i32 @crypto_aead_setkey(ptr noundef %16, ptr noundef %key, i32 noundef %keylen) #6
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_setauthsize(ptr nocapture noundef %aead, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %authsize2 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 48
  %0 = ptrtoint ptr %authsize2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authsize, ptr %authsize2, align 4
  %fbk_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 56
  %1 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fbk_cipher, align 4
  %call3 = tail call i32 @crypto_aead_setauthsize(ptr noundef %2, i32 noundef %authsize) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %__ctx.i, align 4
  %engine = getelementptr i8, ptr %3, i32 516
  %5 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine, align 4
  %call3 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %6, ptr noundef %req) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %__ctx.i, align 4
  %engine = getelementptr i8, ptr %3, i32 516
  %5 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine, align 4
  %call3 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %6, ptr noundef %req) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_aes_aead_init(ptr nocapture noundef %aead) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %dev = getelementptr i8, ptr %1, i32 512
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 128
  %dev3 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev3, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2
  %5 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @zynqmp_handle_aes_req, ptr %do_one_request, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 1
  %7 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %unprepare_request, align 4
  %cra_name = getelementptr i8, ptr %1, i32 40
  %call9 = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name, i32 noundef 0, i32 noundef 256) #6
  %fbk_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 56
  %8 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %fbk_cipher, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %cra_name) #9
  %9 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fbk_cipher, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call9, i32 0, i32 1
  %12 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %13, 128
  %14 = tail call i32 @llvm.umax.i32(i32 %add, i32 4)
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reqsize1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_aes_aead_exit(ptr noundef %aead) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbk_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 56
  %0 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbk_cipher, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 68)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #6, !srcloc !69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_handle_aes_req(ptr noundef %engine, ptr noundef %req) #2 align 64 {
entry:
  %dma_addr_data.i = alloca i32, align 4
  %dma_addr_hw_req.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %authsize.i = getelementptr i8, ptr %1, i32 184
  %2 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %authsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not.i = icmp ne i32 %3, 16
  %spec.select.i = zext i1 %cmp.not.i to i32
  %keysrc.i = getelementptr i8, ptr %1, i32 188
  %4 = ptrtoint ptr %keysrc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keysrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %keylen.i = getelementptr i8, ptr %1, i32 180
  %6 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp2.not.i = icmp eq i32 %7, 32
  %spec.select25.i = select i1 %cmp2.not.i, i32 %spec.select.i, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.i, %entry.if.end4.i_crit_edge
  %need_fallback.1.i = phi i32 [ %spec.select.i, %entry.if.end4.i_crit_edge ], [ %spec.select25.i, %land.lhs.true.i ]
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoclen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not.i = icmp eq i32 %9, 0
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end4.i.if.then7.i_crit_edge

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp6.i = icmp ult i32 %11, 4
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false.i.zynqmp_fallback_check.exit_crit_edge

lor.lhs.false.i.zynqmp_fallback_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_fallback_check.exit

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  br label %zynqmp_fallback_check.exit

zynqmp_fallback_check.exit:                       ; preds = %if.then7.i, %lor.lhs.false.i.zynqmp_fallback_check.exit_crit_edge
  %need_fallback.2.i = phi i32 [ 1, %if.then7.i ], [ %need_fallback.1.i, %lor.lhs.false.i.zynqmp_fallback_check.exit_crit_edge ]
  %cryptlen9.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen9.i, align 4
  %rem.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp10.not.i = icmp eq i32 %rem.i, 0
  %14 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp16.i = icmp ugt i32 %13, 16
  %16 = select i1 %cmp13.i, i1 true, i1 %cmp16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_fallback.2.i)
  %tobool.not3233 = icmp eq i32 %need_fallback.2.i, 0
  %17 = select i1 %16, i1 %cmp10.not.i, i1 false
  %tobool.not = select i1 %17, i1 %tobool.not3233, i1 false
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %zynqmp_fallback_check.exit
  %fbk_cipher = getelementptr i8, ptr %1, i32 192
  %18 = ptrtoint ptr %fbk_cipher to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbk_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 8
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %30 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %32 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %27, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %33 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %34 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %13, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %35 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %iv4.i, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %36 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %9, ptr %assoclen1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #6
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #6
  br label %if.end10

if.else8:                                         ; preds = %zynqmp_fallback_check.exit
  %dev3.i = getelementptr i8, ptr %1, i32 140
  %37 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_data.i) #6
  %39 = ptrtoint ptr %dma_addr_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %dma_addr_data.i, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_hw_req.i) #6
  %40 = ptrtoint ptr %dma_addr_hw_req.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %dma_addr_hw_req.i, align 4, !annotation !70
  %41 = ptrtoint ptr %keysrc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %keysrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  %add.i = add i32 %13, 32
  %dma_size.0.in.i = select i1 %cmp.i, i32 %add.i, i32 %13
  %dma_size.0.i = add i32 %dma_size.0.in.i, 12
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef %dma_size.0.i, ptr noundef nonnull %dma_addr_data.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.else8.zynqmp_aes_aead_cipher.exit_crit_edge, label %if.end9.i

if.else8.zynqmp_aes_aead_cipher.exit_crit_edge:   ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_aes_aead_cipher.exit

if.end9.i:                                        ; preds = %if.else8
  %call.i163.i = call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef 56, ptr noundef nonnull %dma_addr_hw_req.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool11.not.i = icmp eq ptr %call.i163.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dma_addr_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr_data.i, align 4
  call void @dma_free_attrs(ptr noundef %38, i32 noundef %dma_size.0.i, ptr noundef nonnull %call.i.i, i32 noundef %44, i32 noundef 0) #6
  br label %zynqmp_aes_aead_cipher.exit

if.end13.i:                                       ; preds = %if.end9.i
  %45 = ptrtoint ptr %cryptlen9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cryptlen9.i, align 4
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %47 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src.i, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %call.i.i, ptr noundef %48, i32 noundef 0, i32 noundef %46, i32 noundef 0) #6
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %46
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %49 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iv.i, align 32
  %51 = call ptr @memcpy(ptr %add.ptr.i, ptr %50, i32 12)
  %52 = ptrtoint ptr %dma_addr_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr_data.i, align 4
  %conv.i = zext i32 %53 to i64
  %54 = ptrtoint ptr %call.i163.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv.i, ptr %call.i163.i, align 8
  %dst.i = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 3
  %55 = ptrtoint ptr %dst.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv.i, ptr %dst.i, align 8
  %conv19.i = zext i32 %46 to i64
  %add20.i = add nuw nsw i64 %conv.i, %conv19.i
  %iv21.i = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 1
  %56 = ptrtoint ptr %iv21.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add20.i, ptr %iv21.i, align 8
  %57 = ptrtoint ptr %keysrc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %keysrc.i, align 4
  %conv23.i = zext i32 %58 to i64
  %keysrc24.i = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 6
  %59 = ptrtoint ptr %keysrc24.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv23.i, ptr %keysrc24.i, align 8
  %60 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %__ctx.i, align 4
  %conv25.i = zext i32 %61 to i64
  %op26.i = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 5
  %62 = ptrtoint ptr %op26.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv25.i, ptr %op26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp28.i = icmp eq i32 %61, 1
  %sub.i = add i32 %46, -16
  %conv33.i = zext i32 %sub.i to i64
  %conv33.sink.i = select i1 %cmp28.i, i64 %conv19.i, i64 %conv33.i
  %63 = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv33.sink.i, ptr %63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp37.i = icmp eq i32 %58, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.end13.i.if.end49.i_crit_edge

if.end13.i.if.end49.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then39.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr41.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %key.i = getelementptr i8, ptr %1, i32 144
  %65 = call ptr @memcpy(ptr %add.ptr41.i, ptr %key.i, i32 32)
  %66 = ptrtoint ptr %call.i163.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %call.i163.i, align 8
  %add44.i = add nuw nsw i64 %conv19.i, 12
  %add45.i = add i64 %add44.i, %67
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then39.i, %if.end13.i.if.end49.i_crit_edge
  %.sink.i = phi i64 [ %add45.i, %if.then39.i ], [ 0, %if.end13.i.if.end49.i_crit_edge ]
  %68 = getelementptr inbounds %struct.zynqmp_aead_hw_req, ptr %call.i163.i, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %.sink.i, ptr %68, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17) #9
  %70 = call ptr @memset(ptr %call.i.i, i32 0, i32 %dma_size.0.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %call.i.i) #6, !srcloc !69
  %71 = ptrtoint ptr %dma_addr_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_addr_data.i, align 4
  call void @dma_free_attrs(ptr noundef %38, i32 noundef %dma_size.0.i, ptr noundef nonnull %call.i.i, i32 noundef %72, i32 noundef 0) #6
  %73 = call ptr @memset(ptr %call.i163.i, i32 0, i32 56)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %call.i163.i) #6, !srcloc !69
  %74 = ptrtoint ptr %dma_addr_hw_req.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_addr_hw_req.i, align 4
  call void @dma_free_attrs(ptr noundef %38, i32 noundef 56, ptr noundef nonnull %call.i163.i, i32 noundef %75, i32 noundef 0) #6
  br label %zynqmp_aes_aead_cipher.exit

zynqmp_aes_aead_cipher.exit:                      ; preds = %if.end49.i, %if.then12.i, %if.else8.zynqmp_aes_aead_cipher.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.end49.i ], [ -12, %if.then12.i ], [ -12, %if.else8.zynqmp_aes_aead_cipher.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_hw_req.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_data.i) #6
  br label %if.end10

if.end10:                                         ; preds = %zynqmp_aes_aead_cipher.exit, %if.else, %if.then5
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ], [ %retval.0.i, %zynqmp_aes_aead_cipher.exit ]
  call void @crypto_finalize_aead_request(ptr noundef %engine, ptr noundef %req, i32 noundef %err.0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_zynqmp_aes_gcm__245_448_zynqmp_aes_driver_init6, !1, !"__initcall__kmod_zynqmp_aes_gcm__245_448_zynqmp_aes_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 448, i32 1}
!2 = !{ptr @__exitcall_zynqmp_aes_driver_exit, !1, !"__exitcall_zynqmp_aes_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file246, !4, !"__UNIQUE_ID_file246", i1 false, i1 false}
!4 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 449, i32 1}
!5 = !{ptr @__UNIQUE_ID_license247, !4, !"__UNIQUE_ID_license247", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 443, i32 12}
!8 = !{ptr @zynqmp_aes_driver, !9, !"zynqmp_aes_driver", i1 false, i1 false}
!9 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 439, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 391, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @zynqmp_aes_aead_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @zynqmp_aes_aead_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 397, i32 3}
!20 = !{ptr @zynqmp_aes_aead_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @zynqmp_aes_aead_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 404, i32 3}
!24 = !{ptr @zynqmp_aes_aead_probe._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @zynqmp_aes_aead_probe._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 410, i32 3}
!28 = !{ptr @zynqmp_aes_aead_probe._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zynqmp_aes_aead_probe._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @aes_drv_ctx, !31, !"aes_drv_ctx", i1 false, i1 false}
!31 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 352, i32 35}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 327, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @zynqmp_aes_aead_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @zynqmp_aes_aead_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 136, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @zynqmp_aes_aead_cipher._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @zynqmp_aes_aead_cipher._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 141, i32 4}
!44 = !{ptr @zynqmp_aes_aead_cipher._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @zynqmp_aes_aead_cipher._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 144, i32 4}
!48 = !{ptr @zynqmp_aes_aead_cipher._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @zynqmp_aes_aead_cipher._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 147, i32 4}
!52 = !{ptr @zynqmp_aes_aead_cipher._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @zynqmp_aes_aead_cipher._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 150, i32 4}
!56 = !{ptr @zynqmp_aes_aead_cipher._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @zynqmp_aes_aead_cipher._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @zynqmp_aes_dt_ids, !59, !"zynqmp_aes_dt_ids", i1 false, i1 false}
!59 = !{!"../drivers/crypto/xilinx/zynqmp-aes-gcm.c", i32 433, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2149220761}
!70 = !{!"auto-init"}
