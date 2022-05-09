; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-npcm7xx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-npcm7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.npcm_i2c = type { %struct.i2c_adapter, ptr, ptr, %struct.spinlock, %struct.completion, i32, ptr, i32, i32, i32, %struct.i2c_bus_recovery_info, i32, i32, i32, i32, i8, ptr, i16, i16, ptr, i16, i16, i8, i16, i8, i8, i32, i32, i8, ptr, i32, i32, i32, i32, [16 x i8], [16 x i8], ptr, i64, i64, i64, i64, i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_npcm7xx__387_2342_npcm_i2c_init6 = internal global ptr @npcm_i2c_init, section ".initcall6.init", align 4
@npcm_i2c_bus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm_i2c_probe_bus, ptr @npcm_i2c_remove_bus, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @npcm_i2c_bus_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@npcm_i2c_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_npcm_i2c_exit = internal global ptr @npcm_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author388 = internal constant [55 x i8] c"i2c_npcm7xx.author=Avi Fishman <avi.fishman@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [55 x i8] c"i2c_npcm7xx.author=Tali Perry <tali.perry@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author390 = internal constant [52 x i8] c"i2c_npcm7xx.author=Tyrone Ting <kfting@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [47 x i8] c"i2c_npcm7xx.description=Nuvoton I2C Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file392 = internal constant [48 x i8] c"i2c_npcm7xx.file=drivers/i2c/busses/i2c-npcm7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [27 x i8] c"i2c_npcm7xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"npcm_i2c\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nuvoton-i2c\00", [20 x i8] zeroinitializer }, align 32
@npcm_i2c_bus_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@npcm_i2c_probe_bus.gcr_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@npcm_i2c_probe_bus.clk_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-gcr\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-clk\00", [44 x i8] zeroinitializer }, align 32
@npcm_i2c_probe_bus.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bus->lock\00", [21 x i8] zeroinitializer }, align 32
@npcm_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @npcm_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @npcm_i2c_functionality, ptr @npcm_i2c_reg_slave, ptr @npcm_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@npcm_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 -32768, i16 -32768, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"npcm_i2c_%d\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@npcm_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 2058, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C%d module is disabled\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"npcm_i2c_master_xfer\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-npcm7xx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm_i2c_master_xfer._entry_ptr = internal global ptr @npcm_i2c_master_xfer._entry, section ".printk_index", align 4
@npcm_i2c_master_xfer._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 2104, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c%d buffer too big\0A\00", [42 x i8] zeroinitializer }, align 32
@npcm_i2c_master_xfer._entry_ptr.15 = internal global ptr @npcm_i2c_master_xfer._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@npcm_i2caddr = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 8, i32 12, i32 16, i32 18, i32 20, i32 22, i32 17, i32 19, i32 21, i32 23], [56 x i8] zeroinitializer }, align 32
@npcm_i2c_reg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 1261, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i2c%d register slave SA=0x%x, PEC=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"npcm_i2c_reg_slave\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@npcm_i2c_reg_slave._entry_ptr = internal global ptr @npcm_i2c_reg_slave._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@__npcm_i2c_init._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 1963, ptr @.str.18, ptr @.str.12 }, align 1
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not read clock-frequency property\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__npcm_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@__npcm_i2c_init._entry_ptr = internal global ptr @__npcm_i2c_init._entry, section ".printk_index", align 4
@__npcm_i2c_init._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.10, i32 1969, ptr @.str.11, ptr @.str.12 }, align 1
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"npcm_i2c_init_module failed\0A\00", [35 x i8] zeroinitializer }, align 32
@__npcm_i2c_init._entry_ptr.24 = internal global ptr @__npcm_i2c_init._entry.22, section ".printk_index", align 4
@npcm_i2c_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 1929, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"npcm_i2c_init_clk failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"npcm_i2c_init_module\00", [43 x i8] zeroinitializer }, align 32
@npcm_i2c_init_module._entry_ptr = internal global ptr @npcm_i2c_init_module._entry, section ".printk_index", align 4
@npcm_i2c_recovery_tgclk.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.10, ptr @.str.29, i8 1, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_npcm7xx\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"npcm_i2c_recovery_tgclk\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bus%d recovery skipped, bus not stuck\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ber_cnt\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nack_cnt\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rec_succ_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rec_fail_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timeout_cnt\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"npcm_i2c_bus_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2327, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"npcm_i2c_debugfs_dir\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2209, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2338, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2331, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"npcm_i2c_bus_of_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2321, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"gcr_regmap\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2235, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"clk_regmap\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2236, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2246, i32 48 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2253, i32 50 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2258, i32 50 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2266, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"npcm_i2c_algo\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2199, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"npcm_i2c_quirks\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2193, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2297, i32 51 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2058, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2104, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"npcm_i2caddr\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 127, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1260, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1960, i32 45 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1963, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1969, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1929, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1675, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2221, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2222, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2223, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2224, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-npcm7xx.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2225, i32 21 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_license393, ptr @__exitcall_npcm_i2c_exit, ptr @__initcall__kmod_i2c_npcm7xx__387_2342_npcm_i2c_init6, ptr @__npcm_i2c_init._entry, ptr @__npcm_i2c_init._entry.22, ptr @__npcm_i2c_init._entry_ptr, ptr @__npcm_i2c_init._entry_ptr.24, ptr @npcm_i2c_exit, ptr @npcm_i2c_init_module._entry, ptr @npcm_i2c_init_module._entry_ptr, ptr @npcm_i2c_master_xfer._entry, ptr @npcm_i2c_master_xfer._entry.13, ptr @npcm_i2c_master_xfer._entry_ptr, ptr @npcm_i2c_master_xfer._entry_ptr.15, ptr @npcm_i2c_reg_slave._entry, ptr @npcm_i2c_reg_slave._entry_ptr, ptr @npcm_i2c_bus_driver, ptr @npcm_i2c_debugfs_dir, ptr @.str, ptr @.str.1, ptr @npcm_i2c_bus_of_table, ptr @npcm_i2c_probe_bus.gcr_regmap, ptr @npcm_i2c_probe_bus.clk_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @npcm_i2c_probe_bus.__key, ptr @.str.5, ptr @npcm_i2c_algo, ptr @npcm_i2c_quirks, ptr @.str.6, ptr @init_completion.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @npcm_i2caddr, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_bus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_bus_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_probe_bus.gcr_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_probe_bus.clk_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_probe_bus.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_master_xfer._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2caddr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_reg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_i2c_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @npcm_i2c_debugfs_dir, align 4
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_i2c_bus_driver, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm_i2c_bus_driver) #9
  %0 = load ptr, ptr @npcm_i2c_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_probe_bus(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1696, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_alias_get_id(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %num = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call4, ptr %num, align 8
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @clk_get_rate(ptr noundef %call6) #9
  %apb_clk = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %apb_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %apb_clk, align 4
  %call12 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.3) #9
  store ptr %call12, ptr @npcm_i2c_probe_bus.gcr_regmap, align 4
  %cmp.i114 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = tail call i32 @regmap_write(ptr noundef %call12, i32 noundef 228, i32 noundef 53735424) #9
  %call18 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #9
  store ptr %call18, ptr @npcm_i2c_probe_bus.clk_regmap, align 4
  %cmp.i115 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %reg, align 4
  %cmp.i116 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then26, label %do.body

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call23 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end22
  %lock = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @npcm_i2c_probe_bus.__key, i16 noundef signext 3) #9
  %cmd_complete = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call.i, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %retries, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %timeout, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @npcm_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @npcm_i2c_quirks, ptr %quirks, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 8
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %of_node37 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %20 = ptrtoint ptr %of_node37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %of_node37, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nr, align 4
  %call38 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end40

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %do.body
  %24 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end40.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end40.dev_name.exit_crit_edge ]
  %call.i117 = tail call i32 @devm_request_threaded_irq(ptr noundef %25, i32 noundef %call38, ptr noundef nonnull @npcm_i2c_bus_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool45.not = icmp eq i32 %call.i117, 0
  br i1 %tobool45.not, label %if.end47, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %dev_name.exit
  %call48 = tail call fastcc i32 @__npcm_i2c_init(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %rinfo1.i = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %rinfo1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @npcm_i2c_recovery_tgclk, ptr %rinfo1.i, align 4
  %get_scl.i = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %get_scl.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @npcm_i2c_get_SCL, ptr %get_scl.i, align 4
  %get_sda.i = getelementptr inbounds %struct.npcm_i2c, ptr %call.i, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %get_sda.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @npcm_i2c_get_SDA, ptr %get_sda.i, align 4
  %bus_recovery_info.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %bus_recovery_info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rinfo1.i, ptr %bus_recovery_info.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num, align 8
  %call54 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %36)
  %call56 = tail call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i118 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i118, align 4
  tail call fastcc void @npcm_i2c_init_debugfs(ptr noundef %pdev, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then26, %if.then20, %if.then14, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %6, %if.then14 ], [ %7, %if.then20 ], [ %9, %if.then26 ], [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %do.body.cleanup_crit_edge ], [ %call.i117, %dev_name.exit.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call56, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_remove_bus(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs = getelementptr inbounds %struct.npcm_i2c, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %3) #9
  %lock = getelementptr inbounds %struct.npcm_i2c, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @npcm_i2c_disable(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  tail call void @i2c_del_adapter(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_bus_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %info.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master_or_slave = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %master_or_slave to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %master_or_slave, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %master_or_slave1 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 13
  %5 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %master_or_slave1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %int_time_stamp = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 26
  %8 = ptrtoint ptr %int_time_stamp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %int_time_stamp, align 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %10, i32 2
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i20) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i = zext i8 %11 to i32
  %12 = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %do.end27.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 4) #9, !srcloc !110
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 6
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %18 = and i8 %17, -20
  %19 = or i8 %18, 16
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %21, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 %19) #9, !srcloc !110
  %stop_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %22 = ptrtoint ptr %stop_ind.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %stop_ind.i.i, align 8
  %operation.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %msgs1.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 6
  %23 = ptrtoint ptr %msgs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msgs1.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i
  %cmd_complete.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_complete.i.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmd_err41.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 5
  %25 = ptrtoint ptr %cmd_err41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -11, ptr %cmd_err41.i.i.i, align 4
  %26 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %master_or_slave1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp43.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp43.i.i.i, label %sw.epilog.sink.split.i.i.i, label %if.end4.i.i.i.sw.epilog.i.i.i_crit_edge

if.end4.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef %cmd_complete.i.i.i) #9
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.epilog.sink.split.i.i.i, %if.end4.i.i.i.sw.epilog.i.i.i_crit_edge
  %28 = ptrtoint ptr %operation.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %operation.i.i.i, align 8
  %slave.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 29
  %29 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave.i.i.i, align 4
  %tobool48.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool48.not.i.i.i, label %sw.epilog.i.i.i.cleanup_crit_edge, label %if.then49.i.i.i

sw.epilog.i.i.i.cleanup_crit_edge:                ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %master_or_slave1, align 4
  br label %cleanup

do.end27.i:                                       ; preds = %if.then2
  %32 = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not.i = icmp eq i32 %32, 0
  br i1 %tobool32.not.i, label %do.end49.i, label %if.then33.i

if.then33.i:                                      ; preds = %do.end27.i
  %nack_cnt.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 40
  %33 = ptrtoint ptr %nack_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %nack_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp.not.i.i = icmp eq i64 %34, -1
  br i1 %cmp.not.i.i, label %if.then33.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then33.i.if.end.i.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i = add nuw i64 %34, 1
  %35 = ptrtoint ptr %nack_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %inc.i.i, ptr %nack_cnt.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then33.i.if.end.i.i_crit_edge
  %fifo_use.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %36 = ptrtoint ptr %fifo_use.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fifo_use.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %operation.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %38 = ptrtoint ptr %operation.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %operation.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp3.i.i = icmp eq i32 %39, 1
  br i1 %cmp3.i.i, label %npcm_i2c_fifo_usage.exit.i.i, label %if.then2.i.i.if.end7.i.i_crit_edge

if.then2.i.i.if.end7.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

npcm_i2c_fifo_usage.exit.i.i:                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i174.i = getelementptr i8, ptr %41, i32 26
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i174.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %43 = and i8 %42, 31
  %conv.i.i = zext i8 %43 to i16
  %wr_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 21
  %44 = ptrtoint ptr %wr_ind.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %wr_ind.i.i, align 2
  %sub.i.i = sub i16 %45, %conv.i.i
  store i16 %sub.i.i, ptr %wr_ind.i.i, align 2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %npcm_i2c_fifo_usage.exit.i.i, %if.then2.i.i.if.end7.i.i_crit_edge
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i176.i, i8 64) #9, !srcloc !110
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end7.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %stop_ind.i177.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %48 = ptrtoint ptr %stop_ind.i177.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %stop_ind.i177.i, align 8
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %50, i32 2
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i68.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.i.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool.i.not.i.i, label %if.end8.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge, label %if.then10.i.i

if.end8.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_nack.exit.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr.i70.i.i = getelementptr i8, ptr %54, i32 25
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i70.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %56 = or i8 %55, -128
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %58, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i, i8 %56) #9, !srcloc !110
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i178.i = getelementptr i8, ptr %60, i32 6
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i178.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %62 = and i8 %61, -28
  %63 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i.i = getelementptr i8, ptr %64, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i, i8 %62) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %dev_id) #9
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %66, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72.i.i, i8 56) #9, !srcloc !110
  %call11.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call11.i.i, 200000
  %67 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i, align 4
  %add.ptr1474.i.i = getelementptr i8, ptr %68, i32 4
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1474.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool17.not75.i.i = icmp eq i8 %70, 0
  br i1 %tobool17.not75.i.i, label %if.then10.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge, label %if.then10.i.i.land.lhs.true.i.i_crit_edge

if.then10.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then10.i.i
  br label %land.lhs.true.i.i

if.then10.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_nack.exit.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.then10.i.i.land.lhs.true.i.i_crit_edge
  %call21.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call21.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then25.i.i, label %cond.false.i.i

if.then25.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %72, i32 4
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_irq_handle_nack.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #9
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %76, i32 4
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %78 = and i8 %77, 1
  %tobool17.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool17.not.i.i, label %cond.false.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

cond.false.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_nack.exit.i

npcm_i2c_irq_handle_nack.exit.i:                  ; preds = %cond.false.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge, %if.then25.i.i, %if.then10.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge, %if.end8.i.i.npcm_i2c_irq_handle_nack.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %79 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %state.i.i, align 4
  %80 = ptrtoint ptr %stop_ind.i177.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %stop_ind.i177.i, align 8
  %wr_ind43.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 21
  %82 = ptrtoint ptr %wr_ind43.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %wr_ind43.i.i, align 2
  tail call fastcc void @npcm_i2c_callback(ptr noundef %dev_id, i32 noundef %81, i16 noundef zeroext %83) #9
  br label %cleanup

do.end49.i:                                       ; preds = %do.end27.i
  %84 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool54.not.i = icmp eq i32 %84, 0
  br i1 %tobool54.not.i, label %do.end71.i, label %if.then55.i

if.then55.i:                                      ; preds = %do.end49.i
  %ber_cnt.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 37
  %85 = ptrtoint ptr %ber_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ber_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %86)
  %cmp.not.i179.i = icmp eq i64 %86, -1
  br i1 %cmp.not.i179.i, label %if.then55.i.if.end.i186.i_crit_edge, label %if.then.i181.i

if.then55.i.if.end.i186.i_crit_edge:              ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186.i

if.then.i181.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i180.i = add nuw i64 %86, 1
  %87 = ptrtoint ptr %ber_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %inc.i180.i, ptr %ber_cnt.i.i, align 8
  br label %if.end.i186.i

if.end.i186.i:                                    ; preds = %if.then.i181.i, %if.then55.i.if.end.i186.i_crit_edge
  %stop_ind.i182.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %88 = ptrtoint ptr %stop_ind.i182.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8, ptr %stop_ind.i182.i, align 8
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i184.i = getelementptr i8, ptr %90, i32 2
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i184.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.i.not.i185.i = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %94, i32 2
  br i1 %tobool.i.not.i185.i, label %if.else.i.i, label %if.then2.i187.i

if.then2.i187.i:                                  ; preds = %if.end.i186.i
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %96 = and i8 %95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.i.not.i.i.i = icmp eq i8 %96, 0
  br i1 %tobool.i.not.i.i.i, label %if.then2.i187.i.npcm_i2c_irq_handle_ber.exit.i_crit_edge, label %if.end.i.i188.i

if.then2.i187.i.npcm_i2c_irq_handle_ber.exit.i_crit_edge: ; preds = %if.then2.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_ber.exit.i

if.end.i.i188.i:                                  ; preds = %if.then2.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %98, i32 25
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i5.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %100 = or i8 %99, -128
  %101 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %102, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i.i, i8 %100) #9, !srcloc !110
  %103 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %104, i32 6
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %106 = and i8 %105, -28
  %107 = or i8 %106, 8
  %108 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i.i.i = getelementptr i8, ptr %109, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i.i, i8 %107) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %dev_id) #9
  %110 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg.i, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %111, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i.i.i, i8 56) #9, !srcloc !110
  br label %npcm_i2c_irq_handle_ber.exit.i

if.else.i.i:                                      ; preds = %if.end.i186.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18.i.i, i8 56) #9, !srcloc !110
  %112 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %113, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i189.i, i8 2) #9, !srcloc !110
  %cmd_err.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 5
  %114 = ptrtoint ptr %cmd_err.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -11, ptr %cmd_err.i.i, align 4
  %115 = ptrtoint ptr %stop_ind.i182.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stop_ind.i182.i, align 8
  %operation.i.i190.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %117 = ptrtoint ptr %operation.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %operation.i.i190.i, align 8
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values)
  switch i32 %118, label %if.else.i.i.npcm_i2c_get_index.exit.i.i_crit_edge [
    i32 2, label %if.then.i.i.i
    i32 1, label %if.then3.i.i.i
  ]

if.else.i.i.npcm_i2c_get_index.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_get_index.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rd_ind.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 18
  br label %return.sink.split.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %wr_ind.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 21
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %wr_ind.sink.i.i.i = phi ptr [ %wr_ind.i.i.i, %if.then3.i.i.i ], [ %rd_ind.i.i.i, %if.then.i.i.i ]
  %120 = ptrtoint ptr %wr_ind.sink.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %wr_ind.sink.i.i.i, align 2
  br label %npcm_i2c_get_index.exit.i.i

npcm_i2c_get_index.exit.i.i:                      ; preds = %return.sink.split.i.i.i, %if.else.i.i.npcm_i2c_get_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ 0, %if.else.i.i.npcm_i2c_get_index.exit.i.i_crit_edge ], [ %121, %return.sink.split.i.i.i ]
  tail call fastcc void @npcm_i2c_callback(ptr noundef %dev_id, i32 noundef %116, i16 noundef zeroext %retval.0.i.i.i) #9
  br label %npcm_i2c_irq_handle_ber.exit.i

npcm_i2c_irq_handle_ber.exit.i:                   ; preds = %npcm_i2c_get_index.exit.i.i, %if.end.i.i188.i, %if.then2.i187.i.npcm_i2c_irq_handle_ber.exit.i_crit_edge
  %state.i191.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %122 = ptrtoint ptr %state.i191.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %state.i191.i, align 4
  br label %cleanup

do.end71.i:                                       ; preds = %do.end49.i
  %123 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %124, i32 6
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %126 = and i8 %125, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp.not.i = icmp eq i8 %126, 0
  br i1 %cmp.not.i, label %do.end71.i.do.end119.i_crit_edge, label %do.end94.i

do.end71.i.do.end119.i_crit_edge:                 ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119.i

do.end94.i:                                       ; preds = %do.end71.i
  %127 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %128, i32 25
  %129 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr97.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %tobool102.not.i = icmp sgt i8 %129, -1
  br i1 %tobool102.not.i, label %do.end94.i.do.end119.i_crit_edge, label %if.then103.i

do.end94.i.do.end119.i_crit_edge:                 ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119.i

if.then103.i:                                     ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i193.i = getelementptr i8, ptr %131, i32 25
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i193.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %133 = or i8 %132, -128
  %134 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i194.i = getelementptr i8, ptr %135, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i194.i, i8 %133) #9, !srcloc !110
  %136 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i195.i = getelementptr i8, ptr %137, i32 6
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i195.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %139 = and i8 %138, -28
  %140 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i196.i = getelementptr i8, ptr %141, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i196.i, i8 %139) #9, !srcloc !110
  %state.i197.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %142 = ptrtoint ptr %state.i197.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %state.i197.i, align 4
  %stop_ind.i198.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %143 = ptrtoint ptr %stop_ind.i198.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %stop_ind.i198.i, align 8
  %rd_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 18
  %145 = ptrtoint ptr %rd_ind.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %rd_ind.i.i, align 2
  tail call fastcc void @npcm_i2c_callback(ptr noundef %dev_id, i32 noundef %144, i16 noundef zeroext %146) #9
  br label %cleanup

