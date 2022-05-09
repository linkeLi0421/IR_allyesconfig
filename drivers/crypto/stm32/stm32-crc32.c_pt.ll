; ModuleID = '/llk/IR_all_yes/drivers/crypto/stm32/stm32-crc32.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-crc32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.stm32_crc_list = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.43, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.43 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.stm32_crc = type { %struct.list_head, ptr, ptr, ptr, %struct.spinlock }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__param_str_burst_size = internal constant [23 x i8] c"stm32_crc32.burst_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@burst_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_burst_size = internal constant %struct.kernel_param { ptr @__param_str_burst_size, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @burst_size } }, section "__param", align 4
@__UNIQUE_ID_burst_sizetype184 = internal constant [37 x i8] c"stm32_crc32.parmtype=burst_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_burst_size185 = internal constant [65 x i8] c"stm32_crc32.parm=burst_size:Select burst byte size (0 unlimited)\00", section ".modinfo", align 1
@__initcall__kmod_stm32_crc32__190_481_stm32_crc_driver_init6 = internal global ptr @stm32_crc_driver_init, section ".initcall6.init", align 4
@stm32_crc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_crc_probe, ptr @stm32_crc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_crc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_crc_driver_exit = internal global ptr @stm32_crc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author191 = internal constant [60 x i8] c"stm32_crc32.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [70 x i8] c"stm32_crc32.description=STMicrolectronics STM32 CRC32 hardware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [50 x i8] c"stm32_crc32.file=drivers/crypto/stm32/stm32-crc32\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [24 x i8] c"stm32_crc32.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-crc32\00", [20 x i8] zeroinitializer }, align 32
@stm32_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_crc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_crc_runtime_suspend, ptr @stm32_crc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot map CRC IO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_crc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/stm32/stm32-crc32.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry_ptr = internal global ptr @stm32_crc_probe._entry, section ".printk_index", align 4
@stm32_crc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry_ptr.8 = internal global ptr @stm32_crc_probe._entry.6, section ".printk_index", align 4
@stm32_crc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry_ptr.11 = internal global ptr @stm32_crc_probe._entry.9, section ".printk_index", align 4
@stm32_crc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&crc->lock\00", [21 x i8] zeroinitializer }, align 32
@crc_list = internal global { %struct.stm32_crc_list, [44 x i8] } { %struct.stm32_crc_list { %struct.list_head { ptr @crc_list, ptr @crc_list }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@refcnt_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @refcnt_lock, i64 52), ptr getelementptr (i8, ptr @refcnt_lock, i64 52) }, ptr @refcnt_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @stm32_crc_init, ptr @stm32_crc_update, ptr @stm32_crc_final, ptr @stm32_crc_finup, ptr @stm32_crc_digest, ptr null, ptr null, ptr @stm32_crc_setkey, ptr null, ptr null, i32 4, [84 x i8] undef, i32 4, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 8, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-crc32-crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.43 zeroinitializer, ptr @stm32_crc32_cra_init, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @stm32_crc_init, ptr @stm32_crc_update, ptr @stm32_crc_final, ptr @stm32_crc_finup, ptr @stm32_crc_digest, ptr null, ptr null, ptr @stm32_crc_setkey, ptr null, ptr null, i32 4, [84 x i8] undef, i32 4, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 8, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-crc32-crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.43 zeroinitializer, ptr @stm32_crc32c_cra_init, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@stm32_crc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to register\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry_ptr.15 = internal global ptr @stm32_crc_probe._entry.13, section ".printk_index", align 4
@stm32_crc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 375, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_crc_probe._entry_ptr.19 = internal global ptr @stm32_crc_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crc_list.lock\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"refcnt_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"refcnt_lock\00", [20 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@stm32_crc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_crc_resume\00", [47 x i8] zeroinitializer }, align 32
@stm32_crc_resume._entry_ptr = internal global ptr @stm32_crc_resume._entry, section ".printk_index", align 4
@stm32_crc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.25, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_crc_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@stm32_crc_runtime_resume._entry_ptr = internal global ptr @stm32_crc_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"burst_size\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 41, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"stm32_crc_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 471, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 475, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"stm32_dt_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 465, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"stm32_crc_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 458, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 330, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 336, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 342, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 354, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"crc_list\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 58, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"refcnt_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"refcnt\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 267, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 367, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 375, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 60, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 268, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 428, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [38 x i8] c"../drivers/crypto/stm32/stm32-crc32.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 451, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_burst_size185, ptr @__UNIQUE_ID_burst_sizetype184, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_stm32_crc_driver_exit, ptr @__initcall__kmod_stm32_crc32__190_481_stm32_crc_driver_init6, ptr @__param_burst_size, ptr @stm32_crc_driver_exit, ptr @stm32_crc_probe._entry, ptr @stm32_crc_probe._entry.13, ptr @stm32_crc_probe._entry.16, ptr @stm32_crc_probe._entry.6, ptr @stm32_crc_probe._entry.9, ptr @stm32_crc_probe._entry_ptr, ptr @stm32_crc_probe._entry_ptr.11, ptr @stm32_crc_probe._entry_ptr.15, ptr @stm32_crc_probe._entry_ptr.19, ptr @stm32_crc_probe._entry_ptr.8, ptr @stm32_crc_resume._entry, ptr @stm32_crc_resume._entry_ptr, ptr @stm32_crc_runtime_resume._entry, ptr @stm32_crc_runtime_resume._entry_ptr, ptr @burst_size, ptr @stm32_crc_driver, ptr @.str, ptr @stm32_dt_ids, ptr @stm32_crc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @stm32_crc_probe.__key, ptr @.str.12, ptr @crc_list, ptr @refcnt_lock, ptr @refcnt, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @burst_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refcnt_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_crc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_crc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_crc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_crc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.stm32_crc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %regs = getelementptr inbounds %struct.stm32_crc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %clk, align 4
  %cmp.i82 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #14
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call21 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !84
  %call.i83 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_irq_safe(ptr noundef %dev1) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %lock = getelementptr inbounds %struct.stm32_crc, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @stm32_crc_probe.__key, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %13 = load ptr, ptr @crc_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @crc_list, ptr noundef %13) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add.exit_crit_edge

