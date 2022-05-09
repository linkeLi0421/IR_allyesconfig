; ModuleID = '/llk/IR_all_yes/drivers/crypto/exynos-rng.c_pt.bc'
source_filename = "../drivers/crypto/exynos-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.43, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.exynos_rng_dev = type { ptr, i32, ptr, ptr, %struct.mutex, [20 x i8], i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__initcall__kmod_exynos_rng__186_397_exynos_rng_driver_init6 = internal global ptr @exynos_rng_driver_init, section ".initcall6.init", align 4
@exynos_rng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_rng_probe, ptr @exynos_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_rng_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_rng_driver_exit = internal global ptr @exynos_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description187 = internal constant [65 x i8] c"exynos_rng.description=Exynos H/W Random Number Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [56 x i8] c"exynos_rng.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [42 x i8] c"exynos_rng.file=drivers/crypto/exynos-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [26 x i8] c"exynos_rng.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-rng\00", [21 x i8] zeroinitializer }, align 32
@exynos_rng_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-prng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@exynos_rng_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr @exynos_rng_suspend, ptr @exynos_rng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_rng_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@exynos_rng_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rng->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"secss\00", [26 x i8] zeroinitializer }, align 32
@exynos_rng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 287, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get clock.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_rng_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/crypto/exynos-rng.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_rng_probe._entry_ptr = internal global ptr @exynos_rng_probe._entry, section ".printk_index", align 4
@exynos_rng_alg = internal global %struct.rng_alg { ptr @exynos_rng_generate, ptr @exynos_rng_seed, ptr null, i32 20, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.43 zeroinitializer, ptr @exynos_rng_kcapi_init, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@exynos_rng_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 302, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't register rng crypto alg: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos_rng_probe._entry_ptr.10 = internal global ptr @exynos_rng_probe._entry.8, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@exynos_rng_set_seed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 122, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Seed setting not finished\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_rng_set_seed\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_rng_set_seed._entry_ptr = internal global ptr @exynos_rng_set_seed._entry, section ".printk_index", align 4
@exynos_rng_suspend.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_rng\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_rng_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Stored %u bytes for seeding on system resume\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"exynos_rng_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 387, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 389, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"exynos_rng_dt_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 375, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"exynos_rng_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 372, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"exynos_rng_dev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 85, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 282, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 285, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 287, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 301, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 122, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [31 x i8] c"../drivers/crypto/exynos-rng.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 340, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_exynos_rng_driver_exit, ptr @__initcall__kmod_exynos_rng__186_397_exynos_rng_driver_init6, ptr @exynos_rng_driver_exit, ptr @exynos_rng_probe._entry, ptr @exynos_rng_probe._entry.8, ptr @exynos_rng_probe._entry_ptr, ptr @exynos_rng_probe._entry_ptr.10, ptr @exynos_rng_set_seed._entry, ptr @exynos_rng_set_seed._entry_ptr, ptr @exynos_rng_driver, ptr @.str, ptr @exynos_rng_dt_match, ptr @exynos_rng_pm_ops, ptr @exynos_rng_dev, ptr @exynos_rng_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rng_set_seed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_rng_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_rng_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @exynos_rng_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %1 = ptrtoint ptr %call5 to i32
  %type = getelementptr inbounds %struct.exynos_rng_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %type, align 4
  %lock = getelementptr inbounds %struct.exynos_rng_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_rng_probe.__key) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %clk = getelementptr inbounds %struct.exynos_rng_dev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end3
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %mem = getelementptr inbounds %struct.exynos_rng_dev, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call20, ptr %mem, align 4
  %cmp.i56 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr @exynos_rng_dev, align 4
  %call27 = tail call i32 @crypto_register_rng(ptr noundef nonnull @exynos_rng_alg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %do.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call27) #10
  store ptr null, ptr @exynos_rng_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end26.cleanup_crit_edge, %if.then23, %do.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end15 ], [ %9, %if.then23 ], [ -17, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call27, %do.end32 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_unregister_rng(ptr noundef nonnull @exynos_rng_alg) #7
  store ptr null, ptr @exynos_rng_dev, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_generate(ptr nocapture noundef readonly %tfm, ptr nocapture noundef readnone %src, i32 noundef %slen, ptr noundef %dst, i32 noundef %dlen) #2 align 64 {
entry:
  %seed.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %clk = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %type.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 1
  %mem.i28.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 2
  %bytes_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 8
  %last_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 1
  %5 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 2
  %6 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 3
  %7 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 4
  %8 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 5
  %9 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 6
  %10 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 7
  %11 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 8
  %12 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 9
  %13 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 10
  %14 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 11
  %15 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 12
  %16 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 13
  %17 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 14
  %18 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 15
  %19 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 16
  %20 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 17
  %21 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 18
  %22 = getelementptr inbounds [20 x i8], ptr %seed.i, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %exynos_rng_reseed.exit.do.body_crit_edge, %if.end
  %dst.addr.0 = phi ptr [ %dst, %if.end ], [ %add.ptr, %exynos_rng_reseed.exit.do.body_crit_edge ]
  %dlen.addr.0 = phi i32 [ %dlen, %if.end ], [ %sub, %exynos_rng_reseed.exit.do.body_crit_edge ]
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.body.if.end4.i_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then3.i23
  ]