do.end119.i:                                      ; preds = %do.end94.i.do.end119.i_crit_edge, %do.end71.i.do.end119.i_crit_edge
  %147 = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool124.not.i = icmp eq i32 %147, 0
  br i1 %tobool124.not.i, label %do.end119.i.do.end141.i_crit_edge, label %if.then125.i

do.end119.i.do.end141.i_crit_edge:                ; preds = %do.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end141.i

if.then125.i:                                     ; preds = %do.end119.i
  %wr_size.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 20
  %148 = ptrtoint ptr %wr_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %wr_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp.i.i.i = icmp eq i16 %149, 0
  br i1 %cmp.i.i.i, label %npcm_i2c_is_quick.exit.i.i, label %if.then125.i.if.else.i208.i_crit_edge

if.then125.i.if.else.i208.i_crit_edge:            ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i208.i

npcm_i2c_is_quick.exit.i.i:                       ; preds = %if.then125.i
  %rd_size.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %150 = ptrtoint ptr %rd_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %rd_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %cmp3.i.i199.i = icmp eq i16 %151, 0
  br i1 %cmp3.i.i199.i, label %if.then.i207.i, label %npcm_i2c_is_quick.exit.i.i.if.else.i208.i_crit_edge

npcm_i2c_is_quick.exit.i.i.if.else.i208.i_crit_edge: ; preds = %npcm_i2c_is_quick.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i208.i

if.then.i207.i:                                   ; preds = %npcm_i2c_is_quick.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i200.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %152 = ptrtoint ptr %state.i200.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 5, ptr %state.i200.i, align 4
  %stop_ind.i201.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %153 = ptrtoint ptr %stop_ind.i201.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 6, ptr %stop_ind.i201.i, align 8
  %154 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i203.i = getelementptr i8, ptr %155, i32 25
  %156 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i203.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %157 = or i8 %156, -128
  %158 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i204.i = getelementptr i8, ptr %159, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i204.i, i8 %157) #9, !srcloc !110
  %160 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i205.i = getelementptr i8, ptr %161, i32 6
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i205.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %163 = and i8 %162, -28
  %164 = or i8 %163, 8
  %165 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i206.i = getelementptr i8, ptr %166, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i206.i, i8 %164) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %dev_id) #9
  br label %npcm_i2c_irq_handle_stall_after_start.exit.i

if.else.i208.i:                                   ; preds = %npcm_i2c_is_quick.exit.i.i.if.else.i208.i_crit_edge, %if.then125.i.if.else.i208.i_crit_edge
  %rd_size.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %167 = ptrtoint ptr %rd_size.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %rd_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %168)
  %cmp.i.i = icmp eq i16 %168, 1
  br i1 %cmp.i.i, label %land.lhs.true.i210.i, label %if.else.i208.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge

if.else.i208.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge: ; preds = %if.else.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_stall_after_start.exit.i

land.lhs.true.i210.i:                             ; preds = %if.else.i208.i
  %read_block_use.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 25
  %169 = ptrtoint ptr %read_block_use.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %read_block_use.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i209.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i209.i, label %if.then2.i211.i, label %land.lhs.true.i210.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge

land.lhs.true.i210.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge: ; preds = %land.lhs.true.i210.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_irq_handle_stall_after_start.exit.i

if.then2.i211.i:                                  ; preds = %land.lhs.true.i210.i
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %172, i32 6
  %173 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %174 = and i8 %173, -20
  %175 = or i8 %174, 16
  %176 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i15.i.i = getelementptr i8, ptr %177, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i15.i.i, i8 %175) #9, !srcloc !110
  br label %npcm_i2c_irq_handle_stall_after_start.exit.i

npcm_i2c_irq_handle_stall_after_start.exit.i:     ; preds = %if.then2.i211.i, %land.lhs.true.i210.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge, %if.else.i208.i.npcm_i2c_irq_handle_stall_after_start.exit.i_crit_edge, %if.then.i207.i
  %178 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %179, i32 6
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i17.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %181 = and i8 %180, 108
  %182 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %183, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i.i, i8 %181) #9, !srcloc !110
  %184 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg.i, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %185, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i212.i, i8 8) #9, !srcloc !110
  br label %do.end141.i

do.end141.i:                                      ; preds = %npcm_i2c_irq_handle_stall_after_start.exit.i, %do.end119.i.do.end141.i_crit_edge
  %186 = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool146.not.i = icmp eq i32 %186, 0
  br i1 %tobool146.not.i, label %lor.lhs.false.i, label %do.end141.i.if.then155.i_crit_edge

do.end141.i.if.then155.i_crit_edge:               ; preds = %do.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155.i

lor.lhs.false.i:                                  ; preds = %do.end141.i
  %fifo_use.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %187 = ptrtoint ptr %fifo_use.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %fifo_use.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool147.not.i = icmp eq i8 %188, 0
  br i1 %tobool147.not.i, label %lor.lhs.false.i.npcm_i2c_int_master_handler.exit_crit_edge, label %land.lhs.true149.i

lor.lhs.false.i.npcm_i2c_int_master_handler.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_int_master_handler.exit

land.lhs.true149.i:                               ; preds = %lor.lhs.false.i
  %189 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %reg.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %190, i32 26
  %191 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i214.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i215.i = zext i8 %191 to i32
  %and.i.i = and i32 %conv.i215.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i216.i = icmp ne i32 %and.i.i, 0
  %192 = and i32 %conv.i215.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.i.i = icmp ne i32 %192, 0
  %retval.0.i.i = and i1 %cmp.i216.i, %tobool.i.i
  br i1 %retval.0.i.i, label %land.lhs.true149.i.if.then155.i_crit_edge, label %lor.lhs.false152.i

land.lhs.true149.i.if.then155.i_crit_edge:        ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155.i

lor.lhs.false152.i:                               ; preds = %land.lhs.true149.i
  %193 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg.i, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %194, i32 28
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i218.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i219.i = zext i8 %195 to i32
  %and.i220.i = and i32 %conv.i219.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220.i)
  %cmp.i221.i = icmp ne i32 %and.i220.i, 0
  %196 = and i32 %conv.i219.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.i222.i = icmp ne i32 %196, 0
  %retval.0.i223.i = and i1 %cmp.i221.i, %tobool.i222.i
  br i1 %retval.0.i223.i, label %lor.lhs.false152.i.if.then155.i_crit_edge, label %lor.lhs.false152.i.npcm_i2c_int_master_handler.exit_crit_edge

lor.lhs.false152.i.npcm_i2c_int_master_handler.exit_crit_edge: ; preds = %lor.lhs.false152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_int_master_handler.exit

lor.lhs.false152.i.if.then155.i_crit_edge:        ; preds = %lor.lhs.false152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155.i

if.then155.i:                                     ; preds = %lor.lhs.false152.i.if.then155.i_crit_edge, %land.lhs.true149.i.if.then155.i_crit_edge, %do.end141.i.if.then155.i_crit_edge
  %197 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i225.i = getelementptr i8, ptr %198, i32 2
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i225.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %200 = and i8 %199, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.i.not.i226.i = icmp eq i8 %200, 0
  br i1 %tobool.i.not.i226.i, label %if.then155.i.cleanup_crit_edge, label %if.end.i229.i

if.then155.i.cleanup_crit_edge:                   ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i229.i:                                    ; preds = %if.then155.i
  %state.i227.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %201 = ptrtoint ptr %state.i227.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %state.i227.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp.i228.i = icmp eq i32 %202, 1
  br i1 %cmp.i228.i, label %if.then1.i.i, label %if.else47.i.i

if.then1.i.i:                                     ; preds = %if.end.i229.i
  %stop_ind.i230.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %203 = ptrtoint ptr %stop_ind.i230.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 9, ptr %stop_ind.i230.i, align 8
  %wr_size.i.i231.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 20
  %204 = ptrtoint ptr %wr_size.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %wr_size.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %cmp.i.i232.i = icmp eq i16 %205, 0
  br i1 %cmp.i.i232.i, label %npcm_i2c_is_quick.exit.i235.i, label %if.then1.i.i.lor.lhs.false.i.i_crit_edge

if.then1.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

npcm_i2c_is_quick.exit.i235.i:                    ; preds = %if.then1.i.i
  %rd_size.i.i233.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %206 = ptrtoint ptr %rd_size.i.i233.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %rd_size.i.i233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %cmp3.i.i234.i = icmp eq i16 %207, 0
  br i1 %cmp3.i.i234.i, label %npcm_i2c_is_quick.exit.i235.i.if.then3.i.i_crit_edge, label %npcm_i2c_is_quick.exit.i235.i.lor.lhs.false.i.i_crit_edge

npcm_i2c_is_quick.exit.i235.i.lor.lhs.false.i.i_crit_edge: ; preds = %npcm_i2c_is_quick.exit.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

npcm_i2c_is_quick.exit.i235.i.if.then3.i.i_crit_edge: ; preds = %npcm_i2c_is_quick.exit.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

lor.lhs.false.i.i:                                ; preds = %npcm_i2c_is_quick.exit.i235.i.lor.lhs.false.i.i_crit_edge, %if.then1.i.i.lor.lhs.false.i.i_crit_edge
  %read_block_use.i236.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 25
  %208 = ptrtoint ptr %read_block_use.i236.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %read_block_use.i236.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i237.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i237.i, label %if.else.i239.i, label %lor.lhs.false.i.i.if.then3.i.i_crit_edge

lor.lhs.false.i.i.if.then3.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then3.i.i_crit_edge, %npcm_i2c_is_quick.exit.i235.i.if.then3.i.i_crit_edge
  %210 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg.i, align 4
  %add.ptr.i90.i.i = getelementptr i8, ptr %211, i32 6
  %212 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i90.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %213 = and i8 %212, 108
  %214 = or i8 %213, -128
  %215 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i.i238.i = getelementptr i8, ptr %216, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i238.i, i8 %214) #9, !srcloc !110
  br label %if.end4.i.i

if.else.i239.i:                                   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %reg.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %218, i32 6
  %219 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i92.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %220 = and i8 %219, 108
  %221 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i93.i.i = getelementptr i8, ptr %222, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i93.i.i, i8 %220) #9, !srcloc !110
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.else.i239.i, %if.then3.i.i
  %223 = ptrtoint ptr %wr_size.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %wr_size.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %cmp5.i.i = icmp eq i16 %224, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i241.i, label %if.end4.i.i.if.end11.i.i_crit_edge

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

land.lhs.true.i241.i:                             ; preds = %if.end4.i.i
  %rd_size.i240.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %225 = ptrtoint ptr %rd_size.i240.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %rd_size.i240.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %226)
  %cmp8.i.i = icmp eq i16 %226, 1
  br i1 %cmp8.i.i, label %if.then10.i242.i, label %land.lhs.true.i241.i.if.end11.i.i_crit_edge

land.lhs.true.i241.i.if.end11.i.i_crit_edge:      ; preds = %land.lhs.true.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then10.i242.i:                                 ; preds = %land.lhs.true.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %reg.i, align 4
  %add.ptr.i95.i.i = getelementptr i8, ptr %228, i32 6
  %229 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i95.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %230 = and i8 %229, 108
  %231 = or i8 %230, -128
  %232 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i96.i.i = getelementptr i8, ptr %233, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i96.i.i, i8 %231) #9, !srcloc !110
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i242.i, %land.lhs.true.i241.i.if.end11.i.i_crit_edge, %if.end4.i.i.if.end11.i.i_crit_edge
  %234 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg.i, align 4
  %add.ptr.i98.i.i = getelementptr i8, ptr %235, i32 14
  %236 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i98.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i.i = or i8 %236, 32
  %237 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i243.i = getelementptr i8, ptr %238, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i243.i, i8 %i2cctl3.0.i.i.i) #9, !srcloc !110
  %239 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg.i, align 4
  %add.ptr.i244.i = getelementptr i8, ptr %240, i32 16
  %241 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i244.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %242 = and i8 %241, 63
  %243 = or i8 %242, 64
  %244 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %reg.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %245, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i, i8 %243) #9, !srcloc !110
  %246 = or i8 %242, 66
  %247 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %248, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i.i, i8 %246) #9, !srcloc !110
  %249 = ptrtoint ptr %wr_size.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %wr_size.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %250)
  %tobool25.not.i.i = icmp eq i16 %250, 0
  br i1 %tobool25.not.i.i, label %if.else29.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.i.i = zext i16 %250 to i32
  br label %if.end32.i.i

if.else29.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rd_size30.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %251 = ptrtoint ptr %rd_size30.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %rd_size30.i.i, align 4
  %conv31.i.i = zext i16 %252 to i32
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else29.i.i, %if.then26.i.i
  %.sink.i.i = phi i32 [ -1, %if.else29.i.i ], [ %conv28.i.i, %if.then26.i.i ]
  %conv31.sink.i.i = phi i32 [ %conv31.i.i, %if.else29.i.i ], [ -1, %if.then26.i.i ]
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %dev_id, i32 noundef %conv31.sink.i.i, i32 noundef %.sink.i.i) #9
  %253 = ptrtoint ptr %state.i227.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 4, ptr %state.i227.i, align 4
  %254 = ptrtoint ptr %wr_size.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %wr_size.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %cmp.i100.i.i = icmp eq i16 %255, 0
  br i1 %cmp.i100.i.i, label %npcm_i2c_is_quick.exit104.i.i, label %if.end32.i.i.if.then40.i.i_crit_edge

if.end32.i.i.if.then40.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i.i

npcm_i2c_is_quick.exit104.i.i:                    ; preds = %if.end32.i.i
  %rd_size.i101.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %256 = ptrtoint ptr %rd_size.i101.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %rd_size.i101.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %cmp3.i102.i.i = icmp eq i16 %257, 0
  br i1 %cmp3.i102.i.i, label %npcm_i2c_is_quick.exit104.i.i.if.then40.i.i_crit_edge, label %if.else41.i.i

npcm_i2c_is_quick.exit104.i.i.if.then40.i.i_crit_edge: ; preds = %npcm_i2c_is_quick.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i.i

if.then40.i.i:                                    ; preds = %npcm_i2c_is_quick.exit104.i.i.if.then40.i.i_crit_edge, %if.end32.i.i.if.then40.i.i_crit_edge
  %dest_addr.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 15
  %258 = ptrtoint ptr %dest_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %dest_addr.i.i, align 4
  %260 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %261, i8 %259) #9, !srcloc !110
  br label %cleanup

if.else41.i.i:                                    ; preds = %npcm_i2c_is_quick.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dest_addr42.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 15
  %262 = ptrtoint ptr %dest_addr42.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %dest_addr42.i.i, align 4
  %264 = or i8 %263, 1
  %265 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %266, i8 %264) #9, !srcloc !110
  br label %cleanup

if.else47.i.i:                                    ; preds = %if.end.i229.i
  %267 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool50.not.i.i = icmp eq i8 %267, 0
  %operation53.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  br i1 %tobool50.not.i.i, label %if.else52.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.else47.i.i
  %268 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1, ptr %operation53.i.i, align 8
  %fifo_use.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %269 = ptrtoint ptr %fifo_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %fifo_use.i.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool.not.i.i245.i = icmp eq i8 %270, 0
  br i1 %tobool.not.i.i245.i, label %if.end.i.thread.i.i, label %if.end.i.i248.i

if.end.i.i248.i:                                  ; preds = %if.then51.i.i
  %271 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %272, i32 26
  %273 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %274 = or i8 %273, 64
  %275 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i.i246.i = getelementptr i8, ptr %276, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i246.i, i8 %274) #9, !srcloc !110
  %277 = ptrtoint ptr %fifo_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %.pr.i.i = load i8, ptr %fifo_use.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %phi.cmp.i.i = icmp eq i8 %.pr.i.i, 0
  %wr_ind.i.i247.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 21
  %278 = ptrtoint ptr %wr_ind.i.i247.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %wr_ind.i.i247.i, align 2
  %wr_size.i107.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 20
  %280 = ptrtoint ptr %wr_size.i107.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %wr_size.i107.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %281, i16 %279)
  %cmp.i108.i.i = icmp eq i16 %281, %279
  br i1 %cmp.i108.i.i, label %if.then3.i.i249.i, label %if.else27.i.i.i

if.end.i.thread.i.i:                              ; preds = %if.then51.i.i
  %wr_ind.i147.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 21
  %282 = ptrtoint ptr %wr_ind.i147.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %wr_ind.i147.i.i, align 2
  %wr_size.i107148.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 20
  %284 = ptrtoint ptr %wr_size.i107148.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %wr_size.i107148.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %285, i16 %283)
  %cmp.i108149.i.i = icmp eq i16 %285, %283
  br i1 %cmp.i108149.i.i, label %if.end.i.thread.i.i.if.end11.i.i.i_crit_edge, label %if.end.i.thread.i.i.if.then34.i.i.i_crit_edge

if.end.i.thread.i.i.if.then34.i.i.i_crit_edge:    ; preds = %if.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i.i

if.end.i.thread.i.i.if.end11.i.i.i_crit_edge:     ; preds = %if.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

if.then3.i.i249.i:                                ; preds = %if.end.i.i248.i
  br i1 %phi.cmp.i.i, label %if.then3.i.i249.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then3.i.i249.i.if.end11.i.i.i_crit_edge:       ; preds = %if.then3.i.i249.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then3.i.i249.i
  %286 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %operation53.i.i, align 8
  %288 = zext i32 %287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %288, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %287, label %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge [
    i32 1, label %do.end8.i.i.i.i
    i32 2, label %do.end23.i.i.i.i
  ]

land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

do.end8.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %289 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %reg.i, align 4
  %add.ptr.i79.i.i.i = getelementptr i8, ptr %290, i32 26
  %291 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i79.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i.i.i

do.end23.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %293, i32 28
  %294 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i.i.i

npcm_i2c_fifo_usage.exit.i.i.i:                   ; preds = %do.end23.i.i.i.i, %do.end8.i.i.i.i
  %retval.0.i.in.i.i.i = phi i8 [ %291, %do.end8.i.i.i.i ], [ %294, %do.end23.i.i.i.i ]
  %retval.0.i.i.i.i = and i8 %retval.0.i.in.i.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i.i.i)
  %cmp8.not.i.i.i = icmp eq i8 %retval.0.i.i.i.i, 0
  br i1 %cmp8.not.i.i.i, label %npcm_i2c_fifo_usage.exit.i.i.i.if.end11.i.i.i_crit_edge, label %npcm_i2c_fifo_usage.exit.i.i.i.cleanup_crit_edge

npcm_i2c_fifo_usage.exit.i.i.i.cleanup_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

npcm_i2c_fifo_usage.exit.i.i.i.if.end11.i.i.i_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %npcm_i2c_fifo_usage.exit.i.i.i.if.end11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, %if.then3.i.i249.i.if.end11.i.i.i_crit_edge, %if.end.i.thread.i.i.if.end11.i.i.i_crit_edge
  %rd_size.i109.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %295 = ptrtoint ptr %rd_size.i109.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %rd_size.i109.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %296)
  %cmp13.i.i.i = icmp eq i16 %296, 0
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %if.else.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %297 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg.i, align 4
  %add.ptr.i81.i.i.i = getelementptr i8, ptr %298, i32 25
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i81.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %300 = or i8 %299, -128
  %301 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i82.i.i.i = getelementptr i8, ptr %302, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i82.i.i.i, i8 %300) #9, !srcloc !110
  %303 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i.i250.i = getelementptr i8, ptr %304, i32 6
  %305 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i.i250.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %306 = and i8 %305, -28
  %307 = or i8 %306, 8
  %308 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i.i251.i = getelementptr i8, ptr %309, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i251.i, i8 %307) #9, !srcloc !110
  %310 = ptrtoint ptr %state.i227.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 5, ptr %state.i227.i, align 4
  %stop_ind.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %311 = ptrtoint ptr %stop_ind.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 6, ptr %stop_ind.i.i.i, align 8
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %dev_id) #9
  %312 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %313, i8 -1) #9, !srcloc !110
  br label %cleanup

if.else.i.i.i:                                    ; preds = %if.end11.i.i.i
  %conv12.i.i.i = zext i16 %296 to i32
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %dev_id, i32 noundef %conv12.i.i.i, i32 noundef -1) #9
  %314 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %reg.i, align 4
  %add.ptr.i85.i.i.i = getelementptr i8, ptr %315, i32 6
  %316 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i85.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %317 = and i8 %316, -20
  %318 = or i8 %317, 1
  %319 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i86.i.i.i = getelementptr i8, ptr %320, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i86.i.i.i, i8 %318) #9, !srcloc !110
  %321 = ptrtoint ptr %rd_size.i109.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %rd_size.i109.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %322)
  %cmp20.i.i.i = icmp eq i16 %322, 1
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.else.i.i.i.if.end23.i.i.i_crit_edge

