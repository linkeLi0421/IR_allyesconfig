; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mvsdio.c_pt.bc'
source_filename = "../drivers/mmc/host/mvsdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.mvsd_host = type { ptr, ptr, %struct.spinlock, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.timer_list, ptr, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_mvsdio__291_832_mvsd_driver_init6 = internal global ptr @mvsd_driver_init, section ".initcall6.init", align 4
@mvsd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvsd_probe, ptr @mvsd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mvsdio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvsd_driver_exit = internal global ptr @mvsd_driver_exit, section ".exitcall.exit", align 4
@__param_str_maxfreq = internal constant [15 x i8] c"mvsdio.maxfreq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@maxfreq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_maxfreq = internal constant %struct.kernel_param { ptr @__param_str_maxfreq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @maxfreq } }, section "__param", align 4
@__UNIQUE_ID_maxfreqtype292 = internal constant [28 x i8] c"mvsdio.parmtype=maxfreq:int\00", section ".modinfo", align 1
@__param_str_nodma = internal constant [13 x i8] c"mvsdio.nodma\00", align 1
@nodma = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nodma = internal constant %struct.kernel_param { ptr @__param_str_nodma, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @nodma } }, section "__param", align 4
@__UNIQUE_ID_nodmatype293 = internal constant [26 x i8] c"mvsdio.parmtype=nodma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [43 x i8] c"mvsdio.author=Maen Suleiman, Nicolas Pitre\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [62 x i8] c"mvsdio.description=Marvell MMC,SD,SDIO Host Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [36 x i8] c"mvsdio.file=drivers/mmc/host/mvsdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"mvsdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [29 x i8] c"mvsdio.alias=platform:mvsdio\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mvsdio\00", [25 x i8] zeroinitializer }, align 32
@mvsdio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mvsd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no DT node\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvsd_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/mvsdio.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvsd_probe._entry_ptr = internal global ptr @mvsd_probe._entry, section ".printk_index", align 4
@mvsd_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no clock associated\0A\00", [43 x i8] zeroinitializer }, align 32
@mvsd_probe._entry_ptr.8 = internal global ptr @mvsd_probe._entry.6, section ".printk_index", align 4
@mvsd_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @mvsd_request, ptr null, ptr @mvsd_set_ios, ptr @mmc_gpio_get_ro, ptr null, ptr @mvsd_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mvsd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@mvsd_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot assign irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mvsd_probe._entry_ptr.12 = internal global ptr @mvsd_probe._entry.10, section ".printk_index", align 4
@mvsd_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@mvsd_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using GPIO for card detection\0A\00", [33 x i8] zeroinitializer }, align 32
@mvsd_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lacking card detect (fall back to polling)\0A\00", [52 x i8] zeroinitializer }, align 32
@mvsd_request.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvsd_request\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd %d (hw state 0x%04x)\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mvsd_setup_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 77, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FIFO_EMPTY bit missing\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvsd_setup_data\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mvsd_setup_data._entry_ptr = internal global ptr @mvsd_setup_data._entry, section ".printk_index", align 4
@mvsd_setup_data.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"*** wait for FIFO_EMPTY bit (hw=0x%04x, count=%d, jiffies=%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@mvsd_setup_data.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"data %s at 0x%08x: blocks=%d blksz=%d tmout=%u (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@mvsd_setup_data.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fallback to PIO for data at 0x%p size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mvsd_set_ios.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvsd_set_ios\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock off\0A\00", [21 x i8] zeroinitializer }, align 32
@mvsd_set_ios.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock=%d (%d), div=0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@mvsd_set_ios.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctrl 0x%04x: %s %s %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push-pull\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4bit-width\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1bit-width\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mvsd_power_up.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvsd_power_up\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power up\0A\00", [22 x i8] zeroinitializer }, align 32
@mvsd_power_down.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvsd_power_down\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power down\0A\00", [20 x i8] zeroinitializer }, align 32
@mvsd_irq.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mvsd_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"intr 0x%04x intr_en 0x%04x hw_state 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@mvsd_irq.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"spurious irq detected intr 0x%04x intr_en 0x%04x erri 0x%04x erri_en 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@mvsd_irq.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pio %d intr 0x%04x hw_state 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@mvsd_irq.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mvsd_irq.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.45, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"err 0x%04x\0A\00", [20 x i8] zeroinitializer }, align 32
@mvsd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unhandled error status %#04x\0A\00", [34 x i8] zeroinitializer }, align 32
@mvsd_irq._entry_ptr = internal global ptr @mvsd_irq._entry, section ".printk_index", align 4
@mvsd_irq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unhandled interrupt status=0x%04x en=0x%04x pio=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mvsd_irq._entry_ptr.49 = internal global ptr @mvsd_irq._entry.47, section ".printk_index", align 4
@mvsd_finish_data.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvsd_finish_data\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data done: blocks_left=%d, bytes_left=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mvsd_finish_data.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c12err 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@mvsd_timeout_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout waiting for hardware interrupt.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvsd_timeout_timer\00", [45 x i8] zeroinitializer }, align 32
@mvsd_timeout_timer._entry_ptr = internal global ptr @mvsd_timeout_timer._entry, section ".printk_index", align 4
@mvsd_timeout_timer._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hw_state=0x%04x, intr_status=0x%04x intr_en=0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@mvsd_timeout_timer._entry_ptr.57 = internal global ptr @mvsd_timeout_timer._entry.55, section ".printk_index", align 4
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"mvsd_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 822, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [8 x i8] c"maxfreq\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 31, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"nodma\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 32, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 826, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"mvsdio_dt_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 816, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 702, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 728, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"mvsd_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 664, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 755, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 772, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 776, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 783, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 785, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 148, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 77, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 82, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 96, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 120, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 611, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 619, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 652, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 573, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 587, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 352, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 362, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 414, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 480, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 487, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 505, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 308, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 330, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 520, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [29 x i8] c"../drivers/mmc/host/mvsdio.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 521, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_maxfreqtype292, ptr @__UNIQUE_ID_nodmatype293, ptr @__exitcall_mvsd_driver_exit, ptr @__initcall__kmod_mvsdio__291_832_mvsd_driver_init6, ptr @__param_maxfreq, ptr @__param_nodma, ptr @mvsd_driver_exit, ptr @mvsd_irq._entry, ptr @mvsd_irq._entry.47, ptr @mvsd_irq._entry_ptr, ptr @mvsd_irq._entry_ptr.49, ptr @mvsd_probe._entry, ptr @mvsd_probe._entry.10, ptr @mvsd_probe._entry.6, ptr @mvsd_probe._entry_ptr, ptr @mvsd_probe._entry_ptr.12, ptr @mvsd_probe._entry_ptr.8, ptr @mvsd_setup_data._entry, ptr @mvsd_setup_data._entry_ptr, ptr @mvsd_timeout_timer._entry, ptr @mvsd_timeout_timer._entry.55, ptr @mvsd_timeout_timer._entry_ptr, ptr @mvsd_timeout_timer._entry_ptr.57, ptr @mvsd_driver, ptr @maxfreq, ptr @nodma, ptr @.str, ptr @mvsdio_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mvsd_ops, ptr @mvsd_probe.__key, ptr @.str.9, ptr @.str.11, ptr @mvsd_probe.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxfreq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsdio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_setup_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_irq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_timeout_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvsd_timeout_timer._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvsd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvsd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvsd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvsd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvsd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @mmc_alloc_host(i32 noundef 148, ptr noundef %dev) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 70
  %mmc10 = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %mmc10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %mmc10, align 4
  %dev12 = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1, i32 0, i32 8
  %3 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev12, align 4
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %if.then104

if.end22:                                         ; preds = %if.end8
  %call.i = tail call i32 @clk_prepare(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.clk_prepare_enable.exit_crit_edge

if.end22.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call14) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end22.clk_prepare_enable.exit_crit_edge
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mvsd_ops, ptr %ops, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 8
  %6 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3145728, ptr %ocr_avail, align 64
  %base_clock = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %base_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_clock, align 4
  %sub = add i32 %8, 2046
  %div = udiv i32 %sub, 2047
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 5
  %9 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 6
  %10 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50000000, ptr %f_max, align 8
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 24
  %11 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2048, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 25
  %12 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %max_blk_count, align 128
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 21
  %13 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %max_segs, align 4
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 20
  %14 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 134215680, ptr %max_seg_size, align 16
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 23
  %15 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 134215680, ptr %max_req_size, align 8
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call31 = tail call i32 @clk_get_rate(ptr noundef %17) #6
  %div32173 = lshr i32 %call31, 1
  %18 = ptrtoint ptr %base_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div32173, ptr %base_clock, align 4
  %call34 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %clk_prepare_enable.exit.if.then104_crit_edge, label %if.end37

clk_prepare_enable.exit.if.then104_crit_edge:     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then104

if.end37:                                         ; preds = %clk_prepare_enable.exit
  %19 = load i32, ptr @maxfreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %if.end37.do.body42_crit_edge, label %if.then39

if.end37.do.body42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %f_max, align 8
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %if.end37.do.body42_crit_edge
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mvsd_probe.__key, i16 noundef signext 3) #6
  %call46 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call46, ptr %private.i, align 4
  %cmp.i177 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then49, label %if.end52

if.then49:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call46 to i32
  br label %if.then104

if.end52:                                         ; preds = %do.body42
  %call53 = tail call ptr @mv_mbus_dram_info() #6
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %24, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %add.ptr6.i = getelementptr i8, ptr %24, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %add.ptr.1.i = getelementptr i8, ptr %24, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %add.ptr6.1.i = getelementptr i8, ptr %24, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %add.ptr.2.i = getelementptr i8, ptr %24, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %add.ptr6.2.i = getelementptr i8, ptr %24, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %add.ptr.3.i = getelementptr i8, ptr %24, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %add.ptr6.3.i = getelementptr i8, ptr %24, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3.i, i32 0) #6, !srcloc !154
  %num_cs.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call53, i32 0, i32 1
  %25 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp853.i = icmp sgt i32 %26, 0
  br i1 %cmp853.i, label %for.body9.lr.ph.i, label %if.then55.if.end56_crit_edge