do.body.if.end4.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem.i28.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 402653184) #7, !srcloc !59
  br label %if.end4.i

if.then3.i23:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #7, !srcloc !59
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i23, %if.then.i, %do.body.if.end4.i_crit_edge
  %30 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i3034.i = getelementptr i8, ptr %31, i32 16
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3034.i) #7, !srcloc !60
  %33 = and i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not35.i = icmp eq i32 %33, 0
  br i1 %tobool.not35.i, label %if.end4.i.land.rhs.i_crit_edge, label %if.end4.i.if.end6_crit_edge

if.end4.i.if.end6_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end4.i.land.rhs.i_crit_edge:                   ; preds = %if.end4.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %if.end4.i.land.rhs.i_crit_edge
  %retry.036.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ 100, %if.end4.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %retry.036.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.do.end_crit_edge, label %do.end.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %land.rhs.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !62
  %34 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %35, i32 16
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !60
  %37 = and i32 %36, 536870912
  %tobool.not.i24 = icmp eq i32 %37, 0
  br i1 %tobool.not.i24, label %do.end.i.land.rhs.i_crit_edge, label %do.end.i.if.end6_crit_edge

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end6:                                          ; preds = %do.end.i.if.end6_crit_edge, %if.end4.i.if.end6_crit_edge
  %38 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %39, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 536870912) #7, !srcloc !59
  %40 = call i32 @llvm.umin.i32(i32 %dlen.addr.0, i32 20) #7
  %41 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 352
  call void @mmiocpy(ptr noundef %dst.addr.0, ptr noundef %add.ptr.i, i32 noundef %40) #7
  %43 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes_seeding.i, align 4
  %add.i = add i32 %44, %40
  store i32 %add.i, ptr %bytes_seeding.i, align 4
  %sub = sub i32 %dlen.addr.0, %40
  %add.ptr = getelementptr i8, ptr %dst.addr.0, i32 %40
  %45 = ptrtoint ptr %last_seeding.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_seeding.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seed.i) #7
  %add.neg.i = sub i32 -100, %46
  %sub.i = add i32 %add.neg.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %48 = call ptr @memset(ptr %seed.i, i32 255, i32 20)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end6.if.end.i27_crit_edge

if.end6.if.end.i27_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27

land.lhs.true.i:                                  ; preds = %if.end6
  %49 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes_seeding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %50)
  %cmp1.i = icmp ult i32 %50, 65536
  br i1 %cmp1.i, label %land.lhs.true.i.exynos_rng_reseed.exit_crit_edge, label %land.lhs.true.i.if.end.i27_crit_edge

land.lhs.true.i.if.end.i27_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27

land.lhs.true.i.exynos_rng_reseed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_rng_reseed.exit