if.else.i.i.i.if.end23.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i.i

if.then22.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %323 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %reg.i, align 4
  %add.ptr.i88.i.i.i = getelementptr i8, ptr %324, i32 6
  %325 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i88.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %326 = and i8 %325, 108
  %327 = or i8 %326, -128
  %328 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i.i.i.i = getelementptr i8, ptr %329, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i.i.i, i8 %327) #9, !srcloc !110
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.else.i.i.i.if.end23.i.i.i_crit_edge
  %330 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 2, ptr %operation53.i.i, align 8
  %dest_addr.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 15
  %331 = ptrtoint ptr %dest_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %dest_addr.i.i.i, align 4
  %333 = or i8 %332, 1
  %334 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %335, i8 %333) #9, !srcloc !110
  br label %cleanup

if.else27.i.i.i:                                  ; preds = %if.end.i.i248.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %281)
  %cmp32.i.i.i = icmp eq i16 %281, 1
  %or.cond.i.i.i = select i1 %phi.cmp.i.i, i1 true, i1 %cmp32.i.i.i
  br i1 %or.cond.i.i.i, label %if.else27.i.i.i.if.then34.i.i.i_crit_edge, label %if.then44.i.i.i

if.else27.i.i.i.if.then34.i.i.i_crit_edge:        ; preds = %if.else27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i.i

if.then34.i.i.i:                                  ; preds = %if.else27.i.i.i.if.then34.i.i.i_crit_edge, %if.end.i.thread.i.i.if.then34.i.i.i_crit_edge
  %wr_ind.i150156.i.i = phi ptr [ %wr_ind.i.i247.i, %if.else27.i.i.i.if.then34.i.i.i_crit_edge ], [ %wr_ind.i147.i.i, %if.end.i.thread.i.i.if.then34.i.i.i_crit_edge ]
  %336 = phi i16 [ %279, %if.else27.i.i.i.if.then34.i.i.i_crit_edge ], [ %283, %if.end.i.thread.i.i.if.then34.i.i.i_crit_edge ]
  %wr_buf.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 19
  %337 = ptrtoint ptr %wr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %wr_buf.i.i.i, align 8
  %inc.i.i.i = add i16 %336, 1
  %339 = ptrtoint ptr %wr_ind.i150156.i.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 %inc.i.i.i, ptr %wr_ind.i150156.i.i, align 2
  %idxprom.i.i.i = zext i16 %336 to i32
  %arrayidx.i.i.i = getelementptr i8, ptr %338, i32 %idxprom.i.i.i
  %340 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx.i.i.i, align 1
  %342 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %343, i8 %341) #9, !srcloc !110
  br label %cleanup

if.then44.i.i.i:                                  ; preds = %if.else27.i.i.i
  %sub.i.i.i = sub i16 %281, %279
  %conv42.i.i.i = zext i16 %sub.i.i.i to i32
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %dev_id, i32 noundef -1, i32 noundef %conv42.i.i.i) #9
  %344 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %operation53.i.i, align 8
  %346 = zext i32 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %345, label %if.then44.i.i.i.npcm_i2c_fifo_usage.exit.i.i.i.i_crit_edge [
    i32 1, label %do.end8.i.i.i.i.i
    i32 2, label %do.end23.i.i.i.i.i
  ]

if.then44.i.i.i.npcm_i2c_fifo_usage.exit.i.i.i.i_crit_edge: ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_fifo_usage.exit.i.i.i.i

do.end8.i.i.i.i.i:                                ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %347 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %348, i32 26
  %349 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %350 = and i8 %349, 31
  br label %npcm_i2c_fifo_usage.exit.i.i.i.i

do.end23.i.i.i.i.i:                               ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %351 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i.i.i.i.i = getelementptr i8, ptr %352, i32 28
  %353 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %354 = and i8 %353, 31
  br label %npcm_i2c_fifo_usage.exit.i.i.i.i

npcm_i2c_fifo_usage.exit.i.i.i.i:                 ; preds = %do.end23.i.i.i.i.i, %do.end8.i.i.i.i.i, %if.then44.i.i.i.npcm_i2c_fifo_usage.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i8 [ %350, %do.end8.i.i.i.i.i ], [ %354, %do.end23.i.i.i.i.i ], [ 0, %if.then44.i.i.i.npcm_i2c_fifo_usage.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i.i)
  %tobool.not32.i.i.i.i = icmp eq i16 %sub.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %retval.0.i.i.i.i.i)
  %tobool4.not33.i.i.i.i = icmp eq i8 %retval.0.i.i.i.i.i, 16
  %or.cond34.i.i.i.i = select i1 %tobool.not32.i.i.i.i, i1 true, i1 %tobool4.not33.i.i.i.i
  br i1 %or.cond34.i.i.i.i, label %npcm_i2c_fifo_usage.exit.i.i.i.i.cleanup_crit_edge, label %while.body.lr.ph.i.i.i.i

npcm_i2c_fifo_usage.exit.i.i.i.i.cleanup_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i.i.i.i:                         ; preds = %npcm_i2c_fifo_usage.exit.i.i.i.i
  %wr_buf.i.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 19
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %npcm_i2c_fifo_usage.exit30.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i
  %dec35.in.i.i.i.i = phi i16 [ %sub.i.i.i, %while.body.lr.ph.i.i.i.i ], [ %dec35.i.i.i.i, %npcm_i2c_fifo_usage.exit30.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %dec35.i.i.i.i = add i16 %dec35.in.i.i.i.i, -1
  %355 = ptrtoint ptr %wr_ind.i.i247.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %wr_ind.i.i247.i, align 2
  %357 = ptrtoint ptr %wr_size.i107.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %wr_size.i107.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %356, i16 %358)
  %cmp.i.i.i.i = icmp ult i16 %356, %358
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i.i.i.i = zext i16 %356 to i32
  %359 = ptrtoint ptr %wr_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %wr_buf.i.i.i.i, align 8
  %inc.i.i.i.i = add nuw i16 %356, 1
  %361 = ptrtoint ptr %wr_ind.i.i247.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %inc.i.i.i.i, ptr %wr_ind.i.i247.i, align 2
  %arrayidx.i.i.i.i = getelementptr i8, ptr %360, i32 %conv5.i.i.i.i
  %362 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %364 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %365, i8 %363) #9, !srcloc !110
  br label %if.end.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %366 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %367, i8 -1) #9, !srcloc !110
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %368 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %operation53.i.i, align 8
  %370 = zext i32 %369 to i64
  call void @__sanitizer_cov_trace_switch(i64 %370, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %369, label %if.end.i.i.i.i.npcm_i2c_fifo_usage.exit30.i.i.i.i_crit_edge [
    i32 1, label %do.end8.i25.i.i.i.i
    i32 2, label %do.end23.i28.i.i.i.i
  ]

if.end.i.i.i.i.npcm_i2c_fifo_usage.exit30.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_fifo_usage.exit30.i.i.i.i

do.end8.i25.i.i.i.i:                              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %371 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %reg.i, align 4
  %add.ptr.i24.i.i.i.i = getelementptr i8, ptr %372, i32 26
  %373 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %374 = and i8 %373, 31
  br label %npcm_i2c_fifo_usage.exit30.i.i.i.i

do.end23.i28.i.i.i.i:                             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %375 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i27.i.i.i.i = getelementptr i8, ptr %376, i32 28
  %377 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i27.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %378 = and i8 %377, 31
  br label %npcm_i2c_fifo_usage.exit30.i.i.i.i

npcm_i2c_fifo_usage.exit30.i.i.i.i:               ; preds = %do.end23.i28.i.i.i.i, %do.end8.i25.i.i.i.i, %if.end.i.i.i.i.npcm_i2c_fifo_usage.exit30.i.i.i.i_crit_edge
  %retval.0.i29.i.i.i.i = phi i8 [ %374, %do.end8.i25.i.i.i.i ], [ %378, %do.end23.i28.i.i.i.i ], [ 0, %if.end.i.i.i.i.npcm_i2c_fifo_usage.exit30.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec35.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i16 %dec35.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %retval.0.i29.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i8 %retval.0.i29.i.i.i.i, 16
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i1 true, i1 %tobool4.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %npcm_i2c_fifo_usage.exit30.i.i.i.i.cleanup_crit_edge, label %npcm_i2c_fifo_usage.exit30.i.i.i.i.while.body.i.i.i.i_crit_edge

npcm_i2c_fifo_usage.exit30.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i.i

npcm_i2c_fifo_usage.exit30.i.i.i.i.cleanup_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else52.i.i:                                    ; preds = %if.else47.i.i
  %379 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 2, ptr %operation53.i.i, align 8
  %read_block_use.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 25
  %380 = ptrtoint ptr %read_block_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %read_block_use.i.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool.not.i110.i.i = icmp eq i8 %381, 0
  %PEC_use.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 24
  %382 = ptrtoint ptr %PEC_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %PEC_use.i.i.i, align 4, !range !111
  %narrow.i.i.i = add nuw nsw i8 %383, %381
  %rd_ind.i.i252.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 18
  %384 = ptrtoint ptr %rd_ind.i.i252.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %rd_ind.i.i252.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %385)
  %cmp.i111.i.i = icmp eq i16 %385, 0
  br i1 %cmp.i111.i.i, label %if.then.i112.i.i, label %if.else43.i.i.i

if.then.i112.i.i:                                 ; preds = %if.else52.i.i
  %386 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %reg.i, align 4
  br i1 %tobool.not.i110.i.i, label %if.else.i125.i.i, label %if.then8.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i112.i.i
  %388 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %387) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %389 = tail call i8 @llvm.umax.i8(i8 %388, i8 1) #9
  %390 = tail call i8 @llvm.umin.i8(i8 %389, i8 32) #9
  %narrow102.i.i.i = add nuw nsw i8 %390, %narrow.i.i.i
  %conv31.i.i.i = zext i8 %narrow102.i.i.i to i16
  %rd_size.i113.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %391 = ptrtoint ptr %rd_size.i113.i.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %conv31.i.i.i, ptr %rd_size.i113.i.i, align 4
  %rd_buf.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 16
  %392 = ptrtoint ptr %rd_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rd_buf.i.i.i, align 8
  %394 = ptrtoint ptr %rd_ind.i.i252.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %rd_ind.i.i252.i, align 2
  %inc.i114.i.i = add i16 %395, 1
  store i16 %inc.i114.i.i, ptr %rd_ind.i.i252.i, align 2
  %idxprom.i115.i.i = zext i16 %395 to i32
  %arrayidx.i116.i.i = getelementptr i8, ptr %393, i32 %idxprom.i115.i.i
  %396 = ptrtoint ptr %arrayidx.i116.i.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %390, ptr %arrayidx.i116.i.i, align 1
  %fifo_use.i117.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %397 = ptrtoint ptr %fifo_use.i117.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %fifo_use.i117.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool33.not.i.i.i = icmp eq i8 %398, 0
  br i1 %tobool33.not.i.i.i, label %if.then8.i.i.i.if.end.i123.i.i_crit_edge, label %if.then34.i119.i.i

if.then8.i.i.i.if.end.i123.i.i_crit_edge:         ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i123.i.i

if.then34.i119.i.i:                               ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %399 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %reg.i, align 4
  %add.ptr.i118.i.i = getelementptr i8, ptr %400, i32 16
  %401 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i118.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %402 = or i8 %401, 2
  %403 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %reg.i, align 4
  %add.ptr39.i.i.i = getelementptr i8, ptr %404, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39.i.i.i, i8 %402) #9, !srcloc !110
  br label %if.end.i123.i.i

if.end.i123.i.i:                                  ; preds = %if.then34.i119.i.i, %if.then8.i.i.i.if.end.i123.i.i_crit_edge
  %405 = ptrtoint ptr %rd_size.i113.i.i to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %rd_size.i113.i.i, align 4
  %conv41.i.i.i = zext i16 %406 to i32
  %sub.i120.i.i = add nsw i32 %conv41.i.i.i, -1
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %dev_id, i32 noundef %sub.i120.i.i, i32 noundef -1) #9
  %407 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i121.i.i = getelementptr i8, ptr %408, i32 6
  %409 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i121.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %410 = and i8 %409, 108
  %411 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i.i122.i.i = getelementptr i8, ptr %412, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i122.i.i, i8 %410) #9, !srcloc !110
  br label %cleanup

if.else.i125.i.i:                                 ; preds = %if.then.i112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i93.i.i.i = getelementptr i8, ptr %387, i32 26
  %413 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i93.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %414 = or i8 %413, 64
  %415 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i124.i.i = getelementptr i8, ptr %416, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i124.i.i, i8 %414) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_fifo_read(ptr noundef %dev_id) #9
  br label %cleanup

if.else43.i.i.i:                                  ; preds = %if.else52.i.i
  %rd_size44.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 17
  %417 = ptrtoint ptr %rd_size44.i.i.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %rd_size44.i.i.i, align 4
  %419 = zext i8 %narrow.i.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %418, i16 %419)
  %cmp47.i.i.i = icmp ne i16 %418, %419
  %brmerge.i.i.i = select i1 %cmp47.i.i.i, i1 true, i1 %tobool.not.i110.i.i
  br i1 %brmerge.i.i.i, label %if.else54.i.i.i, label %if.then52.i.i.i

if.then52.i.i.i:                                  ; preds = %if.else43.i.i.i
  %420 = ptrtoint ptr %state.i227.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 5, ptr %state.i227.i, align 4
  %stop_ind.i127.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %421 = ptrtoint ptr %stop_ind.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 10, ptr %stop_ind.i127.i.i, align 8
  %cmd_err.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 5
  %422 = ptrtoint ptr %cmd_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 -5, ptr %cmd_err.i.i.i, align 4
  %423 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %reg.i, align 4
  %add.ptr.i95.i.i.i = getelementptr i8, ptr %424, i32 25
  %425 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i95.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %426 = or i8 %425, -128
  %427 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i96.i.i.i = getelementptr i8, ptr %428, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i96.i.i.i, i8 %426) #9, !srcloc !110
  %429 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i128.i.i = getelementptr i8, ptr %430, i32 6
  %431 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i128.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %432 = and i8 %431, -28
  %433 = or i8 %432, 8
  %434 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i.i129.i.i = getelementptr i8, ptr %435, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i129.i.i, i8 %433) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %dev_id) #9
  %436 = ptrtoint ptr %operation53.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %operation53.i.i, align 8
  %438 = zext i32 %437 to i64
  call void @__sanitizer_cov_trace_switch(i64 %438, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %437, label %if.then52.i.i.i.cleanup_crit_edge [
    i32 1, label %do.end8.i.i131.i.i
    i32 2, label %do.end23.i.i133.i.i
  ]

if.then52.i.i.i.cleanup_crit_edge:                ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end8.i.i131.i.i:                               ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %439 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %reg.i, align 4
  %add.ptr.i98.i.i.i = getelementptr i8, ptr %440, i32 26
  %441 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i98.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i136.i.i

do.end23.i.i133.i.i:                              ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %442 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i.i132.i.i = getelementptr i8, ptr %443, i32 28
  %444 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i.i132.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i136.i.i

npcm_i2c_fifo_usage.exit.i136.i.i:                ; preds = %do.end23.i.i133.i.i, %do.end8.i.i131.i.i
  %retval.0.i.in.i134.i.i = phi i8 [ %441, %do.end8.i.i131.i.i ], [ %444, %do.end23.i.i133.i.i ]
  %retval.0.i.i135.i.i = and i8 %retval.0.i.in.i134.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i135.i.i)
  %tobool.not9.i.i.i.i = icmp eq i8 %retval.0.i.i135.i.i, 0
  br i1 %tobool.not9.i.i.i.i, label %npcm_i2c_fifo_usage.exit.i136.i.i.cleanup_crit_edge, label %while.body.lr.ph.i.i137.i.i

npcm_i2c_fifo_usage.exit.i136.i.i.cleanup_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit.i136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i.i137.i.i:                      ; preds = %npcm_i2c_fifo_usage.exit.i136.i.i
  %rd_buf.i.i.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 16
  br label %while.body.i.i139.i.i

while.body.i.i139.i.i:                            ; preds = %if.end.i.i144.i.i.while.body.i.i139.i.i_crit_edge, %while.body.lr.ph.i.i137.i.i
  %dec10.in.i.i.i.i = phi i8 [ %retval.0.i.i135.i.i, %while.body.lr.ph.i.i137.i.i ], [ %dec10.i.i.i.i, %if.end.i.i144.i.i.while.body.i.i139.i.i_crit_edge ]
  %dec10.i.i.i.i = add nsw i8 %dec10.in.i.i.i.i, -1
  %445 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %reg.i, align 4
  %447 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %446) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %448 = ptrtoint ptr %rd_ind.i.i252.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %rd_ind.i.i252.i, align 2
  %450 = ptrtoint ptr %rd_size44.i.i.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %rd_size44.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %449, i16 %451)
  %cmp.i.i138.i.i = icmp ult i16 %449, %451
  br i1 %cmp.i.i138.i.i, label %if.then.i.i142.i.i, label %while.body.i.i139.i.i.if.end.i.i144.i.i_crit_edge

while.body.i.i139.i.i.if.end.i.i144.i.i_crit_edge: ; preds = %while.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i144.i.i

if.then.i.i142.i.i:                               ; preds = %while.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i16 %449 to i32
  %452 = ptrtoint ptr %rd_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %rd_buf.i.i.i.i, align 8
  %inc.i.i140.i.i = add nuw i16 %449, 1
  %454 = ptrtoint ptr %rd_ind.i.i252.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 %inc.i.i140.i.i, ptr %rd_ind.i.i252.i, align 2
  %arrayidx.i.i141.i.i = getelementptr i8, ptr %453, i32 %conv.i.i.i.i
  %455 = ptrtoint ptr %arrayidx.i.i141.i.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %447, ptr %arrayidx.i.i141.i.i, align 1
  br label %if.end.i.i144.i.i

if.end.i.i144.i.i:                                ; preds = %if.then.i.i142.i.i, %while.body.i.i139.i.i.if.end.i.i144.i.i_crit_edge
  %tobool.not.i.i143.i.i = icmp eq i8 %dec10.i.i.i.i, 0
  br i1 %tobool.not.i.i143.i.i, label %if.end.i.i144.i.i.cleanup_crit_edge, label %if.end.i.i144.i.i.while.body.i.i139.i.i_crit_edge

if.end.i.i144.i.i.while.body.i.i139.i.i_crit_edge: ; preds = %if.end.i.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i139.i.i

if.end.i.i144.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else54.i.i.i:                                  ; preds = %if.else43.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @npcm_i2c_master_fifo_read(ptr noundef %dev_id) #9
  br label %cleanup

npcm_i2c_int_master_handler.exit:                 ; preds = %lor.lhs.false152.i.npcm_i2c_int_master_handler.exit_crit_edge, %lor.lhs.false.i.npcm_i2c_int_master_handler.exit_crit_edge
  br i1 %tobool124.not.i, label %npcm_i2c_int_master_handler.exit.if.end6_crit_edge, label %npcm_i2c_int_master_handler.exit.cleanup_crit_edge

npcm_i2c_int_master_handler.exit.cleanup_crit_edge: ; preds = %npcm_i2c_int_master_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

npcm_i2c_int_master_handler.exit.if.end6_crit_edge: ; preds = %npcm_i2c_int_master_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %npcm_i2c_int_master_handler.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 29
  %456 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %slave, align 4
  %tobool7.not = icmp eq ptr %457, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %458 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 1, ptr %master_or_slave1, align 4
  %459 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %460, i32 2
  %461 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i23 = zext i8 %461 to i32
  %and.i = and i32 %conv.i23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %if.then8.if.end8.i_crit_edge, label %if.then.i28

if.then8.if.end8.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i28:                                      ; preds = %if.then8
  %stop_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %462 = ptrtoint ptr %stop_ind.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 7, ptr %stop_ind.i, align 8
  %463 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %464, i32 26
  %465 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i25) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %466 = and i8 %465, 31
  %and.i.i26 = zext i8 %466 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %466)
  %cmp.i.i27 = icmp ugt i8 %466, 15
  br i1 %cmp.i.i27, label %if.then.i28.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge, label %lor.lhs.false.i.i29

if.then.i28.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge: ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_slave_wr_buf_sync.exit.i

lor.lhs.false.i.i29:                              ; preds = %if.then.i28
  %slv_wr_size.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 32
  %467 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %slv_wr_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %468)
  %cmp14.i.i = icmp sgt i32 %468, 15
  br i1 %cmp14.i.i, label %lor.lhs.false.i.i29.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge, label %if.end.i.i31