if.end28.list_add.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @crc_list, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @crc_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end28.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @refcnt_lock, i32 noundef 0) #11
  %17 = load i32, ptr @refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %if.then35, label %list_add.exit.if.end44_crit_edge

list_add.exit.if.end44_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then35:                                        ; preds = %list_add.exit
  %call36 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @algs, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end44_crit_edge, label %if.then38

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #14
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  tail call void @clk_unprepare(ptr noundef %19) #11
  br label %cleanup

if.end44:                                         ; preds = %if.then35.if.end44_crit_edge, %list_add.exit.if.end44_crit_edge
  %20 = load i32, ptr @refcnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr @refcnt, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #14
  %call.i84 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then38, %do.end26, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %8, %do.end16 ], [ %call21, %do.end26 ], [ 0, %if.end44 ], [ %call36, %if.then38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @refcnt_lock, i32 noundef 0) #11
  %12 = load i32, ptr @refcnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr @refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then2, label %list_del.exit.if.end3_crit_edge

list_del.exit.if.end3_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %list_del.exit.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end3.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end3.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end3.pm_runtime_put_noidle.exit_crit_edge
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  tail call void @clk_unprepare(ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_init(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %2 = load ptr, ptr @crc_list, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %stm32_crc_get_next_crc.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %9, ptr noundef nonnull @crc_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end_crit_edge

__list_del_entry.exit.i.i.if.end_crit_edge:       ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %2, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crc_list, ptr %2, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %2, ptr %9, align 4
  br label %if.end

stm32_crc_get_next_crc.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %dev = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #11
  %lock = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %15 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__crt_ctx.i.i, align 4
  %17 = lshr i32 %16, 8
  %conv4.i.i = and i32 %17, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %18 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv6.i.i, 16
  %21 = and i32 %16, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %23 to i32
  %24 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %20, %24
  %sum.shift.i = lshr i32 %16, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %25 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %26 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %16, 16
  %27 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %29 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  %regs = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 2
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #11, !srcloc !88
  %poly = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %33 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %poly, align 4
  %35 = lshr i32 %34, 8
  %conv4.i.i115 = and i32 %35, 255
  %arrayidx.i10.i.i116 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i115
  %36 = ptrtoint ptr %arrayidx.i10.i.i116 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i10.i.i116, align 1
  %conv6.i.i117 = zext i8 %37 to i32
  %38 = shl nuw nsw i32 %conv6.i.i117, 16
  %39 = and i32 %34, 255
  %arrayidx.i.i.i113 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i113, align 1
  %conv2.i.i114 = zext i8 %41 to i32
  %42 = shl nuw i32 %conv2.i.i114, 24
  %or.i13.i125 = or i32 %38, %42
  %sum.shift.i122 = lshr i32 %34, 24
  %arrayidx.i10.i11.i123 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i122
  %43 = ptrtoint ptr %arrayidx.i10.i11.i123 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i10.i11.i123, align 1
  %conv6.i12.i124 = zext i8 %44 to i32
  %shl.i126 = or i32 %or.i13.i125, %conv6.i12.i124
  %shr.i118 = lshr i32 %34, 16
  %45 = and i32 %shr.i118, 255
  %arrayidx.i.i7.i119 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i7.i119 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i7.i119, align 1
  %conv2.i8.i120 = zext i8 %47 to i32
  %shl.i9.i121 = shl nuw nsw i32 %conv2.i8.i120, 8
  %or.i127 = or i32 %shl.i126, %shl.i9.i121
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i127)
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr64 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %48) #11, !srcloc !88
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr66 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 -520093696) #11, !srcloc !88
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !89
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %__ctx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #11
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %call.i128 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 12, i32 22
  %60 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store volatile i64 %call.i128, ptr %last_busy.i, align 8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call.i129 = tail call i32 @__pm_runtime_suspend(ptr noundef %62, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stm32_crc_get_next_crc.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %stm32_crc_get_next_crc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_update(ptr nocapture noundef %desc, ptr noundef %d8, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @burst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %d8, i32 noundef %length)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool3.not37 = icmp eq i32 %length, 0
  br i1 %tobool3.not37, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %1 = ptrtoint ptr %d8 to i32
  %add = and i32 %1, 3
  %sub2 = add i32 %add, %0
  %2 = tail call i32 @llvm.umin.i32(i32 %sub2, i32 %length)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %size.040 = phi i32 [ %3, %for.inc.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %cur.039 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %d8, %for.body.preheader ]
  %rem_sz.038 = phi i32 [ %sub8, %for.inc.for.body_crit_edge ], [ %length, %for.body.preheader ]
  %call4 = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %cur.039, i32 noundef %size.040)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %sub8 = sub i32 %rem_sz.038, %size.040
  %add.ptr = getelementptr i8, ptr %cur.039, i32 %size.040
  %3 = tail call i32 @llvm.umin.i32(i32 %sub8, i32 %0)
  %tobool3.not = icmp eq i32 %sub8, 0
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_crc_final(ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %out) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %poly = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097792136, i32 %3)
  %cmp = icmp eq i32 %3, -2097792136
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__ctx.i, align 4
  %neg = sext i1 %cmp to i32
  %cond = xor i32 %5, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %cond) #11
  %7 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %out, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_finup(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @burst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %stm32_crc_update.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool3.not37.i = icmp eq i32 %length, 0
  br i1 %tobool3.not37.i, label %if.end.i.cond.false_crit_edge, label %for.body.preheader.i

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

for.body.preheader.i:                             ; preds = %if.end.i
  %1 = ptrtoint ptr %data to i32
  %add.i = and i32 %1, 3
  %sub2.i = add i32 %0, %add.i
  %2 = tail call i32 @llvm.umin.i32(i32 %sub2.i, i32 %length) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.040.i = phi i32 [ %3, %for.inc.i.for.body.i_crit_edge ], [ %2, %for.body.preheader.i ]
  %cur.039.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %data, %for.body.preheader.i ]
  %rem_sz.038.i = phi i32 [ %sub8.i, %for.inc.i.for.body.i_crit_edge ], [ %length, %for.body.preheader.i ]
  %call4.i = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %cur.039.i, i32 noundef %size.040.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %for.body.i.cond.end_crit_edge