if.end.i27:                                       ; preds = %land.lhs.true.i.if.end.i27_crit_edge, %if.end6.if.end.i27_crit_edge
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %52, label %if.end.i27.if.end4.i.i_crit_edge [
    i32 1, label %if.then.i.i
    i32 2, label %if.then3.i.i
  ]

if.end.i27.if.end4.i.i_crit_edge:                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem.i28.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 402653184) #7, !srcloc !59
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 33554432) #7, !srcloc !59
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i, %if.end.i27.if.end4.i.i_crit_edge
  %58 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i3034.i.i = getelementptr i8, ptr %59, i32 16
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3034.i.i) #7, !srcloc !60
  %61 = and i32 %60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not35.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not35.i.i, label %if.end4.i.i.land.rhs.i.i_crit_edge, label %if.end4.i.i.for.body.preheader.i.i_crit_edge

if.end4.i.i.for.body.preheader.i.i_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i.i

if.end4.i.i.land.rhs.i.i_crit_edge:               ; preds = %if.end4.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.end.i.i.land.rhs.i.i_crit_edge, %if.end4.i.i.land.rhs.i.i_crit_edge
  %retry.036.i.i = phi i32 [ %dec.i.i, %do.end.i.i.land.rhs.i.i_crit_edge ], [ 100, %if.end4.i.i.land.rhs.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %retry.036.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %land.rhs.i.i.exynos_rng_reseed.exit_crit_edge, label %do.end.i.i

land.rhs.i.i.exynos_rng_reseed.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_rng_reseed.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !62
  %62 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %63, i32 16
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i.i) #7, !srcloc !60
  %65 = and i32 %64, 536870912
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.land.rhs.i.i_crit_edge, label %do.end.i.i.for.body.preheader.i.i_crit_edge

do.end.i.i.for.body.preheader.i.i_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i.i