lor.lhs.false.i.i29.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_slave_wr_buf_sync.exit.i

if.end.i.i31:                                     ; preds = %lor.lhs.false.i.i29
  %slv_wr_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 33
  %469 = ptrtoint ptr %slv_wr_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %slv_wr_ind.i.i, align 4
  %sub.i.i30 = sub i32 %470, %and.i.i26
  store i32 %sub.i.i30, ptr %slv_wr_ind.i.i, align 4
  %add.i.i = add nsw i32 %468, %and.i.i26
  %471 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %add.i.i, ptr %slv_wr_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i30)
  %cmp20.i.i = icmp slt i32 %sub.i.i30, 0
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end.i.i31.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge

if.end.i.i31.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge: ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_slave_wr_buf_sync.exit.i

if.then22.i.i:                                    ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  %add24.i.i = add nsw i32 %sub.i.i30, 16
  %472 = ptrtoint ptr %slv_wr_ind.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %add24.i.i, ptr %slv_wr_ind.i.i, align 4
  br label %npcm_i2c_slave_wr_buf_sync.exit.i

npcm_i2c_slave_wr_buf_sync.exit.i:                ; preds = %if.then22.i.i, %if.end.i.i31.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge, %lor.lhs.false.i.i29.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge, %if.then.i28.npcm_i2c_slave_wr_buf_sync.exit.i_crit_edge
  %fifo_use.i32 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %473 = ptrtoint ptr %fifo_use.i32 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %fifo_use.i32, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %474)
  %tobool1.not.i = icmp eq i8 %474, 0
  br i1 %tobool1.not.i, label %npcm_i2c_slave_wr_buf_sync.exit.i.if.end.i_crit_edge, label %if.then2.i

npcm_i2c_slave_wr_buf_sync.exit.i.if.end.i_crit_edge: ; preds = %npcm_i2c_slave_wr_buf_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %npcm_i2c_slave_wr_buf_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %475 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %476, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 64) #9, !srcloc !110
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %npcm_i2c_slave_wr_buf_sync.exit.i.if.end.i_crit_edge
  %477 = ptrtoint ptr %stop_ind.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 0, ptr %stop_ind.i, align 8
  %operation.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %478 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 0, ptr %operation.i, align 8
  %own_slave_addr.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 28
  %479 = ptrtoint ptr %own_slave_addr.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 -1, ptr %own_slave_addr.i, align 8
  %480 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %reg.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %481, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 16) #9, !srcloc !110
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.then8.if.end8.i_crit_edge
  %ret.0.i33 = phi i32 [ 1, %if.end.i ], [ 0, %if.then8.if.end8.i_crit_edge ]
  %and10.i = and i32 %conv.i23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end25.i_crit_edge, label %if.then12.i

if.end8.i.if.end25.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then12.i:                                      ; preds = %if.end8.i
  %stop_ind13.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %482 = ptrtoint ptr %stop_ind13.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 8, ptr %stop_ind13.i, align 8
  %483 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %reg.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %484, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 64) #9, !srcloc !110
  %state.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %485 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 1, ptr %state.i, align 4
  %cmd_complete.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 4
  %call16.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_complete.i) #9
  br i1 %call16.i, label %if.then12.i.if.end21.i_crit_edge, label %if.then19.i

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_err.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 5
  %486 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 -5, ptr %cmd_err.i, align 4
  tail call void @complete(ptr noundef %cmd_complete.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then12.i.if.end21.i_crit_edge
  %own_slave_addr22.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 28
  %487 = ptrtoint ptr %own_slave_addr22.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 -1, ptr %own_slave_addr22.i, align 8
  %488 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %reg.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %489, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 32) #9, !srcloc !110
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end21.i, %if.end8.i.if.end25.i_crit_edge
  %ret.1.i = phi i32 [ 1, %if.end21.i ], [ %ret.0.i33, %if.end8.i.if.end25.i_crit_edge ]
  %and27.i = and i32 %conv.i23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end50.i_crit_edge, label %if.then29.i

if.end25.i.if.end50.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then29.i:                                      ; preds = %if.end25.i
  %operation.i.i34 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %490 = ptrtoint ptr %operation.i.i34 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %operation.i.i34, align 8
  %492 = zext i32 %491 to i64
  call void @__sanitizer_cov_trace_switch(i64 %492, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %491, label %npcm_i2c_fifo_usage.exit.thread.i [
    i32 1, label %do.end8.i.i
    i32 2, label %do.end23.i.i
  ]

npcm_i2c_fifo_usage.exit.thread.i:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %stop_ind31375.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %493 = ptrtoint ptr %stop_ind31375.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 5, ptr %stop_ind31375.i, align 8
  br label %if.end36.i

do.end8.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %494 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %reg.i, align 4
  %add.ptr.i298.i = getelementptr i8, ptr %495, i32 26
  %496 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i298.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i

do.end23.i.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %497 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %498, i32 28
  %499 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i

npcm_i2c_fifo_usage.exit.i:                       ; preds = %do.end23.i.i, %do.end8.i.i
  %retval.0.i.ph.in.i = phi i8 [ %499, %do.end23.i.i ], [ %496, %do.end8.i.i ]
  %retval.0.i.ph.i = and i8 %retval.0.i.ph.in.i, 31
  %500 = ptrtoint ptr %operation.i.i34 to i32
  call void @__asan_load4_noabort(i32 %500)
  %.pr.i = load i32, ptr %operation.i.i34, align 8
  %stop_ind31.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %501 = ptrtoint ptr %stop_ind31.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 5, ptr %stop_ind31.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp33.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp33.i, label %if.then35.i, label %npcm_i2c_fifo_usage.exit.i.if.end36.i_crit_edge

npcm_i2c_fifo_usage.exit.i.if.end36.i_crit_edge:  ; preds = %npcm_i2c_fifo_usage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then35.i:                                      ; preds = %npcm_i2c_fifo_usage.exit.i
  %502 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %slave, align 4
  %tobool.not.i.i35 = icmp eq ptr %503, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.ph.i)
  %tobool1.not24.i.i = icmp eq i8 %retval.0.i.ph.i, 0
  %or.cond.i.i = or i1 %tobool1.not24.i.i, %tobool.not.i.i35
  br i1 %or.cond.i.i, label %if.then35.i.if.end36.i_crit_edge, label %while.body.lr.ph.i.i

if.then35.i.if.end36.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

while.body.lr.ph.i.i:                             ; preds = %if.then35.i
  %slv_rd_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 31
  %read_block_use.i.i36 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 25
  %PEC_use.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 24
  %slv_rd_size.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 30
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end11.i.i40.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dec25.in.i.i = phi i8 [ %retval.0.i.ph.i, %while.body.lr.ph.i.i ], [ %dec25.i.i, %if.end11.i.i40.while.body.i.i_crit_edge ]
  %dec25.i.i = add nsw i8 %dec25.in.i.i, -1
  %504 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %reg.i, align 4
  %506 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %505) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %507 = ptrtoint ptr %slv_rd_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %slv_rd_ind.i.i, align 4
  %rem.i.i = srem i32 %508, 16
  store i32 %rem.i.i, ptr %slv_rd_ind.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.npcm_i2c, ptr %dev_id, i32 0, i32 34, i32 %rem.i.i
  %509 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %506, ptr %arrayidx.i.i, align 1
  %510 = load i32, ptr %slv_rd_ind.i.i, align 4
  %inc.i.i37 = add i32 %510, 1
  store i32 %inc.i.i37, ptr %slv_rd_ind.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %cmp.i299.i = icmp eq i32 %510, 0
  br i1 %cmp.i299.i, label %land.lhs.true.i.i38, label %while.body.i.i.if.end11.i.i40_crit_edge

while.body.i.i.if.end11.i.i40_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i40

land.lhs.true.i.i38:                              ; preds = %while.body.i.i
  %511 = ptrtoint ptr %read_block_use.i.i36 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %read_block_use.i.i36, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %tobool6.not.i.i = icmp eq i8 %512, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i38.if.end11.i.i40_crit_edge, label %if.then7.i.i

land.lhs.true.i.i38.if.end11.i.i40_crit_edge:     ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i40

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i39 = zext i8 %506 to i32
  %513 = ptrtoint ptr %PEC_use.i.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %PEC_use.i.i, align 4, !range !111
  %515 = zext i8 %514 to i32
  %add.i300.i = add nuw nsw i32 %conv.i.i39, 1
  %add10.i.i = add nuw nsw i32 %add.i300.i, %515
  %516 = ptrtoint ptr %slv_rd_size.i.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %add10.i.i, ptr %slv_rd_size.i.i, align 8
  br label %if.end11.i.i40

if.end11.i.i40:                                   ; preds = %if.then7.i.i, %land.lhs.true.i.i38.if.end11.i.i40_crit_edge, %while.body.i.i.if.end11.i.i40_crit_edge
  %tobool1.not.i.i = icmp eq i8 %dec25.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end11.i.i40.if.end36.i_crit_edge, label %if.end11.i.i40.while.body.i.i_crit_edge

if.end11.i.i40.while.body.i.i_crit_edge:          ; preds = %if.end11.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end11.i.i40.if.end36.i_crit_edge:              ; preds = %if.end11.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end11.i.i40.if.end36.i_crit_edge, %if.then35.i.if.end36.i_crit_edge, %npcm_i2c_fifo_usage.exit.i.if.end36.i_crit_edge, %npcm_i2c_fifo_usage.exit.thread.i
  %stop_ind31377.i = phi ptr [ %stop_ind31375.i, %npcm_i2c_fifo_usage.exit.thread.i ], [ %stop_ind31.i, %npcm_i2c_fifo_usage.exit.i.if.end36.i_crit_edge ], [ %stop_ind31.i, %if.then35.i.if.end36.i_crit_edge ], [ %stop_ind31.i, %if.end11.i.i40.if.end36.i_crit_edge ]
  tail call fastcc void @npcm_i2c_slave_send_rd_buf(ptr noundef %dev_id) #9
  %517 = ptrtoint ptr %stop_ind31377.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 0, ptr %stop_ind31377.i, align 8
  %518 = ptrtoint ptr %operation.i.i34 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 0, ptr %operation.i.i34, align 8
  %own_slave_addr39.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 28
  %519 = ptrtoint ptr %own_slave_addr39.i to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 -1, ptr %own_slave_addr39.i, align 8
  %520 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %slave, align 4
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %521, i32 0, i32 8
  %522 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %slave_cb.i.i, align 8
  %call.i.i = tail call i32 %523(ptr noundef %521, i32 noundef 4, ptr noundef null) #9
  %524 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %reg.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %525, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.i, i8 -128) #9, !srcloc !110
  %fifo_use43.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %526 = ptrtoint ptr %fifo_use43.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %fifo_use43.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %tobool44.not.i = icmp eq i8 %527, 0
  br i1 %tobool44.not.i, label %if.end36.i.if.end48.i_crit_edge, label %if.then45.i

if.end36.i.if.end48.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %528 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %reg.i, align 4
  %add.ptr.i302.i = getelementptr i8, ptr %529, i32 16
  %530 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i302.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %531 = and i8 %530, -128
  %532 = or i8 %531, 2
  %533 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %534, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 %532) #9, !srcloc !110
  %535 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %reg.i, align 4
  %add.ptr.i304.i = getelementptr i8, ptr %536, i32 28
  %537 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i304.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %538 = or i8 %537, 64
  %539 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i305.i = getelementptr i8, ptr %540, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i305.i, i8 %538) #9, !srcloc !110
  %541 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %reg.i, align 4
  %add.ptr.i307.i = getelementptr i8, ptr %542, i32 26
  %543 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i307.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %544 = or i8 %543, 64
  %545 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i308.i = getelementptr i8, ptr %546, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i308.i, i8 %544) #9, !srcloc !110
  %547 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %reg.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %548, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 64) #9, !srcloc !110
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.end36.i.if.end48.i_crit_edge
  %state49.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %549 = ptrtoint ptr %state49.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 1, ptr %state49.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end48.i, %if.end25.i.if.end50.i_crit_edge
  %ret.2.i = phi i32 [ 1, %if.end48.i ], [ %ret.1.i, %if.end25.i.if.end50.i_crit_edge ]
  %fifo_use51.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 22
  %550 = ptrtoint ptr %fifo_use51.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %fifo_use51.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %551)
  %tobool52.not.i = icmp eq i8 %551, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end85.i_crit_edge, label %do.end65.i

if.end50.i.if.end85.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

do.end65.i:                                       ; preds = %if.end50.i
  %552 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %reg.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %553, i32 16
  %554 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr67.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %554)
  %tobool71.not.i = icmp sgt i8 %554, -1
  br i1 %tobool71.not.i, label %do.end65.i.if.end85.i_crit_edge, label %if.then72.i

do.end65.i.if.end85.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then72.i:                                      ; preds = %do.end65.i
  %stop_ind73.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %555 = ptrtoint ptr %stop_ind73.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 4, ptr %stop_ind73.i, align 8
  %556 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 1, ptr %master_or_slave1, align 4
  %operation74.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %557 = ptrtoint ptr %operation74.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %operation74.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %558)
  %cmp75.i = icmp eq i32 %558, 2
  br i1 %cmp75.i, label %npcm_i2c_fifo_usage.exit317.i, label %if.then72.i.if.end79.i_crit_edge

if.then72.i.if.end79.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

npcm_i2c_fifo_usage.exit317.i:                    ; preds = %if.then72.i
  %559 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i314.i = getelementptr i8, ptr %560, i32 28
  %561 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i314.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %562 = and i8 %561, 31
  %563 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %slave, align 4
  %tobool.not.i319.i = icmp eq ptr %564, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %tobool1.not24.i320.i = icmp eq i8 %562, 0
  %or.cond.i321.i = or i1 %tobool1.not24.i320.i, %tobool.not.i319.i
  br i1 %or.cond.i321.i, label %npcm_i2c_fifo_usage.exit317.i.if.end79.i_crit_edge, label %while.body.lr.ph.i327.i

npcm_i2c_fifo_usage.exit317.i.if.end79.i_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit317.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

while.body.lr.ph.i327.i:                          ; preds = %npcm_i2c_fifo_usage.exit317.i
  %slv_rd_ind.i323.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 31
  %read_block_use.i324.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 25
  %PEC_use.i325.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 24
  %slv_rd_size.i326.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 30
  br label %while.body.i334.i

while.body.i334.i:                                ; preds = %if.end11.i342.i.while.body.i334.i_crit_edge, %while.body.lr.ph.i327.i
  %dec25.in.i328.i = phi i8 [ %562, %while.body.lr.ph.i327.i ], [ %dec25.i329.i, %if.end11.i342.i.while.body.i334.i_crit_edge ]
  %dec25.i329.i = add nsw i8 %dec25.in.i328.i, -1
  %565 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %reg.i, align 4
  %567 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %566) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %568 = ptrtoint ptr %slv_rd_ind.i323.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %slv_rd_ind.i323.i, align 4
  %rem.i330.i = srem i32 %569, 16
  store i32 %rem.i330.i, ptr %slv_rd_ind.i323.i, align 4
  %arrayidx.i331.i = getelementptr %struct.npcm_i2c, ptr %dev_id, i32 0, i32 34, i32 %rem.i330.i
  %570 = ptrtoint ptr %arrayidx.i331.i to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 %567, ptr %arrayidx.i331.i, align 1
  %571 = load i32, ptr %slv_rd_ind.i323.i, align 4
  %inc.i332.i = add i32 %571, 1
  store i32 %inc.i332.i, ptr %slv_rd_ind.i323.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %cmp.i333.i = icmp eq i32 %571, 0
  br i1 %cmp.i333.i, label %land.lhs.true.i336.i, label %while.body.i334.i.if.end11.i342.i_crit_edge

while.body.i334.i.if.end11.i342.i_crit_edge:      ; preds = %while.body.i334.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i342.i

land.lhs.true.i336.i:                             ; preds = %while.body.i334.i
  %572 = ptrtoint ptr %read_block_use.i324.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %read_block_use.i324.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %573)
  %tobool6.not.i335.i = icmp eq i8 %573, 0
  br i1 %tobool6.not.i335.i, label %land.lhs.true.i336.i.if.end11.i342.i_crit_edge, label %if.then7.i340.i

land.lhs.true.i336.i.if.end11.i342.i_crit_edge:   ; preds = %land.lhs.true.i336.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i342.i

if.then7.i340.i:                                  ; preds = %land.lhs.true.i336.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i337.i = zext i8 %567 to i32
  %574 = ptrtoint ptr %PEC_use.i325.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %PEC_use.i325.i, align 4, !range !111
  %576 = zext i8 %575 to i32
  %add.i338.i = add nuw nsw i32 %conv.i337.i, 1
  %add10.i339.i = add nuw nsw i32 %add.i338.i, %576
  %577 = ptrtoint ptr %slv_rd_size.i326.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %add10.i339.i, ptr %slv_rd_size.i326.i, align 8
  br label %if.end11.i342.i

if.end11.i342.i:                                  ; preds = %if.then7.i340.i, %land.lhs.true.i336.i.if.end11.i342.i_crit_edge, %while.body.i334.i.if.end11.i342.i_crit_edge
  %tobool1.not.i341.i = icmp eq i8 %dec25.i329.i, 0
  br i1 %tobool1.not.i341.i, label %if.end11.i342.i.if.end79.i_crit_edge, label %if.end11.i342.i.while.body.i334.i_crit_edge

if.end11.i342.i.while.body.i334.i_crit_edge:      ; preds = %if.end11.i342.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i334.i

if.end11.i342.i.if.end79.i_crit_edge:             ; preds = %if.end11.i342.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end11.i342.i.if.end79.i_crit_edge, %npcm_i2c_fifo_usage.exit317.i.if.end79.i_crit_edge, %if.then72.i.if.end79.i_crit_edge
  %578 = ptrtoint ptr %operation74.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 1, ptr %operation74.i, align 8
  %579 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %reg.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %580, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82.i, i8 0) #9, !srcloc !110
  %581 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %reg.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %582, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84.i, i8 -62) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_slave_rd_wr(ptr noundef %dev_id) #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end79.i, %do.end65.i.if.end85.i_crit_edge, %if.end50.i.if.end85.i_crit_edge
  %ret.3.i = phi i32 [ 1, %if.end79.i ], [ %ret.2.i, %do.end65.i.if.end85.i_crit_edge ], [ %ret.2.i, %if.end50.i.if.end85.i_crit_edge ]
  %and87.i = and i32 %conv.i23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end85.i.if.end190.i_crit_edge, label %if.then89.i

if.end85.i.if.end190.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190.i

if.then89.i:                                      ; preds = %if.end85.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info.i) #9
  %583 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 0, ptr %info.i, align 1
  %584 = ptrtoint ptr %master_or_slave1 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 1, ptr %master_or_slave1, align 4
  %585 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %reg.i, align 4
  %add.ptr.i345.i = getelementptr i8, ptr %586, i32 16
  %587 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i345.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %588 = and i8 %587, -128
  %589 = or i8 %588, 2
  %590 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i346.i = getelementptr i8, ptr %591, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i346.i, i8 %589) #9, !srcloc !110
  %592 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %reg.i, align 4
  %add.ptr.i348.i = getelementptr i8, ptr %593, i32 28
  %594 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i348.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %595 = or i8 %594, 64
  %596 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i349.i = getelementptr i8, ptr %597, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i349.i, i8 %595) #9, !srcloc !110
  %598 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %reg.i, align 4
  %add.ptr.i351.i = getelementptr i8, ptr %599, i32 26
  %600 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i351.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %601 = or i8 %600, 64
  %602 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i352.i = getelementptr i8, ptr %603, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i352.i, i8 %601) #9, !srcloc !110
  %604 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %reg.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %605, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92.i, i8 0) #9, !srcloc !110
  %606 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %reg.i, align 4
  %add.ptr94.i = getelementptr i8, ptr %607, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94.i, i8 16) #9, !srcloc !110
  %and96.i = and i32 %conv.i23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.else.i, label %if.then89.i.if.end103.i_crit_edge

if.then89.i.if.end103.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

if.else.i:                                        ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  %608 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %slave, align 4
  %slave_cb.i353.i = getelementptr inbounds %struct.i2c_client, ptr %609, i32 0, i32 8
  %610 = ptrtoint ptr %slave_cb.i353.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %slave_cb.i353.i, align 8
  %call.i354.i = call i32 %611(ptr noundef %609, i32 noundef 1, ptr noundef nonnull %info.i) #9
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else.i, %if.then89.i.if.end103.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.else.i ], [ 1, %if.then89.i.if.end103.i_crit_edge ]
  %612 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 12
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %.sink.i, ptr %612, align 8
  %own_slave_addr104.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 28
  %614 = ptrtoint ptr %own_slave_addr104.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %own_slave_addr104.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %615)
  %cmp106.i = icmp eq i8 %615, -1
  br i1 %cmp106.i, label %if.then108.i, label %if.end103.i.if.end178.i_crit_edge