if.then55.if.end56_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.body9.lr.ph.i:                                ; preds = %if.then55
  %cs10.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call53, i32 0, i32 2
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %i.154.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc35.i, %for.body9.i.for.body9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %size.i = getelementptr %struct.mbus_dram_window, ptr %cs10.i, i32 %i.154.i, i32 3
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size.i, align 8
  %mbus_attr.i = getelementptr %struct.mbus_dram_window, ptr %cs10.i, i32 %i.154.i, i32 1
  %29 = ptrtoint ptr %mbus_attr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mbus_attr.i, align 1
  %conv.i = zext i8 %30 to i32
  %shl15.i = shl nuw nsw i32 %conv.i, 8
  %31 = ptrtoint ptr %call53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call53, align 8
  %conv17.i = zext i8 %32 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 4
  %33 = trunc i64 %28 to i32
  %34 = add i32 %33, -1
  %35 = and i32 %34, -65536
  %36 = or i32 %35, %shl15.i
  %37 = or i32 %36, %shl18.i
  %conv22.i = or i32 %37, 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv22.i) #6
  %shl23.i = shl i32 %i.154.i, 3
  %add24.i = add i32 %shl23.i, 264
  %add.ptr25.i = getelementptr i8, ptr %24, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %38) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %base29.i = getelementptr %struct.mbus_dram_window, ptr %cs10.i, i32 %i.154.i, i32 2
  %39 = ptrtoint ptr %base29.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %base29.i, align 8
  %conv30.i = trunc i64 %40 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv30.i) #6
  %add32.i = add i32 %shl23.i, 268
  %add.ptr33.i = getelementptr i8, ptr %24, i32 %add32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %41) #6, !srcloc !154
  %inc35.i = add nuw nsw i32 %i.154.i, 1
  %42 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_cs.i, align 4
  %cmp8.i = icmp slt i32 %inc35.i, %43
  br i1 %cmp8.i, label %for.body9.i.for.body9.i_crit_edge, label %for.body9.i.if.end56_crit_edge

for.body9.i.if.end56_crit_edge:                   ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i

if.end56:                                         ; preds = %for.body9.i.if.end56_crit_edge, %if.then55.if.end56_crit_edge, %if.end52.if.end56_crit_edge
  tail call fastcc void @mvsd_power_down(ptr noundef %private.i)
  %call.i178 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @mvsd_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool59.not = icmp eq i32 %call.i178, 0
  br i1 %tobool59.not, label %do.body66, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call) #9
  br label %if.then104

do.body66:                                        ; preds = %if.end56
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @mvsd_timeout_timer, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @mvsd_probe.__key.13) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %call69 = tail call i32 @mmc_add_host(ptr noundef nonnull %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %do.body66.if.then104_crit_edge

do.body66.if.then104_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then104

if.end72:                                         ; preds = %do.body66
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call5, i32 0, i32 16
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 32
  %and = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %do.body75, label %do.body85

do.body75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_probe, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !158

if.then80:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  br label %cleanup

do.body85:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_probe, %if.then97)) #6
          to label %cleanup [label %if.then97], !srcloc !158

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.then104:                                       ; preds = %do.body66.if.then104_crit_edge, %do.end63, %if.then49, %clk_prepare_enable.exit.if.then104_crit_edge, %do.end20
  %ret.0184 = phi i32 [ %22, %if.then49 ], [ %call34, %clk_prepare_enable.exit.if.then104_crit_edge ], [ -22, %do.end20 ], [ %call.i178, %do.end63 ], [ %call69, %do.body66.if.then104_crit_edge ]
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk, align 4
  %cmp.i179 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then104.if.end109_crit_edge, label %if.then107

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then104.if.end109_crit_edge
  tail call void @mmc_free_host(ptr noundef nonnull %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.then97, %do.body85, %if.then80, %do.body75, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %if.then80 ], [ %ret.0184, %if.end109 ], [ 0, %do.body75 ], [ 0, %do.body85 ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvsd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  tail call void @mmc_remove_host(ptr noundef %1) #6
  %timer = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call fastcc void @mvsd_power_down(ptr noundef %private.i)
  %clk = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mmc_free_host(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvsd_power_down(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_power_down.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_power_down, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_power_down.__UNIQUE_ID_ddebug285, ptr noundef %3, ptr noundef nonnull @.str.40) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %add.ptr13 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %add.ptr17 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 536870912) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %add.ptr21 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %add.ptr25 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %add.ptr29 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %add.ptr33 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -65536) #6, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvsd_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %val = alloca [2 x i16], align 4
  %val268 = alloca [2 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_irq.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %add.ptr9 = getelementptr i8, ptr %1, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !167
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %add.ptr15 = getelementptr i8, ptr %1, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !167
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_irq.__UNIQUE_ID_ddebug279, ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %7, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr21 = getelementptr i8, ptr %1, i32 112
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %land.lhs.true, label %do.end.if.end75_crit_edge

do.end.if.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true:                                    ; preds = %do.end
  %add.ptr28 = getelementptr i8, ptr %1, i32 116
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool32.not = icmp eq i32 %11, 0
  br i1 %tobool32.not, label %do.body34, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.body34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_irq.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_irq, %if.then46)) #6
          to label %cleanup [label %if.then46], !srcloc !158

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev47, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !167
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %add.ptr62 = getelementptr i8, ptr %1, i32 100
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #6, !srcloc !167
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !167
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_irq.__UNIQUE_ID_ddebug280, ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #6
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %do.end.if.end75_crit_edge
  %lock = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %pio_size = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %pio_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pio_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool76.not = icmp eq i32 %23, 0
  br i1 %tobool76.not, label %if.end75.do.body330_crit_edge, label %land.lhs.true77

if.end75.do.body330_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body330

land.lhs.true77:                                  ; preds = %if.end75
  %intr_en = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 4
  %24 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intr_en, align 4
  %and = and i32 %3, 1056
  %and78 = and i32 %and, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true216, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77
  %pio_ptr = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 7
  %26 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pio_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp578 = icmp slt i32 %23, 32
  %and82579 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82579)
  %tobool83.not580 = icmp eq i32 %and82579, 0
  %or.cond581 = select i1 %cmp578, i1 true, i1 %tobool83.not580
  br i1 %or.cond581, label %if.then80.while.end_crit_edge, label %while.body.lr.ph

if.then80.while.end_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then80
  %add.ptr84 = getelementptr i8, ptr %1, i32 64
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %p.0583 = phi ptr [ %27, %while.body.lr.ph ], [ %add.ptr85, %while.body.while.body_crit_edge ]
  %s.0582 = phi i32 [ %23, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  tail call void @__raw_readsw(ptr noundef %add.ptr84, ptr noundef %p.0583, i32 noundef 16) #6
  %add.ptr85 = getelementptr i16, ptr %p.0583, i32 16
  %sub = add nsw i32 %s.0582, -32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %s.0582)
  %cmp = icmp ult i32 %s.0582, 64
  %and82 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool83.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then80.while.end_crit_edge
  %s.0.lcssa = phi i32 [ %23, %if.then80.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %27, %if.then80.while.end_crit_edge ], [ %add.ptr85, %while.body.while.end_crit_edge ]
  %intr_status.0.lcssa = phi i32 [ %3, %if.then80.while.end_crit_edge ], [ %29, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %s.0.lcssa)
  %cmp92 = icmp slt i32 %s.0.lcssa, 33
  br i1 %cmp92, label %while.cond94.preheader, label %while.end.do.body188_crit_edge

while.end.do.body188_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body188

while.cond94.preheader:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %s.0.lcssa)
  %cmp95586 = icmp slt i32 %s.0.lcssa, 4
  %and97587 = and i32 %intr_status.0.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97587)
  %tobool98.not588 = icmp eq i32 %and97587, 0
  %or.cond548589 = select i1 %cmp95586, i1 true, i1 %tobool98.not588
  br i1 %or.cond548589, label %while.cond94.preheader.while.end130_crit_edge, label %do.body101.lr.ph

while.cond94.preheader.while.end130_crit_edge:    ; preds = %while.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end130

do.body101.lr.ph:                                 ; preds = %while.cond94.preheader
  %add.ptr104 = getelementptr i8, ptr %1, i32 64
  br label %do.body101

do.body101:                                       ; preds = %do.body101.do.body101_crit_edge, %do.body101.lr.ph
  %p.1591 = phi ptr [ %p.0.lcssa, %do.body101.lr.ph ], [ %incdec.ptr112, %do.body101.do.body101_crit_edge ]
  %s.1590 = phi i32 [ %s.0.lcssa, %do.body101.lr.ph ], [ %sub123, %do.body101.do.body101_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %p.1591, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #6, !srcloc !167
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %conv = trunc i32 %31 to i16
  %32 = ptrtoint ptr %p.1591 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %conv, ptr %p.1591, align 1
  %incdec.ptr112 = getelementptr i16, ptr %p.1591, i32 2
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #6, !srcloc !167
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %conv119 = trunc i32 %34 to i16
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv119, ptr %incdec.ptr, align 1
  %sub123 = add nsw i32 %s.1590, -4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %s.1590)
  %cmp95 = icmp ult i32 %s.1590, 8
  %and97 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %or.cond548 = select i1 %cmp95, i1 true, i1 %tobool98.not
  br i1 %or.cond548, label %do.body101.while.end130_crit_edge, label %do.body101.do.body101_crit_edge

do.body101.do.body101_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