do.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.body.preheader.i.i:                           ; preds = %do.end.i.i.for.body.preheader.i.i_crit_edge, %if.end4.i.i.for.body.preheader.i.i_crit_edge
  %66 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %67, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 536870912) #7, !srcloc !59
  %68 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %69, i32 352
  call void @mmiocpy(ptr noundef nonnull %seed.i, ptr noundef %add.ptr.i.i28, i32 noundef 20) #7
  %70 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytes_seeding.i, align 4
  %add.i.i = add i32 %71, 20
  store i32 %add.i.i, ptr %bytes_seeding.i, align 4
  %72 = ptrtoint ptr %seed.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %seed.i, align 1
  %conv.i.i = zext i8 %73 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %4, align 1
  %conv4.i.i = zext i8 %75 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or.i.i = or i32 %shl5.i.i, %shl.i.i
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %5, align 1
  %conv8.i.i = zext i8 %77 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %or10.i.i = or i32 %or.i.i, %shl9.i.i
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %6, align 1
  %conv13.i.i = zext i8 %79 to i32
  %or15.i.i = or i32 %or10.i.i, %conv13.i.i
  %80 = call i32 @llvm.bswap.i32(i32 %or15.i.i) #7
  %81 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %82, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.i, i32 %80) #7, !srcloc !59
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %7, align 1
  %conv.i.1.i = zext i8 %84 to i32
  %shl.i.1.i = shl nuw i32 %conv.i.1.i, 24
  %85 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %8, align 1
  %conv4.i.1.i = zext i8 %86 to i32
  %shl5.i.1.i = shl nuw nsw i32 %conv4.i.1.i, 16
  %or.i.1.i = or i32 %shl5.i.1.i, %shl.i.1.i
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %9, align 1
  %conv8.i.1.i = zext i8 %88 to i32
  %shl9.i.1.i = shl nuw nsw i32 %conv8.i.1.i, 8
  %or10.i.1.i = or i32 %or.i.1.i, %shl9.i.1.i
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %10, align 1
  %conv13.i.1.i = zext i8 %90 to i32
  %or15.i.1.i = or i32 %or10.i.1.i, %conv13.i.1.i
  %91 = call i32 @llvm.bswap.i32(i32 %or15.i.1.i) #7
  %92 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i17.1.i = getelementptr i8, ptr %93, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.1.i, i32 %91) #7, !srcloc !59
  %94 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %11, align 1
  %conv.i.2.i = zext i8 %95 to i32
  %shl.i.2.i = shl nuw i32 %conv.i.2.i, 24
  %96 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %12, align 1
  %conv4.i.2.i = zext i8 %97 to i32
  %shl5.i.2.i = shl nuw nsw i32 %conv4.i.2.i, 16
  %or.i.2.i = or i32 %shl5.i.2.i, %shl.i.2.i
  %98 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %13, align 1
  %conv8.i.2.i = zext i8 %99 to i32
  %shl9.i.2.i = shl nuw nsw i32 %conv8.i.2.i, 8
  %or10.i.2.i = or i32 %or.i.2.i, %shl9.i.2.i
  %100 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %14, align 1
  %conv13.i.2.i = zext i8 %101 to i32
  %or15.i.2.i = or i32 %or10.i.2.i, %conv13.i.2.i
  %102 = call i32 @llvm.bswap.i32(i32 %or15.i.2.i) #7
  %103 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i17.2.i = getelementptr i8, ptr %104, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.2.i, i32 %102) #7, !srcloc !59
  %105 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %15, align 1
  %conv.i.3.i = zext i8 %106 to i32
  %shl.i.3.i = shl nuw i32 %conv.i.3.i, 24
  %107 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %16, align 1
  %conv4.i.3.i = zext i8 %108 to i32
  %shl5.i.3.i = shl nuw nsw i32 %conv4.i.3.i, 16
  %or.i.3.i = or i32 %shl5.i.3.i, %shl.i.3.i
  %109 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %17, align 1
  %conv8.i.3.i = zext i8 %110 to i32
  %shl9.i.3.i = shl nuw nsw i32 %conv8.i.3.i, 8
  %or10.i.3.i = or i32 %or.i.3.i, %shl9.i.3.i
  %111 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %18, align 1
  %conv13.i.3.i = zext i8 %112 to i32
  %or15.i.3.i = or i32 %or10.i.3.i, %conv13.i.3.i
  %113 = call i32 @llvm.bswap.i32(i32 %or15.i.3.i) #7
  %114 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i17.3.i = getelementptr i8, ptr %115, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.3.i, i32 %113) #7, !srcloc !59
  %116 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %19, align 1
  %conv.i.4.i = zext i8 %117 to i32
  %shl.i.4.i = shl nuw i32 %conv.i.4.i, 24
  %118 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %20, align 1
  %conv4.i.4.i = zext i8 %119 to i32
  %shl5.i.4.i = shl nuw nsw i32 %conv4.i.4.i, 16
  %or.i.4.i = or i32 %shl5.i.4.i, %shl.i.4.i
  %120 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %21, align 1
  %conv8.i.4.i = zext i8 %121 to i32
  %shl9.i.4.i = shl nuw nsw i32 %conv8.i.4.i, 8
  %or10.i.4.i = or i32 %or.i.4.i, %shl9.i.4.i
  %122 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %22, align 1
  %conv13.i.4.i = zext i8 %123 to i32
  %or15.i.4.i = or i32 %or10.i.4.i, %conv13.i.4.i
  %124 = call i32 @llvm.bswap.i32(i32 %or15.i.4.i) #7
  %125 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i17.4.i = getelementptr i8, ptr %126, i32 336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.4.i, i32 %124) #7, !srcloc !59
  %127 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %128, i32 16
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #7, !srcloc !60
  %130 = and i32 %129, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i18.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i18.i, label %do.end.i19.i, label %if.end20.i.i

do.end.i19.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.11) #10
  br label %exynos_rng_set_seed.exit.i

if.end20.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %134 = ptrtoint ptr %last_seeding.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %last_seeding.i, align 4
  %135 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %bytes_seeding.i, align 4
  br label %exynos_rng_set_seed.exit.i