if.end103.i.if.end178.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178.i

if.then108.i:                                     ; preds = %if.end103.i
  %616 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %reg.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %617, i32 4
  %618 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv112.i = zext i8 %618 to i32
  %and113.i = and i32 %conv112.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %if.else146.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.then108.i
  %619 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %reg.i, align 4
  %add.ptr117.i = getelementptr i8, ptr %620, i32 25
  %621 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr117.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %622 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %reg.i, align 4
  %add.ptr120.i = getelementptr i8, ptr %623, i32 24
  %624 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr120.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %625 = and i8 %621, 7
  %and123.i = zext i8 %625 to i32
  %shl.i = shl nuw nsw i32 %and123.i, 7
  %626 = and i8 %624, 127
  %and125.i = zext i8 %626 to i32
  %or.i = or i32 %shl.i, %and125.i
  %627 = call i32 @llvm.cttz.i32(i32 %or.i, i1 true) #9, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %iszero.i = icmp eq i32 %or.i, 0
  %628 = trunc i32 %627 to i8
  %629 = add nuw nsw i8 %628, 1
  %conv128.i = select i1 %iszero.i, i8 0, i8 %629
  %630 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 %conv128.i, ptr %info.i, align 1
  %conv129.i = zext i8 %conv128.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv128.i)
  %cmp.i355.i = icmp ugt i8 %conv128.i, 1
  br i1 %cmp.i355.i, label %if.then.i.i43, label %if.then115.i.if.end.i360.i_crit_edge

if.then115.i.if.end.i360.i_crit_edge:             ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i360.i

if.then.i.i43:                                    ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  %631 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %632, i32 14
  %633 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i41) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %634 = and i8 %633, -33
  %635 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i.i42 = getelementptr i8, ptr %636, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i42, i8 %634) #9, !srcloc !110
  br label %if.end.i360.i

if.end.i360.i:                                    ; preds = %if.then.i.i43, %if.then115.i.if.end.i360.i_crit_edge
  %637 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %reg.i, align 4
  %arrayidx.i358.i = getelementptr [10 x i32], ptr @npcm_i2caddr, i32 0, i32 %conv129.i
  %639 = ptrtoint ptr %arrayidx.i358.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %arrayidx.i358.i, align 4
  %add.ptr.i359.i = getelementptr i8, ptr %638, i32 %640
  %641 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i359.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br i1 %cmp.i355.i, label %if.then2.i.i45, label %if.end.i360.i.npcm_i2c_get_slave_addr.exit.i_crit_edge

if.end.i360.i.npcm_i2c_get_slave_addr.exit.i_crit_edge: ; preds = %if.end.i360.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_get_slave_addr.exit.i

if.then2.i.i45:                                   ; preds = %if.end.i360.i
  call void @__sanitizer_cov_trace_pc() #11
  %642 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %643, i32 14
  %644 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i9.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i.i44 = or i8 %644, 32
  %645 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i10.i.i = getelementptr i8, ptr %646, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i10.i.i, i8 %i2cctl3.0.i.i.i44) #9, !srcloc !110
  br label %npcm_i2c_get_slave_addr.exit.i

npcm_i2c_get_slave_addr.exit.i:                   ; preds = %if.then2.i.i45, %if.end.i360.i.npcm_i2c_get_slave_addr.exit.i_crit_edge
  %647 = and i8 %641, 127
  %648 = ptrtoint ptr %own_slave_addr104.i to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 %647, ptr %own_slave_addr104.i, align 8
  %PEC_mask.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 23
  %649 = ptrtoint ptr %PEC_mask.i to i32
  call void @__asan_load2_noabort(i32 %649)
  %650 = load i16, ptr %PEC_mask.i, align 2
  %conv137.i = zext i16 %650 to i32
  %651 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %info.i, align 1
  %conv138.i = zext i8 %652 to i32
  %shl139.i = shl nuw i32 1, %conv138.i
  %and140.i = and i32 %shl139.i, %conv137.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  %PEC_use144.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 24
  br i1 %tobool141.not.i, label %if.else143.i, label %if.then142.i

if.then142.i:                                     ; preds = %npcm_i2c_get_slave_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %653 = ptrtoint ptr %PEC_use144.i to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 1, ptr %PEC_use144.i, align 4
  br label %if.end178.i

if.else143.i:                                     ; preds = %npcm_i2c_get_slave_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %654 = ptrtoint ptr %PEC_use144.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 0, ptr %PEC_use144.i, align 4
  br label %if.end178.i

if.else146.i:                                     ; preds = %if.then108.i
  %655 = and i32 %conv112.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %655)
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %if.else146.i.if.end178.i_crit_edge, label %657

if.else146.i.if.end178.i_crit_edge:               ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178.i

657:                                              ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #11
  %and154.i = and i32 %conv112.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  %spec.select.i = select i1 %tobool155.not.i, i8 0, i8 97
  %658 = ptrtoint ptr %own_slave_addr104.i to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %spec.select.i, ptr %own_slave_addr104.i, align 8
  br label %if.end178.i

if.end178.i:                                      ; preds = %657, %if.else146.i.if.end178.i_crit_edge, %if.else143.i, %if.then142.i, %if.end103.i.if.end178.i_crit_edge
  %spec.select379.i = select i1 %tobool97.not.i, i32 1, i32 2
  %659 = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 14
  %660 = ptrtoint ptr %659 to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 %spec.select379.i, ptr %659, align 8
  %state187.i = getelementptr inbounds %struct.npcm_i2c, ptr %dev_id, i32 0, i32 11
  %661 = ptrtoint ptr %state187.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 3, ptr %state187.i, align 4
  call fastcc void @npcm_i2c_slave_rd_wr(ptr noundef %dev_id) #9
  %662 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %reg.i, align 4
  %add.ptr189.i = getelementptr i8, ptr %663, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr189.i, i8 4) #9, !srcloc !110
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %info.i) #9
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.end178.i, %if.end85.i.if.end190.i_crit_edge
  %ret.4.i = phi i32 [ 1, %if.end178.i ], [ %ret.3.i, %if.end85.i.if.end190.i_crit_edge ]
  %and192.i = and i32 %conv.i23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %lor.lhs.false194.i, label %if.end190.i.if.then204.i_crit_edge

if.end190.i.if.then204.i_crit_edge:               ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204.i

lor.lhs.false194.i:                               ; preds = %if.end190.i
  %664 = ptrtoint ptr %fifo_use51.i to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %fifo_use51.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %665)
  %tobool196.not.i = icmp eq i8 %665, 0
  br i1 %tobool196.not.i, label %lor.lhs.false194.i.cleanup_crit_edge, label %land.lhs.true198.i

lor.lhs.false194.i.cleanup_crit_edge:             ; preds = %lor.lhs.false194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true198.i:                               ; preds = %lor.lhs.false194.i
  %666 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %reg.i, align 4
  %add.ptr.i362.i = getelementptr i8, ptr %667, i32 26
  %668 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i362.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i363.i = zext i8 %668 to i32
  %and.i364.i = and i32 %conv.i363.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i364.i)
  %cmp.i365.i = icmp ne i32 %and.i364.i, 0
  %669 = and i32 %conv.i363.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %669)
  %tobool.i.i46 = icmp ne i32 %669, 0
  %retval.0.i366.i = and i1 %cmp.i365.i, %tobool.i.i46
  br i1 %retval.0.i366.i, label %land.lhs.true198.i.if.then204.i_crit_edge, label %lor.lhs.false201.i

land.lhs.true198.i.if.then204.i_crit_edge:        ; preds = %land.lhs.true198.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204.i

lor.lhs.false201.i:                               ; preds = %land.lhs.true198.i
  %670 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %reg.i, align 4
  %add.ptr.i368.i = getelementptr i8, ptr %671, i32 28
  %672 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i368.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv.i369.i = zext i8 %672 to i32
  %and.i370.i = and i32 %conv.i369.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i370.i)
  %cmp.i371.i = icmp ne i32 %and.i370.i, 0
  %673 = and i32 %conv.i369.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %673)
  %tobool.i372.i = icmp ne i32 %673, 0
  %retval.0.i373.i = and i1 %cmp.i371.i, %tobool.i372.i
  br i1 %retval.0.i373.i, label %lor.lhs.false201.i.if.then204.i_crit_edge, label %lor.lhs.false201.i.cleanup_crit_edge

lor.lhs.false201.i.cleanup_crit_edge:             ; preds = %lor.lhs.false201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false201.i.if.then204.i_crit_edge:        ; preds = %lor.lhs.false201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204.i

if.then204.i:                                     ; preds = %lor.lhs.false201.i.if.then204.i_crit_edge, %land.lhs.true198.i.if.then204.i_crit_edge, %if.end190.i.if.then204.i_crit_edge
  call fastcc void @npcm_i2c_slave_rd_wr(ptr noundef %dev_id) #9
  %674 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %reg.i, align 4
  %add.ptr206.i = getelementptr i8, ptr %675, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr206.i, i8 64) #9, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.then204.i, %lor.lhs.false201.i.cleanup_crit_edge, %lor.lhs.false194.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %npcm_i2c_int_master_handler.exit.cleanup_crit_edge, %if.else54.i.i.i, %if.end.i.i144.i.i.cleanup_crit_edge, %npcm_i2c_fifo_usage.exit.i136.i.i.cleanup_crit_edge, %if.then52.i.i.i.cleanup_crit_edge, %if.else.i125.i.i, %if.end.i123.i.i, %npcm_i2c_fifo_usage.exit30.i.i.i.i.cleanup_crit_edge, %npcm_i2c_fifo_usage.exit.i.i.i.i.cleanup_crit_edge, %if.then34.i.i.i, %if.end23.i.i.i, %if.then15.i.i.i, %npcm_i2c_fifo_usage.exit.i.i.i.cleanup_crit_edge, %if.else41.i.i, %if.then40.i.i, %if.then155.i.cleanup_crit_edge, %if.then103.i, %npcm_i2c_irq_handle_ber.exit.i, %npcm_i2c_irq_handle_nack.exit.i, %if.then49.i.i.i, %sw.epilog.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %npcm_i2c_int_master_handler.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 1, %if.then204.i ], [ %ret.4.i, %lor.lhs.false201.i.cleanup_crit_edge ], [ %ret.4.i, %lor.lhs.false194.i.cleanup_crit_edge ], [ 1, %npcm_i2c_irq_handle_nack.exit.i ], [ 1, %npcm_i2c_irq_handle_ber.exit.i ], [ 1, %if.then103.i ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end.i.i.i.cleanup_crit_edge ], [ 1, %sw.epilog.i.i.i.cleanup_crit_edge ], [ 1, %if.then49.i.i.i ], [ 1, %if.then155.i.cleanup_crit_edge ], [ 1, %if.then40.i.i ], [ 1, %if.else41.i.i ], [ 1, %npcm_i2c_fifo_usage.exit.i.i.i.cleanup_crit_edge ], [ 1, %if.then15.i.i.i ], [ 1, %if.end23.i.i.i ], [ 1, %if.then34.i.i.i ], [ 1, %npcm_i2c_fifo_usage.exit.i.i.i.i.cleanup_crit_edge ], [ 1, %if.end.i123.i.i ], [ 1, %if.else.i125.i.i ], [ 1, %if.then52.i.i.i.cleanup_crit_edge ], [ 1, %npcm_i2c_fifo_usage.exit.i136.i.i.cleanup_crit_edge ], [ 1, %if.else54.i.i.i ], [ 1, %if.end.i.i144.i.i.cleanup_crit_edge ], [ 1, %npcm_i2c_fifo_usage.exit30.i.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__npcm_i2c_init(ptr noundef %bus, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %clk_freq_hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq_hz) #9
  %0 = ptrtoint ptr %clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_freq_hz, align 4, !annotation !113
  %state = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %master_or_slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 13
  %2 = ptrtoint ptr %master_or_slave to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %master_or_slave, align 4
  %int_time_stamp = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 26
  %3 = ptrtoint ptr %int_time_stamp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %int_time_stamp, align 8
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %clk_freq_hz, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.endthread-pre-split, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  %5 = ptrtoint ptr %clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100000, ptr %clk_freq_hz, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %clk_freq_hz, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %do.end
  %7 = phi i32 [ %.pr, %if.endthread-pre-split ], [ 100000, %do.end ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.i = icmp ugt i32 %9, 1
  %10 = add i32 %7, -1000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -990001, i32 %10)
  %11 = icmp ult i32 %10, -990001
  %or.cond.i = or i1 %11, %switch.i
  br i1 %or.cond.i, label %if.end.do.end7_crit_edge, label %if.end.i

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  call fastcc void @npcm_i2c_disable(ptr noundef %bus) #9
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 31
  %14 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i = icmp sgt i8 %14, -1
  %fifo_use26.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 22
  br i1 %tobool.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %fifo_use26.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %fifo_use26.i, align 8
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 14
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %19 = and i8 %18, -33
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %21, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %19) #9, !srcloc !110
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %23, i32 29
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %25 = or i8 %24, 16
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %27, i32 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i, i8 %25) #9, !srcloc !110
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %29, i32 14
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i = or i8 %30, 32
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i3.i = getelementptr i8, ptr %32, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i3.i, i8 %i2cctl3.0.i.i) #9, !srcloc !110
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %fifo_use26.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %fifo_use26.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then18.i
  %apb_clk.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 9
  %34 = ptrtoint ptr %apb_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %apb_clk.i.i, align 4
  %div.i.i = udiv i32 %35, 1000
  %bus_freq.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 27
  %36 = ptrtoint ptr %bus_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %7, ptr %bus_freq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 100001
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else13.i.i

if.then.i.i:                                      ; preds = %if.end27.i
  %div1.i.i = udiv i32 %7, 1000
  %mul.i.i = shl nuw nsw i32 %div1.i.i, 2
  %div2.i.i = udiv i32 %div.i.i, %mul.i.i
  %37 = add nsw i32 %div2.i.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -502, i32 %37)
  %38 = icmp ult i32 %37, -502
  br i1 %38, label %if.then.i.i.do.end33.i_crit_edge, label %if.end.i.i

if.then.i.i.do.end33.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 39999999, i32 %35)
  %cmp6.i.i = icmp ugt i32 %35, 39999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499999, i32 %35)
  %cmp8.i.i = icmp ugt i32 %35, 12499999
  %..i.i = select i1 %cmp8.i.i, i8 15, i8 7
  %hldt.0.ph237.i.i = select i1 %cmp6.i.i, i8 17, i8 %..i.i
  br label %do.body95.i.i

if.else13.i.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %7)
  %cmp14.i.i = icmp ult i32 %7, 400001
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.then41.i.i

if.then15.i.i:                                    ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500000, i32 %35)
  %cmp16.i.i = icmp ult i32 %35, 7500000
  br i1 %cmp16.i.i, label %if.then15.i.i.do.end33.i_crit_edge, label %if.else18.i.i

if.then15.i.i.do.end33.i_crit_edge:               ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

if.else18.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999999, i32 %35)
  %cmp19.i.i = icmp ugt i32 %35, 49999999
  br i1 %cmp19.i.i, label %if.else18.i.i.if.end68.i.i_crit_edge, label %if.else21.i.i

if.else18.i.i.if.end68.i.i_crit_edge:             ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

if.else21.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000999, i32 %35)
  %cmp22.i.i = icmp ugt i32 %35, 25000999
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.else21.i.i.if.end68.i.i_crit_edge

if.else21.i.i.if.end68.i.i_crit_edge:             ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

if.then23.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul24.i.i = mul nuw nsw i32 %div.i.i, 300
  %sub.i.i = add nuw nsw i32 %mul24.i.i, 999999
  %div25.i.i = udiv i32 %sub.i.i, 1000000
  %39 = trunc i32 %div25.i.i to i8
  %conv.i.i = add i8 %39, 7
  %mul27.i.i = mul i32 %div.i.i, 1600
  %sub29.i.i = add i32 %mul27.i.i, 999999
  %div30.i.i = udiv i32 %sub29.i.i, 1000000
  %mul31.i.i = mul nuw i32 %div.i.i, 900
  %sub33.i.i = add nuw i32 %mul31.i.i, 999999
  %div34.i.i = udiv i32 %sub33.i.i, 1000000
  br label %if.end68.i.i

if.then41.i.i:                                    ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %35)
  %cmp42.i.i = icmp ult i32 %35, 24000000
  br i1 %cmp42.i.i, label %if.then41.i.i.do.end33.i_crit_edge, label %if.end45.i.i

if.then41.i.i.do.end33.i_crit_edge:               ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

if.end45.i.i:                                     ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul46.i.i = mul nuw i32 %div.i.i, 620
  %sub48.i.i = add nuw i32 %mul46.i.i, 999999
  %div49.i.i = udiv i32 %sub48.i.i, 1000000
  %mul50.i.i = mul nuw nsw i32 %div.i.i, 380
  %sub52.i.i = add nuw nsw i32 %mul50.i.i, 999999
  %div53.i.i = udiv i32 %sub52.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000999, i32 %35)
  %cmp54.i.i = icmp ugt i32 %35, 40000999
  %mul57.i.i = mul nuw nsw i32 %div.i.i, 120
  %sub59.i.i = add nuw nsw i32 %mul57.i.i, 999999
  %div60.i.i = udiv i32 %sub59.i.i, 1000000
  %40 = trunc i32 %div60.i.i to i8
  %conv62.i.i = add i8 %40, 7
  %dbnct.0.ph.i.i = select i1 %cmp54.i.i, i8 0, i8 2
  %hldt.0.ph.i.i = select i1 %cmp54.i.i, i8 %conv62.i.i, i8 7
  br label %if.then71.i.i

if.end68.i.i:                                     ; preds = %if.then23.i.i, %if.else21.i.i.if.end68.i.i_crit_edge, %if.else18.i.i.if.end68.i.i_crit_edge
  %k2.0.i.i = phi i32 [ %div34.i.i, %if.then23.i.i ], [ 0, %if.else21.i.i.if.end68.i.i_crit_edge ], [ 48, %if.else18.i.i.if.end68.i.i_crit_edge ]
  %dbnct.0.i.i = phi i8 [ 0, %if.then23.i.i ], [ 0, %if.else21.i.i.if.end68.i.i_crit_edge ], [ 7, %if.else18.i.i.if.end68.i.i_crit_edge ]
  %hldt.0.i.i = phi i8 [ %conv.i.i, %if.then23.i.i ], [ 7, %if.else21.i.i.if.end68.i.i_crit_edge ], [ 12, %if.else18.i.i.if.end68.i.i_crit_edge ]
  %k1.0.i.i = phi i32 [ %div30.i.i, %if.then23.i.i ], [ 0, %if.else21.i.i.if.end68.i.i_crit_edge ], [ 80, %if.else18.i.i.if.end68.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %7)
  %cmp69.i.i = icmp ugt i32 %7, 399999
  br i1 %cmp69.i.i, label %if.end68.i.i.if.then71.i.i_crit_edge, label %if.end68.i.i.do.body95.i.i_crit_edge

if.end68.i.i.do.body95.i.i_crit_edge:             ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i.i

if.end68.i.i.if.then71.i.i_crit_edge:             ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.end68.i.i.if.then71.i.i_crit_edge, %if.end45.i.i
  %k1.0233.i.i = phi i32 [ %div49.i.i, %if.end45.i.i ], [ %k1.0.i.i, %if.end68.i.i.if.then71.i.i_crit_edge ]
  %hldt.0230.i.i = phi i8 [ %hldt.0.ph.i.i, %if.end45.i.i ], [ %hldt.0.i.i, %if.end68.i.i.if.then71.i.i_crit_edge ]
  %dbnct.0226.i.i = phi i8 [ %dbnct.0.ph.i.i, %if.end45.i.i ], [ %dbnct.0.i.i, %if.end68.i.i.if.then71.i.i_crit_edge ]
  %k2.0224.i.i = phi i32 [ %div53.i.i, %if.end45.i.i ], [ %k2.0.i.i, %if.end68.i.i.if.then71.i.i_crit_edge ]
  %sub72.i.i = add nsw i32 %k1.0233.i.i, -1
  %or.i.i = or i32 %sub72.i.i, 1
  %add73.i.i = add nsw i32 %or.i.i, 1
  %or76.i.i = or i32 %k2.0224.i.i, 1
  %add77.i.i = add nuw nsw i32 %or76.i.i, 1
  %41 = add nsw i32 %or.i.i, -511
  call void @__sanitizer_cov_trace_const_cmp4(i32 -502, i32 %41)
  %42 = icmp ult i32 %41, -502
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %or76.i.i)
  %cmp84.i.i = icmp ult i32 %or76.i.i, 9
  %or.cond212.i.i = select i1 %42, i1 true, i1 %cmp84.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %or76.i.i)
  %cmp87.i.i = icmp ugt i32 %or76.i.i, 510
  %or.cond213.i.i = select i1 %or.cond212.i.i, i1 true, i1 %cmp87.i.i
  br i1 %or.cond213.i.i, label %if.then71.i.i.do.end33.i_crit_edge, label %if.then71.i.i.do.body95.i.i_crit_edge