do.body101.while.end130_crit_edge:                ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end130

while.end130:                                     ; preds = %do.body101.while.end130_crit_edge, %while.cond94.preheader.while.end130_crit_edge
  %s.1.lcssa = phi i32 [ %s.0.lcssa, %while.cond94.preheader.while.end130_crit_edge ], [ %sub123, %do.body101.while.end130_crit_edge ]
  %p.1.lcssa = phi ptr [ %p.0.lcssa, %while.cond94.preheader.while.end130_crit_edge ], [ %incdec.ptr112, %do.body101.while.end130_crit_edge ]
  %intr_status.1.lcssa = phi i32 [ %intr_status.0.lcssa, %while.cond94.preheader.while.end130_crit_edge ], [ %37, %do.body101.while.end130_crit_edge ]
  %tobool98.not.lcssa = phi i1 [ %tobool98.not588, %while.cond94.preheader.while.end130_crit_edge ], [ %tobool98.not, %do.body101.while.end130_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.1.lcssa)
  %tobool131.not = icmp eq i32 %s.1.lcssa, 0
  br i1 %tobool131.not, label %while.end130.if.then165_crit_edge, label %land.lhs.true132

while.end130.if.then165_crit_edge:                ; preds = %while.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then165

land.lhs.true132:                                 ; preds = %while.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %s.1.lcssa)
  %cmp133 = icmp sgt i32 %s.1.lcssa, 3
  %or.cond549 = select i1 %cmp133, i1 true, i1 %tobool98.not.lcssa
  br i1 %or.cond549, label %if.else, label %if.then138

if.then138:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %add.ptr141 = getelementptr i8, ptr %1, i32 64
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #6, !srcloc !167
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %conv145 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv145, ptr %val, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #6, !srcloc !167
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %conv152 = trunc i32 %42 to i16
  %arrayidx153 = getelementptr inbounds [2 x i16], ptr %val, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv152, ptr %arrayidx153, align 2
  %add.ptr154 = getelementptr inbounds i8, ptr %val, i32 4
  %idx.neg = sub i32 0, %s.1.lcssa
  %add.ptr155 = getelementptr i8, ptr %add.ptr154, i32 %idx.neg
  %44 = call ptr @memcpy(ptr %p.1.lcssa, ptr %add.ptr155, i32 %s.1.lcssa)
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %if.then165

if.then165:                                       ; preds = %if.then138, %while.end130.if.then165_crit_edge
  %intr_status.2568 = phi i32 [ %intr_status.1.lcssa, %while.end130.if.then165_crit_edge ], [ %46, %if.then138 ]
  %47 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %intr_en, align 4
  %and167 = and i32 %48, -1057
  store i32 %and167, ptr %intr_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %intr_en, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %51) #6, !srcloc !154
  br label %do.body188

if.else:                                          ; preds = %land.lhs.true132
  %52 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %intr_en, align 4
  %and174 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.else.do.body188_crit_edge, label %if.then176

if.else.do.body188_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body188

if.then176:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and178 = and i32 %53, -1057
  %or = or i32 %and178, 32
  %54 = ptrtoint ptr %intr_en to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or, ptr %intr_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intr_en, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %57) #6, !srcloc !154
  br label %do.body188

do.body188:                                       ; preds = %if.then176, %if.else.do.body188_crit_edge, %if.then165, %while.end.do.body188_crit_edge
  %s.3 = phi i32 [ 0, %if.then165 ], [ %s.1.lcssa, %if.then176 ], [ %s.1.lcssa, %if.else.do.body188_crit_edge ], [ %s.0.lcssa, %while.end.do.body188_crit_edge ]
  %p.2 = phi ptr [ %p.1.lcssa, %if.then165 ], [ %p.1.lcssa, %if.then176 ], [ %p.1.lcssa, %if.else.do.body188_crit_edge ], [ %p.0.lcssa, %while.end.do.body188_crit_edge ]
  %intr_status.3 = phi i32 [ %intr_status.2568, %if.then165 ], [ %intr_status.1.lcssa, %if.then176 ], [ %intr_status.1.lcssa, %if.else.do.body188_crit_edge ], [ %intr_status.0.lcssa, %while.end.do.body188_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_irq.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_irq, %if.then200)) #6
          to label %do.end210 [label %if.then200], !srcloc !158

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #8
  %dev201 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %58 = ptrtoint ptr %dev201 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev201, align 4
  %add.ptr204 = getelementptr i8, ptr %1, i32 72
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr204) #6, !srcloc !167
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_irq.__UNIQUE_ID_ddebug281, ptr noundef %59, ptr noundef nonnull @.str.44, i32 noundef %s.3, i32 noundef %intr_status.3, i32 noundef %61) #6
  br label %do.end210

do.end210:                                        ; preds = %if.then200, %do.body188
  %62 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %p.2, ptr %pio_ptr, align 4
  br label %do.body330.sink.split

land.lhs.true216:                                 ; preds = %land.lhs.true77
  %63 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %intr_en, align 4
  %and218 = and i32 %3, 2064
  %and219 = and i32 %and218, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %land.lhs.true216.do.body330_crit_edge, label %if.then221

land.lhs.true216.do.body330_crit_edge:            ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body330

if.then221:                                       ; preds = %land.lhs.true216
  %pio_ptr223 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 7
  %65 = ptrtoint ptr %pio_ptr223 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pio_ptr223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp227596 = icmp slt i32 %23, 4
  %and230597 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230597)
  %tobool231.not598 = icmp eq i32 %and230597, 0
  %or.cond550599 = select i1 %cmp227596, i1 true, i1 %tobool231.not598
  br i1 %or.cond550599, label %if.then221.while.end259_crit_edge, label %do.body234.lr.ph

if.then221.while.end259_crit_edge:                ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end259

do.body234.lr.ph:                                 ; preds = %if.then221
  %add.ptr242 = getelementptr i8, ptr %1, i32 64
  br label %do.body234

do.body234:                                       ; preds = %do.body234.do.body234_crit_edge, %do.body234.lr.ph
  %p222.0601 = phi ptr [ %66, %do.body234.lr.ph ], [ %incdec.ptr247, %do.body234.do.body234_crit_edge ]
  %s224.0600 = phi i32 [ %23, %do.body234.lr.ph ], [ %sub252, %do.body234.do.body234_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %incdec.ptr238 = getelementptr i16, ptr %p222.0601, i32 1
  %67 = ptrtoint ptr %p222.0601 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %p222.0601, align 1
  %conv241 = zext i16 %68 to i32
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv241)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 %69) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %incdec.ptr247 = getelementptr i16, ptr %p222.0601, i32 2
  %70 = ptrtoint ptr %incdec.ptr238 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %incdec.ptr238, align 1
  %conv250 = zext i16 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv250)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 %72) #6, !srcloc !154
  %sub252 = add nsw i32 %s224.0600, -4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %s224.0600)
  %cmp227 = icmp ult i32 %s224.0600, 8
  %and230 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  %or.cond550 = select i1 %cmp227, i1 true, i1 %tobool231.not
  br i1 %or.cond550, label %do.body234.while.end259_crit_edge, label %do.body234.do.body234_crit_edge

do.body234.do.body234_crit_edge:                  ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body234

do.body234.while.end259_crit_edge:                ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end259

while.end259:                                     ; preds = %do.body234.while.end259_crit_edge, %if.then221.while.end259_crit_edge
  %s224.0.lcssa = phi i32 [ %23, %if.then221.while.end259_crit_edge ], [ %sub252, %do.body234.while.end259_crit_edge ]
  %p222.0.lcssa = phi ptr [ %66, %if.then221.while.end259_crit_edge ], [ %incdec.ptr247, %do.body234.while.end259_crit_edge ]
  %intr_status.4.lcssa = phi i32 [ %3, %if.then221.while.end259_crit_edge ], [ %74, %do.body234.while.end259_crit_edge ]
  %tobool231.not.lcssa = phi i1 [ %tobool231.not598, %if.then221.while.end259_crit_edge ], [ %tobool231.not, %do.body234.while.end259_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %s224.0.lcssa)
  %cmp260 = icmp slt i32 %s224.0.lcssa, 4
  br i1 %cmp260, label %if.then262, label %while.end259.do.body303_crit_edge

while.end259.do.body303_crit_edge:                ; preds = %while.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body303

if.then262:                                       ; preds = %while.end259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s224.0.lcssa)
  %tobool263.not = icmp eq i32 %s224.0.lcssa, 0
  br i1 %tobool263.not, label %if.then262.if.then293_crit_edge, label %land.lhs.true264

if.then262.if.then293_crit_edge:                  ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then293

land.lhs.true264:                                 ; preds = %if.then262
  br i1 %tobool231.not.lcssa, label %land.lhs.true264.do.body303_crit_edge, label %if.then267

land.lhs.true264.do.body303_crit_edge:            ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body303

if.then267:                                       ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val268) #6
  %75 = ptrtoint ptr %val268 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %val268, align 4
  %add.ptr269 = getelementptr inbounds i8, ptr %val268, i32 4
  %idx.neg270 = sub i32 0, %s224.0.lcssa
  %add.ptr271 = getelementptr i8, ptr %add.ptr269, i32 %idx.neg270
  %76 = call ptr @memcpy(ptr %add.ptr271, ptr %p222.0.lcssa, i32 %s224.0.lcssa)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %val268 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %val268, align 4
  %conv276 = zext i16 %78 to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv276)
  %add.ptr277 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 %79) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %arrayidx281 = getelementptr inbounds [2 x i16], ptr %val268, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx281, align 2
  %conv282 = zext i16 %81 to i32
  %82 = tail call i32 @llvm.bswap.i32(i32 %conv282)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 %82) #6, !srcloc !154
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val268) #6
  br label %if.then293