exynos_rng_set_seed.exit.i:                       ; preds = %if.end20.i.i, %do.end.i19.i
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  br label %exynos_rng_reseed.exit

exynos_rng_reseed.exit:                           ; preds = %exynos_rng_set_seed.exit.i, %land.rhs.i.i.exynos_rng_reseed.exit_crit_edge, %land.lhs.true.i.exynos_rng_reseed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seed.i) #7
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %exynos_rng_reseed.exit.do.end_crit_edge, label %exynos_rng_reseed.exit.do.body_crit_edge

exynos_rng_reseed.exit.do.body_crit_edge:         ; preds = %exynos_rng_reseed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

exynos_rng_reseed.exit.do.end_crit_edge:          ; preds = %exynos_rng_reseed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %exynos_rng_reseed.exit.do.end_crit_edge, %land.rhs.i.do.end_crit_edge
  %retval.0.i2536 = phi i32 [ -110, %land.rhs.i.do.end_crit_edge ], [ 0, %exynos_rng_reseed.exit.do.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  %136 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %137) #7
  call void @clk_unprepare(ptr noundef %137) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2536, %do.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_seed(ptr nocapture noundef readonly %tfm, ptr nocapture noundef readonly %seed, i32 noundef %slen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %clk = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %and.i = and i32 %slen, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 20
  br i1 %cmp.i, label %if.end.exynos_rng_set_seed.exit_crit_edge, label %for.body.preheader.i

if.end.exynos_rng_set_seed.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_rng_set_seed.exit

for.body.preheader.i:                             ; preds = %if.end
  %mem.i.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %5, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.044.i = phi i32 [ %add17.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %div.i = sdiv i32 %i.044.i, 4
  %rem.i = srem i32 %div.i, 5
  %arrayidx.i = getelementptr i8, ptr %seed, i32 %i.044.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add2.i = or i32 %i.044.i, 1
  %arrayidx3.i = getelementptr i8, ptr %seed, i32 %add2.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %9 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl5.i, %shl.i
  %add6.i = or i32 %i.044.i, 2
  %arrayidx7.i = getelementptr i8, ptr %seed, i32 %add6.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %11 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %or.i, %shl9.i
  %add11.i = or i32 %i.044.i, 3
  %arrayidx12.i = getelementptr i8, ptr %seed, i32 %add11.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %13 to i32
  %or15.i = or i32 %or10.i, %conv13.i
  %mul.i = shl nsw i32 %rem.i, 2
  %add16.i = add nsw i32 %mul.i, 320
  %14 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #7
  %15 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #7, !srcloc !59
  %add17.i = add nuw i32 %i.044.i, 4
  %cmp1.i = icmp ult i32 %add17.i, %and.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %17 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #7, !srcloc !60
  %20 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i15 = icmp eq i32 %20, 0
  br i1 %tobool.not.i15, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.11) #10
  br label %exynos_rng_set_seed.exit

if.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %last_seeding.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_seeding.i, align 4
  %bytes_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %5, i32 0, i32 8
  %25 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytes_seeding.i, align 4
  br label %exynos_rng_set_seed.exit

exynos_rng_set_seed.exit:                         ; preds = %if.end20.i, %do.end.i, %if.end.exynos_rng_set_seed.exit_crit_edge
  %retval.0.i16 = phi i32 [ 0, %if.end20.i ], [ -5, %do.end.i ], [ -22, %if.end.exynos_rng_set_seed.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %exynos_rng_set_seed.exit, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %27, %exynos_rng_set_seed.exit ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i16, %exynos_rng_set_seed.exit ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_rng_kcapi_init(ptr nocapture noundef writeonly %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = load ptr, ptr @exynos_rng_dev, align 4
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %__crt_ctx.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %last_seeding = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %last_seeding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_seeding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seed_save_len = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %seed_save_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %seed_save_len, align 4
  %clk = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %seed_save = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 5
  %type.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %8, label %if.end4.if.end4.i_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then3.i30
  ]

if.end4.if.end4.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %mem.i.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 402653184) #7, !srcloc !59
  br label %if.end4.i

if.then3.i30:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %mem.i28.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem.i28.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #7, !srcloc !59
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i30, %if.then.i, %if.end4.if.end4.i_crit_edge
  %mem.i29.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %mem.i29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i29.i, align 4
  %add.ptr.i3034.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3034.i) #7, !srcloc !60
  %17 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not35.i = icmp eq i32 %17, 0
  br i1 %tobool.not35.i, label %if.end4.i.land.rhs.i_crit_edge, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end4.i.land.rhs.i_crit_edge:                   ; preds = %if.end4.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %if.end4.i.land.rhs.i_crit_edge
  %retry.036.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ 100, %if.end4.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %retry.036.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.exynos_rng_get_random.exit_crit_edge, label %do.end.i