if.then71.i.i.do.body95.i.i_crit_edge:            ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i.i

if.then71.i.i.do.end33.i_crit_edge:               ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

do.body95.i.i:                                    ; preds = %if.then71.i.i.do.body95.i.i_crit_edge, %if.end68.i.i.do.body95.i.i_crit_edge, %if.end.i.i
  %cmp69234.i.i = phi i1 [ false, %if.end68.i.i.do.body95.i.i_crit_edge ], [ true, %if.then71.i.i.do.body95.i.i_crit_edge ], [ false, %if.end.i.i ]
  %fast_mode.0231.i.i = phi i32 [ 16, %if.end68.i.i.do.body95.i.i_crit_edge ], [ 16, %if.then71.i.i.do.body95.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %hldt.0229.i.i = phi i8 [ %hldt.0.i.i, %if.end68.i.i.do.body95.i.i_crit_edge ], [ %hldt.0230.i.i, %if.then71.i.i.do.body95.i.i_crit_edge ], [ %hldt.0.ph237.i.i, %if.end.i.i ]
  %sclfrq.0227.i.i = phi i32 [ 0, %if.end68.i.i.do.body95.i.i_crit_edge ], [ 0, %if.then71.i.i.do.body95.i.i_crit_edge ], [ %div2.i.i, %if.end.i.i ]
  %dbnct.0225.i.i = phi i8 [ %dbnct.0.i.i, %if.end68.i.i.do.body95.i.i_crit_edge ], [ %dbnct.0226.i.i, %if.then71.i.i.do.body95.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %k2.1.i.i = phi i32 [ %k2.0.i.i, %if.end68.i.i.do.body95.i.i_crit_edge ], [ %add77.i.i, %if.then71.i.i.do.body95.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %k1.1.i.i = phi i32 [ %k1.0.i.i, %if.end68.i.i.do.body95.i.i_crit_edge ], [ %add73.i.i, %if.then71.i.i.do.body95.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %and.tr.i.i = trunc i32 %sclfrq.0227.i.i to i8
  %conv110.i.i = shl i8 %and.tr.i.i, 1
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %44, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 %conv110.i.i) #9, !srcloc !110
  %shr.i.i = lshr i32 %sclfrq.0227.i.i, 7
  %or141.i.i = or i32 %shr.i.i, %fast_mode.0231.i.i
  %conv142.i.i = trunc i32 %or141.i.i to i8
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  %add.ptr144.i.i = getelementptr i8, ptr %46, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr144.i.i, i8 %conv142.i.i) #9, !srcloc !110
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 14
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %50 = and i8 %49, -33
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %52, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 %50) #9, !srcloc !110
  br i1 %cmp69234.i.i, label %if.then147.i.i, label %do.body95.i.i.npcm_i2c_init_module.exit_crit_edge

do.body95.i.i.npcm_i2c_init_module.exit_crit_edge: ; preds = %do.body95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_init_module.exit

if.then147.i.i:                                   ; preds = %do.body95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div148209.i.i = lshr i32 %k1.1.i.i, 1
  %conv149.i.i = trunc i32 %div148209.i.i to i8
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr151.i.i = getelementptr i8, ptr %54, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr151.i.i, i8 %conv149.i.i) #9, !srcloc !110
  %div152210.i.i = lshr i32 %k2.1.i.i, 1
  %conv153.i.i = trunc i32 %div152210.i.i to i8
  %55 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i, align 4
  %add.ptr155.i.i = getelementptr i8, ptr %56, i32 30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr155.i.i, i8 %conv153.i.i) #9, !srcloc !110
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i, align 4
  %add.ptr157.i.i = getelementptr i8, ptr %58, i32 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr157.i.i, i8 %dbnct.0225.i.i) #9, !srcloc !110
  br label %npcm_i2c_init_module.exit

do.end33.i:                                       ; preds = %if.then71.i.i.do.end33.i_crit_edge, %if.then41.i.i.do.end33.i_crit_edge, %if.then15.i.i.do.end33.i_crit_edge, %if.then.i.i.do.end33.i_crit_edge
  %dev.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 1
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.25) #12
  br label %do.end7

npcm_i2c_init_module.exit:                        ; preds = %if.then147.i.i, %do.body95.i.i.npcm_i2c_init_module.exit_crit_edge
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i, align 4
  %add.ptr160.i.i = getelementptr i8, ptr %62, i32 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr160.i.i, i8 %hldt.0229.i.i) #9, !srcloc !110
  %63 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i, align 4
  %add.ptr.i215.i.i = getelementptr i8, ptr %64, i32 14
  %65 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i215.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i.i = or i8 %65, 32
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i216.i.i = getelementptr i8, ptr %67, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i216.i.i, i8 %i2cctl3.0.i.i.i) #9, !srcloc !110
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %69, i32 10
  %70 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %71 = or i8 %70, 1
  %72 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %73, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 %71) #9, !srcloc !110
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %state, align 4
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %76, i32 6
  %77 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %78 = and i8 %77, -84
  %79 = or i8 %78, 64
  %80 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %81, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %79) #9, !srcloc !110
  %82 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %83, i32 6
  %84 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i9.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %85 = and i8 %84, -24
  %86 = or i8 %85, 4
  %87 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %88, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %86) #9, !srcloc !110
  call fastcc void @npcm_i2c_reset(ptr noundef %bus) #9
  br label %cleanup

do.end7:                                          ; preds = %do.end33.i, %if.end.do.end7_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.do.end7_crit_edge ], [ -33, %do.end33.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %npcm_i2c_init_module.exit
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end7 ], [ 0, %npcm_i2c_init_module.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq_hz) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_init_debugfs(ptr nocapture noundef readonly %pdev, ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @npcm_i2c_debugfs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef nonnull %0) #9
  %tobool.not.i16 = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i16, %cmp.i
  br i1 %spec.select.i, label %dev_name.exit.cleanup_crit_edge, label %if.end4

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ber_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 37
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef nonnull %call1, ptr noundef %ber_cnt) #9
  %nack_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 40
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef nonnull %call1, ptr noundef %nack_cnt) #9
  %rec_succ_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 38
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef nonnull %call1, ptr noundef %rec_succ_cnt) #9
  %rec_fail_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 39
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef nonnull %call1, ptr noundef %rec_fail_cnt) #9
  %timeout_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 41
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef nonnull %call1, ptr noundef %timeout_cnt) #9
  %debugfs = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 36
  %5 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %debugfs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_master_xfer(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %num1 = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 8
  %4 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msgs, align 4
  %conv = trunc i16 %7 to i8
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags2, align 2
  %conv3 = zext i16 %9 to i32
  %and = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else17, label %if.then4

if.then4:                                         ; preds = %if.end
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %and7 = and i32 %conv3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %and12 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp ne i32 %and12, 0
  br label %if.else.i

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 4
  br label %if.else.i

if.else17:                                        ; preds = %if.end
  %len18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %14 = ptrtoint ptr %len18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len18, align 4
  %buf19 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %16 = ptrtoint ptr %buf19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp20 = icmp eq i32 %num, 2
  br i1 %cmp20, label %if.then22, label %if.else17.if.else.i_crit_edge

if.else17.if.else.i_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then22:                                        ; preds = %if.else17
  %buf24 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %18 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf24, align 4
  %flags25 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %20 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags25, align 2
  %conv26 = zext i16 %21 to i32
  %and27 = and i32 %conv26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else36, label %if.then29

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %and32 = and i32 %conv26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp ne i32 %and32, 0
  br label %if.else.i

if.else36:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %len37 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %22 = ptrtoint ptr %len37 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len37, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.else36, %if.then29, %if.else17.if.else.i_crit_edge, %if.else, %if.then9
  %nwrite.0 = phi i16 [ 0, %if.else ], [ %15, %if.else36 ], [ %15, %if.else17.if.else.i_crit_edge ], [ 0, %if.then9 ], [ %15, %if.then29 ]
  %nread.0 = phi i16 [ %13, %if.else ], [ %23, %if.else36 ], [ 0, %if.else17.if.else.i_crit_edge ], [ 1, %if.then9 ], [ 1, %if.then29 ]
  %write_data.0 = phi ptr [ null, %if.else ], [ %17, %if.else36 ], [ %17, %if.else17.if.else.i_crit_edge ], [ null, %if.then9 ], [ %17, %if.then29 ]
  %read_data.0 = phi ptr [ %11, %if.else ], [ %19, %if.else36 ], [ null, %if.else17.if.else.i_crit_edge ], [ %11, %if.then9 ], [ %19, %if.then29 ]
  %read_block.0.off0 = phi i1 [ false, %if.else ], [ false, %if.else36 ], [ false, %if.else17.if.else.i_crit_edge ], [ true, %if.then9 ], [ true, %if.then29 ]
  %read_PEC.0.off0 = phi i1 [ false, %if.else ], [ false, %if.else36 ], [ false, %if.else17.if.else.i_crit_edge ], [ %tobool13.not, %if.then9 ], [ %tobool33.not, %if.then29 ]
  %bus_freq = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 27
  %24 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_freq, align 4
  %div = udiv i32 18000000, %25
  %conv42 = zext i16 %nwrite.0 to i32
  %add = add nuw nsw i32 %conv42, 2
  %conv41 = zext i16 %nread.0 to i32
  %add43 = add nuw nsw i32 %add, %conv41
  %mul = mul i32 %div, %add43
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #9
  %26 = tail call i32 @llvm.umax.i32(i32 %call3.i, i32 4)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nwrite.0)
  %cmp49 = icmp slt i16 %nwrite.0, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nread.0)
  %cmp52 = icmp slt i16 %nread.0, 0
  %or.cond = select i1 %cmp49, i1 true, i1 %cmp52
  br i1 %or.cond, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 1
  %27 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev58, align 8
  %num59 = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 8
  %29 = ptrtoint ptr %num59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %30) #12
  br label %cleanup

if.end60:                                         ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add63.neg = sub i32 -4, %31
  %lock = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 3
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 2
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 29
  br label %do.body64

do.body64:                                        ; preds = %if.end91.do.body64_crit_edge, %if.end60
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %add.ptr76 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr76) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool81.not = icmp eq i8 %35, 0
  br i1 %tobool81.not, label %land.lhs.true, label %do.body64.if.end91_crit_edge

do.body64.if.end91_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.lhs.true:                                    ; preds = %do.body64
  %36 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slave, align 4
  %tobool82.not = icmp eq ptr %37, null
  br i1 %tobool82.not, label %land.lhs.true.if.end91_crit_edge, label %if.then83

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then83:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %addr85 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %addr85 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr85, align 2
  %40 = trunc i16 %39 to i8
  %conv88 = and i8 %40, 127
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg, align 4
  %add.ptr90 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90, i8 %conv88) #9, !srcloc !110
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %land.lhs.true.if.end91_crit_edge, %do.body64.if.end91_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call71) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add63.neg, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp94 = icmp sgt i32 %sub, -1
  %or.cond245 = select i1 %cmp94, i1 true, i1 %tobool81.not
  br i1 %or.cond245, label %do.end98, label %if.end91.do.body64_crit_edge

if.end91.do.body64_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body64

do.end98:                                         ; preds = %if.end91
  br i1 %tobool81.not, label %if.end104, label %if.then100

if.then100:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg, align 4
  %add.ptr102 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 2) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_reset(ptr noundef %adap)
  %call103 = tail call i32 @i2c_recover_bus(ptr noundef %adap) #9
  br label %cleanup

if.end104:                                        ; preds = %do.end98
  %stop_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 14
  %46 = ptrtoint ptr %stop_ind.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %stop_ind.i, align 8
  %rd_size.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 17
  %47 = ptrtoint ptr %rd_size.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %rd_size.i, align 4
  %wr_size.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 20
  %48 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %wr_size.i, align 4
  %rd_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 18
  %49 = ptrtoint ptr %rd_ind.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %rd_ind.i, align 2
  %wr_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 21
  %50 = ptrtoint ptr %wr_ind.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %wr_ind.i, align 2
  %int_time_stamp.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 26
  %51 = ptrtoint ptr %int_time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %int_time_stamp.i, align 8
  %PEC_mask.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 23
  %52 = ptrtoint ptr %PEC_mask.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 0, ptr %PEC_mask.i, align 2
  %53 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %slave, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end104.npcm_i2c_init_params.exit_crit_edge, label %if.then.i248

if.end104.npcm_i2c_init_params.exit_crit_edge:    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_init_params.exit

if.then.i248:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %master_or_slave.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 13
  %55 = ptrtoint ptr %master_or_slave.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %master_or_slave.i, align 4
  br label %npcm_i2c_init_params.exit

npcm_i2c_init_params.exit:                        ; preds = %if.then.i248, %if.end104.npcm_i2c_init_params.exit_crit_edge
  %dest_addr = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 15
  %56 = ptrtoint ptr %dest_addr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv, ptr %dest_addr, align 4
  %msgs105 = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 6
  %57 = ptrtoint ptr %msgs105 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msgs, ptr %msgs105, align 8
  %msgs_num = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 7
  %58 = ptrtoint ptr %msgs_num to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %num, ptr %msgs_num, align 4
  %cmd_err = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 5
  %59 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %cmd_err, align 4
  %read_block_use = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 25
  %frombool = zext i1 %read_block.0.off0 to i8
  %60 = ptrtoint ptr %read_block_use to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool, ptr %read_block_use, align 1
  %cmd_complete = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 4
  %61 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cmd_complete, align 4
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 1
  br i1 %cmp.not.i, label %if.end.i256, label %npcm_i2c_master_start_xmit.exit

if.end.i256:                                      ; preds = %npcm_i2c_init_params.exit
  %shl.i = shl i8 %conv, 1
  %64 = ptrtoint ptr %dest_addr to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %shl.i, ptr %dest_addr, align 4
  %wr_buf.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 19
  %65 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %write_data.0, ptr %wr_buf.i, align 8
  %66 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %nwrite.0, ptr %wr_size.i, align 4
  %67 = ptrtoint ptr %wr_ind.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %wr_ind.i, align 2
  %rd_buf.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 16
  %68 = ptrtoint ptr %rd_buf.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %read_data.0, ptr %rd_buf.i, align 8
  %69 = ptrtoint ptr %rd_size.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %nread.0, ptr %rd_size.i, align 4
  %70 = ptrtoint ptr %rd_ind.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %rd_ind.i, align 2
  %PEC_use.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nread.0)
  %tobool.not.i255 = icmp ne i16 %nread.0, 0
  %narrow.i = and i1 %tobool.not.i255, %read_PEC.0.off0
  %spec.select.i = zext i1 %narrow.i to i8
  %71 = ptrtoint ptr %PEC_use.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.select.i, ptr %PEC_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nwrite.0)
  %tobool12.not.i = icmp eq i16 %nwrite.0, 0
  %or.cond.i = and i1 %tobool12.not.i, %tobool.not.i255
  %spec.select56.i = select i1 %or.cond.i, i32 2, i32 1
  %72 = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 12
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.select56.i, ptr %72, align 8
  %fifo_use.i = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 22
  %74 = ptrtoint ptr %fifo_use.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fifo_use.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool16.not.i = icmp eq i8 %75, 0
  br i1 %tobool16.not.i, label %if.end.i256.if.then114_crit_edge, label %if.then17.i

if.end.i256.if.then114_crit_edge:                 ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then114

if.then17.i:                                      ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 14
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i = or i8 %78, 32
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %80, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %i2cctl3.0.i.i) #9, !srcloc !110
  %81 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 16
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %84 = and i8 %83, 63
  %85 = or i8 %84, 64
  %86 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg, align 4
  %add.ptr23.i = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 %85) #9, !srcloc !110
  br label %if.then114

npcm_i2c_master_start_xmit.exit:                  ; preds = %npcm_i2c_init_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -16, ptr %cmd_err, align 4
  br label %if.end140thread-pre-split

if.then114:                                       ; preds = %if.then17.i, %if.end.i256.if.then114_crit_edge
  %89 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %state, align 4
  %90 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %91, i32 6
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i52.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %93 = and i8 %92, 108
  %94 = or i8 %93, -128
  %95 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %96, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %94) #9, !srcloc !110
  %97 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %98, i32 6
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i54.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %100 = and i8 %99, -20
  %101 = or i8 %100, 1
  %102 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg, align 4
  %add.ptr5.i55.i = getelementptr i8, ptr %103, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i55.i, i8 %101) #9, !srcloc !110
  %call116 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.then114.if.end133_crit_edge

if.then114.if.end133_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then119:                                       ; preds = %if.then114
  %timeout_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 41
  %104 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %timeout_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %105)
  %cmp120.not = icmp eq i64 %105, -1
  br i1 %cmp120.not, label %if.then119.if.end124_crit_edge, label %if.then122

if.then119.if.end124_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i64 %105, 1
  %106 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %inc, ptr %timeout_cnt, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then119.if.end124_crit_edge
  %master_or_slave = getelementptr inbounds %struct.npcm_i2c, ptr %adap, i32 0, i32 13
  %107 = ptrtoint ptr %master_or_slave to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %master_or_slave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp125 = icmp eq i32 %108, 0
  br i1 %cmp125, label %if.then127, label %if.end124.if.end133_crit_edge

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = tail call i32 @i2c_recover_bus(ptr noundef %adap) #9
  %109 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -5, ptr %cmd_err, align 4
  %110 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %state, align 4
  br label %if.end140thread-pre-split

if.end133:                                        ; preds = %if.end124.if.end133_crit_edge, %if.then114.if.end133_crit_edge
  %111 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %.pr)
  %cmp136 = icmp eq i32 %.pr, -11
  br i1 %cmp136, label %if.then138, label %if.end133.if.end140_crit_edge

if.end133.if.end140_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %call139 = tail call i32 @i2c_recover_bus(ptr noundef %adap) #9
  br label %if.end140thread-pre-split

if.end140thread-pre-split:                        ; preds = %if.then138, %if.then127, %npcm_i2c_master_start_xmit.exit
  %112 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr260 = load i32, ptr %cmd_err, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end140thread-pre-split, %if.end133.if.end140_crit_edge
  %113 = phi i32 [ %.pr260, %if.end140thread-pre-split ], [ %.pr, %if.end133.if.end140_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool142.not = icmp eq i32 %113, 0
  br i1 %tobool142.not, label %if.end140.if.end151_crit_edge, label %land.lhs.true143

if.end140.if.end151_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.lhs.true143:                                 ; preds = %if.end140
  %114 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg, align 4
  %add.ptr145 = getelementptr i8, ptr %115, i32 30
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr145) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %117 = and i8 %116, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool149.not = icmp eq i8 %117, 0
  br i1 %tobool149.not, label %land.lhs.true143.if.end151_crit_edge, label %if.then150

land.lhs.true143.if.end151_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then150:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @npcm_i2c_reset(ptr noundef %adap)
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %land.lhs.true143.if.end151_crit_edge, %if.end140.if.end151_crit_edge
  %118 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %slave, align 4
  %tobool153.not = icmp eq ptr %119, null
  br i1 %tobool153.not, label %if.end151.if.end162_crit_edge, label %if.then154

if.end151.if.end162_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %addr156 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %addr156 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %addr156, align 2
  %122 = trunc i16 %121 to i8
  %conv159 = or i8 %122, -128
  %123 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg, align 4
  %add.ptr161 = getelementptr i8, ptr %124, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr161, i8 %conv159) #9, !srcloc !110
  br label %if.end162