if.then293:                                       ; preds = %if.then267, %if.then262.if.then293_crit_edge
  %intr_status.5573 = phi i32 [ %intr_status.4.lcssa, %if.then262.if.then293_crit_edge ], [ %84, %if.then267 ]
  %85 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %intr_en, align 4
  %and295 = and i32 %86, -2065
  store i32 %and295, ptr %intr_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %intr_en, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %89) #6, !srcloc !154
  br label %do.body303

do.body303:                                       ; preds = %if.then293, %land.lhs.true264.do.body303_crit_edge, %while.end259.do.body303_crit_edge
  %s224.2 = phi i32 [ 0, %if.then293 ], [ %s224.0.lcssa, %while.end259.do.body303_crit_edge ], [ %s224.0.lcssa, %land.lhs.true264.do.body303_crit_edge ]
  %intr_status.6 = phi i32 [ %intr_status.5573, %if.then293 ], [ %intr_status.4.lcssa, %while.end259.do.body303_crit_edge ], [ %intr_status.4.lcssa, %land.lhs.true264.do.body303_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_irq.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_irq, %if.then315)) #6
          to label %do.end325 [label %if.then315], !srcloc !158

if.then315:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #8
  %dev316 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %90 = ptrtoint ptr %dev316 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev316, align 4
  %add.ptr319 = getelementptr i8, ptr %1, i32 72
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319) #6, !srcloc !167
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_irq.__UNIQUE_ID_ddebug282, ptr noundef %91, ptr noundef nonnull @.str.44, i32 noundef %s224.2, i32 noundef %intr_status.6, i32 noundef %93) #6
  br label %do.end325

do.end325:                                        ; preds = %if.then315, %do.body303
  %94 = ptrtoint ptr %pio_ptr223 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %p222.0.lcssa, ptr %pio_ptr223, align 4
  br label %do.body330.sink.split

do.body330.sink.split:                            ; preds = %do.end325, %do.end210
  %s.3.sink = phi i32 [ %s.3, %do.end210 ], [ %s224.2, %do.end325 ]
  %intr_status.7.ph = phi i32 [ %intr_status.3, %do.end210 ], [ %intr_status.6, %do.end325 ]
  %95 = ptrtoint ptr %pio_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %s.3.sink, ptr %pio_size, align 4
  br label %do.body330

do.body330:                                       ; preds = %do.body330.sink.split, %land.lhs.true216.do.body330_crit_edge, %if.end75.do.body330_crit_edge
  %tobool409.not = phi i1 [ false, %do.body330.sink.split ], [ true, %if.end75.do.body330_crit_edge ], [ true, %land.lhs.true216.do.body330_crit_edge ]
  %intr_status.7 = phi i32 [ %intr_status.7.ph, %do.body330.sink.split ], [ %3, %if.end75.do.body330_crit_edge ], [ %3, %land.lhs.true216.do.body330_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %intr_status.7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %96) #6, !srcloc !154
  %intr_en334 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 4
  %97 = ptrtoint ptr %intr_en334 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intr_en334, align 4
  %and335 = and i32 %intr_status.7, -3361
  %and336 = and i32 %and335, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %if.end403, label %if.then338

if.then338:                                       ; preds = %do.body330
  %mrq339 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 1
  %99 = ptrtoint ptr %mrq339 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mrq339, align 4
  %cmd340 = getelementptr inbounds %struct.mmc_request, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %cmd340 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd340, align 4
  %timer = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 12
  %call341 = tail call i32 @del_timer(ptr noundef %timer) #6
  %103 = ptrtoint ptr %mrq339 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %mrq339, align 4
  %104 = ptrtoint ptr %intr_en334 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %intr_en334, align 4
  %and344 = and i32 %105, 256
  store i32 %and344, ptr %intr_en334, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %intr_en334 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %intr_en334, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %108) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %add.ptr353 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr353, i32 0) #6, !srcloc !154
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %and355 = and i32 %intr_status.7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.else358, label %if.then357

if.then357:                                       ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %102, i32 0, i32 5
  %109 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -71, ptr %error, align 4
  br label %if.end386

if.else358:                                       ; preds = %if.then338
  %and359 = and i32 %intr_status.7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359)
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %if.else358.if.end386_crit_edge, label %if.then361

if.else358.if.end386_crit_edge:                   ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end386

if.then361:                                       ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr364 = getelementptr i8, ptr %1, i32 100
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr364) #6, !srcloc !167
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_irq.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_irq, %if.then380)) #6
          to label %if.end386 [label %if.then380], !srcloc !158

if.then380:                                       ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #8
  %dev381 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %112 = ptrtoint ptr %dev381 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev381, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_irq.__UNIQUE_ID_ddebug283, ptr noundef %113, ptr noundef nonnull @.str.45, i32 noundef %111) #6
  br label %if.end386

if.end386:                                        ; preds = %if.then380, %if.then361, %if.else358.if.end386_crit_edge, %if.then357
  %err_status.0 = phi i32 [ 0, %if.then357 ], [ %111, %if.then380 ], [ 0, %if.else358.if.end386_crit_edge ], [ %111, %if.then361 ]
  %call387 = tail call fastcc i32 @mvsd_finish_cmd(ptr noundef %dev, ptr noundef %102, i32 noundef %err_status.0)
  %data = getelementptr inbounds %struct.mmc_request, ptr %100, i32 0, i32 2
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 4
  %tobool388.not = icmp eq ptr %115, null
  br i1 %tobool388.not, label %if.end386.if.end392_crit_edge, label %if.then389

if.end386.if.end392_crit_edge:                    ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end392

if.then389:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #8
  %call391 = tail call fastcc i32 @mvsd_finish_data(ptr noundef %dev, ptr noundef nonnull %115, i32 noundef %call387)
  br label %if.end392

if.end392:                                        ; preds = %if.then389, %if.end386.if.end392_crit_edge
  %err_status.1 = phi i32 [ %call391, %if.then389 ], [ %call387, %if.end386.if.end392_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_status.1)
  %tobool393.not = icmp eq i32 %err_status.1, 0
  br i1 %tobool393.not, label %if.end392.if.end403.thread_crit_edge, label %do.end397

if.end392.if.end403.thread_crit_edge:             ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end403.thread

do.end397:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #8
  %dev398 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %116 = ptrtoint ptr %dev398 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev398, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.46, i32 noundef %err_status.1) #9
  %error399 = getelementptr inbounds %struct.mmc_command, ptr %102, i32 0, i32 5
  %118 = ptrtoint ptr %error399 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -42, ptr %error399, align 4
  br label %if.end403.thread

if.end403:                                        ; preds = %do.body330
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %and404 = and i32 %intr_status.7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %if.end408, label %if.end403.if.then406_crit_edge

if.end403.if.then406_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then406

if.end403.thread:                                 ; preds = %do.end397, %if.end392.if.end403.thread_crit_edge
  %mmc = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 13
  %119 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %120, ptr noundef %100) #6
  %and404611 = and i32 %intr_status.7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404611)
  %tobool405.not612 = icmp eq i32 %and404611, 0
  br i1 %tobool405.not612, label %if.end403.thread.cleanup_crit_edge, label %if.end403.thread.if.then406_crit_edge

if.end403.thread.if.then406_crit_edge:            ; preds = %if.end403.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then406

if.end403.thread.cleanup_crit_edge:               ; preds = %if.end403.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then406:                                       ; preds = %if.end403.thread.if.then406_crit_edge, %if.end403.if.then406_crit_edge
  %mmc407 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 13
  %121 = ptrtoint ptr %mmc407 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmc407, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %126(ptr noundef %122, i32 noundef 0) #6
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 49
  %127 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 47
  %128 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %129, null
  br i1 %tobool.not.i, label %if.then406.cleanup_crit_edge, label %if.then.i

if.then406.cleanup_crit_edge:                     ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %129) #6
  br label %cleanup

if.end408:                                        ; preds = %if.end403
  br i1 %tobool409.not, label %do.end414, label %if.end408.cleanup_crit_edge

if.end408.cleanup_crit_edge:                      ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end414:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #8
  %dev415 = getelementptr inbounds %struct.mvsd_host, ptr %dev, i32 0, i32 14
  %130 = ptrtoint ptr %dev415 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev415, align 4
  %132 = ptrtoint ptr %intr_en334 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %intr_en334, align 4
  %134 = ptrtoint ptr %pio_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pio_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.48, i32 noundef %intr_status.7, i32 noundef %133, i32 noundef %135) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end414, %if.end408.cleanup_crit_edge, %if.then.i, %if.then406.cleanup_crit_edge, %if.end403.thread.cleanup_crit_edge, %if.then46, %do.body34
  %retval.0 = phi i32 [ 0, %do.end414 ], [ 1, %if.then46 ], [ 1, %if.end408.cleanup_crit_edge ], [ 1, %do.body34 ], [ 1, %if.then406.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.end403.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvsd_timeout_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -88
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr i8, ptr %t, i32 -80
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mrq6 = getelementptr i8, ptr %t, i32 -84
  %2 = ptrtoint ptr %mrq6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq6, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end66.critedge, label %do.end9

do.end9:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %t, i32 52
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.53) #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr14 = getelementptr i8, ptr %1, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !167
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  %add.ptr20 = getelementptr i8, ptr %1, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !167
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %add.ptr26 = getelementptr i8, ptr %1, i32 112
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !167
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.56, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %mrq6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mrq6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %add.ptr34 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 65536) #6, !srcloc !154
  %xfer_mode = getelementptr i8, ptr %t, i32 -36
  %15 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xfer_mode, align 4
  %and = and i32 %16, 8
  store i32 %and, ptr %xfer_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xfer_mode, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add.ptr39 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %19) #6, !srcloc !154
  %intr_en = getelementptr i8, ptr %t, i32 -32
  %20 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_en, align 4
  %and40 = and i32 %21, 256
  store i32 %and40, ptr %intr_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr_en, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %24) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %add.ptr49 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %add.ptr53 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -65536) #6, !srcloc !154
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -110, ptr %error, align 4
  %28 = load ptr, ptr %cmd, align 4
  %call55 = tail call fastcc i32 @mvsd_finish_cmd(ptr noundef %add.ptr, ptr noundef %28, i32 noundef 0)
  %data = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %tobool56.not = icmp eq ptr %30, null
  br i1 %tobool56.not, label %do.end9.if.then65_crit_edge, label %if.then57