land.rhs.i.exynos_rng_get_random.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_rng_get_random.exit

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !62
  %18 = ptrtoint ptr %mem.i29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i29.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !60
  %21 = and i32 %20, 536870912
  %tobool.not.i31 = icmp eq i32 %21, 0
  br i1 %tobool.not.i31, label %do.end.i.land.rhs.i_crit_edge, label %do.end.i.if.end14.i_crit_edge

do.end.i.if.end14.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end14.i:                                       ; preds = %do.end.i.if.end14.i_crit_edge, %if.end4.i.if.end14.i_crit_edge
  %22 = ptrtoint ptr %mem.i29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem.i29.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 536870912) #7, !srcloc !59
  %24 = ptrtoint ptr %seed_save_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %seed_save_len, align 4
  %25 = ptrtoint ptr %mem.i29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem.i29.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 352
  tail call void @mmiocpy(ptr noundef %seed_save, ptr noundef %add.ptr.i, i32 noundef 20) #7
  %27 = ptrtoint ptr %seed_save_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seed_save_len, align 4
  %bytes_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes_seeding.i, align 4
  %add.i = add i32 %30, %28
  store i32 %add.i, ptr %bytes_seeding.i, align 4
  br label %exynos_rng_get_random.exit

exynos_rng_get_random.exit:                       ; preds = %if.end14.i, %land.rhs.i.exynos_rng_get_random.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_rng_suspend.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_rng_suspend, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !63