if.end162:                                        ; preds = %if.then154, %if.end151.if.end162_crit_edge
  %125 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cmd_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.then100, %do.end57, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end57 ], [ -11, %if.then100 ], [ %126, %if.end162 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @npcm_i2c_functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369961
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_reg_slave(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %slave, align 4
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %client, align 8
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stop_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %stop_ind.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %stop_ind.i, align 8
  %rd_size.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %rd_size.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %rd_size.i, align 4
  %wr_size.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %wr_size.i, align 4
  %rd_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %rd_ind.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %rd_ind.i, align 2
  %wr_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %wr_ind.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %wr_ind.i, align 2
  %int_time_stamp.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %int_time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %int_time_stamp.i, align 8
  %PEC_mask.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 23
  %14 = ptrtoint ptr %PEC_mask.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %PEC_mask.i, align 2
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body5.npcm_i2c_init_params.exit_crit_edge, label %if.then.i

do.body5.npcm_i2c_init_params.exit_crit_edge:     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_init_params.exit

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %master_or_slave.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %master_or_slave.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %master_or_slave.i, align 4
  br label %npcm_i2c_init_params.exit

npcm_i2c_init_params.exit:                        ; preds = %if.then.i, %do.body5.npcm_i2c_init_params.exit_crit_edge
  %slv_rd_size = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 30
  %18 = call ptr @memset(ptr %slv_rd_size, i32 0, i32 16)
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %client, align 8
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool14.not = icmp eq i16 %21, 0
  br i1 %tobool14.not, label %npcm_i2c_init_params.exit.do.end19_crit_edge, label %if.then15

npcm_i2c_init_params.exit.do.end19_crit_edge:     ; preds = %npcm_i2c_init_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then15:                                        ; preds = %npcm_i2c_init_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  %PEC_use = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 24
  %22 = ptrtoint ptr %PEC_use to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %PEC_use, align 4
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %npcm_i2c_init_params.exit.do.end19_crit_edge
  %dev = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %num = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr, align 2
  %conv20 = zext i16 %28 to i32
  %PEC_use21 = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 24
  %29 = ptrtoint ptr %PEC_use21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %PEC_use21, align 4, !range !111
  %31 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef %26, i32 noundef %conv20, i32 noundef %31) #12
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  %conv25 = trunc i16 %33 to i8
  %34 = or i8 %conv25, -128
  %reg62.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg62.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %34) #9, !srcloc !110
  %37 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg62.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %40 = and i8 %39, -84
  %41 = or i8 %40, 64
  %42 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg62.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %43, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %41) #9, !srcloc !110
  %44 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg62.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %47 = and i8 %46, -128
  %48 = or i8 %47, 2
  %49 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg62.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %48) #9, !srcloc !110
  %51 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg62.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %52, i32 28
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i52) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %54 = or i8 %53, 64
  %55 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg62.i, align 4
  %add.ptr3.i53 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i53, i8 %54) #9, !srcloc !110
  %57 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg62.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %58, i32 26
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i55) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %60 = or i8 %59, 64
  %61 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg62.i, align 4
  %add.ptr3.i56 = getelementptr i8, ptr %62, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i56, i8 %60) #9, !srcloc !110
  %63 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg62.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %64, i32 6
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i58) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %66 = and i8 %65, -84
  %67 = or i8 %66, 64
  %68 = ptrtoint ptr %reg62.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg62.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %69, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %67) #9, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_unreg_slave(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_data, align 4
  %lock = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 6
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %9 = and i8 %8, -84
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %9) #9, !srcloc !110
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %conv6 = trunc i16 %13 to i8
  %14 = or i8 %conv6, -128
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 14
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %18 = and i8 %17, -33
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %20, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %18) #9, !srcloc !110
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.04.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %arrayidx.i = getelementptr [10 x i32], ptr @npcm_i2caddr, i32 0, i32 %i.04.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %14)
  %cmp5.i = icmp eq i8 %25, %14
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 0) #9, !srcloc !110
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %npcm_i2c_remove_slave_addr.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

npcm_i2c_remove_slave_addr.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %29, i32 14
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i.i = or i8 %30, 32
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i3.i = getelementptr i8, ptr %32, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i3.i, i8 %i2cctl3.0.i.i) #9, !srcloc !110
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %slave, align 4
  br label %cleanup

cleanup:                                          ; preds = %npcm_i2c_remove_slave_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %npcm_i2c_remove_slave_addr.exit ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_reset(ptr nocapture noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call fastcc void @npcm_i2c_disable(ptr noundef %bus)
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 10
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %6 = or i8 %5, 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %6) #9, !srcloc !110
  %state.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state.i, align 4
  %10 = and i8 %2, -20
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 %10) #9, !srcloc !110
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 2) #9, !srcloc !110
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 -1) #9, !srcloc !110
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %add.ptr9 = getelementptr i8, ptr %18, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 -128) #9, !srcloc !110
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  %add.ptr11 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 64) #9, !srcloc !110
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  %21 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr13 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr13, align 2
  %conv14 = trunc i16 %24 to i8
  %25 = or i8 %conv14, -128
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg, align 4
  %add.ptr63.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %25) #9, !srcloc !110
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 6
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %31 = and i8 %30, -84
  %32 = or i8 %31, 64
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %34, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %32) #9, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_disable(ptr nocapture noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 14
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %3 = and i8 %2, -33
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %3) #9, !srcloc !110
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #9, !srcloc !110
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %add.ptr.1 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.1, i8 0) #9, !srcloc !110
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr.2 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.2, i8 0) #9, !srcloc !110
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr.3 = getelementptr i8, ptr %13, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.3, i8 0) #9, !srcloc !110
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %add.ptr.4 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.4, i8 0) #9, !srcloc !110
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr.5 = getelementptr i8, ptr %17, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.5, i8 0) #9, !srcloc !110
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %add.ptr.6 = getelementptr i8, ptr %19, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.6, i8 0) #9, !srcloc !110
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr.7 = getelementptr i8, ptr %21, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.7, i8 0) #9, !srcloc !110
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr.8 = getelementptr i8, ptr %23, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.8, i8 0) #9, !srcloc !110
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr.9 = getelementptr i8, ptr %25, i32 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.9, i8 0) #9, !srcloc !110
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %27, i32 14
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i15) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i = or i8 %28, 32
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i16 = getelementptr i8, ptr %30, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i16, i8 %i2cctl3.0.i) #9, !srcloc !110
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %add.ptr2 = getelementptr i8, ptr %32, i32 10
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %34 = and i8 %33, -2
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i, align 4
  %add.ptr5 = getelementptr i8, ptr %36, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %34) #9, !srcloc !110
  %state = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_callback(ptr noundef %bus, i32 noundef %op_status, i16 noundef zeroext %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs1 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 6
  %0 = ptrtoint ptr %msgs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgs1, align 8
  %msgs_num2 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 7
  %2 = ptrtoint ptr %msgs_num2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgs_num2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_complete = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 4
  %call = tail call zeroext i1 @completion_done(ptr noundef %cmd_complete) #9
  br i1 %call, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = zext i32 %op_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %op_status, label %if.end4.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 10, label %if.end4.sw.bb6_crit_edge
    i32 7, label %sw.bb33
    i32 8, label %sw.bb40
  ]

if.end4.sw.bb6_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %msgs_num2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msgs_num2, align 4
  %cmd_err = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd_err, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.end4.sw.bb6_crit_edge
  %8 = ptrtoint ptr %msgs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msgs1, align 8
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %sw.bb6.if.end24_crit_edge, label %if.then9

sw.bb6.if.end24_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then9:                                         ; preds = %sw.bb6
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp eq i16 %12, 0
  br i1 %tobool10.not, label %if.else, label %if.then9.if.end24.sink.split_crit_edge

if.then9.if.end24.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %flags15 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags15, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.if.end24.sink.split_crit_edge

land.lhs.true.if.end24.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24.sink.split:                              ; preds = %land.lhs.true.if.end24.sink.split_crit_edge, %if.then9.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then9.if.end24.sink.split_crit_edge ], [ 1, %land.lhs.true.if.end24.sink.split_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %1, i32 %.sink, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %info, ptr %len, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge, %sw.bb6.if.end24_crit_edge
  %call26 = tail call zeroext i1 @completion_done(ptr noundef %cmd_complete) #9
  br i1 %call26, label %if.end24.sw.epilog_crit_edge, label %if.end24.sw.epilog.sink.split_crit_edge

if.end24.sw.epilog.sink.split_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end4
  %cmd_err34 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 5
  %17 = ptrtoint ptr %cmd_err34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -6, ptr %cmd_err34, align 4
  %master_or_slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 13
  %18 = ptrtoint ptr %master_or_slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %master_or_slave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35 = icmp eq i32 %19, 0
  br i1 %cmp35, label %sw.bb33.sw.epilog.sink.split_crit_edge, label %sw.bb33.sw.epilog_crit_edge

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %if.end4
  %cmd_err41 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 5
  %20 = ptrtoint ptr %cmd_err41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -11, ptr %cmd_err41, align 4
  %master_or_slave42 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 13
  %21 = ptrtoint ptr %master_or_slave42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %master_or_slave42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp43 = icmp eq i32 %22, 0
  br i1 %cmp43, label %sw.bb40.sw.epilog.sink.split_crit_edge, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb40.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb40.sw.epilog.sink.split_crit_edge, %sw.bb33.sw.epilog.sink.split_crit_edge, %if.end24.sw.epilog.sink.split_crit_edge
  tail call void @complete(ptr noundef %cmd_complete) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb40.sw.epilog_crit_edge, %sw.bb33.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %operation = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 12
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %operation, align 8
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  %24 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %sw.epilog.cleanup_crit_edge, label %if.then49

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %master_or_slave50 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 13
  %26 = ptrtoint ptr %master_or_slave50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %master_or_slave50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_master_stop(ptr nocapture noundef readonly %bus) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #9
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 6
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %4 = and i8 %3, -20
  %5 = or i8 %4, 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %5) #9, !srcloc !110
  %fifo_use = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 22
  %8 = ptrtoint ptr %fifo_use to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fifo_use, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 14
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i = or i8 %12, 32
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %i2cctl3.0.i) #9, !srcloc !110
  %operation = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 12
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %operation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %20 = or i8 %19, 64
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %20) #9, !srcloc !110
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i24 = getelementptr i8, ptr %18, i32 26
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %24 = or i8 %23, 64
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %add.ptr3.i25 = getelementptr i8, ptr %26, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i25, i8 %24) #9, !srcloc !110
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %add.ptr.i27 = getelementptr i8, ptr %28, i32 16
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %30 = and i8 %29, -128
  %31 = or i8 %30, 2
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %add.ptr3.i28 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i28, i8 %31) #9, !srcloc !110
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %add.ptr10 = getelementptr i8, ptr %35, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 0) #9, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_set_fifo(ptr nocapture noundef readonly %bus, i32 noundef %nread, i32 noundef %nwrite) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_use = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 22
  %0 = ptrtoint ptr %fifo_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fifo_use, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 14
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i = or i8 %4, 32
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %i2cctl3.0.i) #9, !srcloc !110
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %8, i32 26
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %10 = or i8 %9, 64
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %10) #9, !srcloc !110
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %14, i32 28
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i49) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %16 = or i8 %15, 64
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i50 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i50, i8 %16) #9, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nread)
  %cmp = icmp sgt i32 %nread, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then1:                                         ; preds = %if.end
  %19 = tail call i32 @llvm.umin.i32(i32 %nread, i32 16)
  %20 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %nread)
  %cmp3 = icmp ult i32 %nread, 17
  %21 = or i8 %20, 32
  %rxf_ctl.0 = select i1 %cmp3, i8 %21, i8 %20
  %rd_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 18
  %22 = ptrtoint ptr %rd_ind to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rd_ind, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp10 = icmp eq i16 %23, 0
  br i1 %cmp10, label %land.lhs.true, label %if.then1.if.end15_crit_edge

if.then1.if.end15_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %read_block_use = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 25
  %24 = ptrtoint ptr %read_block_use to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %read_block_use, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not = icmp eq i8 %25, 0
  %spec.select = select i1 %tobool12.not, i8 %rxf_ctl.0, i8 1
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.then1.if.end15_crit_edge
  %rxf_ctl.1 = phi i8 [ %rxf_ctl.0, %if.then1.if.end15_crit_edge ], [ %spec.select, %land.lhs.true ]
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %rxf_ctl.1) #9, !srcloc !110
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nwrite)
  %cmp17 = icmp sgt i32 %nwrite, 0
  br i1 %cmp17, label %if.then19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nwrite)
  %cmp20 = icmp ugt i32 %nwrite, 16
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 16) #9, !srcloc !110
  br label %if.end28

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %conv25 = trunc i32 %nwrite to i8
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %add.ptr27 = getelementptr i8, ptr %31, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %conv25) #9, !srcloc !110
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %33, i32 26
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i52) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %35 = or i8 %34, 64
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i53 = getelementptr i8, ptr %37, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i53, i8 %35) #9, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_master_fifo_read(ptr nocapture noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %operation.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %operation.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %operation.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %entry.npcm_i2c_fifo_usage.exit_crit_edge [
    i32 1, label %do.end8.i
    i32 2, label %do.end23.i
  ]

entry.npcm_i2c_fifo_usage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_fifo_usage.exit

do.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 26
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %6 = and i8 %5, 31
  br label %npcm_i2c_fifo_usage.exit

do.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg25.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %7 = ptrtoint ptr %reg25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg25.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %8, i32 28
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %10 = and i8 %9, 31
  br label %npcm_i2c_fifo_usage.exit

npcm_i2c_fifo_usage.exit:                         ; preds = %do.end23.i, %do.end8.i, %entry.npcm_i2c_fifo_usage.exit_crit_edge
  %retval.0.i = phi i8 [ %6, %do.end8.i ], [ %10, %do.end23.i ], [ 0, %entry.npcm_i2c_fifo_usage.exit_crit_edge ]
  %conv = zext i8 %retval.0.i to i32
  %rd_size = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 17
  %11 = ptrtoint ptr %rd_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rd_size, align 4
  %conv1 = zext i16 %12 to i32
  %rd_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 18
  %13 = ptrtoint ptr %rd_ind to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rd_ind, align 2
  %conv2 = zext i16 %14 to i32
  %sub = sub nsw i32 %conv1, %conv2
  %15 = add nsw i32 %sub, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %16 = icmp ult i32 %15, 15
  %sub6 = add nsw i32 %sub, -16
  %fifo_bytes.0 = select i1 %16, i32 %sub6, i32 %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %fifo_bytes.0)
  %cmp7.not = icmp sgt i32 %sub, %fifo_bytes.0
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %npcm_i2c_fifo_usage.exit
  %state = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %state, align 4
  %stop_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 14
  %18 = ptrtoint ptr %stop_ind to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %stop_ind, align 8
  %reg.i35 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %19 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %20, i32 25
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i36) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %22 = or i8 %21, -128
  %23 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i35, align 4
  %add.ptr3.i = getelementptr i8, ptr %24, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %22) #9, !srcloc !110
  %25 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i35, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 6
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %28 = and i8 %27, -28
  %29 = or i8 %28, 8
  %30 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i35, align 4
  %add.ptr16.i = getelementptr i8, ptr %31, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 %29) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %bus)
  %conv10 = trunc i32 %fifo_bytes.0 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %tobool.not9.i = icmp eq i8 %conv10, 0
  br i1 %tobool.not9.i, label %if.then9.if.end17_crit_edge, label %while.body.lr.ph.i

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

while.body.lr.ph.i:                               ; preds = %if.then9
  %rd_buf.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec10.in.i = phi i8 [ %conv10, %while.body.lr.ph.i ], [ %dec10.i, %if.end.i.while.body.i_crit_edge ]
  %dec10.i = add i8 %dec10.in.i, -1
  %32 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i35, align 4
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %35 = ptrtoint ptr %rd_ind to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rd_ind, align 2
  %37 = ptrtoint ptr %rd_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rd_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp.i = icmp ult i16 %36, %38
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %36 to i32
  %39 = ptrtoint ptr %rd_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rd_buf.i, align 8
  %inc.i = add nuw i16 %36, 1
  %41 = ptrtoint ptr %rd_ind to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %inc.i, ptr %rd_ind, align 2
  %arrayidx.i = getelementptr i8, ptr %40, i32 %conv.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %34, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %tobool.not.i = icmp eq i8 %dec10.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end17_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %npcm_i2c_fifo_usage.exit
  %conv11 = trunc i32 %fifo_bytes.0 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv11)
  %tobool.not9.i37 = icmp eq i8 %conv11, 0
  br i1 %tobool.not9.i37, label %if.else.npcm_i2c_read_fifo.exit53_crit_edge, label %while.body.lr.ph.i42

if.else.npcm_i2c_read_fifo.exit53_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_read_fifo.exit53

while.body.lr.ph.i42:                             ; preds = %if.else
  %reg.i.i38 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %rd_buf.i41 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 16
  br label %while.body.i46

while.body.i46:                                   ; preds = %if.end.i52.while.body.i46_crit_edge, %while.body.lr.ph.i42
  %dec10.in.i43 = phi i8 [ %conv11, %while.body.lr.ph.i42 ], [ %dec10.i44, %if.end.i52.while.body.i46_crit_edge ]
  %dec10.i44 = add i8 %dec10.in.i43, -1
  %43 = ptrtoint ptr %reg.i.i38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i.i38, align 4
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %46 = ptrtoint ptr %rd_ind to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rd_ind, align 2
  %48 = ptrtoint ptr %rd_size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rd_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp.i45 = icmp ult i16 %47, %49
  br i1 %cmp.i45, label %if.then.i50, label %while.body.i46.if.end.i52_crit_edge

while.body.i46.if.end.i52_crit_edge:              ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i52

if.then.i50:                                      ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i47 = zext i16 %47 to i32
  %50 = ptrtoint ptr %rd_buf.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rd_buf.i41, align 8
  %inc.i48 = add nuw i16 %47, 1
  %52 = ptrtoint ptr %rd_ind to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %inc.i48, ptr %rd_ind, align 2
  %arrayidx.i49 = getelementptr i8, ptr %51, i32 %conv.i47
  %53 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %45, ptr %arrayidx.i49, align 1
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then.i50, %while.body.i46.if.end.i52_crit_edge
  %tobool.not.i51 = icmp eq i8 %dec10.i44, 0
  br i1 %tobool.not.i51, label %if.end.i52.npcm_i2c_read_fifo.exit53_crit_edge, label %if.end.i52.while.body.i46_crit_edge

if.end.i52.while.body.i46_crit_edge:              ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i46

if.end.i52.npcm_i2c_read_fifo.exit53_crit_edge:   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_read_fifo.exit53

npcm_i2c_read_fifo.exit53:                        ; preds = %if.end.i52.npcm_i2c_read_fifo.exit53_crit_edge, %if.else.npcm_i2c_read_fifo.exit53_crit_edge
  %54 = ptrtoint ptr %rd_size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rd_size, align 4
  %conv13 = zext i16 %55 to i32
  %56 = ptrtoint ptr %rd_ind to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rd_ind, align 2
  %conv15 = zext i16 %57 to i32
  %sub16 = sub nsw i32 %conv13, %conv15
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %bus, i32 noundef %sub16, i32 noundef -1)
  br label %if.end17

if.end17:                                         ; preds = %npcm_i2c_read_fifo.exit53, %if.end.i.if.end17_crit_edge, %if.then9.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_slave_send_rd_buf(ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slv_rd_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 31
  %0 = ptrtoint ptr %slv_rd_ind to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slv_rd_ind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slave = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %arrayidx = getelementptr %struct.npcm_i2c, ptr %bus, i32 0, i32 34, i32 %i.019
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_cb.i, align 8
  %call.i = tail call i32 %5(ptr noundef %3, i32 noundef 3, ptr noundef %arrayidx) #9
  %inc = add nuw nsw i32 %i.019, 1
  %6 = ptrtoint ptr %slv_rd_ind to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slv_rd_ind, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %slv_wr_size = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 32
  %8 = ptrtoint ptr %slv_wr_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %slv_wr_size, align 8
  %slv_wr_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 33
  %9 = ptrtoint ptr %slv_wr_ind to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %slv_wr_ind, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %10 = ptrtoint ptr %slv_rd_ind to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %slv_rd_ind, align 4
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %bus, i32 0, i32 17
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %quirks, align 8
  %max_read_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %max_read_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_read_len, align 2
  %conv = zext i16 %14 to i32
  %slv_rd_size = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 30
  %15 = ptrtoint ptr %slv_rd_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %slv_rd_size, align 8
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %19 = and i8 %18, -128
  %20 = or i8 %19, 2
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %20) #9, !srcloc !110
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %24, i32 28
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %26 = or i8 %25, 64
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i17 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i17, i8 %26) #9, !srcloc !110
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_i2c_slave_rd_wr(ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %operation1 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 12
  br i1 %tobool.not, label %npcm_i2c_fifo_usage.exit, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %operation1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %operation1, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %bus, i32 0, i32 17
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %quirks, align 8
  %max_write_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %max_write_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_write_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i = icmp eq i16 %8, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %state.i, align 4
  %10 = ptrtoint ptr %operation1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %operation1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #9
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i.i, align 1, !annotation !113
  %slv_wr_ind.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 33
  %slv_wr_size.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 32
  %slave.i.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.03.i.i = phi i32 [ 0, %if.end.i ], [ %inc7.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slv_wr_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp1.i.i = icmp sgt i32 %13, 15
  br i1 %cmp1.i.i, label %for.body.i.i.land.rhs.lr.ph.i.i_crit_edge, label %if.end.i.i

for.body.i.i.land.rhs.lr.ph.i.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.lr.ph.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %14 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave.i.i, align 4
  %slave_cb.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %slave_cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave_cb.i.i.i, align 8
  %call.i.i.i = call i32 %17(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %value.i.i) #9
  %18 = ptrtoint ptr %slv_wr_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slv_wr_ind.i.i, align 4
  %20 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slv_wr_size.i.i, align 8
  %add.i.i = add i32 %21, %19
  %rem.i.i = srem i32 %add.i.i, 16
  %22 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.npcm_i2c, ptr %bus, i32 0, i32 35, i32 %rem.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %slv_wr_size.i.i, align 8
  %25 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave.i.i, align 4
  %slave_cb.i1.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %slave_cb.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave_cb.i1.i.i, align 8
  %call.i2.i.i = call i32 %28(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %value.i.i) #9
  %inc7.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc7.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i.i.land.rhs.lr.ph.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.land.rhs.lr.ph.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.lr.ph.i.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end.i.i.land.rhs.lr.ph.i.i_crit_edge, %for.body.i.i.land.rhs.lr.ph.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #9
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 16
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %32 = and i8 %31, -128
  %33 = or i8 %32, 2
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %35, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i, i8 %33) #9, !srcloc !110
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %37, i32 26
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %39 = or i8 %38, 64
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %add.ptr3.i28.i.i = getelementptr i8, ptr %41, i32 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i28.i.i, i8 %39) #9, !srcloc !110
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #9, !srcloc !110
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i6.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %dec36.in.i.i = phi i16 [ %8, %land.rhs.lr.ph.i.i ], [ %dec36.i.i, %if.end.i6.i.land.rhs.i.i_crit_edge ]
  %dec36.i.i = add i16 %dec36.in.i.i, -1
  %44 = ptrtoint ptr %operation1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %operation1, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %45, label %land.rhs.i.i.while.body.i.i_crit_edge [
    i32 1, label %do.end8.i.i.i
    i32 2, label %do.end23.i.i.i
  ]

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %48, i32 26
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i30.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i.i