for.body.i.cond.end_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

for.inc.i:                                        ; preds = %for.body.i
  %sub8.i = sub i32 %rem_sz.038.i, %size.040.i
  %add.ptr.i = getelementptr i8, ptr %cur.039.i, i32 %size.040.i
  %3 = tail call i32 @llvm.umin.i32(i32 %sub8.i, i32 %0) #11
  %tobool3.not.i = icmp eq i32 %sub8.i, 0
  br i1 %tobool3.not.i, label %for.inc.i.cond.false_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cond.false_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

stm32_crc_update.exit:                            ; preds = %entry
  %call.i = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %data, i32 noundef %length) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %stm32_crc_update.exit.cond.false_crit_edge, label %stm32_crc_update.exit.cond.end_crit_edge

stm32_crc_update.exit.cond.end_crit_edge:         ; preds = %stm32_crc_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

stm32_crc_update.exit.cond.false_crit_edge:       ; preds = %stm32_crc_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %stm32_crc_update.exit.cond.false_crit_edge, %for.inc.i.cond.false_crit_edge, %if.end.i.cond.false_crit_edge
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 8
  %poly.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1, i32 1
  %6 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %poly.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097792136, i32 %7)
  %cmp.i = icmp eq i32 %7, -2097792136
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__ctx.i.i, align 4
  %neg.i = sext i1 %cmp.i to i32
  %cond.i = xor i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #11
  %11 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %out, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %stm32_crc_update.exit.cond.end_crit_edge, %for.body.i.cond.end_crit_edge
  %cond = phi i32 [ 0, %cond.false ], [ %call.i, %stm32_crc_update.exit.cond.end_crit_edge ], [ %call4.i, %for.body.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_digest(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stm32_crc_init(ptr noundef %desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load i32, ptr @burst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %stm32_crc_update.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool3.not37.i.i = icmp eq i32 %length, 0
  br i1 %tobool3.not37.i.i, label %if.end.i.i.cond.false.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.cond.false.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %1 = ptrtoint ptr %data to i32
  %add.i.i = and i32 %1, 3
  %sub2.i.i = add i32 %0, %add.i.i
  %2 = tail call i32 @llvm.umin.i32(i32 %sub2.i.i, i32 %length) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %size.040.i.i = phi i32 [ %3, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %for.body.preheader.i.i ]
  %cur.039.i.i = phi ptr [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %data, %for.body.preheader.i.i ]
  %rem_sz.038.i.i = phi i32 [ %sub8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %length, %for.body.preheader.i.i ]
  %call4.i.i = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %cur.039.i.i, i32 noundef %size.040.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %for.inc.i.i, label %for.body.i.i.cond.end_crit_edge

for.body.i.i.cond.end_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %sub8.i.i = sub i32 %rem_sz.038.i.i, %size.040.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cur.039.i.i, i32 %size.040.i.i
  %3 = tail call i32 @llvm.umin.i32(i32 %sub8.i.i, i32 %0) #11
  %tobool3.not.i.i = icmp eq i32 %sub8.i.i, 0
  br i1 %tobool3.not.i.i, label %for.inc.i.i.cond.false.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.cond.false.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

stm32_crc_update.exit.i:                          ; preds = %cond.false
  %call.i.i = tail call fastcc i32 @burst_update(ptr noundef %desc, ptr noundef %data, i32 noundef %length) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %stm32_crc_update.exit.i.cond.false.i_crit_edge, label %stm32_crc_update.exit.i.cond.end_crit_edge

stm32_crc_update.exit.i.cond.end_crit_edge:       ; preds = %stm32_crc_update.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

stm32_crc_update.exit.i.cond.false.i_crit_edge:   ; preds = %stm32_crc_update.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %stm32_crc_update.exit.i.cond.false.i_crit_edge, %for.inc.i.i.cond.false.i_crit_edge, %if.end.i.i.cond.false.i_crit_edge
  %__ctx.i.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 8
  %poly.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1, i32 1
  %6 = ptrtoint ptr %poly.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %poly.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097792136, i32 %7)
  %cmp.i.i = icmp eq i32 %7, -2097792136
  %8 = ptrtoint ptr %__ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__ctx.i.i.i, align 4
  %neg.i.i = sext i1 %cmp.i.i to i32
  %cond.i.i = xor i32 %9, %neg.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i) #11
  %11 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %out, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.i, %stm32_crc_update.exit.i.cond.end_crit_edge, %for.body.i.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %entry.cond.end_crit_edge ], [ 0, %cond.false.i ], [ %call.i.i, %stm32_crc_update.exit.i.cond.end_crit_edge ], [ %call4.i.i, %for.body.i.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_crc_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_crc32_cra_init(ptr nocapture noundef writeonly %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %__crt_ctx.i, align 4
  %poly = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %poly to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -306674912, ptr %poly, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_crc32c_cra_init(ptr nocapture noundef writeonly %tfm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %__crt_ctx.i, align 4
  %poly = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %poly to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2097792136, ptr %poly, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @burst_update(ptr nocapture noundef %desc, ptr noundef %d8, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %2 = load ptr, ptr @crc_list, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %stm32_crc_get_next_crc.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %9, ptr noundef nonnull @crc_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end_crit_edge

__list_del_entry.exit.i.i.if.end_crit_edge:       ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %2, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crc_list, ptr %2, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %2, ptr %9, align 4
  br label %if.end

stm32_crc_get_next_crc.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #11
  %dev = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i178 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #11
  %lock = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then6, label %cond.end

if.then6:                                         ; preds = %if.end
  %poly = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %15 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %poly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -306674912, i32 %16)
  %cmp = icmp eq i32 %16, -306674912
  %17 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %__ctx.i, align 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @crc32_le(i32 noundef %18, ptr noundef %d8, i32 noundef %length) #15
  %19 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call8, ptr %__ctx.i, align 4
  br label %pm_out

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @__crc32c_le(i32 noundef %18, ptr noundef %d8, i32 noundef %length) #15
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call11, ptr %__ctx.i, align 4
  br label %pm_out

cond.end:                                         ; preds = %if.end
  %21 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %__ctx.i, align 4
  %23 = lshr i32 %22, 8
  %conv4.i.i = and i32 %23, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %24 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv6.i.i, 16
  %27 = and i32 %22, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %29 to i32
  %30 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %26, %30
  %sum.shift.i = lshr i32 %22, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %31 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %32 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %22, 16
  %33 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %35 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  %regs = getelementptr inbounds %struct.stm32_crc, ptr %2, i32 0, i32 2
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #11, !srcloc !88
  %poly38 = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %39 = ptrtoint ptr %poly38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %poly38, align 4
  %41 = lshr i32 %40, 8
  %conv4.i.i181 = and i32 %41, 255
  %arrayidx.i10.i.i182 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i181
  %42 = ptrtoint ptr %arrayidx.i10.i.i182 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i10.i.i182, align 1
  %conv6.i.i183 = zext i8 %43 to i32
  %44 = shl nuw nsw i32 %conv6.i.i183, 16
  %45 = and i32 %40, 255
  %arrayidx.i.i.i179 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i.i179 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i.i179, align 1
  %conv2.i.i180 = zext i8 %47 to i32
  %48 = shl nuw i32 %conv2.i.i180, 24
  %or.i13.i191 = or i32 %44, %48
  %sum.shift.i188 = lshr i32 %40, 24
  %arrayidx.i10.i11.i189 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i188
  %49 = ptrtoint ptr %arrayidx.i10.i11.i189 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i10.i11.i189, align 1
  %conv6.i12.i190 = zext i8 %50 to i32
  %shl.i192 = or i32 %or.i13.i191, %conv6.i12.i190
  %shr.i184 = lshr i32 %40, 16
  %51 = and i32 %shr.i184, 255
  %arrayidx.i.i7.i185 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i.i7.i185 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i7.i185, align 1
  %conv2.i8.i186 = zext i8 %53 to i32
  %shl.i9.i187 = shl nuw nsw i32 %conv2.i8.i186, 8
  %or.i193 = or i32 %shl.i192, %shl.i9.i187
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i193)
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %54) #11, !srcloc !88
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 -520093696) #11, !srcloc !88
  %59 = ptrtoint ptr %d8 to i32
  %add = add i32 %59, 3
  %and74 = and i32 %add, -4
  %60 = inttoptr i32 %and74 to ptr
  %cmp75.not = icmp eq ptr %60, %d8
  br i1 %cmp75.not, label %cond.end.if.end87_crit_edge, label %if.then76