if.then12:                                        ; preds = %exynos_rng_get_random.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %seed_save_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seed_save_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_rng_suspend.__UNIQUE_ID_ddebug185, ptr noundef %32, ptr noundef nonnull @.str.16, i32 noundef %34) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %exynos_rng_get_random.exit
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %36) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %36, %do.end ], [ %6, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.end ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_rng_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %last_seeding = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %last_seeding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_seeding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %seed_save = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 5
  %seed_save_len = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %seed_save_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seed_save_len, align 4
  %and.i = and i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 20
  br i1 %cmp.i, label %if.end4.exynos_rng_set_seed.exit_crit_edge, label %for.body.preheader.i

if.end4.exynos_rng_set_seed.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_rng_set_seed.exit

for.body.preheader.i:                             ; preds = %if.end4
  %mem.i.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.044.i = phi i32 [ %add17.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %div.i = sdiv i32 %i.044.i, 4
  %rem.i = srem i32 %div.i, 5
  %arrayidx.i = getelementptr i8, ptr %seed_save, i32 %i.044.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add2.i = or i32 %i.044.i, 1
  %arrayidx3.i = getelementptr i8, ptr %seed_save, i32 %add2.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %11 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl5.i, %shl.i
  %add6.i = or i32 %i.044.i, 2
  %arrayidx7.i = getelementptr i8, ptr %seed_save, i32 %add6.i
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %13 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %or.i, %shl9.i
  %add11.i = or i32 %i.044.i, 3
  %arrayidx12.i = getelementptr i8, ptr %seed_save, i32 %add11.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %15 to i32
  %or15.i = or i32 %or10.i, %conv13.i
  %mul.i = shl nsw i32 %rem.i, 2
  %add16.i = add nsw i32 %mul.i, 320
  %16 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #7
  %17 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #7, !srcloc !59
  %add17.i = add nuw i32 %i.044.i, 4
  %cmp1.i = icmp ult i32 %add17.i, %and.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #7, !srcloc !60
  %22 = and i32 %21, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i18 = icmp eq i32 %22, 0
  br i1 %tobool.not.i18, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.11) #10
  br label %exynos_rng_set_seed.exit

if.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %last_seeding to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_seeding, align 4
  %bytes_seeding.i = getelementptr inbounds %struct.exynos_rng_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %bytes_seeding.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bytes_seeding.i, align 4
  br label %exynos_rng_set_seed.exit

exynos_rng_set_seed.exit:                         ; preds = %if.end20.i, %do.end.i, %if.end4.exynos_rng_set_seed.exit_crit_edge
  %retval.0.i19 = phi i32 [ 0, %if.end20.i ], [ -5, %do.end.i ], [ -22, %if.end4.exynos_rng_set_seed.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %exynos_rng_set_seed.exit, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %29, %exynos_rng_set_seed.exit ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i19, %exynos_rng_set_seed.exit ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_exynos_rng__186_397_exynos_rng_driver_init6, !1, !"__initcall__kmod_exynos_rng__186_397_exynos_rng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/exynos-rng.c", i32 397, i32 1}
!2 = !{ptr @__exitcall_exynos_rng_driver_exit, !1, !"__exitcall_exynos_rng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description187, !4, !"__UNIQUE_ID_description187", i1 false, i1 false}
!4 = !{!"../drivers/crypto/exynos-rng.c", i32 399, i32 1}
!5 = !{ptr @__UNIQUE_ID_author188, !6, !"__UNIQUE_ID_author188", i1 false, i1 false}
!6 = !{!"../drivers/crypto/exynos-rng.c", i32 400, i32 1}
!7 = !{ptr @__UNIQUE_ID_file189, !8, !"__UNIQUE_ID_file189", i1 false, i1 false}
!8 = !{!"../drivers/crypto/exynos-rng.c", i32 401, i32 1}
!9 = !{ptr @__UNIQUE_ID_license190, !8, !"__UNIQUE_ID_license190", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/exynos-rng.c", i32 389, i32 11}
!12 = !{ptr @exynos_rng_driver, !13, !"exynos_rng_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/exynos-rng.c", i32 387, i32 31}
!14 = !{ptr @exynos_rng_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/crypto/exynos-rng.c", i32 282, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/exynos-rng.c", i32 285, i32 38}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/exynos-rng.c", i32 287, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @exynos_rng_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @exynos_rng_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/exynos-rng.c", i32 301, i32 3}
!29 = !{ptr @exynos_rng_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @exynos_rng_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @exynos_rng_dev, !32, !"exynos_rng_dev", i1 false, i1 false}
!32 = !{!"../drivers/crypto/exynos-rng.c", i32 85, i32 31}
!33 = !{ptr @exynos_rng_alg, !34, !"exynos_rng_alg", i1 false, i1 false}
!34 = !{!"../drivers/crypto/exynos-rng.c", i32 254, i32 23}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/exynos-rng.c", i32 122, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @exynos_rng_set_seed._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @exynos_rng_set_seed._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @exynos_rng_dt_match, !42, !"exynos_rng_dt_match", i1 false, i1 false}
!42 = !{!"../drivers/crypto/exynos-rng.c", i32 375, i32 34}
!43 = !{ptr @exynos_rng_pm_ops, !44, !"exynos_rng_pm_ops", i1 false, i1 false}
!44 = !{!"../drivers/crypto/exynos-rng.c", i32 372, i32 8}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/exynos-rng.c", i32 340, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @exynos_rng_suspend.__UNIQUE_ID_ddebug185, !46, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4629372}
!60 = !{i64 4629790}
!61 = !{i64 2152985314}
!62 = !{i64 2152985156}
!63 = !{i64 2148729358, i64 2148729363, i64 2148729376, i64 2148729420, i64 2148729454, i64 2148729475}