do.end23.i.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg, align 4
  %add.ptr26.i.i.i = getelementptr i8, ptr %51, i32 28
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %npcm_i2c_fifo_usage.exit.i.i

npcm_i2c_fifo_usage.exit.i.i:                     ; preds = %do.end23.i.i.i, %do.end8.i.i.i
  %retval.0.i.in.i.i = phi i8 [ %49, %do.end8.i.i.i ], [ %52, %do.end23.i.i.i ]
  %retval.0.i.i.i = and i8 %retval.0.i.in.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %retval.0.i.i.i)
  %cmp.not.i.i = icmp eq i8 %retval.0.i.i.i, 16
  br i1 %cmp.not.i.i, label %npcm_i2c_fifo_usage.exit.i.i.if.end_crit_edge, label %npcm_i2c_fifo_usage.exit.i.i.while.body.i.i_crit_edge

npcm_i2c_fifo_usage.exit.i.i.while.body.i.i_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

npcm_i2c_fifo_usage.exit.i.i.if.end_crit_edge:    ; preds = %npcm_i2c_fifo_usage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i.i:                                   ; preds = %npcm_i2c_fifo_usage.exit.i.i.while.body.i.i_crit_edge, %land.rhs.i.i.while.body.i.i_crit_edge
  %53 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %slv_wr_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp3.i.i = icmp slt i32 %54, 1
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %if.end.i6.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i6.i:                                      ; preds = %while.body.i.i
  %55 = ptrtoint ptr %slv_wr_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slv_wr_ind.i.i, align 4
  %rem.i3.i = srem i32 %56, 16
  store i32 %rem.i3.i, ptr %slv_wr_ind.i.i, align 4
  %arrayidx.i4.i = getelementptr %struct.npcm_i2c, ptr %bus, i32 0, i32 35, i32 %rem.i3.i
  %57 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i4.i, align 1
  %59 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %58) #9, !srcloc !110
  %61 = ptrtoint ptr %slv_wr_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slv_wr_ind.i.i, align 4
  %inc.i5.i = add i32 %62, 1
  %rem9.i.i = srem i32 %inc.i5.i, 16
  store i32 %rem9.i.i, ptr %slv_wr_ind.i.i, align 4
  %63 = ptrtoint ptr %slv_wr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slv_wr_size.i.i, align 8
  %dec12.i.i = add i32 %64, -1
  store i32 %dec12.i.i, ptr %slv_wr_size.i.i, align 8
  %tobool.not.i.i = icmp eq i16 %dec36.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i6.i.if.end_crit_edge, label %if.end.i6.i.land.rhs.i.i_crit_edge

if.end.i6.i.land.rhs.i.i_crit_edge:               ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

if.end.i6.i.if.end_crit_edge:                     ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

npcm_i2c_fifo_usage.exit:                         ; preds = %entry
  %65 = ptrtoint ptr %operation1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %operation1, align 8
  %66 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg, align 4
  %add.ptr26.i = getelementptr i8, ptr %67, i32 28
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %69 = and i8 %68, 31
  %slave.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 29
  %70 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %slave.i, align 4
  %tobool.not.i = icmp eq ptr %71, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool1.not24.i = icmp eq i8 %69, 0
  %or.cond.i = or i1 %tobool1.not24.i, %tobool.not.i
  br i1 %or.cond.i, label %npcm_i2c_fifo_usage.exit.npcm_i2c_read_fifo_slave.exit_crit_edge, label %while.body.lr.ph.i

npcm_i2c_fifo_usage.exit.npcm_i2c_read_fifo_slave.exit_crit_edge: ; preds = %npcm_i2c_fifo_usage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_read_fifo_slave.exit

while.body.lr.ph.i:                               ; preds = %npcm_i2c_fifo_usage.exit
  %slv_rd_ind.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 31
  %read_block_use.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 25
  %PEC_use.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 24
  %slv_rd_size.i = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 30
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec25.in.i = phi i8 [ %69, %while.body.lr.ph.i ], [ %dec25.i, %if.end11.i.while.body.i_crit_edge ]
  %dec25.i = add nsw i8 %dec25.in.i, -1
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg, align 4
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %73) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %75 = ptrtoint ptr %slv_rd_ind.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slv_rd_ind.i, align 4
  %rem.i = srem i32 %76, 16
  store i32 %rem.i, ptr %slv_rd_ind.i, align 4
  %arrayidx.i = getelementptr %struct.npcm_i2c, ptr %bus, i32 0, i32 34, i32 %rem.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %74, ptr %arrayidx.i, align 1
  %78 = load i32, ptr %slv_rd_ind.i, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %slv_rd_ind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i19 = icmp eq i32 %78, 0
  br i1 %cmp.i19, label %land.lhs.true.i, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %79 = ptrtoint ptr %read_block_use.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %read_block_use.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool6.not.i = icmp eq i8 %80, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %74 to i32
  %81 = ptrtoint ptr %PEC_use.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %PEC_use.i, align 4, !range !111
  %83 = zext i8 %82 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %add10.i = add nuw nsw i32 %add.i, %83
  %84 = ptrtoint ptr %slv_rd_size.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add10.i, ptr %slv_rd_size.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %tobool1.not.i = icmp eq i8 %dec25.i, 0
  br i1 %tobool1.not.i, label %if.end11.i.npcm_i2c_read_fifo_slave.exit_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end11.i.npcm_i2c_read_fifo_slave.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %npcm_i2c_read_fifo_slave.exit

npcm_i2c_read_fifo_slave.exit:                    ; preds = %if.end11.i.npcm_i2c_read_fifo_slave.exit_crit_edge, %npcm_i2c_fifo_usage.exit.npcm_i2c_read_fifo_slave.exit_crit_edge
  %stop_ind = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 14
  %85 = ptrtoint ptr %stop_ind to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %stop_ind, align 8
  tail call fastcc void @npcm_i2c_slave_send_rd_buf(ptr noundef %bus)
  %quirks4 = getelementptr inbounds %struct.i2c_adapter, ptr %bus, i32 0, i32 17
  %86 = ptrtoint ptr %quirks4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %quirks4, align 8
  %max_read_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %max_read_len to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %max_read_len, align 2
  %state.i20 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 11
  %90 = ptrtoint ptr %state.i20 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %state.i20, align 4
  %91 = ptrtoint ptr %operation1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %operation1, align 8
  %conv.i22 = zext i16 %89 to i32
  %slv_rd_size.i23 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 30
  %92 = ptrtoint ptr %slv_rd_size.i23 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv.i22, ptr %slv_rd_size.i23, align 8
  %slv_rd_ind.i24 = getelementptr inbounds %struct.npcm_i2c, ptr %bus, i32 0, i32 31
  %93 = ptrtoint ptr %slv_rd_ind.i24 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %slv_rd_ind.i24, align 4
  %94 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg, align 4
  %add.ptr.i26 = getelementptr i8, ptr %95, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i26, i8 0) #9, !srcloc !110
  %96 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg, align 4
  %add.ptr2.i = getelementptr i8, ptr %97, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 16) #9, !srcloc !110
  %98 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %99, i32 26
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i27) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %101 = or i8 %100, 64
  %102 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %103, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 %101) #9, !srcloc !110
  %104 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %105, i32 28
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %107 = or i8 %106, 64
  %108 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg, align 4
  %add.ptr3.i3.i = getelementptr i8, ptr %109, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i3.i, i8 %107) #9, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %npcm_i2c_read_fifo_slave.exit, %if.end.i6.i.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %npcm_i2c_fifo_usage.exit.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_recovery_tgclk(ptr noundef %_adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 2
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i157 = getelementptr i8, ptr %5, i32 14
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i157) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %do.body, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm_i2c_recovery_tgclk.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm_i2c_recovery_tgclk, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !116

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %num = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 8
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm_i2c_recovery_tgclk.__UNIQUE_ID_ddebug369, ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call fastcc void @npcm_i2c_reset(ptr noundef %_adap)
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 6
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %14 = and i8 %13, -24
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %16, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %14) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_disable(ptr noundef %_adap)
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %18, i32 10
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i160) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %20 = or i8 %19, 1
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %20) #9, !srcloc !110
  %state.i = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 11
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state.i, align 4
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr10 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 2) #9, !srcloc !110
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %27, i32 26
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i162) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %29 = or i8 %28, 64
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i163 = getelementptr i8, ptr %31, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i163, i8 %29) #9, !srcloc !110
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i165) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %35 = or i8 %34, 64
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i166 = getelementptr i8, ptr %37, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i166, i8 %35) #9, !srcloc !110
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  %add.ptr12 = getelementptr i8, ptr %39, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #9, !srcloc !110
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr14 = getelementptr i8, ptr %41, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 0) #9, !srcloc !110
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %43, i32 6
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i168) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %45 = and i8 %44, 108
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i169 = getelementptr i8, ptr %47, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i169, i8 %45) #9, !srcloc !110
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %49, i32 14
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i171) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %i2cctl3.0.i = or i8 %50, 32
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %52, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %i2cctl3.0.i) #9, !srcloc !110
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr16 = getelementptr i8, ptr %54, i32 16
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %56 = and i8 %55, 63
  %57 = or i8 %56, 64
  %58 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i, align 4
  %add.ptr22 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %57) #9, !srcloc !110
  tail call fastcc void @npcm_i2c_set_fifo(ptr noundef %_adap, i32 noundef -1, i32 noundef 0)
  br label %do.body23

do.body23:                                        ; preds = %do.body23.do.body23_crit_edge, %if.end9
  %iter.0 = phi i32 [ 27, %if.end9 ], [ %dec, %do.body23.do.body23_crit_edge ]
  %60 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i, align 4
  %add.ptr25 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 32) #9, !srcloc !110
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #9
  %62 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i173 = getelementptr i8, ptr %63, i32 14
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i173) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %65 = and i32 %64, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool27.not = icmp ne i32 %65, 0
  %dec = add nsw i32 %iter.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.0)
  %tobool32.not = icmp eq i32 %iter.0, 0
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %do.end33, label %do.body23.do.body23_crit_edge

do.body23.do.body23_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

do.end33:                                         ; preds = %do.body23
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i176 = getelementptr i8, ptr %67, i32 14
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i176) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %69 = and i32 %68, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool35.not = icmp eq i32 %69, 0
  br i1 %tobool35.not, label %do.end33.if.end80_crit_edge, label %if.then36

do.end33.if.end80_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then36:                                        ; preds = %do.end33
  %dest_addr = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 15
  %70 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dest_addr, align 4
  %72 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %71) #9, !srcloc !110
  %74 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %75, i32 6
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i180) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %77 = and i8 %76, -20
  %78 = or i8 %77, 1
  %79 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i181 = getelementptr i8, ptr %80, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i181, i8 %78) #9, !srcloc !110
  %call37 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call37, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1720) #9
  %81 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i183201 = getelementptr i8, ptr %82, i32 14
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i183201) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %tobool54.not202 = icmp sgt i32 %83, -1
  br i1 %tobool54.not202, label %if.then36.for.end_crit_edge, label %if.then36.land.lhs.true58_crit_edge

if.then36.land.lhs.true58_crit_edge:              ; preds = %if.then36
  br label %land.lhs.true58

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true58:                                  ; preds = %if.then68.land.lhs.true58_crit_edge, %if.then36.land.lhs.true58_crit_edge
  %call59 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call59, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call59, %add.i
  br i1 %cmp3.i, label %if.then63, label %if.then68

if.then63:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i186 = getelementptr i8, ptr %85, i32 14
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i186) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %for.end

if.then68:                                        ; preds = %land.lhs.true58
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #9
  %87 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i183 = getelementptr i8, ptr %88, i32 14
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i183) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %tobool54.not = icmp sgt i32 %89, -1
  br i1 %tobool54.not, label %if.then68.for.end_crit_edge, label %if.then68.land.lhs.true58_crit_edge

if.then68.land.lhs.true58_crit_edge:              ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

if.then68.for.end_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.then68.for.end_crit_edge, %if.then63, %if.then36.for.end_crit_edge
  %90 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg.i, align 4
  %add.ptr.i188 = getelementptr i8, ptr %91, i32 2
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i188) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %93 = and i8 %92, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.i.not = icmp eq i8 %93, 0
  br i1 %tobool.i.not, label %for.end.if.end80_crit_edge, label %if.then78

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #9
  tail call fastcc void @npcm_i2c_master_stop(ptr noundef %_adap)
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 500, i32 noundef 2) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %for.end.if.end80_crit_edge, %do.end33.if.end80_crit_edge
  tail call fastcc void @npcm_i2c_reset(ptr noundef %_adap)
  %94 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %95, i32 6
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i190) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %97 = and i8 %96, -24
  %98 = or i8 %97, 4
  %99 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i191 = getelementptr i8, ptr %100, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i191, i8 %98) #9, !srcloc !110
  %101 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i193 = getelementptr i8, ptr %102, i32 14
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i193) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %104 = and i32 %103, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp82.not = icmp eq i32 %104, 0
  br i1 %cmp82.not, label %if.end80.if.then91_crit_edge, label %land.lhs.true84

if.end80.if.then91_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

land.lhs.true84:                                  ; preds = %if.end80
  %105 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i, align 4
  %add.ptr1.i196 = getelementptr i8, ptr %106, i32 14
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i196) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp86 = icmp slt i32 %107, 0
  br i1 %cmp86, label %if.else97, label %land.lhs.true84.if.then91_crit_edge

land.lhs.true84.if.then91_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then91:                                        ; preds = %land.lhs.true84.if.then91_crit_edge, %if.end80.if.then91_crit_edge
  %rec_fail_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 39
  %108 = ptrtoint ptr %rec_fail_cnt to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rec_fail_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %109)
  %cmp92.not = icmp eq i64 %109, -1
  br i1 %cmp92.not, label %if.then91.cleanup_crit_edge, label %if.then94

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i64 %109, 1
  %110 = ptrtoint ptr %rec_fail_cnt to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %inc, ptr %rec_fail_cnt, align 8
  br label %cleanup

if.else97:                                        ; preds = %land.lhs.true84
  %rec_succ_cnt = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 38
  %111 = ptrtoint ptr %rec_succ_cnt to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rec_succ_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %112)
  %cmp98.not = icmp eq i64 %112, -1
  br i1 %cmp98.not, label %if.else97.cleanup_crit_edge, label %if.then100

if.else97.cleanup_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #11
  %inc102 = add nuw i64 %112, 1
  %113 = ptrtoint ptr %rec_succ_cnt to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %inc102, ptr %rec_succ_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.else97.cleanup_crit_edge, %if.then94, %if.then91.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -131, %do.end ], [ 0, %if.else97.cleanup_crit_edge ], [ 0, %if.then100 ], [ -131, %if.then91.cleanup_crit_edge ], [ -131, %if.then94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_get_SCL(ptr nocapture noundef readonly %_adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !114
  %3 = lshr i32 %2, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_i2c_get_SDA(ptr nocapture noundef readonly %_adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.npcm_i2c, ptr %_adap, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !114
  %3 = lshr i32 %2, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %and.lobit = and i32 %3, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_i2c_npcm7xx__387_2342_npcm_i2c_init6, !1, !"__initcall__kmod_i2c_npcm7xx__387_2342_npcm_i2c_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2342, i32 1}
!2 = !{ptr @__exitcall_npcm_i2c_exit, !3, !"__exitcall_npcm_i2c_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2349, i32 1}
!4 = !{ptr @__UNIQUE_ID_author388, !5, !"__UNIQUE_ID_author388", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2351, i32 1}
!6 = !{ptr @__UNIQUE_ID_author389, !7, !"__UNIQUE_ID_author389", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2352, i32 1}
!8 = !{ptr @__UNIQUE_ID_author390, !9, !"__UNIQUE_ID_author390", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2353, i32 1}
!10 = !{ptr @__UNIQUE_ID_description391, !11, !"__UNIQUE_ID_description391", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2354, i32 1}
!12 = !{ptr @__UNIQUE_ID_file392, !13, !"__UNIQUE_ID_file392", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2355, i32 1}
!14 = !{ptr @__UNIQUE_ID_license393, !13, !"__UNIQUE_ID_license393", i1 false, i1 false}
!15 = !{ptr @npcm_i2c_debugfs_dir, !16, !"npcm_i2c_debugfs_dir", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2209, i32 23}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2338, i32 44}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2331, i32 11}
!21 = !{ptr @npcm_i2c_bus_driver, !22, !"npcm_i2c_bus_driver", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2327, i32 31}
!23 = !{ptr @npcm_i2c_probe_bus.gcr_regmap, !24, !"gcr_regmap", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2235, i32 24}
!25 = !{ptr @npcm_i2c_probe_bus.clk_regmap, !26, !"clk_regmap", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2236, i32 24}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2246, i32 48}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2253, i32 50}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2258, i32 50}
!33 = !{ptr @npcm_i2c_probe_bus.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2266, i32 2}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2297, i32 51}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @npcm_i2c_algo, !42, !"npcm_i2c_algo", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2199, i32 35}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2058, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @npcm_i2c_master_xfer._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @npcm_i2c_master_xfer._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2104, i32 3}
!53 = !{ptr @npcm_i2c_master_xfer._entry.13, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @npcm_i2c_master_xfer._entry_ptr.15, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @npcm_i2caddr, !56, !"npcm_i2caddr", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 127, i32 18}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1260, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @npcm_i2c_reg_slave._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @npcm_i2c_reg_slave._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @npcm_i2c_quirks, !64, !"npcm_i2c_quirks", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2193, i32 40}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1960, i32 45}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1963, i32 3}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__npcm_i2c_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @__npcm_i2c_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1969, i32 3}
!74 = !{ptr @__npcm_i2c_init._entry.22, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @__npcm_i2c_init._entry_ptr.24, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1929, i32 3}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @npcm_i2c_init_module._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @npcm_i2c_init_module._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 1675, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @npcm_i2c_recovery_tgclk.__UNIQUE_ID_ddebug369, !82, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2221, i32 21}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2222, i32 21}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2223, i32 21}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2224, i32 21}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2225, i32 21}
!96 = !{ptr @npcm_i2c_bus_of_table, !97, !"npcm_i2c_bus_of_table", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-npcm7xx.c", i32 2321, i32 34}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 6954079}
!108 = !{i64 2154485934}
!109 = !{i64 2154487539}
!110 = !{i64 6953684}
!111 = !{i8 0, i8 2}
!112 = !{i32 0, i32 33}
!113 = !{!"auto-init"}
!114 = !{i64 6954299}
!115 = !{i64 2154487158}
!116 = !{i64 2148813453, i64 2148813458, i64 2148813471, i64 2148813515, i64 2148813549, i64 2148813570}