do.end9.if.then65_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then57:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %error59 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %error59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -110, ptr %error59, align 4
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %call61 = tail call fastcc i32 @mvsd_finish_data(ptr noundef %add.ptr, ptr noundef %33, i32 noundef 0)
  br label %if.then65

if.then65:                                        ; preds = %if.then57, %do.end9.if.then65_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %mmc = getelementptr i8, ptr %t, i32 48
  %34 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %35, ptr noundef nonnull %3) #6
  br label %if.end66

if.end66.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %if.end66

if.end66:                                         ; preds = %if.end66.critedge, %if.then65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvsd_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %mrq2 = getelementptr inbounds %struct.mvsd_host, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq2, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !207

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mvsdio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #6, !srcloc !208
  unreachable

do.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mrq, ptr %mrq2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_request.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_request, %if.then20)) #6
          to label %do.end26 [label %if.then20], !srcloc !158

if.then20:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_request.__UNIQUE_ID_ddebug276, ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %10, i32 noundef %12) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.end9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %shl = shl i32 %14, 8
  %flags28 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags28, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, 3
  br label %if.end46

if.else:                                          ; preds = %do.end26
  %and32 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or35 = or i32 %shl, 1
  br label %if.end46

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and38 = shl i32 %16, 1
  %17 = and i32 %and38, 2
  %18 = or i32 %17, %shl
  br label %if.end46

if.end46:                                         ; preds = %if.else36, %if.then34, %if.then30
  %cmdreg.0 = phi i32 [ %or, %if.then30 ], [ %or35, %if.then34 ], [ %18, %if.else36 ]
  %and48 = shl i32 %16, 1
  %19 = and i32 %and48, 8
  %and54 = and i32 %16, 16
  %and60 = and i32 %16, 1
  %20 = shl nuw nsw i32 %and60, 14
  %21 = shl nuw nsw i32 %and60, 7
  %22 = or i32 %19, %and54
  %23 = or i32 %22, %21
  %24 = or i32 %23, %cmdreg.0
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %tobool66.not = icmp eq ptr %26, null
  br i1 %tobool66.not, label %if.else134, label %if.then67

if.then67:                                        ; preds = %if.end46
  %or70 = or i32 %24, 36
  %flags72 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags72, align 4
  %and73 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %spec.select268 = select i1 %tobool74.not, i32 2, i32 18
  %call78 = tail call fastcc i32 @mvsd_setup_data(ptr noundef %private.i, ptr noundef nonnull %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then67.if.end95_crit_edge, label %if.then80

if.then67.if.end95_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then80:                                        ; preds = %if.then67
  %or81 = or i32 %spec.select268, 64
  %29 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags72, align 4
  %and83 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %or86 = or i32 %20, 16
  br label %if.end95

if.else87:                                        ; preds = %if.then80
  %pio_size = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %31 = ptrtoint ptr %pio_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pio_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %32)
  %cmp88 = icmp ugt i32 %32, 32
  br i1 %cmp88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #8
  %or90 = or i32 %20, 1024
  br label %if.end95

if.else91:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #8
  %or92 = or i32 %20, 32
  br label %if.end95

if.end95:                                         ; preds = %if.else91, %if.then89, %if.then85, %if.then67.if.end95_crit_edge
  %intr.1 = phi i32 [ %or86, %if.then85 ], [ %or90, %if.then89 ], [ %or92, %if.else91 ], [ %20, %if.then67.if.end95_crit_edge ]
  %xfer.1 = phi i32 [ %or81, %if.then85 ], [ %or81, %if.then89 ], [ %or81, %if.else91 ], [ %spec.select268, %if.then67.if.end95_crit_edge ]
  %stop = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 8
  %33 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop, align 4
  %tobool96.not = icmp eq ptr %34, null
  br i1 %tobool96.not, label %if.else131, label %if.then97

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arg = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arg, align 4
  %and103 = and i32 %36, 65535
  %37 = tail call i32 @llvm.bswap.i32(i32 %and103)
  %add.ptr104 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %37) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = shl i32 %40, 16
  %add.ptr109 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %41) #6, !srcloc !154
  %flags110 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 3
  %42 = ptrtoint ptr %flags110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags110, align 4
  %and111 = lshr i32 %43, 3
  %44 = and i32 %and111, 3
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %34, align 4
  %shl123 = shl i32 %46, 8
  %or124 = or i32 %44, %shl123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %or124)
  %add.ptr128 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %47) #6, !srcloc !154
  %or129 = or i32 %xfer.1, 4
  %or130 = or i32 %intr.1, 8192
  br label %do.body137

if.else131:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %or132 = or i32 %intr.1, 2
  br label %do.body137

if.else134:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %or135 = or i32 %20, 1
  br label %do.body137

do.body137:                                       ; preds = %if.else134, %if.else131, %if.then97
  %intr.3 = phi i32 [ %or135, %if.else134 ], [ %or130, %if.then97 ], [ %or132, %if.else131 ]
  %xfer.3 = phi i32 [ 0, %if.else134 ], [ %or129, %if.then97 ], [ %xfer.1, %if.else131 ]
  %cmdreg.4 = phi i32 [ %24, %if.else134 ], [ %or70, %if.then97 ], [ %or70, %if.else131 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %arg140 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %arg140 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arg140, align 4
  %and141 = and i32 %49, 65535
  %50 = tail call i32 @llvm.bswap.i32(i32 %and141)
  %add.ptr142 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %50) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %arg140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arg140, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = shl i32 %53, 16
  %add.ptr148 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %54) #6, !srcloc !154
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %xfer_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %55 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xfer_mode, align 4
  %and159 = and i32 %56, 8
  %or161 = or i32 %and159, %xfer.3
  store i32 %or161, ptr %xfer_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xfer_mode, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %add.ptr166 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %59) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %add.ptr170 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 -65537) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %add.ptr174 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 -65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %cmdreg.4)
  %add.ptr178 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %60) #6, !srcloc !154
  %intr_en = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %61 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %intr_en, align 4
  %and179 = and i32 %62, 256
  %or180 = or i32 %intr.3, %and179
  %or182 = or i32 %or180, 32768
  store i32 %or182, ptr %intr_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %intr_en, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %add.ptr187 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %65) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %add.ptr191 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 -65536) #6, !srcloc !154
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 6
  %66 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %busy_timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool192.not = icmp eq i32 %67, 0
  %spec.select270 = select i1 %tobool192.not, i32 5000, i32 %67
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select270) #6
  %timer = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %add = add i32 %call2.i, %68
  %call195 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call154) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvsd_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mvsd_power_up(ptr noundef %private.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %add.ptr8 = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -16318464) #6, !srcloc !154
  %clock9 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %clock9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clock9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_set_ios.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_set_ios, %if.then14)) #6
          to label %if.end62 [label %if.then14], !srcloc !158

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_set_ios.__UNIQUE_ID_ddebug286, ptr noundef %8, ptr noundef nonnull @.str.28) #6
  br label %if.end62

if.else:                                          ; preds = %if.end
  %clock19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %clock19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %10)
  %cmp20.not = icmp eq i32 %5, %10
  br i1 %cmp20.not, label %if.else.if.end62_crit_edge, label %if.then22

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %base_clock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %base_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_clock, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %12
  %div = udiv i32 %sub, %5
  %sub25 = add i32 %div, -1
  %13 = tail call i32 @llvm.umin.i32(i32 %sub25, i32 2047)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr33 = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %14) #6, !srcloc !154
  %15 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ios, align 4
  %17 = ptrtoint ptr %clock19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %clock19, align 4
  %18 = ptrtoint ptr %base_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_clock, align 4
  %add37 = add nuw nsw i32 %13, 1
  %div38 = udiv i32 %19, %add37
  %div39 = udiv i32 1000000000, %div38
  %ns_per_clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %20 = ptrtoint ptr %ns_per_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div39, ptr %ns_per_clk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_set_ios.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_set_ios, %if.then52)) #6
          to label %if.end62 [label %if.then52], !srcloc !158

if.then52:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %dev53 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %21 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev53, align 4
  %23 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ios, align 4
  %25 = ptrtoint ptr %base_clock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_clock, align 4
  %div57 = udiv i32 %26, %add37
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_set_ios.__UNIQUE_ID_ddebug287, ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef %24, i32 noundef %div57, i32 noundef %13) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then52, %if.then22, %if.else.if.end62_crit_edge, %if.then14, %do.body
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %27 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp66 = icmp eq i8 %28, 2
  %spec.select = select i1 %cmp66, i32 63497, i32 63496
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %29 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp72 = icmp eq i8 %30, 2
  %or75 = or i32 %spec.select, 512
  %ctrl_reg.1 = select i1 %cmp72, i32 %or75, i32 %spec.select
  %ctrl = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %ctrl_reg.1, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.1)
  %add.ptr80 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %32) #6, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_set_ios.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_set_ios, %if.then93)) #6
          to label %do.end105 [label %if.then93], !srcloc !158

if.then93:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %dev94 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev94, align 4
  %and95 = and i32 %ctrl_reg.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %cond = select i1 %tobool96.not, ptr @.str.32, ptr @.str.31
  %and97 = and i32 %ctrl_reg.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %cond99 = select i1 %tobool98.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_set_ios.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.30, i32 noundef %ctrl_reg.1, ptr noundef nonnull %cond, ptr noundef nonnull %cond99, ptr noundef nonnull @.str.36) #6
  br label %do.end105