cond.end.if.end87_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then76:                                        ; preds = %cond.end
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 -1610612736) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool82.not199 = icmp eq i32 %length, 0
  br i1 %tobool82.not199, label %if.then76.while.end_crit_edge, label %if.then76.while.body_crit_edge

if.then76.while.body_crit_edge:                   ; preds = %if.then76
  br label %while.body

if.then76.while.end_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then76.while.body_crit_edge
  %d8.addr.0202 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %d8, %if.then76.while.body_crit_edge ]
  %length.addr.0201 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %length, %if.then76.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %d8.addr.0202, i32 1
  %63 = ptrtoint ptr %d8.addr.0202 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %d8.addr.0202, align 1
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %64) #11, !srcloc !90
  %dec = add i32 %length.addr.0201, -1
  %67 = ptrtoint ptr %incdec.ptr to i32
  %add79 = add i32 %67, 3
  %and80 = and i32 %add79, -4
  %68 = inttoptr i32 %and80 to ptr
  %cmp81.not = icmp eq ptr %incdec.ptr, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool82.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp81.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then76.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ 0, %if.then76.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %d8.addr.0.lcssa = phi ptr [ %d8, %if.then76.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr86 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -536870912) #11, !srcloc !88
  br label %if.end87

if.end87:                                         ; preds = %while.end, %cond.end.if.end87_crit_edge
  %length.addr.1 = phi i32 [ %length.addr.0.lcssa, %while.end ], [ %length, %cond.end.if.end87_crit_edge ]
  %d8.addr.1 = phi ptr [ %d8.addr.0.lcssa, %while.end ], [ %d8, %cond.end.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length.addr.1)
  %cmp88204 = icmp ugt i32 %length.addr.1, 3
  br i1 %cmp88204, label %if.end87.for.body_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end87.for.body_crit_edge
  %d8.addr.2206 = phi ptr [ %add.ptr91, %for.body.for.body_crit_edge ], [ %d8.addr.1, %if.end87.for.body_crit_edge ]
  %length.addr.2205 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %length.addr.1, %if.end87.for.body_crit_edge ]
  %71 = ptrtoint ptr %d8.addr.2206 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %d8.addr.2206, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #11, !srcloc !88
  %add.ptr91 = getelementptr i8, ptr %d8.addr.2206, i32 4
  %sub = add i32 %length.addr.2205, -4
  %cmp88 = icmp ugt i32 %sub, 3
  br i1 %cmp88, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end87.for.end_crit_edge
  %length.addr.2.lcssa = phi i32 [ %length.addr.1, %if.end87.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %d8.addr.2.lcssa = phi ptr [ %d8.addr.1, %if.end87.for.end_crit_edge ], [ %add.ptr91, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.2.lcssa)
  %tobool92.not = icmp eq i32 %length.addr.2.lcssa, 0
  br i1 %tobool92.not, label %for.end.if.end104_crit_edge, label %if.then93

for.end.if.end104_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then93:                                        ; preds = %for.end
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr95 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 -1610612736) #11, !srcloc !88
  br label %while.body99