do.end105:                                        ; preds = %if.then93, %if.end62
  %35 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp108 = icmp eq i8 %36, 0
  br i1 %cmp108, label %if.then110, label %do.end105.if.end111_crit_edge

do.end105.if.end111_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then110:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mvsd_power_down(ptr noundef %private.i)
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %do.end105.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvsd_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %xfer_mode7 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %xfer_mode7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xfer_mode7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %3, 8
  %4 = ptrtoint ptr %xfer_mode7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %xfer_mode7, align 4
  %intr_en = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %5 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intr_en, align 4
  %or6 = or i32 %6, 256
  store i32 %or6, ptr %intr_en, align 4
  br label %do.body10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %3, -9
  %7 = ptrtoint ptr %xfer_mode7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %xfer_mode7, align 4
  %intr_en8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %8 = ptrtoint ptr %intr_en8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_en8, align 4
  %and9 = and i32 %9, -257
  store i32 %and9, ptr %intr_en8, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %xfer_mode13 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %xfer_mode13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xfer_mode13, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %intr_en17 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %13 = ptrtoint ptr %intr_en17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_en17, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr18 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #6, !srcloc !154
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvsd_setup_data(ptr nocapture noundef %host, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  %3 = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then
  %count.0 = phi i32 [ 0, %if.then ], [ %inc, %if.end.do.body_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.19) #9
  br label %do.body14

if.end:                                           ; preds = %do.body
  %inc = add i32 %count.0, 1
  %and11 = and i32 %6, 8192
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.do.body_crit_edge, label %if.end.do.body14_crit_edge

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body14:                                        ; preds = %if.end.do.body14_crit_edge, %do.end
  %count.1 = phi i32 [ %count.0, %do.end ], [ %inc, %if.end.do.body14_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_setup_data.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_setup_data, %if.then21)) #6
          to label %if.end28 [label %if.then21], !srcloc !158

if.then21:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub24 = sub i32 %12, %4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_setup_data.__UNIQUE_ID_ddebug273, ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %6, i32 noundef %count.1, i32 noundef %sub24) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %do.body14, %entry.if.end28_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %ns_per_clk = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 9
  %15 = ptrtoint ptr %ns_per_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_per_clk, align 4
  %add29 = add i32 %14, -1
  %sub30 = add i32 %add29, %16
  %div = udiv i32 %sub30, %16
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout_clks, align 4
  %add32 = add i32 %18, %div
  %sub33 = add i32 %add32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %tobool.not.i = icmp eq i32 %sub33, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %sub33, i1 true) #6, !range !229
  %sub.i.op = sub nsw i32 20, %19
  %20 = tail call i32 @llvm.smax.i32(i32 %sub.i.op, i32 0)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 15)
  %22 = select i1 %tobool.not.i, i32 0, i32 %21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_setup_data.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_setup_data, %if.then54)) #6
          to label %do.end61 [label %if.then54], !srcloc !158

if.then54:                                        ; preds = %if.end28
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !207

do.body2.i.i:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !230
  unreachable

sg_virt.exit:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and56 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond = select i1 %tobool57.not, ptr @.str.25, ptr @.str.24
  %dev55 = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %29 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev55, align 4
  %and.i.i = and i32 %26, -4
  %31 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %31) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %33
  %34 = ptrtoint ptr %add.ptr.i to i32
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_setup_data.__UNIQUE_ID_ddebug274, ptr noundef %30, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %add32, i32 noundef %22) #6
  br label %do.end61

do.end61:                                         ; preds = %sg_virt.exit, %if.end28
  %ctrl = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 5
  %39 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl, align 4
  %and62 = and i32 %40, -30721
  %shl = shl nuw nsw i32 %22, 11
  %or = or i32 %and62, %shl
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %add.ptr68 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %43) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %blocks72 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %blocks72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blocks72, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %add.ptr73 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %46) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %blksz77 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %47 = ptrtoint ptr %blksz77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blksz77, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %add.ptr78 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %49) #6, !srcloc !154
  %50 = load i32, ptr @nodma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool79.not = icmp eq i32 %50, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %do.end61.if.then93_crit_edge

do.end61.if.then93_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

lor.lhs.false:                                    ; preds = %do.end61
  %51 = ptrtoint ptr %blksz77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blksz77, align 4
  %sg81 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %53 = ptrtoint ptr %sg81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sg81, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset, align 4
  %or82 = or i32 %56, %52
  %and83 = and i32 %or82, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %lor.lhs.false85, label %lor.lhs.false.if.then93_crit_edge

lor.lhs.false.if.then93_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

lor.lhs.false85:                                  ; preds = %lor.lhs.false
  %flags86 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %57 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags86, align 4
  %and87 = and i32 %58, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp ne i32 %and87, 0
  %and91 = and i32 %56, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %or.cond = select i1 %tobool88.not, i1 true, i1 %tobool92.not
  br i1 %or.cond, label %if.else, label %lor.lhs.false85.if.then93_crit_edge

lor.lhs.false85.if.then93_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false85.if.then93_crit_edge, %lor.lhs.false.if.then93_crit_edge, %do.end61.if.then93_crit_edge
  %59 = ptrtoint ptr %blocks72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blocks72, align 4
  %61 = ptrtoint ptr %blksz77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blksz77, align 4
  %mul = mul i32 %62, %60
  %pio_size = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 6
  %63 = ptrtoint ptr %pio_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %pio_size, align 4
  %sg96 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %64 = ptrtoint ptr %sg96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg96, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %and.i.i.i190 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i190)
  %tobool.i.not.i.i191 = icmp eq i32 %and.i.i.i190, 0
  br i1 %tobool.i.not.i.i191, label %sg_virt.exit197, label %do.body2.i.i192, !prof !207

do.body2.i.i192:                                  ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !230
  unreachable

sg_virt.exit197:                                  ; preds = %if.then93
  %and.i.i193 = and i32 %67, -4
  %68 = inttoptr i32 %and.i.i193 to ptr
  %call1.i194 = tail call ptr @page_address(ptr noundef %68) #6
  %offset.i195 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 1
  %69 = ptrtoint ptr %offset.i195 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i195, align 4
  %add.ptr.i196 = getelementptr i8, ptr %call1.i194, i32 %70
  %pio_ptr = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 7
  %71 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i196, ptr %pio_ptr, align 4
  %72 = load i32, ptr @nodma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool98.not = icmp eq i32 %72, 0
  br i1 %tobool98.not, label %do.body100, label %sg_virt.exit197.cleanup_crit_edge

sg_virt.exit197.cleanup_crit_edge:                ; preds = %sg_virt.exit197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body100:                                       ; preds = %sg_virt.exit197
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_setup_data.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_setup_data, %if.then112)) #6
          to label %cleanup [label %if.then112], !srcloc !158

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %dev113 = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %73 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev113, align 4
  %75 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pio_ptr, align 4
  %77 = ptrtoint ptr %pio_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pio_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_setup_data.__UNIQUE_ID_ddebug275, ptr noundef %74, ptr noundef nonnull @.str.26, ptr noundef %76, i32 noundef %78) #6
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 13
  %79 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmc, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 128
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %83 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sg_len, align 4
  %and.i = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i198 = icmp eq i32 %and.i, 0
  %cond.i199 = select i1 %tobool.not.i198, i32 2, i32 1
  %call122 = tail call i32 @dma_map_sg_attrs(ptr noundef %82, ptr noundef %54, i32 noundef %84, i32 noundef %cond.i199, i32 noundef 0) #6
  %sg_frags = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 8
  %85 = ptrtoint ptr %sg_frags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call122, ptr %sg_frags, align 4
  %86 = ptrtoint ptr %sg81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sg81, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_address, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %and127 = and i32 %89, 65535
  %90 = tail call i32 @llvm.bswap.i32(i32 %and127)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %90) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %89)
  %92 = shl i32 %91, 16
  %add.ptr132 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %92) #6, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then112, %do.body100, %sg_virt.exit197.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then112 ], [ 1, %sg_virt.exit197.cleanup_crit_edge ], [ 1, %do.body100 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvsd_power_up(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_power_up.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_power_up, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_power_up.__UNIQUE_ID_ddebug284, ptr noundef %3, ptr noundef nonnull @.str.38) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %add.ptr13 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %add.ptr17 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %add.ptr21 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %add.ptr25 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %add.ptr29 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -65536) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %add.ptr33 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -65536) #6, !srcloc !154
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvsd_finish_cmd(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd, i32 noundef %err_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.1 = getelementptr i8, ptr %1, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #6, !srcloc !167
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.2 = getelementptr i8, ptr %1, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #6, !srcloc !167
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.3 = getelementptr i8, ptr %1, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #6, !srcloc !167
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.4 = getelementptr i8, ptr %1, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #6, !srcloc !167
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.5 = getelementptr i8, ptr %1, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #6, !srcloc !167
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.6 = getelementptr i8, ptr %1, i32 56
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #6, !srcloc !167
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %add.ptr.7 = getelementptr i8, ptr %1, i32 60
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #6, !srcloc !167
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %shl4 = shl i32 %5, 22
  %and6 = shl i32 %7, 6
  %shl7 = and i32 %and6, 4194240
  %or = or i32 %shl7, %shl4
  %and9 = lshr i32 %9, 10
  %shr = and i32 %and9, 63
  %or10 = or i32 %or, %shr
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or10, ptr %resp, align 4
  %shl14 = shl i32 %9, 22
  %and16 = shl i32 %11, 6
  %shl17 = and i32 %and16, 4194240
  %or18 = or i32 %shl17, %shl14
  %and20 = lshr i32 %13, 10
  %shr21 = and i32 %and20, 63
  %or22 = or i32 %or18, %shr21
  %arrayidx24 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or22, ptr %arrayidx24, align 4
  %shl27 = shl i32 %13, 22
  %and29 = shl i32 %15, 6
  %shl30 = and i32 %and29, 4194240
  %or31 = or i32 %shl30, %shl27
  %and33 = lshr i32 %17, 10
  %shr34 = and i32 %and33, 63
  %or35 = or i32 %or31, %shr34
  %arrayidx37 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or35, ptr %arrayidx37, align 4
  %shl40 = shl i32 %17, 22
  %and42 = shl i32 %19, 8
  %shl43 = and i32 %and42, 4194048
  %or44 = or i32 %shl43, %shl40
  br label %if.end90.sink.split

if.else:                                          ; preds = %entry
  %and48 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.if.end90_crit_edge, label %if.then50

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr60 = getelementptr i8, ptr %1, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !167
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %add.ptr60.1 = getelementptr i8, ptr %1, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.1) #6, !srcloc !167
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %add.ptr60.2 = getelementptr i8, ptr %1, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.2) #6, !srcloc !167
  %28 = lshr i32 %27, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %and69 = and i32 %28, 63
  %and72 = shl i32 %26, 6
  %shl73 = and i32 %and72, 4194240
  %or74 = or i32 %and69, %shl73
  %shl77 = shl i32 %24, 22
  %or78 = or i32 %or74, %shl77
  %resp79 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %29 = ptrtoint ptr %resp79 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or78, ptr %resp79, align 4
  %and82 = lshr i32 %24, 10
  %shr83 = and i32 %and82, 63
  %arrayidx85 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr83, ptr %arrayidx85, align 4
  %arrayidx87 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx87, align 4
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then50, %if.then
  %.sink = phi i32 [ 0, %if.then50 ], [ %or44, %if.then ]
  %arrayidx89 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %arrayidx89, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.else.if.end90_crit_edge
  %and91 = and i32 %err_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else94, label %if.end90.if.end100.sink.split_crit_edge

if.end90.if.end100.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.sink.split

if.else94:                                        ; preds = %if.end90
  %and95 = and i32 %err_status, 526
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else94.if.end100_crit_edge, label %if.else94.if.end100.sink.split_crit_edge

if.else94.if.end100.sink.split_crit_edge:         ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.sink.split

if.else94.if.end100_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.end100.sink.split:                             ; preds = %if.else94.if.end100.sink.split_crit_edge, %if.end90.if.end100.sink.split_crit_edge
  %.sink125 = phi i32 [ -110, %if.end90.if.end100.sink.split_crit_edge ], [ -84, %if.else94.if.end100.sink.split_crit_edge ]
  %error98 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %33 = ptrtoint ptr %error98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink125, ptr %error98, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end100.sink.split, %if.else94.if.end100_crit_edge
  %and101 = and i32 %err_status, -528
  ret i32 %and101
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvsd_finish_data(ptr nocapture noundef %host, ptr nocapture noundef %data, i32 noundef %err_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %pio_ptr = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 7
  %2 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pio_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pio_ptr, align 4
  %pio_size = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 6
  %5 = ptrtoint ptr %pio_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pio_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 13
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  %sg_frags = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 8
  %12 = ptrtoint ptr %sg_frags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_frags, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %cond.i, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and = and i32 %err_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else4, label %if.end.if.end16.sink.split_crit_edge

if.end.if.end16.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.else4:                                         ; preds = %if.end
  %and5 = and i32 %err_status, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else9, label %if.else4.if.end16.sink.split_crit_edge

if.else4.if.end16.sink.split_crit_edge:           ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.else9:                                         ; preds = %if.else4
  %and10 = and i32 %err_status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else9.if.end16_crit_edge, label %if.else9.if.end16.sink.split_crit_edge

if.else9.if.end16.sink.split_crit_edge:           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16.sink.split:                              ; preds = %if.else9.if.end16.sink.split_crit_edge, %if.else4.if.end16.sink.split_crit_edge, %if.end.if.end16.sink.split_crit_edge
  %.sink = phi i32 [ -110, %if.end.if.end16.sink.split_crit_edge ], [ -84, %if.else4.if.end16.sink.split_crit_edge ], [ -52, %if.else9.if.end16.sink.split_crit_edge ]
  %error8 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %error8, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else9.if.end16_crit_edge
  %and17 = and i32 %err_status, -1137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_finish_data.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_finish_data, %if.then22)) #6
          to label %do.end [label %if.then22], !srcloc !158

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !167
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  %add.ptr28 = getelementptr i8, ptr %1, i32 124
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !167
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_finish_data.__UNIQUE_ID_ddebug277, ptr noundef %18, ptr noundef nonnull @.str.51, i32 noundef %20, i32 noundef %22) #6
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.end16
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocks, align 4
  %add.ptr35 = getelementptr i8, ptr %1, i32 128
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #6, !srcloc !167
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  %sub = sub i32 %24, %26
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blksz, align 4
  %mul = mul i32 %sub, %28
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %29 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %bytes_xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool40.not = icmp eq i32 %mul, 0
  br i1 %tobool40.not, label %do.end.if.end47_crit_edge, label %land.lhs.true

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true:                                    ; preds = %do.end
  %error41 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %30 = ptrtoint ptr %error41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not = icmp eq i32 %31, 0
  br i1 %tobool42.not, label %land.lhs.true.if.end47_crit_edge, label %if.then43

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub46 = sub i32 %mul, %28
  %32 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub46, ptr %bytes_xfered, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.lhs.true.if.end47_crit_edge, %do.end.if.end47_crit_edge
  %stop = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %33 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop, align 4
  %tobool48.not = icmp eq ptr %34, null
  br i1 %tobool48.not, label %if.end47.if.end126_crit_edge, label %if.then49

if.end47.if.end126_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then49:                                        ; preds = %if.end47
  %add.ptr52 = getelementptr i8, ptr %1, i32 144
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #6, !srcloc !167
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %add.ptr52.1 = getelementptr i8, ptr %1, i32 148
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.1) #6, !srcloc !167
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %add.ptr52.2 = getelementptr i8, ptr %1, i32 152
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.2) #6, !srcloc !167
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %and57 = and i32 %40, 63
  %and60 = shl i32 %38, 6
  %shl61 = and i32 %and60, 4194240
  %or = or i32 %and57, %shl61
  %shl64 = shl i32 %36, 22
  %or65 = or i32 %or, %shl64
  %41 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stop, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or65, ptr %resp, align 4
  %and69 = lshr i32 %36, 10
  %shr = and i32 %and69, 63
  %44 = load ptr, ptr %stop, align 4
  %arrayidx72 = getelementptr %struct.mmc_command, ptr %44, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr, ptr %arrayidx72, align 4
  %46 = load ptr, ptr %stop, align 4
  %arrayidx75 = getelementptr %struct.mmc_command, ptr %46, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx75, align 4
  %48 = load ptr, ptr %stop, align 4
  %arrayidx78 = getelementptr %struct.mmc_command, ptr %48, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx78, align 4
  %and79 = and i32 %err_status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then49.if.end126_crit_edge, label %if.then81

if.then49.if.end126_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then81:                                        ; preds = %if.then49
  %add.ptr84 = getelementptr i8, ptr %1, i32 120
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #6, !srcloc !167
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvsd_finish_data.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvsd_finish_data, %if.then100)) #6
          to label %do.end104 [label %if.then100], !srcloc !158

if.then100:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  %dev101 = getelementptr inbounds %struct.mvsd_host, ptr %host, i32 0, i32 14
  %52 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvsd_finish_data.__UNIQUE_ID_ddebug278, ptr noundef %53, ptr noundef nonnull @.str.52, i32 noundef %51) #6
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %if.then81
  %and105 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else110, label %do.end104.if.end123.sink.split_crit_edge

do.end104.if.end123.sink.split_crit_edge:         ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.sink.split

if.else110:                                       ; preds = %do.end104
  %and111 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else116, label %if.else110.if.end123.sink.split_crit_edge

if.else110.if.end123.sink.split_crit_edge:        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.sink.split

if.else116:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool117.not = icmp eq i32 %50, 0
  br i1 %tobool117.not, label %if.else116.if.end123_crit_edge, label %if.else116.if.end123.sink.split_crit_edge

if.else116.if.end123.sink.split_crit_edge:        ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.sink.split

if.else116.if.end123_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.end123.sink.split:                             ; preds = %if.else116.if.end123.sink.split_crit_edge, %if.else110.if.end123.sink.split_crit_edge, %do.end104.if.end123.sink.split_crit_edge
  %.sink175 = phi i32 [ -8, %do.end104.if.end123.sink.split_crit_edge ], [ -110, %if.else110.if.end123.sink.split_crit_edge ], [ -84, %if.else116.if.end123.sink.split_crit_edge ]
  %54 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stop, align 4
  %error115 = getelementptr inbounds %struct.mmc_command, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %error115 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink175, ptr %error115, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %if.else116.if.end123_crit_edge
  %and124 = and i32 %err_status, -1393
  br label %if.end126

if.end126:                                        ; preds = %if.end123, %if.then49.if.end126_crit_edge, %if.end47.if.end126_crit_edge
  %err_status.addr.1 = phi i32 [ %and17, %if.end47.if.end126_crit_edge ], [ %and124, %if.end123 ], [ %and17, %if.then49.if.end126_crit_edge ]
  ret i32 %err_status.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_mvsdio__291_832_mvsd_driver_init6, !1, !"__initcall__kmod_mvsdio__291_832_mvsd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mvsdio.c", i32 832, i32 1}