while.body99:                                     ; preds = %while.body99.while.body99_crit_edge, %if.then93
  %d8.addr.3211 = phi ptr [ %d8.addr.2.lcssa, %if.then93 ], [ %incdec.ptr100, %while.body99.while.body99_crit_edge ]
  %length.addr.3210 = phi i32 [ %length.addr.2.lcssa, %if.then93 ], [ %dec97, %while.body99.while.body99_crit_edge ]
  %dec97 = add i32 %length.addr.3210, -1
  %incdec.ptr100 = getelementptr i8, ptr %d8.addr.3211, i32 1
  %78 = ptrtoint ptr %d8.addr.3211 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %d8.addr.3211, align 1
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %81, i8 %79) #11, !srcloc !90
  %tobool98.not = icmp eq i32 %dec97, 0
  br i1 %tobool98.not, label %while.body99.if.end104_crit_edge, label %while.body99.while.body99_crit_edge

while.body99.while.body99_crit_edge:              ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body99

while.body99.if.end104_crit_edge:                 ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.end104:                                        ; preds = %while.body99.if.end104_crit_edge, %for.end.if.end104_crit_edge
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !89
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %__ctx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %pm_out

pm_out:                                           ; preds = %if.end104, %if.else, %if.then7
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %call.i194 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 12, i32 22
  %89 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store volatile i64 %call.i194, ptr %last_busy.i, align 8
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %call.i195 = tail call i32 @__pm_runtime_suspend(ptr noundef %91, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_out, %stm32_crc_get_next_crc.exit
  %retval.0 = phi i32 [ 0, %pm_out ], [ -19, %stm32_crc_get_next_crc.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_crc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.stm32_crc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_burst_size, !1, !"__param_burst_size", i1 false, i1 false}
!1 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_burst_sizetype184, !1, !"__UNIQUE_ID_burst_sizetype184", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_burst_size185, !4, !"__UNIQUE_ID_burst_size185", i1 false, i1 false}
!4 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 43, i32 1}
!5 = !{ptr @__initcall__kmod_stm32_crc32__190_481_stm32_crc_driver_init6, !6, !"__initcall__kmod_stm32_crc32__190_481_stm32_crc_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 481, i32 1}
!7 = !{ptr @__exitcall_stm32_crc_driver_exit, !6, !"__exitcall_stm32_crc_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author191, !9, !"__UNIQUE_ID_author191", i1 false, i1 false}
!9 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 483, i32 1}
!10 = !{ptr @__UNIQUE_ID_description192, !11, !"__UNIQUE_ID_description192", i1 false, i1 false}
!11 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 484, i32 1}
!12 = !{ptr @__UNIQUE_ID_file193, !13, !"__UNIQUE_ID_file193", i1 false, i1 false}
!13 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 485, i32 1}
!14 = !{ptr @__UNIQUE_ID_license194, !13, !"__UNIQUE_ID_license194", i1 false, i1 false}
!15 = !{ptr @burst_size, !16, !"burst_size", i1 false, i1 false}
!16 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 41, i32 21}
!17 = !{ptr @__param_str_burst_size, !1, !"__param_str_burst_size", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 475, i32 21}
!20 = !{ptr @stm32_crc_driver, !21, !"stm32_crc_driver", i1 false, i1 false}
!21 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 471, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 330, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stm32_crc_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_crc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 336, i32 3}
!32 = !{ptr @stm32_crc_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_crc_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 342, i32 3}
!36 = !{ptr @stm32_crc_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_crc_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @stm32_crc_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 354, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 367, i32 4}
!43 = !{ptr @stm32_crc_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_crc_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 375, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @stm32_crc_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @stm32_crc_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 60, i32 14}
!52 = !{ptr @crc_list, !53, !"crc_list", i1 false, i1 false}
!53 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 58, i32 30}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 268, i32 8}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @refcnt_lock, !55, !"refcnt_lock", i1 false, i1 false}
!58 = !{ptr @refcnt, !59, !"refcnt", i1 false, i1 false}
!59 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 267, i32 21}
!60 = !{ptr @algs, !61, !"algs", i1 false, i1 false}
!61 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 269, i32 25}
!62 = !{ptr @stm32_dt_ids, !63, !"stm32_dt_ids", i1 false, i1 false}
!63 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 465, i32 34}
!64 = !{ptr @stm32_crc_pm_ops, !65, !"stm32_crc_pm_ops", i1 false, i1 false}
!65 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 458, i32 32}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 428, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @stm32_crc_resume._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @stm32_crc_resume._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/stm32/stm32-crc32.c", i32 451, i32 3}
!73 = !{ptr @stm32_crc_runtime_resume._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @stm32_crc_runtime_resume._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148253140, i64 2148253166, i64 2148253195, i64 2148253229, i64 2148253260, i64 2148253283}
!85 = !{i64 2148252559}
!86 = !{i64 737382, i64 737407, i64 737429, i64 737445, i64 737457, i64 737477, i64 737501, i64 737517, i64 737529}
!87 = !{i64 2148252747}
!88 = !{i64 2046021}
!89 = !{i64 2046439}
!90 = !{i64 2045824}