!2 = !{ptr @__exitcall_mvsd_driver_exit, !1, !"__exitcall_mvsd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_maxfreq, !4, !"__param_maxfreq", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/mvsdio.c", i32 835, i32 1}
!5 = !{ptr @__UNIQUE_ID_maxfreqtype292, !4, !"__UNIQUE_ID_maxfreqtype292", i1 false, i1 false}
!6 = !{ptr @__param_nodma, !7, !"__param_nodma", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/mvsdio.c", i32 838, i32 1}
!8 = !{ptr @__UNIQUE_ID_nodmatype293, !7, !"__UNIQUE_ID_nodmatype293", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author294, !10, !"__UNIQUE_ID_author294", i1 false, i1 false}
!10 = !{!"../drivers/mmc/host/mvsdio.c", i32 840, i32 1}
!11 = !{ptr @__UNIQUE_ID_description295, !12, !"__UNIQUE_ID_description295", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/mvsdio.c", i32 841, i32 1}
!13 = !{ptr @__UNIQUE_ID_file296, !14, !"__UNIQUE_ID_file296", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/mvsdio.c", i32 842, i32 1}
!15 = !{ptr @__UNIQUE_ID_license297, !14, !"__UNIQUE_ID_license297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias298, !17, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/mvsdio.c", i32 843, i32 1}
!18 = !{ptr @maxfreq, !19, !"maxfreq", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/mvsdio.c", i32 31, i32 12}
!20 = !{ptr @nodma, !21, !"nodma", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/mvsdio.c", i32 32, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/mvsdio.c", i32 826, i32 11}
!24 = !{ptr @mvsd_driver, !25, !"mvsd_driver", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/mvsdio.c", i32 822, i32 31}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/mvsdio.c", i32 702, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mvsd_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @mvsd_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/mvsdio.c", i32 728, i32 3}
!36 = !{ptr @mvsd_probe._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mvsd_probe._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mvsd_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/mvsdio.c", i32 755, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/mvsdio.c", i32 772, i32 3}
!43 = !{ptr @mvsd_probe._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mvsd_probe._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mvsd_probe.__key.13, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/mvsdio.c", i32 776, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/mvsdio.c", i32 783, i32 3}
!50 = !{ptr @mvsd_probe.__UNIQUE_ID_ddebug289, !49, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/mvsdio.c", i32 785, i32 3}
!53 = !{ptr @mvsd_probe.__UNIQUE_ID_ddebug290, !52, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!54 = !{ptr @mvsd_ops, !55, !"mvsd_ops", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/mvsdio.c", i32 664, i32 34}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/mvsdio.c", i32 148, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mvsd_request.__UNIQUE_ID_ddebug276, !57, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/mvsdio.c", i32 77, i32 5}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mvsd_setup_data._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @mvsd_setup_data._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/mvsdio.c", i32 82, i32 3}
!68 = !{ptr @mvsd_setup_data.__UNIQUE_ID_ddebug273, !67, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/mvsdio.c", i32 96, i32 2}
!71 = !{ptr @mvsd_setup_data.__UNIQUE_ID_ddebug274, !70, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!72 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/mvsdio.c", i32 120, i32 4}
!76 = !{ptr @mvsd_setup_data.__UNIQUE_ID_ddebug275, !75, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/mvsdio.c", i32 611, i32 3}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mvsd_set_ios.__UNIQUE_ID_ddebug286, !78, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/mvsdio.c", i32 619, i32 3}
!83 = !{ptr @mvsd_set_ios.__UNIQUE_ID_ddebug287, !82, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/mvsdio.c", i32 652, i32 2}
!86 = !{ptr @mvsd_set_ios.__UNIQUE_ID_ddebug288, !85, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!87 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/mvsdio.c", i32 573, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mvsd_power_up.__UNIQUE_ID_ddebug284, !94, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/mvsdio.c", i32 587, i32 2}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mvsd_power_down.__UNIQUE_ID_ddebug285, !98, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/mvsdio.c", i32 352, i32 2}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mvsd_irq.__UNIQUE_ID_ddebug279, !102, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/mvsdio.c", i32 362, i32 3}
!107 = !{ptr @mvsd_irq.__UNIQUE_ID_ddebug280, !106, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/mvsdio.c", i32 414, i32 3}
!110 = !{ptr @mvsd_irq.__UNIQUE_ID_ddebug281, !109, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!111 = !{ptr @mvsd_irq.__UNIQUE_ID_ddebug282, !112, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/mvsdio.c", i32 451, i32 3}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/mvsdio.c", i32 480, i32 4}
!115 = !{ptr @mvsd_irq.__UNIQUE_ID_ddebug283, !114, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/mvsdio.c", i32 487, i32 4}
!118 = !{ptr @mvsd_irq._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mvsd_irq._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/mvsdio.c", i32 505, i32 2}
!122 = !{ptr @mvsd_irq._entry.47, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mvsd_irq._entry_ptr.49, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/mvsdio.c", i32 308, i32 2}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mvsd_finish_data.__UNIQUE_ID_ddebug277, !125, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/mvsdio.c", i32 330, i32 4}
!130 = !{ptr @mvsd_finish_data.__UNIQUE_ID_ddebug278, !129, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/mvsdio.c", i32 520, i32 3}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mvsd_timeout_timer._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mvsd_timeout_timer._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/mvsdio.c", i32 521, i32 3}
!138 = !{ptr @mvsd_timeout_timer._entry.55, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mvsd_timeout_timer._entry_ptr.57, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @mvsdio_dt_ids, !141, !"mvsdio_dt_ids", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/mvsdio.c", i32 816, i32 34}
!142 = !{ptr @__param_str_maxfreq, !4, !"__param_str_maxfreq", i1 false, i1 false}
!143 = !{ptr @__param_str_nodma, !7, !"__param_str_nodma", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2154841304}
!154 = !{i64 4057583}
!155 = !{i64 2154841736}
!156 = !{i64 2154842276}
!157 = !{i64 2154843039}
!158 = !{i64 2148975350, i64 2148975355, i64 2148975368, i64 2148975412, i64 2148975446, i64 2148975467}
!159 = !{i64 2154828023}
!160 = !{i64 2154828449}
!161 = !{i64 2154828898}
!162 = !{i64 2154829368}
!163 = !{i64 2154829815}
!164 = !{i64 2154830241}
!165 = !{i64 2154830677}
!166 = !{i64 2154831128}
!167 = !{i64 4058001}
!168 = !{i64 2154773890}
!169 = !{i64 2154777122}
!170 = !{i64 2154777647}
!171 = !{i64 2154778172}
!172 = !{i64 2154778697}
!173 = !{i64 2154782478}
!174 = !{i64 2154783003}
!175 = !{i64 2154783528}
!176 = !{i64 2154784053}
!177 = !{i64 2154784653}
!178 = !{i64 2154785874}
!179 = !{i64 2154787126}
!180 = !{i64 2154787691}
!181 = !{i64 2154788225}
!182 = !{i64 2154788750}
!183 = !{i64 2154789275}
!184 = !{i64 2154789574}
!185 = !{i64 2154790089}
!186 = !{i64 2154793343}
!187 = !{i64 2154794111}
!188 = !{i64 2154795438}
!189 = !{i64 2154796550}
!190 = !{i64 2154796825}
!191 = !{i64 2154797276}
!192 = !{i64 2154797986}
!193 = !{i64 2154798285}
!194 = !{i64 2154801539}
!195 = !{i64 2154801815}
!196 = !{i64 2154802354}
!197 = !{i64 2154802816}
!198 = !{i64 2154803534}
!199 = !{i64 2154815166}
!200 = !{i64 2154815691}
!201 = !{i64 2154816216}
!202 = !{i64 2154816507}
!203 = !{i64 2154816991}
!204 = !{i64 2154817492}
!205 = !{i64 2154817954}
!206 = !{i64 2154818390}
!207 = !{!"branch_weights", i32 2000, i32 1}
!208 = !{i64 2154753823, i64 2154754313, i64 2154753860, i64 2154753916, i64 2154753950, i64 2154753974, i64 2154754015, i64 2154754036, i64 2154754064, i64 2154754098}
!209 = !{i64 2154758019}
!210 = !{i64 2154758696}
!211 = !{i64 2154759201}
!212 = !{i64 2154759743}
!213 = !{i64 2154760259}
!214 = !{i64 2154760759}
!215 = !{i64 2154761615}
!216 = !{i64 2154762110}
!217 = !{i64 2154762573}
!218 = !{i64 2154763024}
!219 = !{i64 2154763508}
!220 = !{i64 2154763980}
!221 = !{i64 2154831594}
!222 = !{i64 2154832055}
!223 = !{i64 2154834720}
!224 = !{i64 2154837660}
!225 = !{i64 2154819257}
!226 = !{i64 2154819749}
!227 = !{i64 2154739635}
!228 = !{i64 2154740174}
!229 = !{i32 0, i32 33}
!230 = !{i64 2154108006, i64 2154108498, i64 2154108043, i64 2154108099, i64 2154108133, i64 2154108157, i64 2154108198, i64 2154108219, i64 2154108247, i64 2154108281}
!231 = !{i64 2154748460}
!232 = !{i64 2154748935}
!233 = !{i64 2154749414}
!234 = !{i64 2154752682}
!235 = !{i64 2154753212}
!236 = !{i64 2154822332}
!237 = !{i64 2154822758}
!238 = !{i64 2154823207}
!239 = !{i64 2154823654}
!240 = !{i64 2154824090}
!241 = !{i64 2154824541}
!242 = !{i64 2154824992}
!243 = !{i64 2154825443}
!244 = !{i64 2154764789}
!245 = !{i64 2154765413}
!246 = !{i64 2154768920}
!247 = !{i64 2154769445}
!248 = !{i64 2154769970}
!249 = !{i64 2154770585}
!250 = !{i64 2154771119}
